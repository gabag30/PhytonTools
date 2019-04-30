import glob
import os
import re
import sys

import loadConfig
from basicTools import queryinsert,queryselect, changeDatabase, printToTextFile, fileviasqlcmd, silentremove, runprocedure, \
    queryselectOne, viasqlcmdprocedure
from loadConfig import logger
logger.info('changing database to intermed')
conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.interMedDb,loadConfig.adminUser,loadConfig.adminPass)

queryinsert(conex, 'update ' + loadConfig.interMedDb + '.dbo.VW_IMPORT_MARK set IND_IMPORT=NULL;',
            'resetting imp tables')
queryinsert(conex, 'update ' + loadConfig.interMedDb + '.dbo.VW_IMPORT_USERDOC set IND_IMPORT=NULL;',
            'resetting imp tables')
queryinsert(conex, 'update ' + loadConfig.interMedDb + '.dbo.VW_IMPORT_AGENT set IND_IMPORT=NULL;',
            'resetting imp tables')

if len(queryselect(conex, 'select * from DBO.SYSUSERS where name = \'' + loadConfig.ipasUser + '\';')) == 0:
    if queryinsert(conex, 'CREATE USER ' + loadConfig.ipasUser + ' FOR LOGIN ' + loadConfig.ipasUser + ';',
                   'trying to connect ipas admin user'):
        logger.info('admin user connected')

if queryinsert(conex, 'EXEC sp_addrolemember N\'db_datareader\', N\'' + loadConfig.ipasUser + '\';',
               'read access for ipas admin'):
    logger.info('access granted')
if queryinsert(conex, 'EXEC sp_addrolemember N\'db_datawriter\', N\'' + loadConfig.ipasUser + '\';',
               'write access for ipas admin'):
    logger.info('access granted')





for item in ('VW_IMPORT_MARK_NICE_CLASSES_ORIGINAL'):
    try:
        so = queryselectOne(conex, """SELECT count(*) 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = '""" + item + """';""")
        if so[0] != 0:
            queryinsert(conex, 'TRUNCATE TABLE ' + loadConfig.interMedDb + '.dbo.' + item.upper(),
                        'updating doc numbers TM')
    except Exception as e:
        logger.error(str(e))
try:
    query="""with cte as
(SELECT  [FILE_SEQ]
      ,[FILE_TYPE]
      ,[FILE_SERIES]
      ,[FILE_NBR]
	  ,ROW_NUMBER() OVER (ORDER BY [FILE_SEQ]   ,[FILE_TYPE]      ,[FILE_SERIES]      ,[FILE_NBR]) AS RowNumber
  FROM """+loadConfig.interMedDb+""".[dbo].[VW_IMPORT_MARK])

  UPDATE
    Table_A
SET
    Table_A.DOC_ORI = 'HN',
    Table_A.DOC_SERIES = 2,
	Table_A.DOC_NBR = Table_b.RowNumber
FROM
    """+loadConfig.interMedDb+""".[dbo].[VW_IMPORT_MARK] AS Table_A
    INNER JOIN cte AS Table_B
        ON Table_A.FILE_SEQ = Table_B.FILE_SEQ and
		Table_A.FILE_TYPE = Table_B.FILE_TYPE and
		Table_A.FILE_SERIES = Table_B.FILE_SERIES and
		Table_A.FILE_NBR = Table_B.FILE_NBR;"""
    queryinsert(conex,query,'updating doc numbers TM')
    query2=""" select max(doc_nbr) from """+loadConfig.interMedDb+""".[dbo].[VW_IMPORT_MARK];"""
    rn=queryselectOne(conex,query2)
    query3="""with cte as (
SELECT  [USERDOC_SEQ]
      ,[USERDOC_SERIES]
      ,[USERDOC_NBR]
      ,ROW_NUMBER() OVER (ORDER BY [USERDOC_SEQ],[USERDOC_SERIES],[USERDOC_NBR]) AS RowNumber
  FROM """+loadConfig.interMedDb+""".[dbo].[VW_IMPORT_USERDOC])

   UPDATE
    Table_A
SET
    Table_A.DOC_ORI = 'HN',
    Table_A.DOC_SERIES = 2,
	Table_A.DOC_NBR = Table_b.RowNumber + cast(""" + str(rn[0]) +""" as numeric)
FROM
    """+loadConfig.interMedDb+""".[dbo].[VW_IMPORT_USERDOC] AS Table_A
    INNER JOIN cte AS Table_B
        ON Table_A.USERDOC_SEQ = Table_B.USERDOC_SEQ and
		Table_A.USERDOC_SERIES = Table_B.USERDOC_SERIES and
		Table_A.USERDOC_NBR = Table_B.USERDOC_NBR """
    queryinsert(conex, query3, 'updating doc numbers TM')
except Exception as e:
    logger.error(str(e))
