import glob, os
#import xml.etree.ElementTree as ET
from lxml import etree
import pymysql
import pandas
import sys
import zipfile
import gzip
import shutil

import loadConfigWos

#os.chdir(loadConfigWos.filesLocation)
#for file in glob.glob("*.zip"):
 #   with zipfile.ZipFile(file, "r") as zip_ref:
  #      zip_ref.extractall(loadConfigWos.tempFolder)

os.chdir(loadConfigWos.tempFolder)
#for filgz in glob.glob("*.gz"):
 #   with gzip.open(filgz, 'rb') as f_in:
  #      with open(filgz[:-2], 'wb') as f_out:
   #         shutil.copyfileobj(f_in, f_out)
    #try:
     #   os.remove(filgz)
    #except OSError:
     #   pass

for fileXml in glob.glob("*.xml"):
    print('Parsing now file: '+fileXml)
    coords = etree.parse(fileXml).getroot()
    coords_list = []
    for coord in coords:
        this = {}
        for child in coord.getchildren():
            this[child.tag] = child.text
            print(this)








