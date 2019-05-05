import glob,psycopg2
import dataset

import os,sys
import re,errno
from dbfread import DBF,FieldParser, InvalidValue
import logging
from logging import handlers
from argparse import ArgumentParser
#import datetime as dt

from datetime import date,datetime
from pathlib import Path

parser = ArgumentParser()

parser.add_argument("hostIp", default=True,  help="ip address sqlserver")
parser.add_argument("adminUser", default=True, help="user with admin rights sqlserver")
parser.add_argument("adminPass",  default=True,  help="pass admin user sqlserver")
parser.add_argument("interMedDb",  default=True,  help="name of the intermed database")
parser.add_argument("dbfFilesLocation",  default=True,   help="Location of the dbf files")
parser.add_argument("tablesIgnore", default=True,   help="List of dbf files to ignore")
parser.add_argument("tablesLoad", default=True,   help="List of dbf files to Load")
parser.add_argument("logsFolder", default=True,   help="folder for logs")

args = parser.parse_args()

print( args.hostIp + "_" + args.adminUser + "_" + args.adminPass + "_" + args.interMedDb + "_" + args.dbfFilesLocation  + "_" + args.tablesIgnore + "_" + args.tablesLoad)

#exit(0)
logger = logging.getLogger('')
logger.setLevel(logging.DEBUG)
format = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")


ch = logging.StreamHandler(sys.stdout)
ch.setFormatter(format)
ch.setLevel(logging.CRITICAL)
logger.addHandler(ch)

fh = handlers.RotatingFileHandler(args.logsFolder + '/migrationLog-' + datetime.now().strftime('%H_%M_%d_%m_%Y.log'),
                                  maxBytes=(1048576 * 5), backupCount=7)
fh.setFormatter(format)
fh.setLevel(logging.INFO)
logger.addHandler(fh)
#--------------------------------------------------------------------------------------------------------
typemap = {
    'F': 'float',
    'L': 'boolean',
    'I': 'INT',
    'C': 'varchar',
    'N': 'real',  # because it can be integer or float
    'M': 'varchar',
    'D': 'date',
    'T': 'timestamp',
    '0': 'INT',
}

#--------------------------------------------------------------------------------------------------------


def queryinsert(conex,query,message):
    try:
        # print(query)
        cursor = conex.cursor()
        cursor.execute(query)
        conex.commit()
        return True
    except Exception as e1:
        if ('HY090' not in str(e1)):
            logger.info("wrong query:" + query + message)
            logger.error(">>>>>>>>>>>>>>> issue with insert query " + str(e1))
#--------------------------------------------------------------------------------------------------------
def queryselect(conex,query):
    try:
        cursor = conex.cursor()
        cursor.execute(query)
        return cursor.fetchall()
    except Exception as e2:
        logger.info("wrong query:" + query)
        logger.error(">>>>>>>>>>>>>>> issue with select query" + str(e2))
#--------------------------------------------------------------------------------------------------------
def changeDatabase(hostIp,database,adminUser,adminPass):
    try:

        db = dataset.connect('postgresql://scott:tiger@localhost:5432/mydatabase')
        conex = psycopg2.connect(user=adminUser,
                                      password=adminPass,
                                      host=hostIp,
                                      port="5432",
                                      database=database)
        #conex = conex.execution_options(pyodbc_fast_execute=True)
        logger.warning('connected to Sqlserver.')
        return conex
    except Exception as e1:
        logger.error(">>>>>>>>>>>>>>> issue with database change" + str(e1))
        sys.exit()
#--------------------------------------------------------------------------------------------------------
class MyFieldParser(FieldParser):
    def parse(self, field, data):
        try:
            return FieldParser.parse(self, field, data)
        except ValueError:
            return InvalidValue(data)
#--------------------------------------------------------------------------------------------------------
def silentremove(filename):
    try:
        os.remove(filename)
    except OSError as e: # this would be "except OSError, e:" before Python 2.6
        if e.errno != errno.ENOENT: # errno.ENOENT = no such file or directory
            raise # re-raise exception if a different error occurred
#--------------------------------------------------------------------------------------------------------
def queryInsertBig(conex,query,values,message):
    try:

        test = query + str(values[0])
        print(test + '§§§§§§')
        cursor = conex.cursor()

        cursor.executemany(query , str(values) )
        conex.commit()
        return True
    except Exception as e1:
        if ('HY090' not in str(e1)):
            logger.info("wrong query:" + query + message)
            logger.error(">>>>>>>>>>>>>>> issue with insert query " + str(e1))


#--------------------------------------------------------------------------------------------------------

