import glob
import os
import re

from dbfread import DBF, InvalidValue

import loadConfig
from basicTools import queryinsert, queryselect, changeDatabase, MyFieldParser, printToTextFile, fileviasqlcmd, \
    silentremove
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,'master',loadConfig.adminUser,loadConfig.adminPass)
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
    typemap = {
        'F': 'float',
        'L': 'bit',
        'I': 'integer',
        'C': 'varchar(max)',
        'N': 'float',  # because it can be integer or float
        'M': 'varchar',
        'D': 'date',
        'T': 'datetime',
        '0': 'integer',
    }

    logger.info('Processing: ' + file)
    print('Processing: ' + file)
    table = DBF(fileName + '.dbf', parserclass=MyFieldParser, char_decode_errors='ignore',
                ignore_missing_memofile=True
                )

    field_types = {}

    for f in table.fields:
        field_types[f.name] = typemap.get(f.type, 'TEXT')

    defs = ', '.join(['"%s" %s' % (f, field_types[f])
                      for f in table.field_names])

    sql = 'create table ' + loadConfig.interMedDb + '.dbo.vw_origin_%s (%s)' % (table.name,'rowNum numeric (20), ' + defs + ', DELETED varchar (5)')


    queryinsert(conex,sql, 'Creating Vw_origin_' + fileName + ' table')

    #print(table.field_names)
        #print( fiel:fileName + ' ' + fiel:type)


    #     tableCreate = 'create table ' + loadConfig.interMedDb + '.dbo.vw_origin_' + fileName + '(rowNum numeric (20),'
    # fields = ''
    # for fie in table.field_names:
    #     tableCreate += fie + ' varchar(max),\n'
    #     fields += fie + ', '
    # tableCreate += 'DELETED varchar (5));'
    # tableCreate = re.sub('[\n\r]', '', tableCreate)
    # logger.info('new table to create: \"' + tableCreate + '\"')
