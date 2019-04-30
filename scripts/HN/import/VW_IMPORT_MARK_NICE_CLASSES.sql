--FIELDS [FILE_SEQ],[FILE_TYPE],[FILE_SERIES],[FILE_NBR],[NICE_CLASS_VERSION],[nice_class_edition],[nice_class_nbr],[NICE_CLASS_STATUS],[NICE_CLASS_DESCRIPTION];; 
--QUERY 
select mm.[FILE_SEQ],mm.[FILE_TYPE],mm.[FILE_SERIES],mm.[FILE_NBR],[NICE_CLASS_VERSION],[nice_class_edition],[nice_class_nbr],[NICE_CLASS_STATUS],[NICE_CLASS_DESCRIPTION] from VW_PRODUCTO mm inner join vw_import_mark aa on mm.file_seq=aa.file_seq and mm.file_type=aa.file_type and mm.file_series=aa.file_series and mm.file_nbr=aa.file_nbr;;
