
import glob
import dataset
import psycopg2
from psycopg2.extensions import ISOLATION_LEVEL_AUTOCOMMIT # <-- ADD THIS LINE

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

parser.add_argument("hostIp",default=True,help="ip address sqlserver")
parser.add_argument("adminUser",default=True,help="user with admin rights sqlserver")
parser.add_argument("adminPass",default=True,help="pass admin user sqlserver")
parser.add_argument("interMedDb",default=True,help="name of the intermed database")
parser.add_argument("schemaDb",default=True,help="name of the intermed schema")
parser.add_argument("dbfFilesLocation",default=True,help="Location of the dbf files")
parser.add_argument("tablesIgnore",default=False,help="List of dbf files to ignore")
parser.add_argument("tablesLoad",default=False,help="List of dbf files to Load")
parser.add_argument("logsFolder",default=False,help="folder for logs")

args = parser.parse_args()

print( args.hostIp + "_" + args.adminUser + "_" + args.adminPass + "_" + args.interMedDb + "_" + args.dbfFilesLocation  + "_" + args.tablesIgnore + "_" + args.tablesLoad)

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
def conectServer(hostIp,adminUser,adminPass):
    try:

        conex = dataset.connect('postgresql://'+adminUser+':'+adminPass+'@'+hostIp+':5432/')
        conex.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT)
        logger.warning('connected to Sqlserver.')
        return conex
    except Exception as e1:
        logger.error(">>>>>>>>>>>>>>> issue with database change" + str(e1))
        sys.exit()
#--------------------------------------------------------------------------------------------------------
def connectSchemaPostgre(hostIp,database,adminUser,adminPass,schemaDb):
    try:

        conex = dataset.connect('postgresql://'+adminUser+':'+adminPass+'@'+hostIp+':5432/'+database,schema=schemaDb)
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
# con = psycopg2.connect(dbname='postgres',
#       user=args.adminUser, host=args.hostIp,
#       password=args.adminPass)
#
# con.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT) # <-- ADD THIS LINE
#
# cur = con.cursor()
# try:
#     cur.execute("DROP DATABASE IF EXISTS %s  ;" % args.interMedDb)
# except psycopg2.Error:
#     raise SystemExit(
#         'Failed to setup Postgres environment.\n{0}'.format(sys.exc_info())
#     )
# try:
#     cur.execute("CREATE DATABASE %s  ;" % args.interMedDb)
# except psycopg2.Error:
#     raise SystemExit(
#         'Failed to setup Postgres environment.\n{0}'.format(sys.exc_info())
#     )
# cur.close()
# con.close()
# con2 = psycopg2.connect(dbname=args.interMedDb,
#       user=args.adminUser, host=args.hostIp,
#       password=args.adminPass)
#
# con2.set_isolation_level(ISOLATION_LEVEL_AUTOCOMMIT) # <-- ADD THIS LINE
#
# cur2 = con2.cursor()
# try:
#     cur2.execute("CREATE SCHEMA %s  ;" % args.schemaDb)
# except psycopg2.Error:
#     raise SystemExit(
#         'Failed to crete schema.\n{0}'.format(sys.exc_info())
#     )
# try:
#     cur2.execute("COMMIT")
# except psycopg2.Error:
#     raise SystemExit(
#         'Failed to commit.\n{0}'.format(sys.exc_info())
#     )
#
# cur2.close()
# con2.close()

conex = connectSchemaPostgre( args.hostIp, args.interMedDb, args.adminUser,args.adminPass,args.schemaDb)
dirpath = os.getcwd()
os.chdir(args.dbfFilesLocation)

