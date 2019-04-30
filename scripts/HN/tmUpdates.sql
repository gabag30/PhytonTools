with cte as (
select FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_NBR,rn=row_number()over(partition by  FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_NBR ORDER BY FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_NBR) from VW_IMPORT_MARK_NICE_CLASSES
 
)
DELETE FROM cte WHERE rn >1;;

With cte as (
select FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					IND_COMPANY,LEGAL_NATURE,LEGAL_ID_TYPE,LEGAL_ID_NBR,INDIVIDUAL_ID_TYPE,INDIVIDUAL_ID_NBR
			,rn=row_number()over(partition by  FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					IND_COMPANY,LEGAL_NATURE,LEGAL_ID_TYPE,LEGAL_ID_NBR,INDIVIDUAL_ID_TYPE,INDIVIDUAL_ID_NBR ORDER BY FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR)  FROM VW_IMPORT_MARK_REPRS 
)
delete from cte where rn >1;;

update VW_IMPORT_MARK_OWNERS set nationality_country_code='HN' where NATIONALITY_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_MARK_REPRS set nationality_country_code='HN' where NATIONALITY_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_MARK_OWNERS set nationality_country_code='HN' where RESIDENCE_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_MARK_REPRS set nationality_country_code='HN' where RESIDENCE_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_MARK_PRIORITIES set country_code='HN' where COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_MARK_OWNERS set nationality_country_code='EM' where NATIONALITY_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_MARK_REPRS set nationality_country_code='EM' where NATIONALITY_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_MARK_OWNERS set nationality_country_code='EM' where RESIDENCE_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_MARK_REPRS set nationality_country_code='EM' where RESIDENCE_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_MARK_PRIORITIES set country_code='EM' where COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_MARK_OWNERS set nationality_country_code='DO' where NATIONALITY_COUNTRY_CODE in ('RD');;
update VW_IMPORT_MARK_REPRS set nationality_country_code='DO' where NATIONALITY_COUNTRY_CODE in ('RD');;
update VW_IMPORT_MARK_OWNERS set nationality_country_code='DO' where RESIDENCE_COUNTRY_CODE in ('RD');;
update VW_IMPORT_MARK_REPRS set nationality_country_code='DO' where RESIDENCE_COUNTRY_CODE in ('RD');;
update VW_IMPORT_MARK_PRIORITIES set country_code='DO' where COUNTRY_CODE in ('RD');;
update VW_IMPORT_MARK_OWNERS set nationality_country_code='XX' where nationality_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_MARK_OWNERS set residence_country_code='XX' where residence_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_MARK_REPRS set nationality_country_code='XX' where nationality_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_MARK_REPRS set residence_country_code='XX' where residence_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_MARK_PRIORITIES set country_code='XX' where country_code not in (select country_code from CF_GEO_COUNTRY);;
With cte as (
select FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 APPLICATION_ID
			,rn=row_number()over(partition by  FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 APPLICATION_ID ORDER BY FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR)  FROM VW_IMPORT_MARK_PRIORITIES 
 
)
delete from cte where rn >1;;
With cte as (
select oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,ind_service
	  ,rn=row_number() over(partition by  oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,ind_service ORDER BY oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,ind_service)
 
from VW_IMPORT_MARK_owners oo inner join VW_IMPORT_MARK_RESULT rr on 
oo.file_seq=rr.file_seq and oo.file_series=rr.file_series and oo.file_type=rr.file_type 
and oo.file_nbr=rr.file_nbr where  MSG_IMPORT='Several owners flagged as service addresses'

)
update cte set ind_service=0 where rn>1;;
With cte as (
select oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,ind_service
	  ,rn=row_number() over(partition by  oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,ind_service ORDER BY oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,ind_service)
 
from VW_IMPORT_MARK_reprs oo inner join VW_IMPORT_MARK_RESULT rr on 
oo.file_seq=rr.file_seq and oo.file_series=rr.file_series and oo.file_type=rr.file_type 
and oo.file_nbr=rr.file_nbr where  MSG_IMPORT='Several representatives flagged as service addresses')
update cte set ind_service=0 where rn>1;;
 
insert into VW_IMPORT_MARK_NICE_CLASSES_ORIGINAL(FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,NICE_CLASS_NBR_ORIGINAL, NICE_CLASS_NBR_ASSIGNED ) select FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,NICE_CLASS_NBR, 1 NICE_ASSIGNED from VW_IMPORT_MARK_NICE_CLASSES where NICE_CLASS_NBR=0;;

update VW_IMPORT_MARK_NICE_CLASSES SET NICE_CLASS_NBR=1 where NICE_CLASS_NBR=0;;

insert into CF_ACTION_TYPE (ROW_VERSION,ACTION_TYP,ACTION_TYPE_NAME)
  select distinct 1,aa.action_type,'acción antigua '+aa.ACTION_TYPE from VW_IMPORT_MARK_ACTIONS aa left join CF_ACTION_TYPE bb on
  aa.ACTION_TYPE=bb.ACTION_TYP where bb.ACTION_TYP is null and aa.ACTION_TYPE is not null and aa.ACTION_TYPE!='';;
  
