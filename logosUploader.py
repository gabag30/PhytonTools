import os
import pathlib
import sys

from PIL import Image

import loadConfig
from basicTools import changeDatabase, logger, silentremove, imageupload
logger.warning("loading available logos")
conex = changeDatabase(loadConfig.serverTyp, loadConfig.hostIp, loadConfig.ipasDb, loadConfig.ipasUser,
                       loadConfig.ipasPass)
os.chdir(loadConfig.logosFiles)
for path, subdirs, files in os.walk(loadConfig.logosFiles):
    for name in files:
        #print(os.path.splitext(pathlib.PurePath(path, name).name)[0] + '_<<<<<<<<<<<<<<<<<<<<')
        fileSeries = os.path.splitext(pathlib.PurePath(path, name).name)[0][0:4]
        fileNumber = os.path.splitext(pathlib.PurePath(path, name).name)[0][4:]
        if (fileNumber.isdigit() == True):
            #print(fileSeries)
            #print(fileNumber)
            #print(str(pathlib.PurePath(path, name)).replace('\\','/'))
            if os.path.splitext(pathlib.PurePath(path, name))[1].lower() == ".tif":
                #outfile = os.path.splitext(pathlib.PurePath(path, name).name)[0] + '.jpg'
                #print(str(os.path.splitext(pathlib.PurePath(path, name).name))+'_<<<<<<<<<<<<<<<<<<<<')
                try:
                    #im = Image.open(str(pathlib.PurePath(path, name)).replace('\\','/'))
                    #logger.warning("Generating jpeg for %s" % name)
                    #im.thumbnail(im.size)
                    #im.convert('RGB')
                    #try:
                    #   im.save(outfile, "JPEG", quality=100)
                    #except Exception as e:
                    #    logger.error(">>>>> no file saved issue with " + str(e))

                    imageupload(pathlib.PurePath(path, name), conex, loadConfig.ipasDb,
                                loadConfig.ipasUser, fileSeries, fileNumber,1)
                    #silentremove(outfile)
                except Exception as e:
                    logger.error(">>>>>> issue with " + str(e))
            else:
                try:
                    imageupload(pathlib.PurePath(path, name), conex, loadConfig.ipasDb,
                                loadConfig.ipasUser, fileSeries, fileNumber,2)
                except Exception as e:
                    logger.error(">>>>>>>>>>>>>>> issue with " + str(e))



# if os.path.splitext(pathlib.PurePath(path,name))[1].lower() == ".tiff":
#     if os.path.isfile(os.path.splitext(pathlib.PurePath(path,name))[0] + ".jpg"):
#         print
#         "A jpeg file already exists for %s" % name
#     # If a jpeg is *NOT* present, create one from the tiff.
#     else:
#         outfile = os.path.splitext(pathlib.PurePath(path,name))[0] + ".jpg"
#         try:
#             im = Image.open(pathlib.PurePath(path,name))
#             print
#             "Generating jpeg for %s" % name
#             im.thumbnail(im.size)
#             im.save(outfile, "JPEG", quality=100)
#         except Exception as e:
#             print
#             e
#
