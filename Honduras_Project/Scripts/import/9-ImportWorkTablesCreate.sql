

select  M.*,
        cast(null as datetime)       FIRST_PRIORITY_DATE,
        cast(null as numeric(4))     MAIN_OWNER_ADDR_NBR,
        cast(null as numeric(10))    MAIN_OWNER_PERSON_NBR,
        cast(null as numeric(4))     SERVICE_ADDR_NBR,
        cast(null as numeric(10))    SERVICE_PERSON_NBR,
        cast(null as varchar(254)) NICE_CLASS_TXT,
        cast(null as numeric(10))    MARK_CODE,
        cast(null as varchar(8))   PROC_TYP,
        cast(null as numeric(10))    PROC_NBR,
        cast(null as varchar(8))   STATUS_CODE
into	WRK_MARK
from    VW_IMPORT_MARK M
where   IND_IMPORT = 8;

create index wrk_mark on wrk_mark(file_seq, file_type, file_series, file_nbr);

    
select  T.*,
        cast(null as numeric(10))    PERSON_NBR,
        cast(null as numeric(4))     ADDR_NBR
into	WRK_MARK_OWNERS
from    VW_IMPORT_MARK_OWNERS T
where   file_nbr = 999999;

alter	table WRK_MARK_OWNERS add rowid INT identity

create index wrk_mark_owners on wrk_mark_owners(file_seq, file_type, file_series, file_nbr);


select  T.*,
        cast(null as numeric(10))    PERSON_NBR,
        cast(null as numeric(4))     ADDR_NBR
into	WRK_MARK_REPRS
from    VW_IMPORT_MARK_REPRS T
where   file_nbr = 999999;

alter	table WRK_MARK_REPRS add rowid INT identity

create index wrk_mark_reprs on wrk_mark_reprs(file_seq, file_type, file_series, file_nbr);

    
select  T.*,
        cast(null as numeric(22))    PRIORITY_APPL_ID_ALT
into	WRK_MARK_PRIORITIES
from    VW_IMPORT_MARK_PRIORITIES T
where   file_nbr = 999999;

create index wrk_mark_priorities on wrk_mark_priorities(file_seq, file_type, file_series, file_nbr);


select  T.*
into	WRK_MARK_NICE_CLASSES
from    VW_IMPORT_MARK_NICE_CLASSES T
where   file_nbr = 999999;

create index wrk_mark_nice_classes on wrk_mark_NICE_CLASSES(file_seq, file_type, file_series, file_nbr);


select  T.*,
        cast(null as numeric(10))     ACTION_NBR
into	WRK_MARK_ACTIONS
from    VW_IMPORT_MARK_ACTIONS T
where   file_nbr = 999999;

create index wrk_mark_actions on wrk_mark_actions(file_seq, file_type, file_series, file_nbr);

alter table wrk_mark_actions 
add constraint wrk_mark_actions_pk primary key  (file_seq, file_type, file_series, file_nbr, action_date, action_type);

select  PERSON_GROUP_CODE, cast(null as numeric(5)) AGENT_CODE, 
        PERSON_NAME,PERSON_NAME_LANG2, NATIONALITY_COUNTRY_CODE, IND_COMPANY, LEGAL_NATURE,LEGAL_NATURE_LANG2, LEGAL_ID_TYPE, LEGAL_ID_NBR, INDIVIDUAL_ID_TYPE, INDIVIDUAL_ID_NBR, EMAIL, TELEPHONE, 
        RESIDENCE_COUNTRY_CODE, STATE_NAME, STATE_CODE,CITY_CODE, CITY_NAME, ADDRESS_ZONE, ADDRESS_STREET, ADDRESS_STREET_LANG2,ZIP_CODE, 
        PERSON_NBR, ADDR_NBR, 123456789 REF_NBR
into	wrk_person_addr
from    wrk_mark_owners T;

/* remove non-null constraint in address street */
alter table wrk_person_addr alter column ADDRESS_STREET varchar(2000) null;

create index wrk_person_addr on wrk_person_addr(ref_nbr);


select  M.*,
        cast(null as numeric(10))    APPLICANT_PERSON_NBR,
        cast(null as numeric(4))     APPLICANT_ADDR_NBR,
        cast(null as varchar(8))   USERDOC_PROC_TYP,
        cast(null as numeric(10))    USERDOC_PROC_NBR,
        cast(null as varchar(8))   USERDOC_STATUS_CODE
into	WRK_USERDOC
from    VW_IMPORT_USERDOC M
where   IND_IMPORT = 8;

alter	table WRK_USERDOC add rowid INT identity

create index wrk_userdoc on wrk_userdoc(userdoc_seq, userdoc_series, userdoc_nbr);


