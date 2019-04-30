--FIELDS userdoc_seq,USERDOC_SERIES,USERDOC_NBR,IND_SERVICE,PERSON_NAME,NATIONALITY_COUNTRY_CODE,RESIDENCE_COUNTRY_CODE,ADDRESS_STREET;;
--QUERY 
select [userdoc_SEQ]
      ,[userdoc_SERIES]
      ,[userdoc_NBR]
      ,[IND_SERVICE]
      ,case when [PERSON_NAME] is null then 'Falta capturar nombre persona' else PERSON_NAME end PERSON_NAME
      ,[NATIONALITY_COUNTRY_CODE]
      ,[RESIDENCE_COUNTRY_CODE]
      ,case when [ADDRESS_STREET] is null then 'Falta capturar dirrección persona' else ADDRESS_STREET end ADDRESS_STREET
  FROM vw_userdoc_owners;;