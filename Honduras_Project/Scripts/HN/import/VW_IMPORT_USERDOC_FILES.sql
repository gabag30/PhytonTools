--FIELDS USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR;;
--QUERY 
select ud.USERDOC_SEQ
      ,ud.USERDOC_SERIES
      ,ud.USERDOC_NBR
      ,ud.[file_seq]
	  ,'M' FILE_TYPE
      ,ud.[file_ser] file_series
      ,ud.[file_nbr]
  FROM vw_userdoc_files ud inner join vw_import_userdoc vv on ud.userDOC_SEQ=vv.userdoc_seq and ud.userDOC_SERIES=vv.USERDOC_SERIES and ud.userDOC_NBR=vv.USERDOC_NBR;;;;