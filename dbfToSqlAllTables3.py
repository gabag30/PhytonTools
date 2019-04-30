import glob
import os
import re

from dbfread import DBF, InvalidValue

import loadConfig
from basicTools import queryinsert, queryselect, changeDatabase, MyFieldParser, printToTextFile, fileviasqlcmd, \
    silentremove
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,'master',loadConfig.adminUser,loadConfig.adminPass)

try:
    if len(queryselect(conex,'select * from sys.databases where name=\'' + loadConfig.interMedDb + '\';')) > 0:
        if queryinsert(conex,'ALTER DATABASE ' + loadConfig.interMedDb + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;',
                       'trying to unlink database'):
            logger.info('Connections to database severed')
        if queryinsert(conex,'DROP DATABASE ' + loadConfig.interMedDb + ';', 'Trying to drop original intermedia database'):
            logger.info('database dropped')
except Exception as e:
    logger.error('Failed to unlink or drop database: ' + str(e))

if queryinsert(conex,'CREATE DATABASE ' + loadConfig.interMedDb + ' COLLATE SQL_Latin1_General_CP1_CI_AS;', 'New Intermediate databas'):
    logger.info('New Intermediate databas created')

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.interMedDb,loadConfig.adminUser,loadConfig.adminPass)
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

dirpath = os.getcwd()
os.chdir(loadConfig.dbfFilesLocation)
for file in glob.glob("*.dbf"):
    base = os.path.basename(file)
    fileName = (os.path.splitext(base)[0])
    if fileName in (
            loadConfig.tablesIgnore):
        continue
    if loadConfig.ignoreOrLoad == 'LOAD':
        if fileName not in (loadConfig.tablesLoad):
            continue
    logger.info('Processing: ' + file)
    table = DBF(fileName + '.dbf', parserclass=MyFieldParser, char_decode_errors='ignore',
                ignore_missing_memofile=True
                )


    # print(table.fields)
    tableCreate = 'create table ' + loadConfig.interMedDb + '.dbo.vw_origin_' + fileName + '(rowNum numeric (20),'
    fields = ''
    for fie in table.field_names:
        tableCreate += fie + ' varchar(max),\n'
        fields += fie + ', '
    tableCreate += 'DELETED varchar (5));'
    tableCreate = re.sub('[\n\r]', '', tableCreate)
    logger.info('new table to create: \"' + tableCreate + '\"')
    queryinsert(conex,tableCreate, 'Creating Vw_origin_' + fileName + ' table')



    try:
        logger.warning("Going to insert to table: " + fileName)
        statement2 = "INSERT INTO " + loadConfig.interMedDb + \
                     ".dbo.vw_origin_" + fileName + "(rowNum," + fields + " DELETED) VALUES "
        q1 = ''

        for i, record in enumerate(table):
            recordValue = 0
            query1 = ''
            for name, value in record.items():


                if isinstance(value, InvalidValue):
                    logger.error('value with problems')
                    logger.error('records[{}][{!r}] == {!r}'.format(i, name, value))
                    #recordValue += 1
                    #query1 += '\'\','
                    #continue
                query1 += '\'' + str(list(record.values())[recordValue]).replace('\'', '"').replace('None','') + '\','
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
                    logger.error('value with problems')
                    logger.error('records[{}][{!r}] == {!r}'.format(i, name, value))
                    #recordValue += 1
                    #query2 += '\'\','
                    #continue
                query2 += '\'' + str(list(record.values())[recordValue]).replace('\'', '"').replace('None','') + '\','
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

#-----------corrections in origin tables
os.chdir(dirpath)
logger.warning('Updating original tables with correction script.')
with open(loadConfig.correcOfic, 'r') as myfile:
    data = myfile.read()
    data = " USE " + loadConfig.interMedDb + "\n GO \n" + data
    data = data.replace('ALTER TABLE ', 'ALTER TABLE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('alter table ', 'ALTER TABLE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('UPDATE ', 'UPDATE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('update ', 'UPDATE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('INSERT INTO ', 'INSERT INTO ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('delete from', ';;DELETE FROM ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('DELETE FROM ', ';;DELETE FROM ' + loadConfig.interMedDb + '.dbo.vw_origin_')
    data = data.replace('tipo_perso', 'BANDERA').replace('origin_ ', 'origin_')

    silentremove("C:/WIPO/outFile.txt")
    printToTextFile("C:/WIPO/outFile.txt", data)
fileviasqlcmd("C:/WIPO/outFile.txt")
# -------------------------- additional corrections
logger.warning('Updating orignal tables with additional correction.')
with open(loadConfig.specificCorr, 'r') as myfile:
    data = myfile.read().replace('\n', '').replace('\r', '').replace('VW_ORIGIN',
                                                                     loadConfig.interMedDb + '.dbo.vw_origin').replace(
        ' vw_', ' dbo.vw_').replace(' VW_', ' dbo.vw_')
    try:
        for statement in data.split(';;'):
            queryinsert(conex, statement, 'running statement' + statement)
    except Exception as e:

        logger.error(">>>>>>>>>>>>>>> issue with stae" + str(e))
