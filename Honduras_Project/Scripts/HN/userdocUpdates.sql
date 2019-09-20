update VW_IMPORT_userdoc set userdoc_type='ESC041' where userdoc_type='SC';;
update VW_IMPORT_userdoc set userdoc_type='ESC056' where userdoc_type='CD';;
update VW_IMPORT_userdoc set userdoc_type='ESC103' where userdoc_type='EM';;
update VW_IMPORT_userdoc set userdoc_type='ESC067' where userdoc_type='FU';;
update VW_IMPORT_userdoc set userdoc_type='ESC106' where userdoc_type='LE';;
update VW_IMPORT_userdoc set userdoc_type='ESC069' where userdoc_type='LU';;
update VW_IMPORT_userdoc set userdoc_type='ESC096' where userdoc_type='TR';;
update VW_IMPORT_userdoc set userdoc_type='ESC094' where userdoc_type='RH';;
update VW_IMPORT_userdoc set userdoc_type='ESC057' where userdoc_type='CN';;
update VW_IMPORT_userdoc set userdoc_type='ESC016' where userdoc_type='NU';;
update VW_IMPORT_userdoc set userdoc_type='ESC013' where userdoc_type='CC';;
update VW_IMPORT_userdoc set userdoc_type='ESC015' where userdoc_type='CL';;
update VW_IMPORT_userdoc set userdoc_type='ESC007' where userdoc_type='RN';;
update VW_IMPORT_userdoc set userdoc_type='ESC069' where userdoc_type='LI';;

alter table VW_IMPORT_userdoc_files NOCHECK CONSTRAINT VW_USERDOC_FILES_FK_USERDOC;;
alter table VW_IMPORT_userdoc_owners NOCHECK CONSTRAINT VW_OWNERS_FK_USERDOC;;
alter table VW_IMPORT_userdoc_reprs NOCHECK CONSTRAINT VW_USERDOC_REPRS_FK_USERDOC;;
alter table VW_IMPORT_userdoc_actions NOCHECK CONSTRAINT VW_ACTION_FK_USERDOC;;
with cte as (  select uu.userdoc_seq,uu.userdoc_series,uu.userdoc_nbr from VW_IMPORT_userdoc uu join VW_IMPORT_USERDOC_RESULT rr on  uu.userdoc_seq=rr.userdoc_seq and uu.userdoc_series=rr.userdoc_series and uu.userdoc_nbr=rr.userdoc_nbr  where msg_import='Userdoc sequence / series / number already exists in the database')
 update cte set userdoc_seq='M-A';;

    with cte as (
  select uu.userdoc_seq,uu.userdoc_series,uu.userdoc_nbr from VW_IMPORT_userdoc_actions uu join VW_IMPORT_USERDOC_RESULT rr on
  uu.userdoc_seq=rr.userdoc_seq and uu.userdoc_series=rr.userdoc_series and uu.userdoc_nbr=rr.userdoc_nbr
  where msg_import='Userdoc sequence / series / number already exists in the database')

  update cte set userdoc_seq='M-A';;


    with cte as (
  select uu.userdoc_seq,uu.userdoc_series,uu.userdoc_nbr from VW_IMPORT_userdoc_owners uu join VW_IMPORT_USERDOC_RESULT rr on
  uu.userdoc_seq=rr.userdoc_seq and uu.userdoc_series=rr.userdoc_series and uu.userdoc_nbr=rr.userdoc_nbr
  where msg_import='Userdoc sequence / series / number already exists in the database')

  update cte set userdoc_seq='M-A';;


    with cte as (
  select uu.userdoc_seq,uu.userdoc_series,uu.userdoc_nbr from VW_IMPORT_userdoc_reprs uu join VW_IMPORT_USERDOC_RESULT rr on
  uu.userdoc_seq=rr.userdoc_seq and uu.userdoc_series=rr.userdoc_series and uu.userdoc_nbr=rr.userdoc_nbr
  where msg_import='Userdoc sequence / series / number already exists in the database')

  update cte set userdoc_seq='M-A';;

    with cte as (
  select uu.userdoc_seq,uu.userdoc_series,uu.userdoc_nbr from VW_IMPORT_userdoc_files uu join VW_IMPORT_USERDOC_RESULT rr on
  uu.userdoc_seq=rr.userdoc_seq and uu.userdoc_series=rr.userdoc_series and uu.userdoc_nbr=rr.userdoc_nbr
  where msg_import='Userdoc sequence / series / number already exists in the database')

  update cte set userdoc_seq='M-A';;

