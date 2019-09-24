import os

import loadConfig
from basicTools import silentremove, logger, cmdtool, changeDatabase, queryinsert, queryselectOne, querygetcursor
import dbfToSqlAllTables
import prepareTables


import prepareViews

import originToIntermed

import restoreIpasDatabase
import intermedToIpas
import logosUploader



# ---- finalizing the environment
# ----removing old config
try:
    silentremove(loadConfig.externalTool + 'config\\config350B.properties')
    with open(loadConfig.externalTool + 'config\\config350B.properties', 'a') as the_file:
        the_file.write('databaseType=MSSQLSERVER\n\n')
        the_file.write('jdbc.host=' + loadConfig.hostIp + '\n\n')
        the_file.write('jdbc.port=1433\n\n')
        the_file.write('jdbc.username=' + loadConfig.ipasUser + '\n\n')
        the_file.write('jdbc.password=' + loadConfig.ipasPass + '\n\n')
        the_file.write('jdbc.sid=NOPE\n\n')
        the_file.write('jdbc.databaseName=' + loadConfig.ipasDb + '\n\n')
        the_file.write('jdbc.instanceName=\n\n')
        the_file.close()
    silentremove(loadConfig.externalTool + 'config\\config340A.properties')
    with open(loadConfig.externalTool + 'config\\config340A.properties', 'a') as the_file:
        the_file.write('databaseType=MSSQLSERVER\n\n')
        the_file.write('jdbc.host=' + loadConfig.hostIp + '\n\n')
        the_file.write('jdbc.port=1433\n\n')
        the_file.write('jdbc.username=' + loadConfig.ipasUser + '\n\n')
        the_file.write('jdbc.password=' + loadConfig.ipasPass + '\n\n')
        the_file.write('jdbc.sid=NOPE\n\n')
        the_file.write('jdbc.databaseName=' + loadConfig.ipasDb + '\n\n')
        the_file.write('jdbc.instanceName=\n\n')
        the_file.close()
    os.chdir(loadConfig.externalTool)
    logger.warning('going to do transliteration')
    cmdtool(loadConfig.externalTool + '\\transliteration.bat')
    logger.warning('going to do phonetization')
    cmdtool(loadConfig.externalTool + '\\phoneticsearch.bat')

    logger.warning('going to do reindexation of the database')
    conex = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.ipasDb, loadConfig.ipasUser,
                           loadConfig.ipasPass)
    conex2 = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.ipasDb, loadConfig.ipasUser,
                            loadConfig.ipasPass)
    querySel = """select 'alter index ' + I.name + ' on """ + loadConfig.ipasDb + '.' + loadConfig.ipasUser + """.' + O.name + ' rebuild ;'
    queries from sys.indexes I, sys.objects  O, sys.schemas S where I.object_id = O.object_id and O.schema_id = 
    S.schema_id and O.type = 'U' and I.name <> 'NULL' and S.name = '""" + loadConfig.ipasUser + """'"""
    logger.info('query is: ' + querySel)
    maxRows = queryselectOne(conex, 'SELECT count(*) from (' + querySel + ') aa ')
    crsr = querygetcursor(conex, querySel + ';')
    while True:
        row = crsr.fetchone()
        if not row:
            break
        logger.warning('Executing indexing query: ' + str(row[0]))
        queryinsert(conex2, str(row[0]), 'indexing...')

except Exception as e:
    logger.error(str(e))


print("FINISHED !!!!!")