logger.warning('Running initial updates to intermed.')
logger.info('changing database to intermed')
#conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.interMedDb,loadConfig.adminUser,loadConfig.adminPass)
with open(loadConfig.intermedUpdates, 'r') as myfile:
    data = myfile.read().replace('\n','').replace('\r','').replace('VW_ORIGIN', loadConfig.interMedDb + '.dbo.vw_origin').replace(' vw_', ' dbo.vw_').replace(' VW_', ' dbo.vw_')
    try:
        for statement in data.split(';;'):
            queryinsert(conex,statement,'running statement' +statement)
    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue 1 " + str(e))
logger.info('changing database to ipas')

conex = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.ipasDb, loadConfig.ipasUser,
                       loadConfig.ipasPass)

logger.warning('Creating store procedures and wrk tables.')
for item in ('WRK_MARK', 'WRK_PATENT', 'WRK_USERDOC', 'WRK_PATENT_OWNERS', 'WRK_PATENT_REPRS', 'WRK_PATENT_INVENTORS',
             'WRK_PATENT_PRIORITIES', 'WRK_PATENT_ACTIONS',
             'wrk_file_detail_count', 'wrk_mark_export', 'wrk_patent_export', 'wrk_userdoc_export', 'WRK_MARK_OWNERS',
             'WRK_MARK_REPRS', 'WRK_MARK_PRIORITIES'
             , 'WRK_MARK_NICE_CLASSES', 'WRK_MARK_ACTIONS', 'wrk_person_addr', 'WRK_USERDOC_FILES',
             'WRK_USERDOC_OWNERS', 'WRK_USERDOC_REPRS', 'WRK_USERDOC_ACTIONS',
             'WRK_LOG', 'WRK_ACTION_OPTIONS', 'wrk_doc_key', 'wrk_file_service_count', 'wrk_userdoc_service_count',
             'wrk_file_priority_count', 'wrk_file_payment_count'
             , 'wrk_file_vienna_count', 'wrk_file_nice_count'):
    try:
        so = queryselectOne(conex, """SELECT count(*) 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = '""" + loadConfig.ipasUser + """' 
                 AND  TABLE_NAME = '""" + item + """';""")
        if so[0] != 0:
            queryinsert(conex, 'DROP TABLE ' + loadConfig.ipasDb + '.' + loadConfig.ipasUser + '.' + item.upper(),
                        'updating doc numbers TM')
    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue 2 " + str(e))
logger.info('cleanning manual validation tables')


for file in glob.glob('scripts/import/'+"*.sql"):
    fileName = (os.path.splitext(os.path.basename(file))[0])
    with open(file, 'r') as myfile:
        logger.info('creating store procedure' + fileName)
        data = myfile.read()
        data = " USE "+loadConfig.ipasDb +"\n GO \n" + data
        data = re.sub("([fFiI][rRnN][oOtT][mMoO][ \t]+?)([vV][wW])[_]", "\\1" + loadConfig.interMedDb + ".dbo.\\2_",
                      data)
        data = re.sub("([tTiI][eEnN][ \t]*?)([vV][wW])[_]", "\\1" + loadConfig.interMedDb + ".dbo.\\2_",
                      data)
        data = re.sub("([ ,\t]+?)([cCiI][fFpP])[_]", "\\1" + loadConfig.ipasDb + "." + loadConfig.ipasUser +".\\2_", data)
        data = re.sub("([fFiI][rRnN][oOtT][mMoO][ \t]*?)([wW][rR][kK])[_]",
                      "\\1" + loadConfig.ipasDb + "." + loadConfig.ipasUser + ".\\2_", data)
        data = re.sub("([oOlLtTiI][nNeE][ \t]*?)([wW][rR][kK])[_]",
                      "\\1" + loadConfig.ipasDb + "." + loadConfig.ipasUser + ".\\2_", data)
        data = re.sub("(PROCEDURE[ \t]*?)([A-Z])[_]", "\\1" + loadConfig.ipasDb + "." + loadConfig.ipasUser + ".\\2_",
                      data)
        silentremove("C:/WIPO/outFile2.txt")
        silentremove("C:/WIPO/" + fileName + '.sql')
        printToTextFile("C:/WIPO/outFile2.txt",data)
        printToTextFile("C:/WIPO/" + fileName + '.sql', data)
    fileviasqlcmd("C:/WIPO/outFile2.txt")
logger.warning('Running validation and migration.')
try:
    runprocedure(conex,'ImportAgentValidate')
except Exception as e:
    logger.error('Failed to unlink or drop database: ' + str(e))
try:
    logger.warning('Migrating agents.')
    runprocedure(conex,'ImportAgentProcessAll')
except Exception as e:
    logger.error('Failed to unlink or drop database: ' + str(e))
