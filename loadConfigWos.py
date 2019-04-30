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

def loadingData():
    for px in sys.argv:
        idx = sys.argv.index(px)
        sys.argv.pop(idx) # remove option
        myConfigJson = sys.argv[idx]
        with open(myConfigJson, 'r') as f:
            config = json.load(f)
        # server data
        hostIp1 = config['SERVERDATA']['HOST_IP']
        hostPo1 = config['SERVERDATA']['HOST_PORT']
        adminUser1 = config['SERVERDATA']['ADMIN_USER']
        adminPass1 = config['SERVERDATA']['ADMIN_PASSWORD']
        filesLocation1 = config['SERVERDATA']['FILES_LOCATION']
        tempFolder1 = config['SERVERDATA']['TEMP_LOCATION']
        return hostIp1,hostPo1, adminUser1, adminPass1, filesLocation1,tempFolder1

hostIp, hostPo, adminUser, adminPass, filesLocation,tempFolder = loadingData()
