# PythonProj
Some scripts to work on migration projects

El proceso completo aún esta en desarrollo, por el momento es posible ejecutar el script dbfToSqlAllTables.py via:

{python-home}\python.exe dbfToSqlAllTables.py conf/conf{codigo-pais}.json

la configuración de base de datos, localización de dbf, etc, se movio a los archivos json en el directorio conf.

ejemplo de configuración:

{
  "_comment": " check driver here https://github.com/mkleehammer/pyodbc/wiki/Connecting-to-SQL-Server-from-Windows",
  "SERVERDATA": {
    "SERVER_TYPE": "ODBC Driver 17 for SQL Server",
    "HOST_IP": "127.0.0.1",
    "ADMIN_USER": "sa",
    "ADMIN_PASSWORD": "W1P0w1p0",
	"FILES_LOCATION": "C:\\Program Files\\Microsoft SQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\",
    "TOOL_LOCATION": "F:\\Dropbox\\Dropbox\\WIPO\\WIPOTools\\PhonAndTransli\\"

  },
  "INTERMED": {
    "DB_NAME": "HN1"
  },
  "SOURCEDATA": {
    "FILE_LOCATION": "C:/WIPO/HondurasFoxPro",
    "TABLES_IGNORE": "'MARCATEMP','petic'",
    "TABLES_LOAD":    "'agentes', 'ccvs', 'codigos', 'eventab', 'marca', 'migracio', 'movimi', 'nuenoms', 'orinoms', 'Pago','peticion','petireg', 'PODER', 'poderes', 'PRIORIDA', 'producto', 'status', 'titular', 'titumar', 'users'",
    "IGNORE_LOAD": "LOAD"
  },
  "IPASDB": {
    "DB_NAME": "HNMARCAS",
	"USER_NAME": "HNADMIN",
	"USER_PASSWORD": "HNADMIN",
    "BACKUP_LOCATION": "backup/HNMARCAS.bak",
    "LOGOS_LOCATION": "F:\\Dropbox\\myCloud\\WIPOIPOBSD\\IpasDumps\\Honduras\\Graficos\\"
  },
  "SCRIPTS" : {
    "QUERIES_IMPORT_FOLDER": "scripts/HN/import/",
    "VISTAS_ESPECIFICAS": "scripts/HN/vistas.sql",
    "CORRECCIONES_ESPECIFICAS": "scripts/HN/updatesOrigin.sql",
	"CORRECCIONES_OFICINA": "scripts/HN/IPAS-Inconsistencias-Marcas.sql",
    "INSERTS_INTERMED": "scripts/HN/inserts.sql",
    "INTERMED_UPDATE": "scripts/HN/intermUpdates.sql",
    "TM_UPDATE_VALIDATION": "scripts/HN/tmUpdates.sql",
    "UD_UPDATE_VALIDATION": "scripts/HN/userdocUpdates.sql"
  },
  "IGNORE" : {
     "VW_ORIGIN_MARCA":"97012,99218,108055,108921,108934,114363,118123,195550"
  }
}

HN:
para ejecutar la migración de marcas en forma periódica, por favor programar la ejecución de lo siguiente:
{python-home}\python.exe hnMigrationFinal.py conf/confHn.json

Por el tema de la herramienta externa para la refonetización y transliteración, por favor descargarla desde aquí (se necesitan credenciales de cuenta de WIKI de OMPI):
https://www3.wipo.int/confluence/display/wipoimd/Phonetisation+And+Transliteration+Utilities

Una vez descarga y instalada en el servidor, incluir el directorio de su localización en el json (en SERVERDATA/TOOL_LOCATION)
