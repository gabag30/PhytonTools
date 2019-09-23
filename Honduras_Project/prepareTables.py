from pathlib import Path
import loadConfig
from basicTools import queryinsert, queryselect, changeDatabase, printToTextFile, fileviasqlcmd,   silentremove
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.interMedDb,loadConfig.adminUser,loadConfig.adminPass)
queryinsert(conex,'ALTER TABLE '+ loadConfig.interMedDb + '.dbo.vw_origin_titular DROP COLUMN tipo_perso', 'updating table')
queryinsert(conex,'ALTER TABLE '+ loadConfig.interMedDb + '.dbo.vw_origin_titular ADD tipo_perso varchar(1)', 'updating table')
#-----------corrections in origin tables
testFileExist=Path(loadConfig.correcOfic)
if (testFileExist.is_file()):
    logger.warning('Updating original tables with correction script.')
    with open(loadConfig.correcOfic, 'r') as myfile:
        data = myfile.read()
        data = " USE " + loadConfig.interMedDb + "\n GO \n" + data
        data = data.replace('ALTER TABLE ', 'ALTER TABLE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        data = data.replace('alter table ', 'ALTER TABLE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        data = data.replace('UPDATE ', 'UPDATE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        data = data.replace('update ', 'UPDATE ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        data = data.replace('INSERT INTO ', 'INSERT INTO ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        data = data.replace('DELETE FROM ', ';;DELETE FROM ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        data = data.replace('delete from', ';;DELETE FROM ' + loadConfig.interMedDb + '.dbo.vw_origin_')
        #data = data.replace('tipo_perso', 'BANDERA').replace('origin_ ', 'origin_')

        silentremove("C:/WIPO/outFile.txt")
        printToTextFile("C:/WIPO/outFile.txt", data)
    fileviasqlcmd("C:/WIPO/outFile.txt")
    #txtviasqlcmdsilent("C:/WIPO/outFile.txt")
# -------------------------- additional corrections
testFileExist=Path(loadConfig.specificCorr)
if (testFileExist.is_file()):
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

#------------------------------------------------------------
#----- drop intermediate tables
logger.warning('Regenerating intermediate tables.')
tablesToDelete = queryselect(conex,'SELECT \'DROP TABLE \'+table_schema+\'.\'+TABLE_NAME+\';\' FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE =\'BASE TABLE\' and TABLE_NAME like \'VW_IMPORT%\' order by len(table_name) desc;')
for row in tablesToDelete:
     try:
        queryinsert(conex,str(row[0]),'dropping tables')
     except Exception as e:
         logger.error(">>>>>>>>>>>>>>> issue with table to delete" + str(e))
# #----------regenerate intermediate tables plus indexes
with open('scripts/ImportTablesCreate.sql', 'r') as myfile:
      data = myfile.read().replace('CREATE TABLE VW_IMPORT', 'CREATE TABLE ' + loadConfig.interMedDb + '.dbo.VW_IMPORT').replace(
          'ON VW_IMPORT', 'ON ' + loadConfig.interMedDb + '.dbo.VW_IMPORT')
      try:
          for statement in data.split(';;'):
              queryinsert(conex,statement,'running sql file')
      except Exception as e:
          logger.error(">>>>>>>>>>>>>>> issue with stae" + str(e))













