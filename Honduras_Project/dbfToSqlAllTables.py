import glob
import os
from pathlib import Path
import re
from datetime import date, datetime
from dbfread import DBF, InvalidValue

import loadConfig
from basicTools import queryinsert, queryselect, changeDatabase, MyFieldParser,queryInsertBig
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,'master',loadConfig.adminUser,loadConfig.adminPass)
typemap = {
    'F': 'float',
    'L': 'bit',
    'I': 'integer',
    'C': 'varchar(max)',
    'N': 'real',  # because it can be integer or float
    'M': 'varchar(max)',
    'D': 'date',
    'T': 'datetime',
    '0': 'integer',
}

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


dirpath = os.getcwd()
os.chdir(loadConfig.dbfFilesLocation)
for file in glob.glob("*.dbf"):
    base = os.path.basename(file)
    fileName = (os.path.splitext(base)[0])
    if fileName.lower() in (
            loadConfig.tablesIgnore):
        continue
    if loadConfig.ignoreOrLoad == 'LOAD':
        if fileName.lower() not in (loadConfig.tablesLoad):
            continue
    conex = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.interMedDb, loadConfig.adminUser,
                           loadConfig.adminPass)
    logger.info('Processing: ' + file)
    table = DBF(fileName + '.dbf', parserclass=MyFieldParser, char_decode_errors='ignore',
                ignore_missing_memofile=True
                )
    field_types = {}
    for f in table.fields:
        field_types[f.name] = typemap.get(f.type, 'TEXT')
    defs = ', '.join(['"%s" %s' % (f, field_types[f])
                      for f in table.field_names])

    tableCreate = 'create table ' + loadConfig.interMedDb + '.dbo.vw_origin_%s (%s)' % (
    table.name, 'rowNum numeric (20), ' + defs + ', DELETED varchar (5)')
    #print(tableCreate)

 #'create index NSOL_'+table.name+' on '+loadConfig.interMedDb + '.dbo.vw_origin_'+table.name+'(NRO_SOLICI)

    logger.info('new table to create: \"' + tableCreate + '\"')

    #print(str(table.field_names).replace('[','').replace(']',''))
    #exit(0)
    queryinsert(conex,tableCreate.replace('\"NRO_SOLICI\" varchar(max)','\"NRO_SOLICI\" varchar(50)').replace('\"NUM_SERIE\" varchar(max)','\"NUM_SERIE\" varchar(50)'),
                'Creating Vw_origin_' + fileName + ' table')
    if 'NRO_SOLICI' in table.field_names:
        queryinsert(conex, 'create index NSOL_'+table.name+' on '+loadConfig.interMedDb + '.dbo.vw_origin_'+table.name+'(NRO_SOLICI)',
                    'Indexing Vw_origin_' + fileName + ' table')
    elif 'NUM_SERIE' in table.field_names:
        queryinsert(conex, 'create index NSER_'+table.name+' on '+loadConfig.interMedDb + '.dbo.vw_origin_'+table.name+'(NUM_SERIE)',
                    'Indexing Vw_origin_' + fileName + ' table')


    try:
        logger.warning("Going to insert to table: " + fileName)
        statement2 = "INSERT INTO " + loadConfig.interMedDb + \
                     ".dbo.vw_origin_" + fileName + "(rowNum," + str(table.field_names).replace('[','').replace(']','').replace("'","") + ", DELETED) VALUES "

        refs = ', '.join([ '?' for f in table.field_names])
        refs2 = ', '.join([f for f in table.field_names])
        sql = 'insert into %s (%s) values (%s)' % (loadConfig.interMedDb + \
                     ".dbo.vw_origin_" + fileName, "rownum, " + refs2 + ",deleted", "?,"+refs + ", ?")
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
                    year, month, day = str(value).split('-')
                    if len(year) == 4:
                        if int(year) < 1900:
                            a_list[valu] = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                        if int(year) > 2040:
                            a_list[valu] = datetime.strptime('19' + year[2:] + ' ' + month + ' ' + day, '%Y %m %d')
                    elif len(year) == 2:
                        if int(day) < 1900:
                            a_list[valu] = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')
                        if int(day) > 2040:
                            a_list[valu] = datetime.strptime('19' + day[2:] + ' ' + month + ' ' + year, '%Y %m %d')

                valu+=1
            listoflists.append(tuple([i]+a_list+['N']))
            if i % 29 == 0 and i != 0 and listoflists:
                queryInsertBig(conex,sql,listoflists, 'inserting data')
                listoflists=list()
        if listoflists:
           # print(listoflists.__sizeof__())

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
                    if len(year)==4:
                        if int(year) < 1900:
                            a_list[valu] =  datetime.strptime('19'+year[2:] + ' ' +  month + ' ' + day, '%Y %m %d')
                        if int(year)> 2040:
                           a_list[valu] =  datetime.strptime('19'+year[2:] + ' ' +  month + ' ' + day, '%Y %m %d')
                    elif len(year)==2:
                        if int(day) < 1900:
                            a_list[valu] =  datetime.strptime('19'+day[2:] + ' ' +  month + ' ' + year, '%Y %m %d')
                        if int(day)> 2040:
                           a_list[valu] =  datetime.strptime('19'+day[2:] + ' ' +  month + ' ' + year, '%Y %m %d')

                valu += 1
            listoflists.append(tuple([i] + a_list + ['S']))
            if i % 9999 == 0 and i != 0 and listoflists:
                queryInsertBig(conex,sql,listoflists, 'inserting data')
                listoflists=list()
        if listoflists:
            queryInsertBig(conex,sql,listoflists, 'inserting data')
            listoflists=list()
        #tablePg=conex(loadConfig.interMedDb + ".dbo.vw_origin_" + fileName)


    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue with table creation:" + str(e))
    logger.warning("insert finished")
os.chdir(dirpath)

