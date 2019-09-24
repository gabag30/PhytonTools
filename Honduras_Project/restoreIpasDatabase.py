import os,sys

import loadConfig
from basicTools import queryinsert, queryselect, viasqlcmd, changeDatabase,txtviasqlcmdsilent
from loadConfig import logger

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,'master',loadConfig.adminUser,loadConfig.adminPass)

try:
    if len(queryselect(conex,'select * from sys.databases where name=\'' + loadConfig.ipasDb + '\';')) > 0:
        if queryinsert(conex,'ALTER DATABASE ' + loadConfig.ipasDb + ' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;',
                       'trying to unlink database'):
            logger.info('Connections to database severed')
        if queryinsert(conex,'DROP DATABASE ' + loadConfig.ipasDb + ';', 'Trying to drop ipas database'):
            logger.info('database dropped')
    if len(queryselect(conex,'select * from DBO.SYSUSERS where name = \''+ loadConfig.ipasUser +'\';')) == 0:
        if queryinsert(conex,'CREATE USER ' + loadConfig.ipasUser + ' FOR LOGIN '+loadConfig.ipasUser+';',
                       'trying to connect ipas admin user'):
            logger.info('admin user connected')
    if queryinsert(conex,'ALTER LOGIN ' + loadConfig.ipasUser + ' WITH CHECK_POLICY = OFF,CHECK_EXPIRATION = OFF;',
                   'disabling server policies'):
        logger.info('user ready')
    if queryinsert(conex,'EXEC sp_addrolemember N\'db_datareader\', N\''+loadConfig.ipasUser+'\';', 'read access for ipas admin'):
        logger.info('access granted')
    if queryinsert(conex,'EXEC sp_addrolemember N\'db_datawriter\', N\''+loadConfig.ipasUser+'\';', 'write access for ipas admin'):
        logger.info('access granted')
    if queryinsert(conex,'ALTER LOGIN '+ loadConfig.ipasUser+' WITH PASSWORD =\''+ loadConfig.ipasPass +'\';', 'change pass for ipas admin'):
        logger.info('password changed')




    #txtviasqlcmdsilent

    #if runprocedure(conex2,loadConfig.ipasDb +".sys.sp_change_users_login 'Auto_fix','REPOSITORY',null,'B894806';"):
     #   logger.info('repository synced')

except Exception as e:
    logger.error('Failed to unlink or drop database: ' + str(e))

qq = "RESTORE DATABASE " + loadConfig.ipasDb + " FROM DISK = '"  + loadConfig.ipasBk + "' WITH RECOVERY,MOVE '" + loadConfig.ipasDb + "' TO '" + loadConfig.filesLocation + loadConfig.ipasDb + ".mdf', MOVE '" + loadConfig.ipasDb + "_LOG' TO '" + loadConfig.filesLocation + loadConfig.ipasDb + "_log.ldf',REPLACE;"


viasqlcmd(qq )
conex2=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,loadConfig.ipasDb,loadConfig.adminUser,loadConfig.adminPass)
if queryinsert(conex2,loadConfig.ipasDb +".sys.sp_change_users_login 'Auto_fix','REPOSITORY',null,'B894806';",'sync database'):
        logger.info('repository synced')
if queryinsert(conex2,loadConfig.ipasDb +".sys.sp_change_users_login 'Auto_fix','"+ loadConfig.ipasUser +"',null,'"+loadConfig.ipasPass+"';",'sync database'):
        logger.info('repository synced')
#syncText = 'USE  ' + loadConfig.ipasDb + ';\n go\n '
 #   syncText +=  "sp_change_users_login 'Auto_fix','REPOSITORY',null,'B894806';" +'\n'
  #ä  syncText +=  "sp_change_users_login 'Auto_fix','"+loadConfig.ipasUser + "',null,'"+loadConfig.ipasPass +"';" +'\n'
    #txtviasqlcmdsilent(syncText)

conex=changeDatabase(loadConfig.serverTyp,loadConfig.hostIp,'MASTER',loadConfig.adminUser,loadConfig.adminPass)

#---corregir usuarios
with open('scripts/HN/usersCorrection.sql', 'r') as myfile:
    data = myfile.read().replace(' CF_',
                                 ' ' + loadConfig.ipasDb + '.' + loadConfig.ipasUser + '.CF_').replace(' IP_',
                                 ' ' + loadConfig.ipasDb + '.' + loadConfig.ipasUser + '.IP_').replace(' DO_',
                                 ' ' + loadConfig.ipasDb + '.' + loadConfig.ipasUser + '.DO_').replace(
        ' VW_', ' ' + loadConfig.interMedDb + '.dbo.VW_')
    try:
        for statement in data.split(';;'):
            queryinsert(conex, statement, 'running sql file')
    except Exception as e:
        logger.error(">>>>>>>>>>>>>>> issue with stae" + str(e))