select  M.*,
        cast(null as varchar(8))   USERDOC_FILE_PROC_TYP,
        cast(null as numeric(10))    USERDOC_FILE_PROC_NBR,
        cast(null as varchar(8))   USERDOC_FILE_STATUS_CODE
into	WRK_USERDOC_FILES
from    VW_IMPORT_USERDOC_FILES M
where   userdoc_nbr = 999999;

create index wrk_userdoc_files on wrk_userdoc_files(userdoc_seq, userdoc_series, userdoc_nbr);


select  T.*,
        cast(null as numeric(10))    PERSON_NBR,
        cast(null as numeric(4))     ADDR_NBR
into	WRK_USERDOC_OWNERS
from    VW_IMPORT_USERDOC_OWNERS T
where   userdoc_nbr = 999999;

alter	table WRK_USERDOC_OWNERS add rowid INT identity

create index wrk_userdoc_owners on wrk_userdoc_owners(userdoc_seq, userdoc_series, userdoc_nbr);


select  T.*,
        cast(null as numeric(10))    PERSON_NBR,
        cast(null as numeric(4))     ADDR_NBR
into	WRK_USERDOC_REPRS
from    VW_IMPORT_USERDOC_REPRS T
where   userdoc_nbr = 999999;

alter	table WRK_USERDOC_REPRS add rowid INT identity

create index wrk_userdoc_reprs on wrk_userdoc_reprs(userdoc_seq, userdoc_series, userdoc_nbr);


select  T.*,
        cast(null as numeric(10))     ACTION_NBR
into	WRK_USERDOC_ACTIONS
from    VW_IMPORT_USERDOC_ACTIONS T
where   userdoc_nbr = 999999;

create index wrk_userdoc_actions on wrk_userdoc_actions(userdoc_seq, userdoc_series, userdoc_nbr);

alter table wrk_userdoc_actions 
add constraint wrk_userdoc_actions_pk primary key  (userdoc_seq, userdoc_series, userdoc_nbr, action_date, action_type);

/* work tables to monitor execution time */

create table WRK_LOG (
    stage   varchar(200),
    time    datetime,
    seconds numeric
);

CREATE TABLE WRK_ACTION_OPTIONS
(   
	PROC_TYP VARCHAR(4) NOT NULL,
	PROC_NBR NUMERIC(8)NOT NULL ,
	ACTION_NBR NUMERIC(10) NOT NULL,
	CONSTRAINT WRK_ACTION_OPTIONS_PK PRIMARY KEY (proc_typ,proc_nbr,action_nbr)
);

/* work tables for validation */

select  DOC_ORI, DOC_SERIES, DOC_NBR
into	wrk_doc_key
from    VW_IMPORT_MARK
where   DOC_NBR = 999999;


create  index wrk_doc_key on wrk_doc_key(DOC_ORI, DOC_SERIES, DOC_NBR);


select  FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, IND_SERVICE, 999999 count1
into	wrk_file_service_count
from    VW_IMPORT_MARK_REPRS
where   file_nbr = 999999;


create  index wrk_file_service_count on wrk_file_service_count(FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR);


select  USERDOC_SEQ, USERDOC_SERIES, USERDOC_NBR, IND_SERVICE, 999999 count1
into	wrk_userdoc_service_count
from    VW_IMPORT_USERDOC_OWNERS
where   userdoc_nbr = 999999;


create  index wrk_userdoc_service_count on wrk_userdoc_service_count(USERDOC_SEQ, USERDOC_SERIES, USERDOC_NBR);



select  FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, APPLICATION_ID, 999999 count1
into	wrk_file_priority_count
from    VW_IMPORT_MARK_PRIORITIES
where   file_nbr = 999999;

create  index wrk_file_priority_count on wrk_file_priority_count(FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR);


select  FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, RECEIPT_NBR, 999999 count1
into	wrk_file_payment_count
from    VW_IMPORT_MARK_PAYMENTS
where   0 = 1;

create  index wrk_file_payment_count on wrk_file_payment_count(FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR);

/* IPAS-1273/1341 Added VIENNA_EDITION_CODE for Vienna classification*/
select  FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, 
        VIENNA_EDITION_CODE, VIENNA_CATEGORY, VIENNA_DIVISION, VIENNA_SECTION, 999999 count1
into	wrk_file_vienna_count
from    VW_IMPORT_MARK_VIENNA_CLASSES
where   file_nbr = 999999;


create  index wrk_file_vienna_count on wrk_file_vienna_count(FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR);

/* IPAS-1273/1341 Added NICE_CLASS_VERSION for NICE classification */
select  FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, NICE_CLASS_VERSION, NICE_CLASS_NBR, 999999 count1
into	wrk_file_nice_count
from    VW_IMPORT_MARK_NICE_CLASSES
where   file_nbr = 999999;