for file in glob.glob("*.dbf"):
    base = os.path.basename(file)
    fileName = (os.path.splitext(base)[0])
    print ('processing now:' + fileName)
    if fileName.lower() in (
            args.tablesIgnore):
        continue
    # if fileName.lower() not in (
    #         'marca'):
    #     continue
    logger.info('Processing: ' + file)
    logger.info('new table to create: vw_origin_'+ fileName)
    try:
        #dataset.database(args.interMedDb,'vw_origin_'+ fileName ).drop()
        tablePg = conex['vw_origin_' + fileName]
        tablePg.drop()
        tablePg = conex['vw_origin_' + fileName]
        table = DBF(fileName + '.dbf', parserclass=MyFieldParser, char_decode_errors='ignore',
                    ignore_missing_memofile=True)
        try:
            logger.warning("Going to insert to table: " + fileName)
            listoflists = list()
            for i,rec in enumerate(table):

                rec.update({'deleted':'N'})
                for name, value in rec.items():
                    #print('\''+name+'\'')
                    if isinstance(value, InvalidValue):
                        logger.info('records[{}][{!r}] == {!r}'.format(i, name, value))
                        rec[name] = None
                    elif isinstance(value, str):
                        if not (value and value.strip()):
                            rec[name] = None
                        elif str(name) == 'HORA':
                            if len(value.replace(' ', '')) < 6 or not value.replace(' ', '').strip():
                                rec[name] = '000000'
                        elif str(name) == 'NRO_SOLICI':
                            # print(len(value.replace(' ', '')))
                            rec[name] = value.replace(' ', '').strip()

                        elif str(name) == 'NUM_SERIE':
                            # print(len(value.replace(' ', '')))
                            rec[name] = value.replace(' ', '').strip()

                        else:
                            rec[name] = re.sub('\x00','',re.sub(' +', ' ',value)).strip()
                    elif isinstance(value, date):
                        year, month, day = str(value).split('-')
                        if len(year) == 4:
                            if int(year) < 1900:
                                rec[name] = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                            elif int(year) > 2040:
                                rec[name] = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                            else:
                                if value is not None:
                                    rec[name] = value
                                else:
                                    rec[name] = None
                        elif len(year) == 2:
                            if int(day) < 1900:
                                rec[name] = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
                            elif int(day) > 2040:
                                rec[name] = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
                            else:
                                    rec[name] = value


                listoflists.append(rec)
                if i % 999 == 0 and i != 0 and listoflists:
                    try:
                        tablePg.insert_many(listoflists)
                    except Exception as e:
                        logger.error(">>>>>>>>>>>>>>> issue with inserts into table:" + str(e))
                    listoflists = list()
            if listoflists:
                try:
                    tablePg.insert_many(listoflists)
                except Exception as e:
                    logger.error(">>>>>>>>>>>>>>> issue with inserts into table:" + str(e))
                listoflists = list()

            if 'NRO_SOLICI' in table.field_names:
                tablePg.create_index(['NRO_SOLICI'])
            elif 'NUM_SERIE' in table.field_names:
                tablePg.create_index(['NUM_SERIE'])
            # for i,rec in enumerate(table.deleted):
            #     rec.update({'deleted': 'N'})
            #     for name, value in rec.items():
            #         # print('\''+name+'\'')
            #         if isinstance(value, InvalidValue):
            #             logger.info('records[{}][{!r}] == {!r}'.format(i, name, value))
            #             rec[name] = None
            #         elif isinstance(value, str):
            #             if not (value and value.strip()):
            #                 rec[name] = None
            #             elif str(name) == 'HORA':
            #                 if len(value.replace(' ', '')) < 6 or not value.replace(' ', '').strip():
            #                     rec[name] = '000000'
            #             elif str(name) == 'NRO_SOLICI' or str(name) == 'NUM_SERIE':
            #                 # print(len(value.replace(' ', '')))
            #                 rec[name] = value.replace(' ', '').strip()
            #             else:
            #                 rec[name] = re.sub('\x00','',re.sub(' +', ' ',value)).strip()
            #
            #         elif isinstance(value, date):
            #             year, month, day = str(value).split('-')
            #             if len(year) == 4:
            #                 if int(year) < 1900:
            #                     rec[name] = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
            #                 elif int(year) > 2040:
            #                     rec[name] = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
            #                 else:
            #                     rec[name] = value
            #             elif len(year) == 2:
            #                 if int(day) < 1900:
            #                     rec[name] = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
            #                 elif int(day) > 2040:
            #                     rec[name] = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
            #                 else:
            #                     rec[name] = value
            #     listoflists.append(rec)
            #     if i % 999 == 0 and i != 0 and listoflists:
            #         tablePg.insert_many(listoflists)
            #         listoflists = list()
            # if listoflists:
            #     tablePg.insert_many(listoflists)
            #     listoflists = list()
        except Exception as e:
            logger.error(">>>>>>>>>>>>>>> issue with inserts into table:" + str(e))
    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue with table creation:" + str(e))
    logger.warning("insert finished")
os.chdir(dirpath)
