--FIELDS FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,country_code,application_id,priority_date,ind_accepted;; 
--QUERY 
select mm.FILE_SEQ,mm.FILE_TYPE,mm.FILE_SERIES,mm.FILE_NBR,CASE WHEN country_code IS NULL THEN 'XX' else country_code end country_code,application_id,priority_date,ind_accepted from VW_PRIO mm inner join vw_import_mark aa on mm.file_seq=aa.file_seq and mm.file_type=aa.file_type and mm.file_series=aa.file_series and mm.file_nbr=aa.file_nbr AND APPLICATION_ID IS NOT NULL;;
