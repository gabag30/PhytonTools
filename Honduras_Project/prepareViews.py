from pathlib import Path
import loadConfig
from basicTools import queryinsert, queryselect, changeDatabase
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.interMedDb,loadConfig.adminUser,loadConfig.adminPass)
# #------- drop views in intermed
viewsToDelete = queryselect(conex,'SELECT \'DROP VIEW \'+table_schema+\'.\'+TABLE_NAME+\';\' FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE =\'VIEW\';')
for row in viewsToDelete:
     try:
         queryinsert(conex,str(row[0]),'deleting views')
     except Exception as e:
         logger.error(">>>>>>>>>>>>>>> issue with view to delete" + str(e))
# #------- create views in intermed
#
#exit(0)
logger.warning('creating views.')
with open(loadConfig.specificViews, 'r') as myfile:
     data = myfile.read().replace('\n','').replace('\r','').replace('VW_ORIGIN', loadConfig.interMedDb + '.dbo.vw_origin').replace(' vw_', ' dbo.vw_').replace(' VW_', ' dbo.vw_')
     try:
         for statement in data.split(';;'):
             queryinsert(conex,statement,'running statement' +statement)
     except Exception as e:

         logger.error(">>>>>>>>>>>>>>> issue with stae" + str(e))











