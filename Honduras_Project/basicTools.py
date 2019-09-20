import errno
import os
import pyodbc
import sys
from subprocess import call, Popen, PIPE, STDOUT

from dbfread import FieldParser, InvalidValue

from loadConfig import logger


def cmdtool(toolLocation):
    try:
        process = Popen([toolLocation], stdout=PIPE, stderr=STDOUT)
        with process.stdout:
            log_subprocess_output_screen(process.stdout)
        exitcode = process.wait()  # 0 means success
    except OSError as e:
        logger.error(str(sys.stderr) + "Execution failed:", str(e))


def log_subprocess_output_screen(pipe):
    for line in iter(pipe.readline, b''):  # b'\n'-separated lines
        logger.warning('From tool: %r', line)

def log_subprocess_output(pipe):
    for line in iter(pipe.readline, b''):  # b'\n'-separated lines
        logger.info('From SQLCMD: %r', line)

def silentremove(filename):
    try:
        os.remove(filename)
    except OSError as e: # this would be "except OSError, e:" before Python 2.6
        if e.errno != errno.ENOENT: # errno.ENOENT = no such file or directory
            raise # re-raise exception if a different error occurred

class MyFieldParser(FieldParser):
    def parse(self, field, data):
        try:
            return FieldParser.parse(self, field, data)
        except ValueError:
            return InvalidValue(data)


def changeDatabase(serverTyp,hostIp,database,adminUser,adminPass):
    try:
        conex = pyodbc.connect(
            r'DRIVER={'+ serverTyp + '};'
            r'SERVER='+hostIp+';'
            r'DATABASE='+database+';'
            r'UID='+adminUser+';'
            r'PWD='+adminPass, autocommit=True,pyodbc_fast_execute=True
        )
        #conex = conex.execution_options(pyodbc_fast_execute=True)
        logger.warning('connected to Sqlserver.')
        return conex
    except Exception as e1:

        logger.error(">>>>>>>>>>>>>>> issue with database change" + str(e1))
        sys.exit()
#-----------------------------------------------------------------------------------------

def printToTextFile(fileLocation, textToPrint):
    with open(fileLocation, "w") as text_file:
        print(f"{textToPrint}", file=text_file)

def runprocedure(conex,procedure):
    try:
        cursor = conex.cursor()
        cursor.execute("{CALL "+procedure+"}")
        return True
    except Exception as e1:
        logger.error(">>>>>>>>>>>>>>> issue with run procedure " + str(e1))



def queryinsert(conex,query,message):
    try:
        # print(query)
        cursor = conex.cursor()
        cursor.execute(query)
        #if "affected" in str(message):
         #   logger.info("Processed:" + str(message))
        #else:
         #   logger.error(">>>>>>>>>>>>>>> issue with insert query " + str(message))
        return True
    except Exception as e1:
        if ('HY090' not in str(e1)):
            logger.info("wrong query:" + query + message)
            logger.error(">>>>>>>>>>>>>>> issue with insert query " + str(e1))
            #logger.error(">>>>>>>>>>>>>>> issue with insert query " + query)
#--------------------------------
def queryInsertBig(conex,query,values,message):
    try:

        cursor = conex.cursor()
        cursor.fast_executemany = True
        cursor.executemany(query, values)
        return True
    except Exception as e1:
        if ('HY090' not in str(e1)):
            logger.info("wrong query:" + query + message)
            logger.error(">>>>>>>>>>>>>>> issue with insert query " + str(e1))
#-----------------------------------------------------------------------------------------
def queryinsertMany(conex,query,values):
    try:
        cursor = conex.cursor()
        #cursor.fast_executemany = True
        cursor.executemany(query,values)
        return True
    except Exception as e1:
        if ('HY090' not in str(e1)):
            logger.info("wrong query:" + query)
            logger.info("wrong values:" + str(values))
            logger.error(">>>>>>>>>>>>>>> issue 4 " + str(e1))
#-----------------------------------------------------------------------------------------

def viasqlcmd(query):
    try:
        retcode = call(["sqlcmd", "-Q", query])
        if retcode < 0:
            logger.error (str(sys.stderr) +"Child was terminated by signal", str(-retcode))
        else:
            logger.info (str(sys.stderr) + "Child returned, " + str(retcode))
    except OSError as e:
        logger.error (str(sys.stderr) + "Execution failed:", e)





def viasqlcmdprocedure(storeProcedure, db, user):
    try:
        process = Popen(["sqlcmd", "-Q", 'EXEC ' + db + '.' + user + '.' + storeProcedure], stdout=PIPE, stderr=STDOUT)
        with process.stdout:
            log_subprocess_output(process.stdout)
        exitcode = process.wait()  # 0 means success
    except OSError as e:
        logger.error(str(sys.stderr) + "Execution failed:", str(e))

def fileviasqlcmdsilent(file):
    try:
        # retcode = call(["sqlcmd", "-i", file.replace('/','\\') ])
        process = Popen(["sqlcmd", "-i", file.replace('/', '\\')], stdout=PIPE, stderr=STDOUT)
        with process.stdout:
            log_subprocess_output(process.stdout)
        exitcode = process.wait()  # 0 means success

    except OSError as e:
        logger.error(str(e))

