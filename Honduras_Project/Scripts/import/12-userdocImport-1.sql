--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'userdocImportOne'
            AND type = 'P')
	DROP PROCEDURE userdocImportOne

GO
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE userdocImportOne
AS 
begin transaction;
DECLARE @NumPROC_NBR FLOAT;
DECLARE @NumACTION_NBR FLOAT;

DELETE FROM   WRK_USERDOC;    
		
INSERT INTO  WRK_USERDOC   
				( USERDOC_SEQ , 
				USERDOC_SERIES , 
				USERDOC_NBR , 
				DOC_ORI , 
				DOC_SERIES , 
				DOC_NBR , 
				USERDOC_TYPE , 
				LAW_CODE , 
				FILING_DATE , 
				RECEPTION_DATE , 
				NOTES , 
				APPLICANT_NOTES , 
				PERSON_NAME , 
				PERSON_NAME_LANG2 , 
				NATIONALITY_COUNTRY_CODE , 
				IND_COMPANY , 
				LEGAL_NATURE , 
				LEGAL_NATURE_LANG2 ,
				LEGAL_ID_TYPE , 
				LEGAL_ID_NBR , 
				INDIVIDUAL_ID_TYPE , 
				INDIVIDUAL_ID_NBR , 
				RESIDENCE_COUNTRY_CODE , 
				STATE_NAME , 
				STATE_CODE , 
				CITY_CODE ,
				CITY_NAME , 
				ADDRESS_ZONE , 
				ADDRESS_STREET , 
				ADDRESS_STREET_LANG2 ,
				ZIP_CODE , 
				EMAIL , 
				TELEPHONE , 
				CAPTURE_USER_ID , 
				CAPTURE_DATE , 
				PERSON_GROUP_CODE , 
				APPLICANT_PERSON_NBR , 
				APPLICANT_ADDR_NBR , 
				USERDOC_PROC_TYP , 
				USERDOC_PROC_NBR , 
				USERDOC_STATUS_CODE )  
		SELECT
				 USERDOC_SEQ,
				 USERDOC_SERIES,
				 USERDOC_NBR,
				 DOC_ORI,
				 DOC_SERIES,
				 DOC_NBR,
				 USERDOC_TYPE,
				 LAW_CODE,
				 FILING_DATE,
				 RECEPTION_DATE,
				 NOTES,
				 APPLICANT_NOTES,
				 PERSON_NAME,
				 PERSON_NAME_LANG2,
				 NATIONALITY_COUNTRY_CODE,
				 IND_COMPANY,
				 LEGAL_NATURE,
				 LEGAL_NATURE_LANG2,
				 LEGAL_ID_TYPE,
				 LEGAL_ID_NBR,
				 INDIVIDUAL_ID_TYPE,
				 INDIVIDUAL_ID_NBR,
				 RESIDENCE_COUNTRY_CODE,
				 STATE_NAME,
				 STATE_CODE,
				 CITY_CODE,
				 CITY_NAME,
				 ADDRESS_ZONE,
				 ADDRESS_STREET,
				 ADDRESS_STREET_LANG2,
				 ZIP_CODE,
				 EMAIL,
				 TELEPHONE,
				 CAPTURE_USER_ID,
				 CAPTURE_DATE,
				 PERSON_GROUP_CODE,
				 CAST(null as NUMERIC (10)) APPLICANT_PERSON_NBR,
				 CAST(null as NUMERIC (4)) APPLICANT_ADDR_NBR,
				 CAST(null as VARCHAR (8)) USERDOC_PROC_TYP,
				 CAST(null as NUMERIC (10)) USERDOC_PROC_NBR,
				 CAST(null as VARCHAR (8)) USERDOC_STATUS_CODE
		FROM   VW_IMPORT_USERDOC M 
		WHERE	 IND_IMPORT =9;
		 
 
		DELETE FROM   WRK_USERDOC_FILES;    
		
		INSERT INTO  WRK_USERDOC_FILES    
		SELECT		DISTINCT
				 T.*,
				 CAST(null as VARCHAR (8)) USERDOC_FILE_PROC_TYP,
				 CAST(null as NUMERIC (10)) USERDOC_FILE_PROC_NBR,
				 CAST(null as VARCHAR (8)) USERDOC_FILE_STATUS_CODE
		FROM   VW_IMPORT_USERDOC_FILES T JOIN  VW_import_userdoc M ON M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 IND_IMPORT =9;
		
		DELETE FROM   WRK_USERDOC_OWNERS;    
		
		INSERT INTO  WRK_USERDOC_OWNERS    
		SELECT
				 T.*,
				 CAST(null as NUMERIC (10)) PERSON_NBR,
				 CAST(null as NUMERIC (4)) ADDR_NBR
		FROM   VW_IMPORT_USERDOC_OWNERS T JOIN  VW_import_userdoc M ON M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 IND_IMPORT =9;
		
		DELETE FROM   WRK_USERDOC_REPRS;    
		
		INSERT INTO  WRK_USERDOC_REPRS    
		SELECT
				 T.*,
				 CAST(null as NUMERIC (10)) PERSON_NBR,
				 CAST(null as NUMERIC (4)) ADDR_NBR
		FROM   VW_IMPORT_USERDOC_REPRS T JOIN  VW_import_userdoc M ON M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 IND_IMPORT =9;
		
		DELETE FROM   WRK_USERDOC_ACTIONS;    
		
		INSERT INTO  WRK_USERDOC_ACTIONS    
		SELECT
				 T.*,
				 CAST(null as NUMERIC (4)) ACTION_NBR
		FROM   VW_IMPORT_USERDOC_ACTIONS T JOIN  VW_import_userdoc M ON M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 IND_IMPORT =9;
		 update  wrk_userdoc_actions
                set     manual_due_date = dateadd(dd, 2, manual_due_date)
                where   datepart(dw, manual_due_date) = 7 /* Saturday */
                ;
                update  wrk_userdoc_actions
                set     manual_due_date = dateadd(dd, 1, manual_due_date)
                where   datepart(dw, manual_due_date) = 1 /* Sunday */
                ;
		 
 
		DELETE FROM   wrk_person_addr;    
		
		INSERT INTO  wrk_person_addr   
				( PERSON_GROUP_CODE , 
				AGENT_CODE , 
				PERSON_NAME , 
				PERSON_NAME_LANG2 ,
				NATIONALITY_COUNTRY_CODE , 
				IND_COMPANY , 
				LEGAL_NATURE , 
				LEGAL_NATURE_LANG2 ,
				LEGAL_ID_TYPE , 
				LEGAL_ID_NBR , 
				INDIVIDUAL_ID_TYPE , 
				INDIVIDUAL_ID_NBR , 
				EMAIL , 
				TELEPHONE , 
				RESIDENCE_COUNTRY_CODE , 
				STATE_NAME , 
				STATE_CODE , 
				CITY_CODE ,
				CITY_NAME , 
				ADDRESS_ZONE , 
				ADDRESS_STREET , 
				ADDRESS_STREET_LANG2 ,
				ZIP_CODE , 
				PERSON_NBR , 
				ADDR_NBR , 
				REF_NBR )  
		SELECT
				 PERSON_GROUP_CODE,
				 CAST(null as NUMERIC (4)),
				 PERSON_NAME,
				 PERSON_NAME_LANG2,
				 NATIONALITY_COUNTRY_CODE,
				 IND_COMPANY,
				 LEGAL_NATURE,
				 LEGAL_NATURE_LANG2,
				 LEGAL_ID_TYPE,
				 LEGAL_ID_NBR,
				 INDIVIDUAL_ID_TYPE,
				 INDIVIDUAL_ID_NBR,
				 EMAIL,
				 TELEPHONE,
				 RESIDENCE_COUNTRY_CODE,
				 STATE_NAME,
				 STATE_CODE,
				 CITY_CODE,
				 CITY_NAME,
				 ADDRESS_ZONE,
				 ADDRESS_STREET,
				 ADDRESS_STREET_LANG2,
				 ZIP_CODE,
				 PERSON_NBR,
				 ADDR_NBR,
				 rowid
		FROM  wrk_userdoc_owners T;
		 
 
		EXEC IMPORTSETPERSONNBR;
		 
 
		UPDATE  T   
		SET	person_nbr = (	SELECT person_nbr
			FROM  WRK_PERSON_ADDR 
			WHERE	 ref_nbr  = T.rowid
		),	
		    addr_nbr = (	SELECT addr_nbr
			FROM  WRK_PERSON_ADDR 
			WHERE	 ref_nbr  = T.rowid
		) 
		FROM  WRK_USERDOC_OWNERS T;
		 
 
		DELETE FROM   wrk_person_addr;    
		
		INSERT INTO  wrk_person_addr   
				( PERSON_GROUP_CODE , 
				AGENT_CODE , 
				PERSON_NAME , 
				PERSON_NAME_LANG2 ,
				NATIONALITY_COUNTRY_CODE , 
				IND_COMPANY , 
				LEGAL_NATURE , 
				LEGAL_NATURE_LANG2,
				LEGAL_ID_TYPE , 
				LEGAL_ID_NBR , 
				INDIVIDUAL_ID_TYPE , 
				INDIVIDUAL_ID_NBR , 
				EMAIL , 
				TELEPHONE , 
				RESIDENCE_COUNTRY_CODE , 
				STATE_NAME , 
				STATE_CODE , 
				CITY_CODE ,
				CITY_NAME , 
				ADDRESS_ZONE , 
				ADDRESS_STREET , 
				ADDRESS_STREET_LANG2 , 
				ZIP_CODE , 
				PERSON_NBR , 
				ADDR_NBR , 
				REF_NBR )  
		SELECT
				 PERSON_GROUP_CODE,
				 AGENT_CODE,
				 PERSON_NAME,
				 PERSON_NAME_LANG2,
				 NATIONALITY_COUNTRY_CODE,
				 IND_COMPANY,
				 LEGAL_NATURE,
				 LEGAL_NATURE_LANG2,
				 LEGAL_ID_TYPE,
				 LEGAL_ID_NBR,
				 INDIVIDUAL_ID_TYPE,
				 INDIVIDUAL_ID_NBR,
				 EMAIL,
				 TELEPHONE,
				 RESIDENCE_COUNTRY_CODE,
				 STATE_NAME,
				 STATE_CODE,
				 CITY_CODE,
				 CITY_NAME,
				 ADDRESS_ZONE,
				 ADDRESS_STREET,
				 ADDRESS_STREET_LANG2,
				 ZIP_CODE,
				 PERSON_NBR,
				 ADDR_NBR,
				 T.rowid
		FROM  wrk_userdoc_reprs T;
		 
 	
		EXEC IMPORTSETPERSONNBR;
		 
 
		UPDATE  T   
		SET	person_nbr = (	SELECT person_nbr
			FROM  WRK_PERSON_ADDR 
			WHERE	 ref_nbr  = T.rowid
		),	
		    addr_nbr = (	SELECT addr_nbr
			FROM  WRK_PERSON_ADDR 
			WHERE	 ref_nbr  = T.rowid
		) 
		FROM  WRK_USERDOC_REPRS T ;
		 
 
		BEGIN
			
			

			select @NumACTION_NBR=max(action_nbr) from ip_action;


			select * from wrk_userdoc_actions; 


			with cte as (
					select *, ROW_NUMBER () OVER(order by USERDOC_NBR) as ri
					from wrk_userdoc_actions
			)
			update cte set ACTION_NBR=@NumACTION_NBR+ri
			
		END;
		
		UPDATE  T   
		SET	USERDOC_FILE_PROC_TYP = (	SELECT GENERATE_PROC_TYP
			FROM  WRK_USERDOC M,
				 CF_USERDOC_TYPE UT,
				 CF_PROCESS_TYPE PT 
			WHERE	 M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr
			 AND	M.userdoc_type  = UT.userdoc_typ COLLATE DATABASE_DEFAULT
			 AND	UT.generate_proc_typ  = PT.proc_typ
			 AND	RELATED_TO_WCODE  = 2
		),	
		    USERDOC_FILE_STATUS_CODE = (	SELECT SECONDARY_INI_STATUS_CODE
			FROM  WRK_USERDOC M,
				 CF_USERDOC_TYPE UT,
				 CF_PROCESS_TYPE PT 
			WHERE	 M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr
			 AND	M.userdoc_type  = UT.userdoc_typ COLLATE DATABASE_DEFAULT
			 AND	UT.generate_proc_typ  = PT.proc_typ
			 AND	RELATED_TO_WCODE  = 2
		) 
		FROM  WRK_USERDOC_FILES T;
		 
 
		BEGIN
			


			SELECT @NumPROC_NBR  =  ISNULL(MAX(PROC_NBR), 0) FROM  IP_PROC;
			with cte as (
					select *, ROW_NUMBER () OVER(order by USERDOC_NBR) as ri
					from wrk_userdoc_files where USERDOC_FILE_PROC_TYP is not null
			)
			update cte set USERDOC_FILE_PROC_NBR=@NumPROC_NBR+ri
			
		END;
		
		DELETE FROM   wrk_person_addr;   
		 
 
		INSERT INTO  wrk_person_addr   
				( PERSON_GROUP_CODE , 
				AGENT_CODE , 
				PERSON_NAME , 
				PERSON_NAME_LANG2 , 
				NATIONALITY_COUNTRY_CODE , 
				IND_COMPANY , 
				LEGAL_NATURE , 
				LEGAL_NATURE_LANG2 ,
				LEGAL_ID_TYPE , 
				LEGAL_ID_NBR , 
				INDIVIDUAL_ID_TYPE , 
				INDIVIDUAL_ID_NBR , 
				EMAIL , 
				TELEPHONE , 
				RESIDENCE_COUNTRY_CODE , 
				STATE_NAME , 
				STATE_CODE , 
				CITY_CODE ,
				CITY_NAME , 
				ADDRESS_ZONE , 
				ADDRESS_STREET , 
				ADDRESS_STREET_LANG2 ,
				ZIP_CODE , 
				PERSON_NBR , 
				ADDR_NBR , 
				REF_NBR )  
		SELECT
				 PERSON_GROUP_CODE,
				 null,
				 PERSON_NAME,
				 PERSON_NAME_LANG2,
				 NATIONALITY_COUNTRY_CODE,
				 IND_COMPANY,
				 LEGAL_NATURE,
				 LEGAL_NATURE_LANG2,
				 LEGAL_ID_TYPE,
				 LEGAL_ID_NBR,
				 INDIVIDUAL_ID_TYPE,
				 INDIVIDUAL_ID_NBR,
				 EMAIL,
				 TELEPHONE,
				 RESIDENCE_COUNTRY_CODE,
				 STATE_NAME,
				 STATE_CODE,
				 CITY_CODE,
				 CITY_NAME,
				 ADDRESS_ZONE,
				 ADDRESS_STREET,
				 ADDRESS_STREET_LANG2,
				 ZIP_CODE,
				 APPLICANT_PERSON_NBR,
				 APPLICANT_ADDR_NBR,
				 T.rowid
		FROM  wrk_userdoc T 
		WHERE	 PERSON_NAME  is not null;

		/* Call procedure ImportSetPersonNbr() to set PERSON_NBR and ADDR_NBR */
		
		EXEC IMPORTSETPERSONNBR;
		 
 
		UPDATE  T   
		SET	applicant_person_nbr = (	SELECT person_nbr
			FROM WRK_PERSON_ADDR 
			WHERE	 ref_nbr  = T.rowid
		),	
		    applicant_addr_nbr = (	SELECT addr_nbr
			FROM WRK_PERSON_ADDR 
			WHERE	 ref_nbr  = T.rowid
		) 
		FROM WRK_USERDOC T ;
		
		
		UPDATE  T   
		SET	USERDOC_PROC_TYP = (	SELECT GENERATE_PROC_TYP
			FROM WRK_USERDOC M,
				CF_USERDOC_TYPE UT,
				CF_PROCESS_TYPE PT 
			WHERE	 M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr
			 AND	M.userdoc_type  = UT.userdoc_typ COLLATE DATABASE_DEFAULT
			 AND	UT.generate_proc_typ  = PT.proc_typ
			 AND	RELATED_TO_WCODE  = 5
		),	
		    USERDOC_STATUS_CODE = (	SELECT SECONDARY_INI_STATUS_CODE
			FROM WRK_USERDOC M,
				CF_USERDOC_TYPE UT,
				CF_PROCESS_TYPE PT 
			WHERE	 M.userdoc_seq  = T.userdoc_seq
			 AND	M.userdoc_series  = T.userdoc_series
			 AND	M.userdoc_nbr  = T.userdoc_nbr
			 AND	M.userdoc_type  = UT.userdoc_typ COLLATE DATABASE_DEFAULT
			 AND	UT.generate_proc_typ  = PT.proc_typ
			 AND	RELATED_TO_WCODE  = 5
		) 
		FROM WRK_USERDOC T;
		 
 
		/* set the doc nbr and doc ori and doc series in the intermediate tables and don't do it here */
		
		UPDATE R 
		SET R.USERDOC_PROC_NBR = USERDOC_FILE_PROC_NBR,R.USERDOC_PROC_TYP=P.USERDOC_FILE_PROC_TYP,R.USERDOC_STATUS_CODE=P.USERDOC_FILE_STATUS_CODE 
		FROM wrk_userdoc AS R
		INNER JOIN wrk_userdoc_files AS P 
			   ON R.USERDOC_SEQ = P.USERDOC_SEQ and R.USERDOC_SERIES=P.USERDOC_SERIES and R.USERDOC_NBR=P.USERDOC_NBR 
		WHERE P.USERDOC_FILE_PROC_TYP is not null;
		 
 
		
		BEGIN
			
			

			SELECT @NumPROC_NBR  =  ISNULL(MAX(userdoc_PROC_NBR), 0) FROM  wrk_userdoc;
			with cte as (
					select *, ROW_NUMBER () OVER(order by USERDOC_NBR) as ri
					from WRK_userdoc where USERDOC_PROC_TYP is not null and USERDOC_PROC_NBR is null
			)
			update cte set USERDOC_PROC_NBR=@NumPROC_NBR+ri
			
		END;
commit transaction;