alter table VW_IMPORT_userdoc_files CHECK CONSTRAINT VW_USERDOC_FILES_FK_USERDOC;;
alter table VW_IMPORT_userdoc_owners CHECK CONSTRAINT VW_OWNERS_FK_USERDOC;;
alter table VW_IMPORT_userdoc_reprs CHECK CONSTRAINT VW_USERDOC_REPRS_FK_USERDOC;;
alter table VW_IMPORT_userdoc_actions CHECK CONSTRAINT VW_ACTION_FK_USERDOC;;
update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='HN' where NATIONALITY_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_USERDOC set nationality_country_code='HN' where NATIONALITY_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='HN' where NATIONALITY_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='HN' where RESIDENCE_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_USERDOC set nationality_country_code='HN' where RESIDENCE_COUNTRY_CODE in ('NH','HO','UN');;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='HN' where RESIDENCE_COUNTRY_CODE in ('NH','HO','UN');;

update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='EM' where NATIONALITY_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_USERDOC set nationality_country_code='EM' where NATIONALITY_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='EM' where NATIONALITY_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='EM' where RESIDENCE_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_USERDOC set nationality_country_code='EM' where RESIDENCE_COUNTRY_CODE in ('EU','UE');;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='EM' where RESIDENCE_COUNTRY_CODE in ('EU','UE');;

update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='DO' where NATIONALITY_COUNTRY_CODE in ('RD');;
update VW_IMPORT_USERDOC set nationality_country_code='DO' where NATIONALITY_COUNTRY_CODE in ('RD');;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='DO' where NATIONALITY_COUNTRY_CODE in ('RD');;
update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='DO' where RESIDENCE_COUNTRY_CODE in ('RD');;
update VW_IMPORT_USERDOC set nationality_country_code='DO' where RESIDENCE_COUNTRY_CODE in ('RD');;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='DO' where RESIDENCE_COUNTRY_CODE in ('RD');;
update VW_IMPORT_USERDOC set nationality_country_code='XX' where nationality_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_USERDOC_OWNERS set nationality_country_code='XX' where nationality_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_USERDOC_OWNERS set residence_country_code='XX' where residence_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_USERDOC_REPRS set nationality_country_code='XX' where nationality_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_USERDOC_REPRS set residence_country_code='XX' where residence_country_code not in (select country_code from CF_GEO_COUNTRY);;
update VW_IMPORT_USERDOC set residence_country_code='XX' where residence_country_code not in (select country_code from CF_GEO_COUNTRY);;
  with cte as( SELECT 				 oo.userdoc_seq,				 				oo.userdoc_series,				 oo.userdoc_nbr				 , action_date, action_type,				 rn=row_number() over(partition by  oo.userdoc_SEQ           ,oo.userdoc_SERIES      ,oo.userdoc_NBR      ,action_date,action_type ORDER BY oo.userdoc_SEQ          ,oo.userdoc_SERIES      ,oo.userdoc_NBR      )		FROM  vw_import_userdoc_actions oo 		)		update cte set ACTION_DATE=dateadd(second,rand()*100*rn,action_date) where rn>1;;

 With cte as (
select oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR
      ,ind_service
	  ,rn=row_number() over(partition by  oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR
      ,ind_service ORDER BY oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR)

 
from VW_IMPORT_USERDOC_reprs oo inner join VW_IMPORT_USERDOC_RESULT rr on 
oo.userdoc_seq=rr.userdoc_seq and oo.userdoc_series=rr.userdoc_series 
and oo.userdoc_nbr=rr.userdoc_nbr where  MSG_IMPORT='Several representatives flagged as service addresses')
update cte set ind_service=0 where rn>1;;

 With cte as (
select oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR
      ,ind_service
	  ,rn=row_number() over(partition by  oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR
      ,ind_service ORDER BY oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR)

 
from VW_IMPORT_USERDOC_owners oo inner join VW_IMPORT_USERDOC_RESULT rr on 
oo.userdoc_seq=rr.userdoc_seq and oo.userdoc_series=rr.userdoc_series 
and oo.userdoc_nbr=rr.userdoc_nbr where  MSG_IMPORT='Several new owners flagged as service addresses')
update cte set ind_service=0 where rn>1;;

 With cte as (
select oo.*
	  ,rn=row_number() over(partition by  oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR
      ,oo.person_name,nationality_country_code,residence_country_code,address_street ORDER BY oo.userdoc_SEQ
      ,oo.userdoc_SERIES
      ,oo.userdoc_NBR)

 
from VW_IMPORT_USERDOC_owners oo)
delete from cte where rn>1

;;
With cte as (
select oo.*
                 ,rn=row_number() over(partition by oo.userdoc_type,FILING_DATE,RECEPTION_DATE
      )


from VW_IMPORT_USERDOC oo)
delete from cte where rn>1 ;;