merge CF_ACTION_TYPE AS target using (select 'NU'  action_type from hnmarcas.hnadmin.dual) as source on target.action_typ=source.action_type when not matched by target then insert (row_version,action_typ, action_type_name) values (1,'NU','acción nula del foxpro'); ;;
update VW_IMPORT_MARK_ACTIONS set ACTION_TYPE='NU' where action_type is null or action_TYPE='';;



insert into VW_IMPORT_MARK_NICE_CLASSES_ORIGINAL(FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,NICE_CLASS_NBR_ORIGINAL, NICE_CLASS_NBR_ASSIGNED ) 
select aa.FILE_SEQ,AA.file_TYPE,AA.file_series,AA.file_NBR,0,1 from VW_IMPORT_MARK aa left join  VW_IMPORT_MARK_NICE_CLASSES cc on   aa.FILE_SEQ=cc.FILE_SEQ and aa.FILE_TYPE=cc.FILE_TYPE and aa.FILE_SERIES=cc.FILE_SERIES and aa.file_nbr=cc.file_nbr where cc.FILE_NBR is null ;;
insert into vw_import_MARK_nice_classes (FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_VERSION
      ,NICE_CLASS_EDITION
      ,NICE_CLASS_NBR
      ,NICE_CLASS_STATUS)
select aa.FILE_SEQ,AA.file_TYPE,AA.file_series,AA.file_NBR,'2017.01',11,1,'R' from VW_IMPORT_MARK aa left join  VW_IMPORT_MARK_NICE_CLASSES cc on   aa.FILE_SEQ=cc.FILE_SEQ and aa.FILE_TYPE=cc.FILE_TYPE and aa.FILE_SERIES=cc.FILE_SERIES and aa.file_nbr=cc.file_nbr where cc.FILE_NBR is null ;;

With cte as (
select oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,VIENNA_CATEGORY,VIENNA_DIVISION,VIENNA_SECTION
	  ,rn=row_number() over(partition by  oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      ,VIENNA_CATEGORY,VIENNA_DIVISION,VIENNA_SECTION ORDER BY oo.FILE_SEQ
      ,oo.FILE_TYPE
      ,oo.FILE_SERIES
      ,oo.FILE_NBR
      )
 
from VW_IMPORT_MARK_VIENNA_CLASSES oo 

)

delete from cte where rn>1;;

insert into CF_CLASS_VIENNA_CATEG (ROW_VERSION,VIENNA_CATEGORY_CODE,VIENNA_CATEGORY_NAME,VIENNA_EDITION_CODE)			select distinct 1,vienna_category,'Error foxpro','07-2013.01' from VW_IMPORT_MARK_VIENNA_CLASSES where VIENNA_CATEGORY not in (select VIENNA_CATEGORY_code from CF_CLASS_VIENNA_CATEG);;
insert into CF_CLASS_VIENNA_DIVIS(ROW_VERSION,VIENNA_CATEGORY_CODE,VIENNA_DIVISION_CODE,VIENNA_DIVISION_NAME,VIENNA_EDITION_CODE)					select distinct 1,vienna_category,VIENNA_DIVISION,'Error foxpro','07-2013.01' from VW_IMPORT_MARK_VIENNA_CLASSES cc left join CF_CLASS_VIENNA_DIVIS dd			on cc.VIENNA_CATEGORY=dd.VIENNA_CATEGORY_CODE and cc.VIENNA_DIVISION=dd.VIENNA_DIVISION_CODE			where dd.VIENNA_CATEGORY_CODE is null and dd.VIENNA_DIVISION_CODE is null;;
insert into CF_CLASS_VIENNA_SECT (ROW_VERSION,VIENNA_CATEGORY_CODE,VIENNA_DIVISION_CODE,VIENNA_SECTION_CODE,VIENNA_SECTION_NAME,VIENNA_EDITION_CODE)			select distinct 1,vienna_category,VIENNA_DIVISION,VIENNA_SECTION,'Error foxpro','07-2013.01' from VW_IMPORT_MARK_VIENNA_CLASSES cc left join CF_CLASS_VIENNA_SECT dd			on cc.VIENNA_CATEGORY=dd.VIENNA_CATEGORY_CODE and cc.VIENNA_DIVISION=dd.VIENNA_DIVISION_CODE and cc.VIENNA_SECTION=dd.VIENNA_SECTION_CODE			where dd.VIENNA_CATEGORY_CODE is null and dd.VIENNA_DIVISION_CODE is null and cc.VIENNA_SECTION is not null ;;

update vw_import_MARK_vienna_classes set vienna_section ='0' where vienna_section is null;;