def fileviasqlcmd(file):
    try:
        retcode = call(["sqlcmd", "-i", file.replace('/', '\\')])
        if retcode < 0:
            logger.error(str(sys.stderr) + "Child was terminated by signal", str(-retcode))
        else:
            logger.info(str(sys.stderr) + "Child returned, " + str(retcode))
    except OSError as e:
        logger.error(str(sys.stderr) + "Execution failed:", e)

def txtviasqlcmdsilent(text):
    try:
        # retcode = call(["sqlcmd", "-i", file.replace('/','\\') ])
        process = Popen(["sqlcmd", "-Q", text.replace('/', '\\')], stdout=PIPE, stderr=STDOUT)
        with process.stdout:
            log_subprocess_output(process.stdout)
        exitcode = process.wait()  # 0 means success

    except OSError as e:
        logger.error(str(e))
#-----------------------------------------------------------------------------------------
def queryselect(conex,query):
    try:
        cursor = conex.cursor()
        cursor.execute(query)
        return cursor.fetchall()
    except Exception as e2:
        logger.info("wrong query:" + query)
        logger.error(">>>>>>>>>>>>>>> issue with select query" + str(e2))
def queryselectOne(conex,query):
    try:
        cursor = conex.cursor()
        cursor.execute(query)
        return cursor.fetchone()
    except Exception as e2:
        logger.error(">>>>>>>>>>>>>>> issue with select one query" + str(e2))
def querygetcursor(conex,query):
    try:
        cursor = conex.cursor()
        cursor.execute(query)
        return cursor
    except Exception as e2:
        logger.error(">>>>>>>>>>>>>>> issue with get cursor" + str(e2))

#-----------------------------------------------------------------------------------------
def queryselectmany(conex,query,size):
    try:
        cursor = conex.cursor()
        cursor.execute(query)
        return cursor.fetchmany(size)
    except Exception as e2:
        logger.info("wrong query:" + query)
        logger.error(">>>>>>>>>>>>>>> issue with select many " + str(e2))


#-----------------------------------------------------------------------------------------
# fieldsSelect,fieldsInsert: string with fields name separated with commas
def insertingTableSqlServer(conex,schemaSelect,userSelect,tableSelect,fieldsSelect,schemaInsert,userInsert,tableInsert,fieldsInsert):
    statementSelect = 'select ' + fieldsSelect + ' from ' + schemaSelect + '.' + userSelect + '.' + tableSelect + ';'
    fI = fieldsSelect.split(',')
    statementInsert = 'insert into ' + schemaInsert + '.' + userInsert + '.' + tableInsert + '(' + fieldsInsert + ') values  ('+('?,'*len(fI))[:-1]+')'
    rows = queryselect(conex,statementSelect)
    logger.warning("Going to insert to table: " + tableInsert)
    try:
        q1 = []
        x = 0
        maxRows = len(rows)
        for row in rows:
            q1.append(row)
            if len(q1) == 1000:
                queryinsertMany(conex, statementInsert,q1)
                q1 = []
                x += 1000
                sys.stdout.write('\r' + 'Loaded rows so far:' + str(x) + '/' + str(maxRows))
                sys.stdout.flush()
        if len(q1) != 0:
            queryinsertMany(conex, statementInsert, q1)
    except Exception as e2:

        logger.error(">>>>>>>>>>>>>>> issue 5 " + str(e2))

def insertingIntoSqlServer(conex, conex2, tableInsert, fieldsInsert,querySel ):
    fI = fieldsInsert.split(',')
    statementInsert = 'insert into ' + tableInsert + '(' + fieldsInsert + ') values ('+('?,'*len(fI))[:-1]+')'
    statSelectCount = 'SELECT count(*) from ('+ querySel +') aa '
    logger.warning("Going to insert to table: " + tableInsert)
    try:
        q1 = []
        x=0
        maxRows = queryselectOne(conex, statSelectCount)
        crsr = querygetcursor(conex,querySel)
        while True:
            if len(q1) == 5000:
                queryinsertMany(conex2, statementInsert,q1)
                q1 = []
                x += 5000
                sys.stdout.write('\r' + 'Loaded rows into '+tableInsert+' so far:' + str(x) + '/' + str(maxRows[0]))
                sys.stdout.flush()
            row = crsr.fetchone()
            if not row:
                break
            q1.append(row)
        if len(q1) != 0:
            queryinsertMany(conex, statementInsert, q1)
            sys.stdout.write('\r' + 'Loaded rows into ' + tableInsert + ' so far:' + str(x+len(q1)) + '/' + str(maxRows[0]))
            sys.stdout.flush()
            sys.stdout.write('\n')
    except Exception as e2:
        logger.error(">>>>>>>>>>>>>>> issue 5 " + str(e2))


def imageupload(imageFile, conex, db, schema, fileSer, fileNum,fileType):
    try:

        with open(imageFile, 'rb') as f:
            bindata = f.read()
            query = 'insert into ' + db + '.' + schema + \
                    '.IP_LOGO (row_version,FILE_SEQ,FILE_TYP,FILE_SER,FILE_NBR,image_format_wcode,ind_base64,logo_data) ' \
                    'values (?,?,?,?,?,?,?,?)'
            cursor = conex.cursor()
            cursor.execute(query, (1, 1, 'M', fileSer, fileNum, fileType, 'N', pyodbc.Binary(bindata)))
    except Exception as e1:
        if ('HY090' not in str(e1)):
            logger.error(">>>>>>>>>>>>>>> issue with image upload " + str(e1))
