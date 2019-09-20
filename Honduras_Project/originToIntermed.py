import glob
import os

from pathlib import Path
import loadConfig
from basicTools import queryinsert, queryselect, changeDatabase, insertingIntoSqlServer
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.interMedDb,loadConfig.adminUser,loadConfig.adminPass)
#queryinsert(conex,'truncate table vw_import_agent_persons', 'updating table')
#queryinsert(conex,'delete from vw_import_agent', 'updating table')
#queryinsert(conex,'delete from  vw_import_mark', 'updating table')
#queryinsert(conex,'delete from  vw_import_mark_OWNERS', 'updating table')
#queryinsert(conex,'delete from  vw_import_mark_priorities', 'updating table')
#queryinsert(conex,'delete from  vw_import_mark_REPRS', 'updating table')
#queryinsert(conex,'delete from  vw_import_mark_vienna_classes', 'updating table')
#queryinsert(conex,'delete from  vw_import_userdoc', 'updating table')

conex2 = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.interMedDb, loadConfig.adminUser,
                                   loadConfig.adminPass)
logger.warning('starting migration to intermed.')
for file in glob.glob(loadConfig.queriesImport+"*.sql"):
    fileName = (os.path.splitext(os.path.basename(file))[0])
    queryinsert(conex, 'delete from  '+fileName+';', 'updating table')
    with open(file, 'r') as myfile:
        data = myfile.read().replace('\n','').replace('\r','')
        data = data.replace('VW_ORIGIN', loadConfig.interMedDb + '.dbo.vw_origin')
        data = data.replace(' vw_', ' '+loadConfig.interMedDb + '.dbo.vw_')
        data = data.replace(' VW_', ' ' + loadConfig.interMedDb + '.dbo.VW_')
        try:
            insertTable = ''
            insertFields = ''
            insertQuery = ''
            for statement in data.split(';;'):
                if insertFields == '' and '--FIELDS' in statement:
                    insertFields=statement.replace('--FIELDS ','')
                if insertQuery == '' and '--QUERY' in statement:
                    insertQuery = statement.replace('--QUERY ', '')
            insertingIntoSqlServer(conex,conex2, loadConfig.interMedDb+'.dbo.'+fileName,insertFields,insertQuery)
        except Exception as e:
            logger.error(conex,statement)
            logger.error(">>>>>>>>>>>>>>> issue with stae" + str(e))

# with open(loadConfig.intermedInserts, 'r') as myfile:
#     data = myfile.read().replace('\n','').replace('\r','').replace('VW_ORIGIN', loadConfig.interMedDb + '.dbo.vw_origin').replace(' vw_', ' dbo.vw_').replace(' VW_', ' dbo.vw_')
#     try:
#         for statement in data.split(';;'):
#             queryinsert(conex,statement,'running statement' +statement)
#     except Exception as e:
#         logger.error(conex,statement)
#         logger.error(">>>>>>>>>>>>>>> issue with stae" + str(e))
#
# print (' hasta aqui llego')


#old json
#
# "TO_PROCESS": {
#     "TABLES": "'agents','agents_per'",
#     "PROCESS": {
#         "agents": {
#             "fields": "'AGENT_CODE','IND_IMPORT','AGENT_NAME,IND_INACTIVE",
#             "querySel": "(select cast(replace(agente,' ','') as integer) AGENT_CODE,0 IND_IMPORT,nombre AGENT_NAME, IND_INACTIVE from (select  agente, nombre,IND_INACTIVE ,RN = ROW_NUMBER()OVER(PARTITION BY agente ORDER BY agente)from (SELECT  distinct [agente],[nombre],Case when (DELETED='S') then 1 else 0 end ind_inactive FROM dbo.vw_origin_agentes) ff where agente!=0  ) ll where RN=1)",
#             "tableIns": "VW_IMPORT_AGENT"
#         },
#         "agents_per": {
#             "fields": "'AGENT_CODE','PERSON_NAME,NATIONALITY_COUNTRY_CODE,IND_COMPANY,RESIDENCE_COUNTRY_CODE,ADDRESS_STREET",
#             "querySel": "(select cast(replace(agente,' ','') as integer) AGENT_CODE,nombre PERSON_NAME,'HN' NATIONALITY_COUNTRY_CODE,0 IND_COMPANY,'HN' RESIDENCE_COUNTRY_CODE from (select  agente, nombre ,RN = ROW_NUMBER()OVER(PARTITION BY agente ORDER BY agente)from (SELECT  [agente]     ,[nombre]      ,Case when (direccion='') then 'Dirección a capturar' else direccion end direccion,'HN' as pais FROM dbo.vw_origin_agentes) ff where agente!=0  ) ll where RN=1)",
#             "tableIns": "VW_IMPORT_AGENT_PERSONS"
#         }
#
#     }








