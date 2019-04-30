import glob,pyodbc
import os,sys
import re,errno
from dbfread import DBF,FieldParser, InvalidValue
import logging,datetime
from logging import handlers
from argparse import ArgumentParser


parser = ArgumentParser()

parser.add_argument("serverTyp", default=True,
                    help="Version type of SQLServer.Ex: \"ODBC Driver 17 for SQL Server\"")
parser.add_argument("hostIp", default=True,
                    help="ip address sqlserver")
parser.add_argument("adminUser", default=True,
                    help="user with admin rights sqlserver")
parser.add_argument("adminPass",  default=True,
                    help="pass admin user sqlserver")
parser.add_argument("interMedDb",  default=True,
                    help="name of the intermed database")
parser.add_argument("dbfFilesLocation",  default=True,
                    help="Location of the dbf files")
parser.add_argument("tablesIgnore", default=True,
                    help="List of dbf files to ignore")
parser.add_argument("tablesLoad", default=True,
                    help="List of dbf files to Load")
parser.add_argument("logsFolder", default=True,
                    help="folder for logs")


args = parser.parse_args()

print(args.serverTyp + "_" + args.hostIp + "_" + args.adminUser + "_" + args.adminPass + "_" + args.interMedDb + "_" + args.dbfFilesLocation  + "_" + args.tablesIgnore + "_" + args.tablesLoad)

logger = logging.getLogger('')
logger.setLevel(logging.DEBUG)
format = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")


ch = logging.StreamHandler(sys.stdout)
ch.setFormatter(format)
ch.setLevel(logging.CRITICAL)
logger.addHandler(ch)

fh = handlers.RotatingFileHandler(args.logsFolder + '/migrationLog-' + datetime.datetime.now().strftime('%H_%M_%d_%m_%Y.log'),
                                  maxBytes=(1048576 * 5), backupCount=7)
fh.setFormatter(format)
fh.setLevel(logging.INFO)
logger.addHandler(fh)

#--------------------------------------------------------------------------------------------------------
def queryinsert(conex,query,message):
    try:
        # print(query)
        cursor = conex.cursor()
        cursor.execute(query)
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
def changeDatabase(serverTyp,hostIp,database,adminUser,adminPass):
    try:
        conex = pyodbc.connect(
            r'DRIVER={'+ serverTyp + '};'
            r'SERVER='+hostIp+';'
            r'DATABASE='+database+';'
            r'UID='+adminUser+';'
            r'PWD='+adminPass, autocommit=True,pyodbc_fast_execute=True
        )
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
typemap = {
        'F': 'float',
        'L': 'boolean',
        'I': 'integer',
        'C': 'varchar(max)',
        'N': 'float',  # because it can be integer or float
        'M': 'varchar',
        'D': 'date',
        'T': 'datetime',
        '0': 'integer',
    }

#--------------------------------------------------------------------------------------------------------

#conex=changeDatabase(args.serverTyp,args.hostIp,'master',args.adminUser,args.adminPass)

conex = changeDatabase(args.serverTyp, args.hostIp, args.interMedDb, args.adminUser,
                           args.adminPass)

dirpath = os.getcwd()
os.chdir(args.dbfFilesLocation)
for file in glob.glob("*.dbf"):
    #logger.critical('Encontrado: ' + file)
    base = os.path.basename(file)
    fileName = (os.path.splitext(base)[0]).lower()

    if fileName in (
            args.tablesIgnore):

        continue
    #logger.critical('Encontrado2: ' + file)
    #if fileName not in (args.tablesLoad):
     #  continue

    logger.critical('Processing: ' + file)
    table = DBF(fileName + '.dbf', parserclass=MyFieldParser, char_decode_errors='ignore',
                ignore_missing_memofile=True
                )
    field_types = {}

    defs = ', '.join(['"%s" %s' % (f, field_types[f])
                      for f in table.field_names])

    tableCreate = 'create table ' + args.interMedDb + '.dbo.vw_origin_%s (%s)' % (table.name, 'rowNum numeric (20), ' + defs + ', DELETED varchar (5)')
    print(tableCreate)

    # print(table.fields)

    logger.info('new table to create: \"' + tableCreate + '\"')
    queryinsert(conex,tableCreate, 'Creating Vw_origin_' + fileName + ' table')
    try:
        logger.warning("Going to insert to table: " + fileName)
        statement2 = "INSERT INTO " + args.interMedDb + \
                     ".dbo.vw_origin_" + fileName + "(rowNum," + table.field_names + " DELETED) VALUES "
        q1 = ''
        for i, record in enumerate(table):
            recordValue = 0
            query1 = ''
            for name, value in record.items():
                if isinstance(value, InvalidValue):
                    logger.error('records[{}][{!r}] == {!r}'.format(i, name, value))
                #print(len(str(list(record.values())[recordValue]).replace('\'', '"').replace('None','')))
                query1 += '\'' + str(list(record.values())[recordValue]).replace('\'', '"').replace('None','') + '\',' if len(str(list(record.values())[recordValue]).replace('\'', '"').replace('None',''))>0 else 'null,'

                recordValue += 1
            q1 += '(' + str(i) + ',' + query1 + ' \'N\' )'
            if i % 999 == 0 and i != 0:
                queryinsert(conex,statement2 + q1, 'inserting data')
                q1 = ''
            else:
                q1 += ','
        if q1 != '':
            queryinsert(conex,statement2 + q1[:-1], 'inserting data')
            q1 = ''
        for i, record in enumerate(table.deleted):
            recordValue = 0
            query2 = ''
            for name, value in record.items():
                if isinstance(value, InvalidValue):
                    logger.error('records[{}][{!r}] == {!r}'.format(i, name, value))
                #print(len(str(list(record.values())[recordValue]).replace('\'', '"')))
                query2 += '\'' + str(list(record.values())[recordValue]).replace('\'', '"').replace('None','') + '\',' if len(str(list(record.values())[recordValue]).replace('\'', '"').replace('None',''))>0 else 'null,'
                recordValue += 1
            q1 += '(' + str(i) + ',' + query2 + ' \'S\' )'
            if i % 999 == 0 and i != 0:
                queryinsert(conex,statement2 + q1, 'inserting data')
                q1 = ''
            else:
                q1 += ','
        if q1 != '':
            queryinsert(conex,statement2 + q1[:-1], 'inserting data')
    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue with table creation:" + str(e))
    logger.warning("insert finished")
