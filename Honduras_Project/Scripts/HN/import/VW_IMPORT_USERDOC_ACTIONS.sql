--FIELDS  USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,ACTION_TYPE,ACTION_DATE,RESPONSIBLE_USER,ACTION_NOTES1,ACTION_NOTES2,ACTION_USER,ACTION_CATEGORY;;
--QUERY 
SELECT  ud.USERDOC_SEQ,ud.USERDOC_SERIES,ud.USERDOC_NBR,ACTION_TYPE,ACTION_DATE,RESPONSIBLE_USER,ACTION_NOTES1,ACTION_NOTES2,ACTION_USER,ACTION_CATEGORY  FROM VW_MOVIMI_USERDOC ud inner join vw_import_userdoc vv on ud.USERDOC_SEQ=vv.userdoc_seq and ud.USERDOC_SERIES=vv.USERDOC_SERIES and ud.USERDOC_NBR=vv.USERDOC_NBR;;