try:
    logger.warning('Validation TM .')
    runprocedure(conex,'ImportMarkValidate')
    with open(loadConfig.tmUpdates, 'r') as myfile:
        data = myfile.read().upper().replace('\n', '').replace('\r', '').replace('VW_IMPORT',
                                                                                 loadConfig.interMedDb + '.dbo.VW_IMPORT').replace(
            'CF_', loadConfig.ipasDb + '.' + loadConfig.ipasUser + '.CF_')

        try:
            for statement in data.split(';;'):
                # print(statement)
                queryinsert(conex, statement, 'running TM updates')
        except Exception as e:
            logger.error(">>>>>>>>>>>>>>> issue 3" + str(e))

    logger.warning('Validation TM post correction.')
    runprocedure(conex, 'ImportMarkValidate')
except Exception as e:
    logger.error('Failed to unlink or drop database: ' + str(e))

try:
    logger.warning('Migrating trademarks.')
    querySel = 'SELECT COUNT(*) FROM ' + loadConfig.interMedDb + '.dbo.VW_IMPORT_MARK WHERE IND_IMPORT=9;'
    maxRows = queryselectOne(conex, querySel)
    while True:
        query = """ with cte as (select top(11000) FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,IND_IMPORT FROM """ + loadConfig.interMedDb \
                + """.dbo.VW_IMPORT_MARK WHERE IND_IMPORT=9) update cte set IND_IMPORT=0;"""
        queryinsert(conex, query, 'importing 11000 marks')
        viasqlcmdprocedure('ImportMarkProcess', loadConfig.ipasDb, 'dbo')
        pendRows = queryselectOne(conex, querySel)
        sys.stdout.write('\r' + 'TMs migrated so far:' + str(-1 * (pendRows[0] - maxRows[0])) + '/' + str(maxRows[0]))
        sys.stdout.flush()
        if pendRows[0] == 0:
            break
    query = """ with cte as (select top(11000) FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,IND_IMPORT FROM """ + loadConfig.interMedDb \
            + """.dbo.VW_IMPORT_MARK WHERE IND_IMPORT=9) update cte set IND_IMPORT=0;"""
    queryinsert(conex, query, 'importing 11000 marks')
    viasqlcmdprocedure('ImportMarkProcess', loadConfig.ipasDb, 'dbo')
except Exception as e:
    logger.error(str(e))
logger.info('changing database to intermed')
conex2 = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.interMedDb, loadConfig.adminUser,
                        loadConfig.adminPass)

try:
    logger.warning("\n")
    logger.warning('Validation UD post correction.')
    runprocedure(conex, 'ImportUserdocValidate')
    with open(loadConfig.userdocUpdates, 'r') as myfile:
        data = myfile.read().upper().replace('\n', '').replace('\r', '').replace('VW_IMPORT',
                                                                                 loadConfig.interMedDb + '.dbo.VW_IMPORT').replace(
            'CF_', loadConfig.ipasDb + '.' + loadConfig.ipasUser + '.CF_')

        try:
            for statement in data.split(';;'):
                # print(statement)
                queryinsert(conex2, statement, 'running TM updates')
        except Exception as e:
            logger.error(">>>>>>>>>>>>>>> issue 4" + str(e))
    logger.warning('Validation UD post correction.')
    runprocedure(conex, 'ImportUserdocValidate')
    logger.warning('importing UD.')
    querySel = 'SELECT COUNT(*) FROM ' + loadConfig.interMedDb + '.dbo.VW_IMPORT_USERDOC WHERE IND_IMPORT=9;'
    maxRows = queryselectOne(conex, querySel)
    while True:
        query = """ with cte as (select top(10000) USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,IND_IMPORT FROM """ + loadConfig.interMedDb \
                + """.dbo.VW_IMPORT_USERDOC WHERE IND_IMPORT=9) update cte set IND_IMPORT=0;"""
        queryinsert(conex, query, 'importing 10000 userdocs')
        viasqlcmdprocedure('userdocImportOne', loadConfig.ipasDb, 'dbo')
        viasqlcmdprocedure('userdocImportTwo', loadConfig.ipasDb, 'dbo')
        pendRows = queryselectOne(conex, querySel)
        sys.stdout.write('\r' + 'UDs migrated so far:' + str(-1 * (pendRows[0] - maxRows[0])) + '/' + str(maxRows[0]))
        sys.stdout.flush()
        if pendRows[0] == 0:
            break
    query = """ with cte as (select top(10000) USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,IND_IMPORT FROM """ + loadConfig.interMedDb \
            + """.dbo.VW_IMPORT_USERDOC WHERE IND_IMPORT=9) update cte set IND_IMPORT=0;"""
    queryinsert(conex, query, 'importing 10000 userdocs')
    viasqlcmdprocedure('userdocImportOne', loadConfig.ipasDb, 'dbo')
    viasqlcmdprocedure('userdocImportTwo', loadConfig.ipasDb, 'dbo')




except Exception as e:
    logger.error(str(e))
