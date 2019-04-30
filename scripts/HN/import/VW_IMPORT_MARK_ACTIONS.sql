--TABLE VW_IMPORT_MARK_ACTIONS;;
--FIELDS [FILE_SEQ],[FILE_TYPE],[FILE_SERIES],[FILE_NBR],[ACTION_TYPE],[ACTION_DATE],[RESPONSIBLE_USER],[ACTION_NOTES1],[ACTION_NOTES2],[ACTION_USER],[ACTION_CATEGORY];; 
--QUERY 
select mm.[FILE_SEQ],mm.[FILE_TYPE],mm.[FILE_SERIES],mm.[FILE_NBR],mm.[ACTION_TYPE],mm.[ACTION_DATE],mm.[RESPONSIBLE_USER],mm.[ACTION_NOTES1],mm.[ACTION_NOTES2],mm.[ACTION_USER],mm.[ACTION_CATEGORY] from VW_MOVIMI mm inner join vw_import_mark aa on mm.file_seq=aa.file_seq and mm.file_type=aa.file_type and mm.file_series=aa.file_series and mm.file_nbr=aa.file_nbr;;
--LIMIT 
--cast(cast(FILE_SEQ as varchar)+cast(FILE_TYPE as varchar) + cast(FILE_SERIES as varchar) + cast(FILE_NBR as varchar) as varchar) NOT IN (SELECT cast(cast(FILE_SEQ as varchar)+cast(FILE_TYPE as varchar) + cast(FILE_SERIES as varchar) + cast(FILE_NBR as varchar) as varchar) from VW_IMPORT_MARK);;