create  index wrk_file_nice_count on wrk_file_nice_count(FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR);


--alter table ipas_inter.dbo.vw_import_mark_owners
--add PERSON_GROUP_CODE   VARCHAR(8)


    /* patent work tables to add additional data before insertions */
        select  M.*,
                cast(null as datetime)          FIRST_PRIORITY_DATE,
                cast(null as datetime)          NOVELTY_DATE,
                cast(null as numeric(4))     MAIN_OWNER_ADDR_NBR,
                cast(null as numeric(10))    MAIN_OWNER_PERSON_NBR,
                cast(null as numeric(4))     SERVICE_ADDR_NBR,
                cast(null as numeric(10))    SERVICE_PERSON_NBR,
                cast(null as varchar(8))   PROC_TYP,
                cast(null as numeric(10))    PROC_NBR,
                cast(null as varchar(8))   STATUS_CODE
        into WRK_PATENT
        from    VW_IMPORT_PATENT M
        where   0 = 1
GO

 create index wrk_patent on wrk_patent(file_seq, file_type, file_series, file_nbr)
GO

        select  T.*,
                cast(null as numeric(10))    PERSON_NBR,
                cast(null as numeric(4))     ADDR_NBR
				into WRK_PATENT_OWNERS
        from    VW_IMPORT_PATENT_OWNERS T
        where   0 = 1
GO

alter	table WRK_PATENT_OWNERS add rowid INT identity

create index wrk_patent_owners on wrk_patent_owners(file_seq, file_type, file_series, file_nbr)
GO


        select  T.*,
                cast(null as numeric(10))    PERSON_NBR,
                cast(null as numeric(4))     ADDR_NBR
				into WRK_PATENT_REPRS	
        from    VW_IMPORT_PATENT_REPRS T
        where   0 = 1
GO

alter	table WRK_PATENT_REPRS add rowid INT identity

create index wrk_patent_reprs on wrk_patent_reprs(file_seq, file_type, file_series, file_nbr)
GO


        select  T.*,
                cast(null as numeric(10))    PERSON_NBR,
                cast(null as numeric(4))     ADDR_NBR
				into WRK_PATENT_INVENTORS
        from    VW_IMPORT_PATENT_INVENTORS T
        where   0 = 1
GO

alter	table WRK_PATENT_INVENTORS add rowid INT identity

create index wrk_patent_inventors on wrk_patent_inventors(file_seq, file_type, file_series, file_nbr)
GO

        select  T.*,
                cast(null as numeric(22))    PRIORITY_APPL_ID_ALT
				into WRK_PATENT_PRIORITIES
        from    VW_IMPORT_PATENT_PRIORITIES T
        where   0 = 1
GO

create index wrk_patent_priorities on wrk_patent_priorities(file_seq, file_type, file_series, file_nbr)
GO

        select  T.*,
                cast(null as numeric(10))     ACTION_NBR
				into WRK_PATENT_ACTIONS
        from    VW_IMPORT_PATENT_ACTIONS T
        where   0 = 1
GO

create index wrk_patent_actions on wrk_patent_actions(file_seq, file_type, file_series, file_nbr)
GO

 	/* generic work table to count number of detail records of any type, using a 20-char DETAIL_CODE column */
        select  FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, cast(null as varchar(20)) DETAIL_CODE, 999999 count1
	into    wrk_file_detail_count
        from    VW_IMPORT_MARK
        where   0 = 1
GO



  create table wrk_mark_export (
      FILE_SEQ varchar(2)   NOT NULL ,     
      FILE_TYP varchar(1)   NOT NULL ,         
      FILE_SER numeric(4,0)   NOT NULL ,         
      FILE_NBR numeric(10,0)  NOT NULL   
      )
GO
	create index wrk_mark_export_pk on wrk_mark_export(file_seq,file_typ,file_ser,file_nbr)
GO

  create table wrk_patent_export(
      FILE_SEQ varchar(2)   NOT NULL ,     
      FILE_TYP varchar(1)   NOT NULL ,         
      FILE_SER numeric(4,0)   NOT NULL ,         
      FILE_NBR numeric(10,0)  NOT NULL   
      )
GO
  

  create index wrk_patent_export_pk on wrk_patent_export(file_seq,file_typ,file_ser,file_nbr)
GO

  create table wrk_userdoc_export(
      DOC_ORI varchar(4)   NOT NULL ,     
      DOC_LOG varchar(1)   NOT NULL ,         
      DOC_SER numeric(4,0)   NOT NULL ,         
      DOC_NBR numeric(15,0)  NOT NULL   
      )
GO
  
  create index wrk_userdoc_export_pk on wrk_userdoc_export(doc_ori,doc_log,doc_ser,doc_nbr)
GO  