conex = changeDatabase( args.hostIp, args.interMedDb, args.adminUser,args.adminPass)
dirpath = os.getcwd()
os.chdir(args.dbfFilesLocation)
for file in glob.glob("*.dbf"):
    base = os.path.basename(file)
    fileName = (os.path.splitext(base)[0])
    print ('processing now:' + fileName)
    if fileName.lower() in (
            args.tablesIgnore):
        continue
    #if args.ignoreOrLoad == 'LOAD':
    #if fileName.lower() not in ('marcas'): #(args.tablesLoad):
    #        continue
    conex = changeDatabase( args.hostIp, args.interMedDb, args.adminUser,
                           args.adminPass)
    tableDelete = 'drop table if exists ' + args.interMedDb + '.migration.vw_origin_'+ fileName +' CASCADE;'
    queryinsert(conex, tableDelete, 'Droping table Vw_origin_' + fileName + ' table')
    logger.info('Processing: ' + file)
    table = DBF(fileName + '.dbf', parserclass=MyFieldParser, char_decode_errors='ignore',
                ignore_missing_memofile=True)
    field_types = {}
    for f in table.fields:
        field_types[f.name] = typemap.get(f.type, 'TEXT')
    defs = ', '.join(['"%s" %s' % (f, field_types[f])
                      for f in table.field_names])

    tableCreate = 'create table ' + args.interMedDb + '.migration.vw_origin_%s (%s)' % (
    table.name, 'rowNum INT, ' + defs + ', DELETED varchar (5)')
    #print(tableCreate)
    logger.info('new table to create: \"' + tableCreate + '\"')

    #print(str(table.field_names).replace('[','').replace(']',''))
    #exit(0)
    queryinsert(conex,tableCreate, 'Creating Vw_origin_' + fileName + ' table')

    try:
        logger.warning("Going to insert to table: " + fileName)
        statement2 = "INSERT INTO " + args.interMedDb + \
                     ".migration.vw_origin_" + fileName + "(rowNum," + str(table.field_names).replace('[','').replace(']','').replace("'","") + ", DELETED) VALUES "

        refs = ', '.join([ '%s' for f in table.field_names])
        refs2 = ', '.join([f for f in table.field_names])
        sql = 'insert into %s (%s) values (%s)' % (args.interMedDb + \
                     ".migration.vw_origin_" + fileName, "rownum, " + refs2 + ",deleted", "%s,"+refs + ", %s")

        listoflists = list()
        for i,rec in enumerate(table):
            a_list=list(rec.values())
            valu = 0
            for name, value in rec.items():
                #print('\''+name+'\'')
                if isinstance(value, InvalidValue):
                    logger.info('records[{}][{!r}] == {!r}'.format(i, name, value))
                    a_list[valu]=None
                elif isinstance(value, str):
                    if not (value and value.strip()):
                        a_list[valu] = None
                    elif str(name) == 'HORA':
                        if len(value.replace(' ', '')) < 6 or not value.replace(' ', '').strip():
                            a_list[valu] = '000000'
                    elif str(name) == 'NRO_SOLICI' or str(name) == 'NUM_SERIE':
                        # print(len(value.replace(' ', '')))
                        a_list[valu] = value.replace(' ', '').strip()
                    else:
                        a_list[valu] = re.sub(' +', ' ',value).strip()

                elif isinstance(value, date):
                    print(str(value))
                    year, month, day = str(value).split('-')
                    print(str(year))
                    if len(year) == 4:
                        if int(year) < 1900:
                            dd = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                            print(dd.date())
                            a_list[valu] = dd.date()
                        elif int(year) > 2040:
                            dd = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                            print(dd.date())
                            a_list[valu] = dd.date()
                        else:
                            a_list[valu] = value.date()
                    elif len(year) == 2:
                        if int(day) < 1900:
                            dd = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')

                            a_list[valu] = dd.date()
                        elif int(day) > 2040:
                            dd = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')

                            a_list[valu] = dd.date()
                        else:
                            a_list[valu] = value.date()

                valu+=1
            listoflists.append(tuple([i]+a_list+['N']))
            #print(tuple([i]+a_list+['N']))
            #queryInsertBig(conex, sql, listoflists, 'inserting data')
            #listoflists = list()
            if i % 2 == 0 and i != 0 and listoflists:
                logger.warning(str(listoflists))
                queryInsertBig(conex,sql +'%',listoflists, 'inserting data')
                listoflists=list()

        if listoflists:
            #print(listoflists.__sizeof__())

            queryInsertBig(conex,sql,listoflists, 'inserting data')

            listoflists=list()
        for i,rec in enumerate(table.deleted):
            a_list = list(rec.values())
            valu = 0
            for name, value in rec.items():
                if isinstance(value, InvalidValue):
                    logger.info('records[{}][{!r}] == {!r}'.format(i, name, value))
                    a_list[valu] = None
                elif isinstance(value, str):
                    if not (value and value.strip()):
                        a_list[valu] = None
                    elif str(name) == 'HORA':
                        if len(value.replace(' ', '')) < 6 or not value.replace(' ', '').strip():
                            a_list[valu] = '000000'
                    elif str(name) == 'NRO_SOLICI' or str(name) == 'NUM_SERIE':
                        # print(len(value.replace(' ', '')))
                        a_list[valu] = value.replace(' ', '').strip()
                    else:
                        a_list[valu] = re.sub(' +', ' ', value).strip()
                elif isinstance(value, date):
                    day, month, year = str(value).split('-')
                    if len(year) == 4:
                        if int(year) < 1900:
                            dd = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                            a_list[valu] = dd
                        if int(year) > 2040:
                            dd = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                            a_list[valu] = dd
                    elif len(year) == 2:
                        if int(day) < 1900:
                            dd = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
                            a_list[valu] = dd
                        if int(day) > 2040:
                            dd = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
                            a_list[valu] = dd

                valu += 1
            listoflists.append(tuple([i] + a_list + ['S']))
            if i % 999 == 0 and i != 0 and listoflists:

                queryInsertBig(conex, sql, listoflists, 'inserting data')
                listoflists = list()

        if listoflists:
            queryInsertBig(conex,sql,listoflists, 'inserting data')
            listoflists=list()

    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue with table creation:" + str(e))
    logger.warning("insert finished")
os.chdir(dirpath)
