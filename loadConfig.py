import datetime
import json
import logging
import sys
from logging import handlers

logger = logging.getLogger('')
logger.setLevel(logging.DEBUG)
format = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")


ch = logging.StreamHandler(sys.stdout)
ch.setFormatter(format)
ch.setLevel(logging.WARNING)
logger.addHandler(ch)

fh = handlers.RotatingFileHandler('logs/migrationLog-' + datetime.datetime.now().strftime('%H_%M_%d_%m_%Y.log'),
                                  maxBytes=(1048576 * 5), backupCount=7)
fh.setFormatter(format)
fh.setLevel(logging.INFO)
logger.addHandler(fh)

myConfigJson = 'NotYetInitialized'

#print(sys.argv)

def loadingData():
    for px in sys.argv:
        idx = sys.argv.index(px)
        sys.argv.pop(idx) # remove option
        myConfigJson = sys.argv[idx]
        with open(myConfigJson, 'r') as f:
            config = json.load(f)
        # server data
        hostIp1 = config['SERVERDATA']['HOST_IP']
        adminUser1 = config['SERVERDATA']['ADMIN_USER']
        adminPass1 = config['SERVERDATA']['ADMIN_PASSWORD']
        filesLocation1 = config['SERVERDATA']['FILES_LOCATION']
        serverTyp1 = config['SERVERDATA']['SERVER_TYPE']
        # intermed db data
        interMedDb1 = config['INTERMED']['DB_NAME']
        # ipas db data
        ipasDb1 = config['IPASDB']['DB_NAME']
        ipasUser1 = config['IPASDB']['USER_NAME']
        ipasPass1 = config['IPASDB']['USER_PASSWORD']
        ipasBk1 = config['IPASDB']['BK_LOC']

        logosFiles1 = config['IPASDB']['LOGOS_LOCATION']
        # dbfStuff
        dbfFilesLocation1 = config['SOURCEDATA']['FILE_LOCATION']
        tablesIgnore1 = config['SOURCEDATA']['TABLES_IGNORE']
        tablesLoad1 = config['SOURCEDATA']['TABLES_LOAD']
        ignoreOrLoad1 = config['SOURCEDATA']['IGNORE_LOAD']
        specificViews1 = config['SCRIPTS']['VISTAS_ESPECIFICAS']
        specificCorr1 = config['SCRIPTS']['CORRECCIONES_ESPECIFICAS']
        correcOfic1= config['SCRIPTS']['CORRECCIONES_OFICINA']
        intermedInserts1= config['SCRIPTS']['INSERTS_INTERMED']
        ignoreRecordsTM1= config['IGNORE']['VW_ORIGIN_MARCA']
        queriesImport1= config['SCRIPTS']['QUERIES_IMPORT_FOLDER']
        intermedUpdates1 = config['SCRIPTS']['INTERMED_UPDATE']
        tmUpdates1 = config['SCRIPTS']['TM_UPDATE_VALIDATION']
        userdocUpdates1 = config['SCRIPTS']['UD_UPDATE_VALIDATION']
        externalTool1 = config['SERVERDATA']['TOOL_LOCATION']
        tempFolder1 = config['SERVERDATA']['TEMP_FOLDER']
        #print(tablesLoad1)
        return hostIp1, adminUser1, adminPass1, filesLocation1, \
               serverTyp1, interMedDb1, ipasDb1, ipasUser1, ipasPass1,\
                dbfFilesLocation1, tablesIgnore1, tablesLoad1, \
               ignoreOrLoad1, specificViews1, specificCorr1, \
               ignoreRecordsTM1, correcOfic1, intermedInserts1, \
               queriesImport1, intermedUpdates1, tmUpdates1, \
               userdocUpdates1, externalTool1, logosFiles1,ipasBk1,tempFolder1


hostIp, adminUser, adminPass, filesLocation, serverTyp, \
interMedDb, ipasDb, ipasUser, ipasPass, dbfFilesLocation, \
tablesIgnore, tablesLoad, ignoreOrLoad, specificViews, \
specificCorr, ignoreRecordsTM, correcOfic, intermedInserts, \
queriesImport, intermedUpdates, tmUpdates, userdocUpdates, \
externalTool, logosFiles,ipasBk,tempFolder = loadingData()
