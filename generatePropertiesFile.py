import os
import errno
from argparse import ArgumentParser
parser = ArgumentParser()
parser.add_argument("externalToolLocation",default=True,help="Location of the wipo tool")
parser.add_argument("databaseType",default=True,help="Type of database")
parser.add_argument("host",default=True,help="host ")
parser.add_argument("port",default=True,help="port")
parser.add_argument("ipasUser",default=True,help="name of the ipas schema user")
parser.add_argument("ipasPass",default=True,help="password of the ipas schema")
parser.add_argument("sid",default=True,help="Oracle SID, if MSSQL user NONE")
parser.add_argument("ipasDb",default=True,help="IPAS database name")
parser.add_argument("instanceName",default=True,help="MSSQL server instance name if different than standard")
args = parser.parse_args()
try:
    os.remove(args.externalToolLocation + 'config\\config311.properties')
except OSError as e:  # this would be "except OSError, e:" before Python 2.6
    if e.errno != errno.ENOENT:  # errno.ENOENT = no such file or directory
        raise  # re-raise exception if a different error occurred
try:
    with open(args.externalToolLocation + 'config\\config311.properties', 'a') as the_file:
        the_file.write('databaseType='+args.databaseType+'\n\n')
        the_file.write('jdbc.host=' + args.host + '\n\n')
        the_file.write('jdbc.port='+args.port+'\n\n')
        the_file.write('jdbc.username=' + args.ipasUser + '\n\n')
        the_file.write('jdbc.password=' + args.ipasPass + '\n\n')
        the_file.write('jdbc.sid='+args.sid+'\n\n')
        the_file.write('jdbc.databaseName=' + args.ipasDb + '\n\n')
        the_file.write('jdbc.instanceName='+args.instanceName+'\n\n')
        the_file.close()
except Exception as e:
    print(str(e))