update vw_import_mark set ENTITLEMENT_DATE=case when dateadd(year,-10,expiration_date)>REGISTRATION_DATE then dateadd(year,-10,expiration_date) else REGISTRATION_DATE end  where ENTITLEMENT_DATE>GETDATE();;
update vw_import_mark set ENTITLEMENT_DATE=dateadd(year,-10,EXPIRATION_DATE) where ENTITLEMENT_DATE>EXPIRATION_DATE;;
update vw_import_mark set ENTITLEMENT_DATE=registration_date where ENTITLEMENT_DATE>getdate();;
update vw_import_mark  set PUBLICATION_DATE=null,PUBLICATION_NOTES=PUBLICATION_DATE where PUBLICATION_DATE>getdate();;
update VW_IMPORT_MARK_PRIORITIES set notes=PRIORITY_DATE,PRIORITY_DATE=cast(cast(file_series as varchar) + substring(cast(cast(priority_date as date) as varchar),5,6) as datetime) where PRIORITY_DATE>GETDATE();;
update VW_IMPORT_MARK_ACTIONS set action_date=case when substring(cast(cast(action_date as date) as varchar),3,2)>substring(cast(cast(getdate() as date) as varchar),3,2) then cast(cast(file_series as varchar) + substring(cast(cast(action_date as date) as varchar),5,6) as datetime) else cast('20'+ substring(cast(cast(action_date as date) as varchar),3,2)+ substring(cast(cast(action_date as date) as varchar),5,6) as datetime) end  where action_date>getdate();;

insert into CF_FILE_SEQUENCE (row_version,FILE_SEQ,FILE_SEQ_NAME) select distinct 1,oo.FILE_SEQ,'SEQ-'+oo.FILE_SEQ from VW_IMPORT_MARK oo join VW_IMPORT_MARK_RESULT rr on oo.file_seq=rr.file_seq and oo.file_series=rr.file_series and oo.file_type=rr.file_type  and oo.file_nbr=rr.file_nbr where  MSG_IMPORT='Invalid file sequence code';;

update VW_IMPORT_MARK set APPLICATION_SUBTYPE='MF' where MARK_NAME!='' and APPLICATION_SUBTYPE='';;

update VW_IMPORT_MARK set APPLICATION_SUBTYPE='MF' where APPLICATION_SUBTYPE='D';;

update VW_IMPORT_MARK set APPLICATION_SUBTYPE='MS' where  APPLICATION_SUBTYPE='se';;


with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=6;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=5;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=4;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=3;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=2;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=2;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=2;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=2;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=2;;
with cte as( SELECT 				 oo.file_seq,				 oo.file_type,				oo.file_series,				 oo.file_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      ,action_date,action_type ORDER BY oo.FILE_SEQ      ,oo.FILE_TYPE      ,oo.FILE_SERIES      ,oo.FILE_NBR      )		FROM  vw_import_mark_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*1000*rn,action_date) where rn=2;;

insert into CF_DOC_SERIES (ROW_VERSION,DOC_SER,IND_ACTIVE) values (1,'2','S');;
update CF_REPRESENTATIVE_TYPE set REPRESENTATIVE_TYP='AG' where REPRESENTATIVE_TYP='AL';;

update vw_import_mark_actions set action_date= getdate() where action_date> getdate();;

update vw_import_mark set mark_name='Falta capturar nombre de la marca' where mark_name is null and sign_type='N';;

update vw_import_mark set entitlement_date=dateadd(year,-10,EXPIRATION_DATE) where entitlement_date is null and expiration_date is not null;;

update vw_import_mark set registration_date=dateadd(year,-10,registration_date) where registration_date> getdate();;
update vw_import_mark set entitlement_date=dateadd(year,-10,entitlement_date) where entitlement_date> getdate();;


with cte as (
select FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_NBR,rn=row_number()over(partition by  FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_NBR ORDER BY FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,NICE_CLASS_NBR) from VW_IMPORT_MARK_NICE_CLASSES
 
)
DELETE FROM cte WHERE rn >1;;

with cte as (
select FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,[ACTION_TYPE]
      ,[ACTION_DATE],rn=row_number()over(partition by  FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,[ACTION_TYPE]
      ,[ACTION_DATE] ORDER BY FILE_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,FILE_NBR
      ,[ACTION_TYPE]
      ,[ACTION_DATE]) from VW_IMPORT_MARK_ACTIONS
 
)
DELETE FROM cte WHERE rn >1;;





--insert into CF_DOC_SEQUENCE (ROW_VERSION  ,DOC_SEQ_TYP   ,DOC_SEQ_NAME     ,IND_ANNUAL_SERIES   ,FIXED_SERIES    ,IND_CONT_NBR_FOR_FILE) select distinct 1,userdoc_seq,'seq alternativa userdocs'+userdoc_seq,'S',null,'N' from vw_import_userdoc where userdoc_seq!='M';;
--insert into CF_DOC_SEQUENCE (ROW_VERSION  ,DOC_SEQ_TYP   ,DOC_SEQ_NAME     ,IND_ANNUAL_SERIES   ,FIXED_SERIES    ,IND_CONT_NBR_FOR_FILE) values(1,'M-A', 'seq alternativa overlap','S',null,'N');;
;;

--insert into CF_APPLICATION_SUBTYPE(ROW_VERSION,APPL_TYP,APPL_SUBTYP,APPL_SUBTYPE_NAME)  values (1,'MAR','RO','ROTULO');;





