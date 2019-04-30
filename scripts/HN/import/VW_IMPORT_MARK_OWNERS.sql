--FIELDS FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,ind_service,PERSON_NAME,ADDRESS_STREET,NATIONALITY_COUNTRY_CODE,RESIDENCE_COUNTRY_CODE;; 
--QUERY 
select aaa.FILE_SEQ,aaa.FILE_TYPE,aaa.FILE_SERIES,aaa.FILE_NBR,ind_service,PERSON_NAME,ADDRESS_STREET,NATIONALITY_COUNTRY_CODE,RESIDENCE_COUNTRY_CODE from(
  SELECT cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
 'M' FILE_TYPE,
   cast(left(nro_solici,4)  as numeric (4,0)) FILE_SERIES,  
  cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) FILE_NBR,
'1' ind_service
,case when NOMBRE is null then 'falta nombre person' else nombre end  PERSON_NAME
,case when (direccion is null or direccion='') then 'Falta direccion' else DIRECCION end ADDRESS_STREET
,case when (pais is null or pais='') then 'HN' else PAIS end NATIONALITY_COUNTRY_CODE
,case when(len(LUGAR)>2 and len(pais)=2 ) then pais when len(lugar)=2 then lugar else 'HN' end RESIDENCE_COUNTRY_CODE FROM VW_ORIGIN_titumar ori, VW_ORIGIN_TITULAR titu  where ori.deleted='N' and ori.titular=titu.TITULAR and nro_solici is not null and nro_solici!='' and len(replace(nro_solici,' ',''))>6 and isnumeric(left(nro_solici,1))=1
and len(NRO_SOLICI)>6 ) aaa inner join vw_import_mark aa on aaa.file_seq=aa.file_seq and aaa.file_type=aa.file_type and aaa.file_series=aa.file_series and aaa.file_nbr=aa.file_nbr ;;
