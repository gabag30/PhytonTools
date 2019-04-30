update VW_IMPORT_MARK set application_type='MAR';;
update VW_IMPORT_MARK set sign_type='N' where sign_type='D';;
update VW_IMPORT_MARK set sign_type='B' where sign_type='M';;
update VW_IMPORT_MARK set sign_type='L' where sign_type='F';;
update VW_IMPORT_MARK set sign_type='T' where sign_type='t';;
update VW_IMPORT_MARK set sign_type='N' where sign_type='';;
update vw_import_MARK_ACTIONS set action_user=4 where action_user=0 or action_user is null;;
update vw_import_MARK_ACTIONS set RESPONSIBLE_user=4 where RESPONSIBLE_user=0;;
update vw_import_mark_reprs set ind_service=1;;
update vw_import_mark_nice_classes set nice_class_edition=11;;
update vw_import_mark_vienna_classes set vienna_edition_code='07-2013.01';;
update VW_IMPORT_MARK_OWNERS set ind_service=1;;
insert into VW_import_mark_owners (FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,IND_SERVICE,OWNERSHIP_NOTES,PERSON_NAME,NATIONALITY_COUNTRY_CODE,RESIDENCE_COUNTRY_CODE,ADDRESS_STREET)  select mm.FILE_SEQ,mm.FILE_TYPE,mm.FILE_SERIES,mm.FILE_NBR,1,'TITULAR DESCONOCIDO AL MOMENTO DE LA MIGRACION A IPAS','TITULAR DESCONOCIDO','XX','XX','DIRECCION DESCONOCIDA'  from VW_IMPORT_MARK mm left join vw_import_mark_owners oo on mm.FILE_SEQ=oo.FILE_SEQ and mm.FILE_TYPE=oo.FILE_TYPE and mm.FILE_SERIES=oo.file_series and mm.FILE_NBR=oo.FILE_NBR  where oo.FILE_NBR is null and oo.FILE_SERIES is null and oo.FILE_TYPE is null and oo.FILE_SEQ is null;;