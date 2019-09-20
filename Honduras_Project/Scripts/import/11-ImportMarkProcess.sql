--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportMarkProcess'
            AND type = 'P')
	DROP PROCEDURE ImportMarkProcess

GO
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE ImportMarkProcess
AS 
	BEGIN
		SET NOCOUNT ON
		
		/* Procedure name: ImportMarkProcess
		Input:  import tables with IND_IMPORT = 0
		Output: IPAS database updated and import tables updated with IND_IMPORT = 1
		create or replace procedure ImportMarkProcess as
		*/
			
		DECLARE @time1                                    DATETIME 
		DECLARE @count                                    NUMERIC 

		DECLARE @VarPRIORITY_APPL_ID_ALT                  VARCHAR(254) 

		DECLARE curPrio cursor LOCAL FOR 
			SELECT APPLICATION_ID
			FROM  wrk_mark_priorities (UPDLOCK)  
		FOR UPDATE

		DECLARE @recPrio_APPLICATION_ID	VARCHAR(200)

		DECLARE @ConfigDOC_ORI                            VARCHAR(8) 
		DECLARE @NumDOC_NBR                               FLOAT 
		DECLARE @NumMARK_CODE                             FLOAT 
		DECLARE @NumPROC_NBR                              FLOAT 
		/* variables to update work table */
		
		DECLARE @VarDOC_ORI                               VARCHAR(8) 
		DECLARE @VarDOC_SER                               FLOAT 
		DECLARE @VarDOC_NBR                               FLOAT 
		DECLARE @VarNICE_CLASS_TXT                        VARCHAR(254) 

		DECLARE cur4 cursor LOCAL FOR 
			SELECT file_seq,
				 file_type,
				file_series,
				file_nbr,
				doc_ori,
				doc_series,
				doc_nbr		
			FROM  wrk_mark (UPDLOCK)  
		FOR UPDATE

		DECLARE @rec4_file_seq		VARCHAR(200)
		DECLARE @rec4_file_type		VARCHAR(200)
		DECLARE @rec4_file_series	NUMERIC
		DECLARE @rec4_file_nbr		NUMERIC
		DECLARE @rec4_doc_ori		VARCHAR(200)
		DECLARE @rec4_doc_series	NUMERIC
		DECLARE @rec4_doc_nbr		NUMERIC

		DECLARE curName cursor LOCAL FOR 
			SELECT DISTINCT mark_name, mark_name_lang2
			FROM  wrk_mark 
			WHERE	 mark_code  is null
			 AND	SIGN_TYPE  in ( 'N'  , 'B'  )
		FOR UPDATE

		DECLARE @recName_mark_name	VARCHAR(2000)
		DECLARE @recName_MARK_NAME_LANG2	VARCHAR(2000)

		DECLARE curActi cursor LOCAL FOR 
			SELECT
				 T.SPECIAL_FINAL_STATUS,
				T.ACTION_DATE,
				T.MANUAL_DUE_DATE,
				T.RESPONSIBLE_USER,
				 proc_typ,
				 proc_nbr
			FROM  WRK_MARK_ACTIONS T 
			     JOIN wrk_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
			WHERE	 ACTION_CATEGORY  = 'S'
			ORDER BY ACTION_DATE 
		FOR UPDATE

		DECLARE @recActi_SPECIAL_FINAL_STATUS	VARCHAR(200)
		DECLARE	@recActi_ACTION_DATE		DATETIME
		DECLARE	@recActi_MANUAL_DUE_DATE	DATETIME
		DECLARE	@recActi_RESPONSIBLE_USER	NUMERIC
		DECLARE	@recActi_proc_typ		VARCHAR(200)
		DECLARE	@recActi_proc_nbr		NUMERIC


		DECLARE curMark cursor LOCAL FOR 
			SELECT proc_typ,
				proc_nbr,
				file_seq,
				file_type,
				file_series,
				file_nbr 
			FROM  WRK_MARK 
		FOR UPDATE

		DECLARE @recMark_proc_typ		VARCHAR(200)
		DECLARE @recMark_proc_nbr		NUMERIC
		DECLARE @recMark_file_seq		VARCHAR(200)
		DECLARE @recMark_file_type		VARCHAR(200)
		DECLARE @recMark_file_series	NUMERIC
		DECLARE @recMark_file_nbr		NUMERIC

--		BEGIN TRY
		
		BEGIN TRANSACTION;

		/* 1.2.1 Step 1A: populate work tables (just marks) to add additional required data */
		SET @time1  =  GETDATE()
		
		/* disable indexes and truncate data */
		TRUNCATE TABLE WRK_MARK;
		
		INSERT INTO  WRK_MARK   
				( FILE_SEQ , 
				FILE_TYPE , 
				FILE_SERIES , 
				FILE_NBR , 
				DOC_ORI , 
				DOC_SERIES , 
				DOC_NBR , 
				IND_IMPORT , 
				APPLICATION_TYPE , 
				APPLICATION_SUBTYPE , 
				LAW_CODE , 
				FILING_DATE , 
				RECEPTION_DATE , 
				PUBLICATION_DATE , 
				PUBLICATION_NOTES , 
				IND_REGISTERED , 
				REGISTRATION_TYPE , 
				REGISTRATION_SERIES , 
				REGISTRATION_NBR , 
				REGISTRATION_DUP , 
				REGISTRATION_DATE , 
				ENTITLEMENT_DATE , 
				EXPIRATION_DATE , 
				EXHIBITION_DATE , 
				EXHIBITION_NOTES , 
				SIGN_TYPE , 
				MARK_NAME , 
				MARK_NAME_LANG2 , 
				MARK_TRANSLATION , 
				MARK_TRANSLATION_LANG2 , 
				MARK_TRANSLITERATION , 
				MARK_TRANSLITERATION_LANG2 , 
				SERIES_DESCRIPTION , 
				DISCLAIMER , 
				DISCLAIMER_LANG2 , 
				BY_CONSENT , 
				REGULATIONS , 
				CAPTURE_USER_ID , 
				CAPTURE_DATE , 
				NOTES , 
				COLOUR_DESCRIPTION , 
				FIRST_PRIORITY_DATE , 
				MAIN_OWNER_ADDR_NBR , 
				MAIN_OWNER_PERSON_NBR , 
				SERVICE_ADDR_NBR , 
				SERVICE_PERSON_NBR , 
				NICE_CLASS_TXT , 
				MARK_CODE , 
				PROC_TYP , 
				PROC_NBR , 
				STATUS_CODE,PUBLICATION_NBR,PUBLICATION_SER,PUBLICATION_TYP )  
		SELECT
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 DOC_ORI,
				 DOC_SERIES,
				 DOC_NBR,
				 IND_IMPORT,
				 APPLICATION_TYPE,
				 APPLICATION_SUBTYPE,
				 LAW_CODE,
				 FILING_DATE,
				 RECEPTION_DATE,
				 PUBLICATION_DATE,
				 PUBLICATION_NOTES,
				 IND_REGISTERED,
				 REGISTRATION_TYPE,
				 REGISTRATION_SERIES,
				 REGISTRATION_NBR,
				 REGISTRATION_DUP,
				 REGISTRATION_DATE,
				 ENTITLEMENT_DATE,
				 EXPIRATION_DATE,
				 EXHIBITION_DATE,
				 EXHIBITION_NOTES,
				 SIGN_TYPE,
				 MARK_NAME,
				 MARK_NAME_LANG2 , 
				 MARK_TRANSLATION , 
				 MARK_TRANSLATION_LANG2 , 
				 MARK_TRANSLITERATION , 
				 MARK_TRANSLITERATION_LANG2 , 
				 SERIES_DESCRIPTION,
				 DISCLAIMER,
				 DISCLAIMER_LANG2,
				 BY_CONSENT,
				 REGULATIONS,
				 CAPTURE_USER_ID,
				 CAPTURE_DATE,
				 NOTES,
				 COLOUR_DESCRIPTION,
				 CAST(null as DATETIME) FIRST_PRIORITY_DATE,
				 CAST(null as NUMERIC (4)) MAIN_OWNER_ADDR_NBR,
				 CAST(null as NUMERIC (10)) MAIN_OWNER_PERSON_NBR,
				 CAST(null as NUMERIC (4)) SERVICE_ADDR_NBR,
				 CAST(null as NUMERIC (10)) SERVICE_PERSON_NBR,
				 CAST(null as VARCHAR (254)) NICE_CLASS_TXT,
				 CAST(null as NUMERIC (10)) MARK_CODE,
				 CAST(null as VARCHAR (8)) PROC_TYP,
				 CAST(null as NUMERIC (10)) PROC_NBR,
				 CAST(null as VARCHAR (8)) STATUS_CODE,PUBLICATION_NBR,PUBLICATION_SER,PUBLICATION_TYP
		FROM  VW_IMPORT_MARK M 
		WHERE	 IND_IMPORT  = 0
		
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= '1.2.1 Step 1A: populate work tables (just marks) to add additional required data';
		 1.2.1 Step 1B: populate work tables (not actions) to add additional required data */
		SET @time1  =  GETDATE()
		
		/* disable indexes and truncate data */
		TRUNCATE TABLE WRK_MARK_OWNERS;
		TRUNCATE TABLE WRK_MARK_REPRS; 
		TRUNCATE TABLE WRK_MARK_PRIORITIES;
		TRUNCATE TABLE WRK_MARK_NICE_CLASSES;

		INSERT INTO  WRK_MARK_OWNERS    
		 SELECT
				 T.*,
				 CAST(null as NUMERIC (10)) PERSON_NBR,
				 CAST(null as NUMERIC (4)) ADDR_NBR
		 FROM  VW_IMPORT_MARK_OWNERS T JOIN wrk_mark M ON M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr  
		
		INSERT INTO  WRK_MARK_REPRS    
		 SELECT
				 T.*,
				 CAST(null as NUMERIC (10)) PERSON_NBR,
				 CAST(null as NUMERIC (4)) ADDR_NBR
		 FROM  VW_IMPORT_MARK_REPRS T JOIN wrk_mark M ON M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr  
		
		INSERT INTO  WRK_MARK_PRIORITIES    
		 SELECT
				 T.*,
				 CAST(null as NUMERIC (22)) PRIORITY_APPL_ID_ALT
		 FROM  VW_IMPORT_MARK_PRIORITIES T JOIN wrk_mark M ON M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr  
		
		INSERT INTO  WRK_MARK_NICE_CLASSES    
		 SELECT T.*
		 FROM  VW_IMPORT_MARK_NICE_CLASSES T JOIN wrk_mark M ON M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr  
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= '1.2.1 Step 1B: populate work tables (not actions) to add additional required data';

		
		 1.2.1 Step 1C: populate work tables (just actions) to add additional required data */
		SET @time1  =  GETDATE()
		
		/* disable indexes and truncate data */
		TRUNCATE TABLE WRK_MARK_ACTIONS;

		INSERT INTO  WRK_MARK_ACTIONS    
		 SELECT       T.*,
			      /* ACTION_NBR is incremented from 1 for each batch to speed-up
		               the process. In the next batch, numbering will start with 1
		               but this works since the key is process nbr + action nbr */ /* ACTION_NBR is incremented from 1 for each batch to speed-up
		               the process. In the next batch, numbering will start with 1
		               but this works since the key is process nbr + action nbr */ 
		              ROW_NUMBER() OVER(ORDER BY T.FILE_SEQ, T.FILE_TYPE, T.FILE_SERIES, T.FILE_NBR) ACTION_NBR
		 FROM  VW_IMPORT_MARK_ACTIONS T JOIN wrk_mark M ON M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr  
		
			/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= '1.2.1 Step 1C: populate work tables (just actions) to add additional required data';


		 postpone due date if Saturday/Sunday */
                set datefirst 7;        /* set Sunday = 1 */
                update  wrk_mark_actions
                set     manual_due_date = dateadd(dd, 2, manual_due_date)
                where   datepart(dw, manual_due_date) = 7 /* Saturday */
                ;
                update  wrk_mark_actions
                set     manual_due_date = dateadd(dd, 1, manual_due_date)
                where   datepart(dw, manual_due_date) = 1 /* Sunday */
                ;

		-- IMPLICIT_TRANSACTIONS is set to OFF
		/* 1.2.2 Step 2: prepare additional data in auxiliary tables */
		/* Step 2a: prepare additional data in WRK_MARK_OWNERS */
		/* Load WRK_PERSON_ADDR from WRK_MARK_OWNERS, setting REF_NBR from WRK_MARK_OWNERS.ROWID */
		SET @time1  =  GETDATE()
		
		DELETE FROM   wrk_person_addr    
		
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
				 ROWID
		FROM  wrk_mark_owners T 
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Load WRK_PERSON_ADDR from WRK_MARK_OWNERS';

		 Call procedure ImportSetPersonNbr() to set PERSON_NBR and ADDR_NBR */
		EXEC ImportSetPersonNbr

		/* Update WRK_MARK_OWNERS, setting PERSON_NBR and ADDR_NBR 
		       from WRK_PERSON_ADDR using the ROWID as join condition */
		SET @time1  =  GETDATE()
		
		UPDATE  T   
		SET	person_nbr = (	
				SELECT person_nbr
				FROM  WRK_PERSON_ADDR 
				WHERE	 ref_nbr  = T.rowid
			),	
		    addr_nbr = (	
				SELECT addr_nbr
				FROM  WRK_PERSON_ADDR 
				WHERE	 ref_nbr  = T.rowid
			) 
		FROM  WRK_MARK_OWNERS T 
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Update WRK_MARK_OWNERS from WRK_PERSON_ADDR' ;

	
		 Step 2b: prepare additional data in WRK_MARK_REPRS */
		/* Load WRK_PERSON_ADDR from WRK_MARK_REPRS, setting REF_NBR from WRK_MARK_REPRS.ROWID */
		SET @time1  =  GETDATE()
		
		DELETE FROM   wrk_person_addr    
		
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
		FROM  wrk_mark_reprs T 
		
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Load WRK_PERSON_ADDR from WRK_MARK_REPRS';


		 Call procedure ImportSetPersonNbr() to set PERSON_NBR and ADDR_NBR */
		EXEC ImportSetPersonNbr

		/* Update WRK_MARK_REPRS, setting PERSON_NBR and ADDR_NBR 
		       from WRK_PERSON_ADDR using the ROWID as join condition */
		SET @time1  =  GETDATE()
		
		UPDATE  T   
		SET	person_nbr = (	
				SELECT person_nbr
				FROM  WRK_PERSON_ADDR 
				WHERE	 ref_nbr  = T.rowid
			),	
		    addr_nbr = (	
				SELECT addr_nbr
				FROM  WRK_PERSON_ADDR 
				WHERE	 ref_nbr  = T.rowid
			) 
		FROM  WRK_MARK_REPRS T 
		
		
		
			/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Update WRK_MARK_REPRS from WRK_PERSON_ADDR';


		Step 2d: update PRIORITY_APPL_ID_ALT in WRK_MARK_PRIORITIES */
		SET @time1  =  GETDATE()
		
		/* Browse WRK_MARK_PRIORITIES */
		
		
		OPEN curPrio 
				SELECT @count = 1 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM curPrio INTO @recPrio_APPLICATION_ID
			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* Build VarPRIORITY_APPL_ID_ALT by removing the non-numeric characters from PRIORITY_APPL_ID */
			
			SELECT @VarPRIORITY_APPL_ID_ALT  = '' 
			DECLARE @i INTEGER

			SELECT @i  = 1 

			WHILE @i <= len(@recPrio_APPLICATION_ID)

			BEGIN
			
				IF SUBSTRING(@recPrio_APPLICATION_ID, @i, 1) between '0' and '9' 
				BEGIN 
					SELECT @VarPRIORITY_APPL_ID_ALT  = @VarPRIORITY_APPL_ID_ALT + SUBSTRING(@recPrio_APPLICATION_ID, @i, 1)
				END
   

				SELECT @i = @i + 1

			END

			/* if no valid digit exists, 0 is assumed */
			 IF ( @VarPRIORITY_APPL_ID_ALT='')
				 SET @VarPRIORITY_APPL_ID_ALT='0'
			
			/* if more than 14 digits exists, last 14 digiats are used */
			 IF ( len(@VarPRIORITY_APPL_ID_ALT) > 14)
				 SET @VarPRIORITY_APPL_ID_ALT = substring(@VarPRIORITY_APPL_ID_ALT, 1, 14)
			
			/* update PRIORITY_APPL_ID_ALT from cast(PRIORITY_APPL_ID_ALT as number) */
			UPDATE  wrk_mark_priorities   
			SET	PRIORITY_APPL_ID_ALT = CAST(@VarPRIORITY_APPL_ID_ALT as NUMERIC)
			 where current of curPrio  
			
			SELECT @count=@count +1
		END
		
		close curPrio
		
			
			/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Step 2d: update PRIORITY_APPL_ID_ALT in WRK_MARK_PRIORITIES' ;

		 Step 2e: update MARK_CODE in WRK_MARK */
		SET @time1  =  GETDATE()
		
		/* Update MARK_CODE from IP_NAME where MARK_NAME is the same */
		UPDATE  M   
		SET	MARK_CODE = (	SELECT mark_code
			FROM  IP_NAME N 
			WHERE	 N.MARK_NAME  = M.MARK_NAME COLLATE DATABASE_DEFAULT
			AND (N.MARK_NAME_LANG2 = M.MARK_NAME_LANG2 COLLATE DATABASE_DEFAULT OR 
				(N.MARK_NAME_LANG2 IS NULL AND M.MARK_NAME_LANG2 IS NULL)) 			
		) 
		FROM  wrk_mark M 
		
		/* Add new IP_NAME for distinct mark names not existing in IP_NAME */
		SELECT @NumMARK_CODE  =  ISNULL(MAX(MARK_CODE), 0)
		FROM  IP_NAME 
		
		
		OPEN curName 
				SELECT @count = 1 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM curName INTO @recName_mark_name, @recName_MARK_NAME_LANG2
			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* increase MARK_CODE and insert IP_NAME */
			
			SELECT @NumMARK_CODE  = @NumMARK_CODE + 1 
			INSERT INTO  IP_NAME   
					( ROW_VERSION , 
					MARK_CODE , 
					MARK_NAME,
					MARK_NAME_LANG2)  
			 VALUES 		( 1 , 
					@NumMARK_CODE , 
					@recName_MARK_NAME,
					@recName_MARK_NAME_LANG2)  
			
			SELECT @count=@count +1
		END --) 
		
		
		close curName
		
		/* Second update MARK_CODE from IP_NAME, to process just-inserted tuples in IP_NAME */
		UPDATE  M   
		SET	MARK_CODE = (	SELECT mark_code
			FROM  IP_NAME N 
			WHERE	 N.MARK_NAME  = M.MARK_NAME COLLATE DATABASE_DEFAULT
			AND (N.MARK_NAME_LANG2 = M.MARK_NAME_LANG2 COLLATE DATABASE_DEFAULT OR 
				(N.MARK_NAME_LANG2 IS NULL AND M.MARK_NAME_LANG2 IS NULL)) 			
		) 
		FROM  wrk_mark M 
		WHERE  MARK_CODE  is null 
		
			
			/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Step 2e: update MARK_CODE in WRK_MARK'  ;

		
		 Step 2f: add national classes mapped to Nice classes into WRK_MARK_NICE_CLASSES */
		SET @time1  =  GETDATE()
		
		INSERT INTO  wrk_mark_nice_classes   
		(FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, NICE_CLASS_EDITION, NICE_CLASS_NBR)		
		SELECT DISTINCT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 7,
				 SEARCH_CLASS_NBR
		FROM  VW_import_mark_natl_classes T 
			JOIN VW_import_mark M ON M.file_seq  = T.file_seq
								AND	M.file_type  = T.file_type
								AND	M.file_series  = T.file_series
								AND	M.file_nbr  = T.file_nbr  
			JOIN cf_class_natl_2_search C ON C.natl_class_code  = T.national_class_nbr  
		WHERE	 IND_IMPORT  = 0
		 AND	 NOT EXISTS
			(
		 	SELECT
					 VW_import_mark_nice_classes.file_seq,
					 VW_import_mark_nice_classes.file_type,
					 VW_import_mark_nice_classes.file_series,
					 VW_import_mark_nice_classes.file_nbr
			FROM  VW_import_mark_nice_classes 
			WHERE	 VW_import_mark_nice_classes.file_seq  = T.file_seq
			 AND	vw_import_mark_nice_classes.file_type  = T.file_type
			 AND	vw_import_mark_nice_classes.file_series  = T.file_series
			 AND	vw_import_mark_nice_classes.file_nbr  = T.file_nbr
			)
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Step 2f: add national classes mapped to Nice classes into WRK_MARK_NICE_CLASSES';


		 1.2.3 Step 3: update additional data in WRK_MARK */
		SET @time1  =  GETDATE()
		
		/* Update FIRST_PRIORITY_DATE from min(PRIORITY_DATE) from VW_IMPORT_MARK_PRIORITIES where IND_ACCEPTED = 1 */
		UPDATE  M   
		SET	FIRST_PRIORITY_DATE = (	SELECT MIN(PRIORITY_DATE)
			FROM  VW_IMPORT_MARK_PRIORITIES T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	IND_ACCEPTED  = 1
		) 
		FROM  wrk_mark M 
		
		/* Update MAIN_OWNER_PERSON_NBR, MAIN_OWNER_ADDR_NBR,  
		       from WRK_MARK_OWNERS where the file is the same and IND_SERVICE = 1 */
		UPDATE  M   
		SET	MAIN_OWNER_PERSON_NBR = (	SELECT person_nbr
			FROM  wrk_mark_owners T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
		),	
		    MAIN_OWNER_ADDR_NBR = (	SELECT addr_nbr
			FROM  wrk_mark_owners T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
		) 
		FROM  wrk_mark M 
		
		/* Initialize SERVICE_PERSON_NBR and SERVICE_ADDR_NBR,  
		       from WRK_MARK_OWNERS where the file is the same and IND_SERVICE = 1 */
		UPDATE  M   
		SET	SERVICE_PERSON_NBR = (	SELECT person_nbr
			FROM  wrk_mark_owners T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
		),	
		    SERVICE_ADDR_NBR = (	SELECT addr_nbr
			FROM  wrk_mark_owners T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
		) 
		FROM  wrk_mark M 
		
		/* Update SERVICE_PERSON_NBR and SERVICE_ADDR_NBR for those files with a
		       matching WRK_MARK_REPRS where the file is the same and IND_SERVICE = 1 */
		UPDATE  M   
		SET	SERVICE_PERSON_NBR = (	SELECT person_nbr
			FROM  wrk_mark_reprs T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
		),	
		    SERVICE_ADDR_NBR = (	SELECT addr_nbr
			FROM  wrk_mark_reprs T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
		) 
		FROM  wrk_mark M 
		WHERE    exists
			(
		 	SELECT *
			FROM  wrk_mark_reprs T 
			WHERE	 M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr
			 AND	ind_service  = 1
			) 
		
		/* Update PROC_TYP from CF_LAW_APPLICATION_TYPE.GENERATE_PROC_TYP */
		UPDATE  M   
		SET	proc_typ = (	SELECT generate_proc_typ
			FROM  CF_APPLICATION_TYPE T 
			WHERE	 appl_typ  = application_type COLLATE DATABASE_DEFAULT
		) 
		FROM  wrk_mark M 
		
		/* Update STATUS_CODE from CF_PROCESS_TYPE.SECONDARY_INI_STATUS_CODE */
		UPDATE  M   
		SET	status_code = (	SELECT SECONDARY_INI_STATUS_CODE
			FROM  CF_PROCESS_TYPE T 
			WHERE	 T.proc_typ  = M.proc_typ
		) 
		FROM  wrk_mark M 
		
		/*	exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Step 3: update additional data in WRK_MARK' ;

		
	
		 Other WRK_MARK updates which require a tuple by tuple processing */
		SET @time1  =  GETDATE()
		
		SELECT @ConfigDOC_ORI  =  value
		FROM  cf_config_param 
		WHERE	 config_code  = 'MigrationCodOri'
		
		SELECT @NumDOC_NBR  =  ISNULL(MAX(DOC_NBR), 0)
		FROM  IP_DOC 
		WHERE	 DOC_ORI  = @ConfigDOC_ORI
		
		SELECT @NumPROC_NBR  =  ISNULL(MAX(PROC_NBR), 0)
		FROM  IP_PROC 
		
		/* process all WRK_MARK */
	
		OPEN cur4 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM cur4 INTO @rec4_file_seq, @rec4_file_type, @rec4_file_series, @rec4_file_nbr, @rec4_doc_ori, @rec4_doc_series, @rec4_doc_nbr
			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* if DOC_NBR is null, increment numbering, else set from current values */
			IF @rec4_DOC_NBR is null 
			BEGIN 
				SELECT @NumDOC_NBR  = @NumDOC_NBR + 1 
				SELECT @VarDOC_ORI  = @ConfigDOC_ORI 
				SELECT @VarDOC_SER  = 1 
				SELECT @VarDOC_NBR  = @NumDOC_NBR 
			END
			ELSE
			BEGIN 
				SELECT @VarDOC_ORI  = @rec4_DOC_ORI 
				SELECT @VarDOC_SER  = @rec4_DOC_SERIES 
				SELECT @VarDOC_NBR  = @rec4_DOC_NBR 
			END
   
			/* Build variable VarNICE_CLASS_TXT from WRK_MARK_NICE_CLASSES */
			SET @VarNICE_CLASS_TXT  = ' ' 
			
			DECLARE cur5 cursor LOCAL FOR 
				SELECT NICE_CLASS_NBR
				FROM  wrk_mark_nice_classes 
				WHERE	 file_seq	= @rec4_file_seq
				 AND	file_type	= @rec4_file_type
				 AND	file_series = @rec4_file_series
				 AND	file_nbr	= @rec4_file_nbr

			DECLARE @rec5_NICE_CLASS_NBR	NUMERIC

			OPEN cur5 
			WHILE (0 = 0) 
			BEGIN --( 
				fetch NEXT FROM cur5 INTO @rec5_NICE_CLASS_NBR
				IF (@@FETCH_STATUS = -1) 
				BREAK

				SELECT @VarNICE_CLASS_TXT  = @VarNICE_CLASS_TXT + CAST(@rec5_NICE_CLASS_NBR AS VARCHAR) + ' ' 
			SELECT @count=@count +1
			END
			
			close cur5
			deallocate cur5
			
			/* Increment NumPROC_NBR but do not insert IP_PROC yet since there is a FK */
			SELECT @NumPROC_NBR  = @NumPROC_NBR + 1 

			/* update WRK_MARK with the updated fields */
			UPDATE  wrk_mark   
			SET	DOC_ORI = @VarDOC_ORI,	
			    DOC_SERIES = @VarDOC_SER,	
			    DOC_NBR = @VarDOC_NBR,	
			    NICE_CLASS_TXT = @VarNICE_CLASS_TXT,	
			    PROC_NBR = @NumPROC_NBR 
			 where current of cur4  
			
			SELECT @count=@count +1
		END --) 
		
		
		close cur4
				/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Other WRK_MARK updates which require a tuple by tuple processing'  ;

	
	
		 1.2.4 Step 4: prepare other tables */
		SET @time1  =  GETDATE()
		
		/* Insert into CF_DOC_SERIES from distinct FILE_SER from WRK_MARK (only new tuples) */
		INSERT INTO  CF_DOC_SERIES   
				( row_version , 
				doc_ser , 
				ind_active )  
		SELECT DISTINCT
				 1,
				 file_series,
				 'N'
		FROM  wrk_mark 
		WHERE	 file_series  not in
			(
		 	SELECT doc_ser
			FROM  CF_DOC_SERIES 
			)

		COMMIT TRANSACTION;

		BEGIN TRANSACTION;
		
		/* Insert into CF_DOC_SERIES from distinct year(reception_date) from WRK_MARK (only new tuples) */
		INSERT INTO  CF_DOC_SERIES   
				( row_version , 
				doc_ser , 
				ind_active )  
		SELECT DISTINCT
				 1,
				 CAST(DATEPART(YYYY, reception_date) as NUMERIC),
				 'N'
		FROM  wrk_mark 
		WHERE	CAST(DATEPART(YYYY, reception_date) as NUMERIC) not in
			(
		 	SELECT doc_ser
			FROM  CF_DOC_SERIES 
			)
		
		/* Insert into IP_DAY from distinct RECEPTION_DATE from WRK_MARK (only new tuples) */
                set datefirst 7;        /* set Sunday = 1 */
		INSERT INTO  IP_DAY   
				( row_version , 
				daily_date , 
				doc_ser,
				next_working_date )  
		SELECT DISTINCT
				 1,
				 cast(reception_date as DATE),
				 CAST(DATEPART(YYYY, reception_date) as NUMERIC),
				 case
				    when datepart(dw, cast(reception_date as DATE)) = 7 /* Saturday */
				            then dateadd(dd, 2, cast(reception_date as DATE))
				    when datepart(dw, cast(reception_date as DATE)) = 1 /* Sunday */
				            then dateadd(dd, 1, cast(reception_date as DATE))
				    else null
				 end
		FROM  wrk_mark 
		WHERE	 cast(reception_date as DATE)  not in
			(
		 	SELECT daily_date
			FROM  IP_DAY 
			)
		
		/* Insert into IP_DAILY_LOG from distinct DOC_ORI, DOC_LOG, FILING_DATE from WRK_MARK (only new tuples) */
		INSERT INTO  IP_DAILY_LOG   
				( row_version , 
				doc_ori , 
				doc_log , 
				daily_log_date )  
		SELECT DISTINCT
				 1,
				 DOC_ORI,
				 'E',
				 cast(RECEPTION_DATE as DATE )
		FROM  wrk_mark M 
		WHERE	 NOT   exists
			(
		 	SELECT *
			FROM  IP_DAILY_LOG L 
			WHERE	 L.DOC_ORI  = M.DOC_ORI COLLATE DATABASE_DEFAULT
			 AND	DOC_LOG  = 'E'
			 AND	DAILY_LOG_DATE  = cast(RECEPTION_DATE as DATE )
			)
		
		
		/*INSERT INTO  wrk_log    
		 SELECT '1.2.4 Step 4: prepare other tables' , 
				@@time1 , datediff(ss,@@time1, getdate());
		 1.2.5 Step 5: insert data */
		/* Insert into IP_DOC */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_DOC   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				DOC_SEQ_TYP , 
				DOC_SEQ_SERIES , 
				DOC_SEQ_NBR , 
				DAILY_LOG_DATE , 
				RECEPTION_DATE ,
				FILING_DATE , 

				RECEPTION_WCODE , 
				APPL_TYP , 
				APPL_SUBTYP )  
		SELECT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 FT.DOC_SEQ_TYP,
				 FILE_SERIES,
				 FILE_NBR,
				 cast(RECEPTION_DATE as DATE),
				 RECEPTION_DATE,
				 FILING_DATE,
				 'SC',
				 APPLICATION_TYPE,
				 APPLICATION_SUBTYPE
		FROM  WRK_MARK M JOIN CF_FILE_TYPE FT ON FT.file_typ  = M.file_type COLLATE DATABASE_DEFAULT 
	
/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_DOC'  ;
	
	
		
		 Insert into IP_FILE from WRK_MARK setting only columns not loaded by the trigger in IP_MARK */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_FILE   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				FILE_SOURCE_WCODE , 
				APPL_TYP )  
		SELECT
				 1,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 2,
				 APPLICATION_TYPE
		FROM  WRK_MARK 
		
			
/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_FILE from WRK_MARK'  ;
	
		 Insert into IP_FILE_SECTIONS */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_FILE_SECTIONS   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				FILE_SECTION_NBR , 
				FILE_SECTION_DESCRIPTION )  
		SELECT
				 1,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 1,
				 'Dummy description'
		FROM  WRK_MARK 
		
					
/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_FILE_SECTIONS'  ;

		 Insert into IP_MARK */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_MARK   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				FILING_DATE , 
				APPL_TYP , 
				APPL_SUBTYP , 
				LAW_CODE , 
				CAPTURE_USER_ID , 
				CAPTURE_DATE , 
				IND_REGISTERED , 
				REGISTRATION_TYP , 
				REGISTRATION_SER , 
				REGISTRATION_NBR , 
				REGISTRATION_DUP , 
				REGISTRATION_DATE , 
				ENTITLEMENT_DATE , 
				EXPIRATION_DATE , 
				FIRST_PRIORITY_DATE , 
				MAIN_OWNER_ADDR_NBR , 
				MAIN_OWNER_PERSON_NBR , 
				SERVICE_ADDR_NBR , 
				SERVICE_PERSON_NBR , 
				SIGN_WCODE , 
				MARK_CODE , 
				TRANSLATION , 
				TRANSLATION_LANG2 ,
				MARK_TRANSLITERATION, 
				MARK_TRANSLITERATION_LANG2,
				MARK_SERIES_DESCRIPTION , 
				DISCLAIMER , 
				DISCLAIMER_LANG2 ,
				NICE_CLASS_TXT , 
				PUBLICATION_DATE , 
				PUBLICATION_NOTES , 
				EXHIBITION_DATE , 
				EXHIBITION_NOTES , 
				NOTES,PUBLICATION_NBR,PUBLICATION_SER,PUBLICATION_TYP)  
		SELECT
				 1,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 FILING_DATE,
				 APPLICATION_TYPE,
				 APPLICATION_SUBTYPE,
				 LAW_CODE,
				 CAST(CAPTURE_USER_ID as NUMERIC),
				 CAPTURE_DATE,
				 
				 CASE IND_REGISTERED 
					WHEN 1 THEN 'S' 
					ELSE 'N' 
				 END,
				 REGISTRATION_TYPE,
				 REGISTRATION_SERIES,
				 REGISTRATION_NBR,
				 REGISTRATION_DUP,
				 REGISTRATION_DATE,
				 ENTITLEMENT_DATE,
				 EXPIRATION_DATE,
				 FIRST_PRIORITY_DATE,
				 MAIN_OWNER_ADDR_NBR,
				 MAIN_OWNER_PERSON_NBR,
				 SERVICE_ADDR_NBR,
				 SERVICE_PERSON_NBR,
				 
				CASE SIGN_TYPE 
					WHEN 'N' THEN 'D' 
					WHEN 'L' THEN 'F' 
					WHEN 'B' THEN 'M' 
					WHEN 'T' THEN 'T' 
					WHEN 'S' THEN 'S' 
					WHEN 'O' THEN 'O' 
					ELSE '-' 
				END,
				 MARK_CODE,
				 MARK_TRANSLATION,
				 MARK_TRANSLATION_LANG2,
				 MARK_TRANSLITERATION,
				 MARK_TRANSLITERATION_LANG2,				 
				 SERIES_DESCRIPTION,
				 DISCLAIMER,
				 DISCLAIMER_LANG2,
				 NICE_CLASS_TXT,
				 PUBLICATION_DATE,
				 PUBLICATION_NOTES,
				 EXHIBITION_DATE,
				 EXHIBITION_NOTES,
				 NOTES,PUBLICATION_NBR,PUBLICATION_SER,PUBLICATION_TYP
		FROM  WRK_MARK 
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_MARK'  ;


		 Insert into IP_MARK_OWNERS from WRK_MARK_OWNERS */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_MARK_OWNERS   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				PERSON_NBR , 
				ADDR_NBR , 
				NOTES )  
		SELECT   DISTINCT 
				 1,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 PERSON_NBR,
				 ADDR_NBR,
				 OWNERSHIP_NOTES
		FROM  WRK_MARK_OWNERS 
		
			/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_MARK_OWNERS';

		 Insert into IP_MARK_REPRS from WRK_MARK_REPRS */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_MARK_REPRS   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				PERSON_NBR , 
				ADDR_NBR , 
				REPRESENTATIVE_TYP )  
		SELECT
				 1,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 PERSON_NBR,
				 ADDR_NBR,
				 REPRESENTATIVE_TYPE
		FROM  WRK_MARK_REPRS 
		
		
			/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_MARK_REPRS';
	
		 Insert into IP_MARK_PRIORITIES from WRK_MARK_PRIORITIES */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_MARK_PRIORITIES   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				COUNTRY_CODE , 
				PRIORITY_APPL_ID , 
				PRIORITY_DATE , 
				IND_ACCEPTED , 
				NOTES , 
				PRIORITY_APPL_ID_ALT )  
		SELECT
				 1,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 COUNTRY_CODE,
				 APPLICATION_ID,
				 PRIORITY_DATE,
				 CASE IND_ACCEPTED 
					WHEN 1 THEN 'S' 
					ELSE 'N' 
				 END,
				 NOTES,
				 PRIORITY_APPL_ID_ALT
		FROM  wrk_mark_priorities 
		
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_MARK_PRIORITIES';
	
	
	
		 Insert into IP_MARK_NICE_CLASSES from WRK_MARK_NICE_CLASSES */
		SET @time1  =  GETDATE()
		
		/* IPAS-1273/1341 Added NICE_CLASS_VERSION for NICE classification */
		INSERT INTO  IP_MARK_NICE_CLASSES   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR ,
				NICE_CLASS_VERSION,
				NICE_CLASS_EDITION ,				
				NICE_CLASS_CODE , 
				NICE_CLASS_STATUS_WCODE , 
				NICE_CLASS_DESCRIPTION)  
		SELECT
				 1,
				 T.FILE_SEQ,
				 T.FILE_TYPE,
				 T.FILE_SERIES,
				 T.FILE_NBR,
				 NICE_CLASS_VERSION,
				 NICE_CLASS_EDITION,
				 NICE_CLASS_NBR,
				 COALESCE(NICE_CLASS_STATUS, 'P'),
				 NICE_CLASS_DESCRIPTION
		FROM  wrk_mark_nice_classes T 
		
				
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_MARK_PRIORITIES'
	
	
	
		 Insert into IP_MARK_NATL_CLASSES from VW_IMPORT_MARK_NATL_CLASSES (only with VW_IMPORT_MARK.IND_IMPORT = 0) */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_MARK_NATL_CLASSES   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				NATL_CLASS_CODE , 
				NATL_CLASS_DESCRIPTION)  
		SELECT
				 1,
				 T.FILE_SEQ,
				 T.FILE_TYPE,
				 T.FILE_SERIES,
				 T.FILE_NBR,
				 NATIONAL_CLASS_NBR,
				 NATIONAL_CLASS_DESCRIPTION
		FROM  VW_import_mark_natl_classes T JOIN VW_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		
					
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_MARK_PRIORITIES'
	
	


		 Insert into IP_FILE_VALID_STATES from VW_IMPORT_MARK_VALID_STATES (only with VW_IMPORT_MARK.IND_IMPORT = 0) */
		SET @time1  =  GETDATE()
		
		
                INSERT INTO 	IP_FILE_VALID_STATES
		SELECT DISTINCT  1,
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
                                 T.country_code,
                                 T.state_code,
                                 T.state_status
		FROM  VW_import_mark_valid_states T JOIN VW_import_mark M   ON M.file_seq  = T.file_seq
			 AND	M.file_type  = T.file_type
			 AND	M.file_series  = T.file_series
			 AND	M.file_nbr  = T.file_nbr  
                WHERE IND_IMPORT=0;

	
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_FILE_VALID_STATES';
	

		 Insert into IP_DOC_PAYMENTS from VW_IMPORT_MARK_PAYMENTS (joining WRK_MARK to use DOC_*** columns) */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_DOC_PAYMENTS   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				RECEIPT_NBR , 
				RECEIPT_DATE , 
				RECEIPT_AMOUNT , 
				RECEIPT_TYP , 
				CURRENCY_TYP )  
		SELECT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 RECEIPT_NBR,
				 RECEIPT_DATE,
				 RECEIPT_AMOUNT,
				 RECEIPT_TYPE,
				 CURRENCY_TYPE
		FROM  VW_import_mark_payments T JOIN wrk_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
	

		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_DOC_PAYMENTS';
	
	
		
		 Insert into IP_LOGO from VW_IMPORT_MARK_LOGOS (only with VW_IMPORT_MARK.IND_IMPORT = 0) */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_LOGO   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				IMAGE_FORMAT_WCODE , 
				IND_BASE64 , 
				LOGO_DATA , 
				COLOUR_DESCRIPTION,
				COLOUR_DESCR_LANG2				)  
		SELECT
				 1,
				 T.FILE_SEQ,
				 T.FILE_TYPE,
				 T.FILE_SERIES,
				 T.FILE_NBR,
				 
				CASE LOGO_IMAGE_TYPE 
					WHEN 'TIF' THEN 1 
					ELSE 2 
				END,
				 'N',
				 LOGO_IMAGE_DATA,
				 COLOUR_DESCRIPTION,
				 COLOUR_DESCR_LANG2
		FROM  VW_import_mark_logos T JOIN VW_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		
	
	/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_LOGO';
	
		
		 Insert into IP_LOGO_VIENNA_CLASSES from VW_IMPORT_MARK_VIENNA_CLASSES (only with VW_IMPORT_MARK.IND_IMPORT = 0) */
		/* IPAS-1273/1341 Added VIENNA_EDITION_CODE for Vienna classification*/
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_LOGO_VIENNA_CLASSES   
				( ROW_VERSION , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				VIENNA_EDITION_CODE,
				VIENNA_CLASS_CODE , 
				VIENNA_GROUP_CODE , 
				VIENNA_ELEM_CODE )  
		SELECT
				 1,
				 T.FILE_SEQ,
				 T.FILE_TYPE,
				 T.FILE_SERIES,
				 T.FILE_NBR,
				 VIENNA_EDITION_CODE,
				 VIENNA_CATEGORY,
				 VIENNA_DIVISION,
				 COALESCE(VIENNA_SECTION, 0) /* IPAS-825: Added code for VIENNA_SECTION being NULL to be replaced with 0 */
		FROM  VW_import_mark_vienna_classes T JOIN VW_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
	
/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_LOGO_VIENNA_CLASSES';
	

		
		 1.2.6 Step 6: insert process and actions */
		/* Insert into IP_PROC from WRK_MARK */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_PROC   
				( ROW_VERSION , 
				PROC_TYP , 
				PROC_NBR , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR , 
				APPL_TYP , 
				CREATION_DATE , 
				STATUS_CODE , 
				STATUS_DATE , 
				FILE_PROC_TYP , 
				FILE_PROC_NBR )  
		SELECT
				 1,
				 PROC_TYP,
				 PROC_NBR,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 APPLICATION_TYPE,
				 RECEPTION_DATE,
				 STATUS_CODE,
				 RECEPTION_DATE,
				 PROC_TYP,
				 PROC_NBR
		FROM  wrk_mark 

/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert into IP_PROC';

		 Insert note actions from WRK_MARK_ACTIONS where ACTION_CATEGORY = N, joining with WRK_MARK */
		/* Also insert special actions from WRK_MARK_ACTIONS where ACTION_CATEGORY = S */
		SET @time1  =  GETDATE()
		
		INSERT INTO  IP_ACTION   
				( ROW_VERSION , 
				PROC_TYP , 
				PROC_NBR , 
				ACTION_NBR , 
				ACTION_TYP , 
				ACTION_DATE , 
				CAPTURE_DATE , 
				SIGNATURE_DATE , 
				CAPTURE_USER_ID , 
				AUTHORISING_USER_ID , 
				NOTES2 , 
				NOTES3 , 
				NOTES4 , 
				NOTES5 , 
				ACTION_NOTES , 
				IND_CHANGES_STATUS , 
				NEW_STATUS_CODE , 
				PRIOR_STATUS_CODE , 
				PRIOR_STATUS_DATE , 
				PRIOR_DUE_DATE , 
				NOTES1)  
		SELECT
				 1,
				 M.PROC_TYP,
				 M.PROC_NBR,
				 T.ACTION_NBR,
				 T.ACTION_TYPE,
				 T.ACTION_DATE,
				 T.ACTION_DATE,
				 T.ACTION_DATE,
				 T.ACTION_USER,
				 T.ACTION_USER,
				 T.ACTION_NOTES2,
				 T.ACTION_NOTES3,
				 T.ACTION_NOTES4,
				 T.ACTION_NOTES5,
				 T.GENERAL_NOTES,
				 'N',
				 null,
				 null,
				 null,
				 null,
				 T.ACTION_NOTES1
		FROM  wrk_mark_actions T JOIN wrk_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 T.ACTION_CATEGORY  = 'N'
		UNION ALL
		 SELECT
				 1,
				 M.PROC_TYP,
				 M.PROC_NBR,
				 T.ACTION_NBR,
				 T.ACTION_TYPE,
				 T.ACTION_DATE,
				 T.ACTION_DATE,
				 T.ACTION_DATE,
				 T.ACTION_USER,
				 T.ACTION_USER,
				 T.ACTION_NOTES2,
				 T.ACTION_NOTES3,
				 T.ACTION_NOTES4,
				 T.ACTION_NOTES5,
				 T.GENERAL_NOTES,
				 'S',
				 T.SPECIAL_FINAL_STATUS,
				 P.STATUS_CODE,
				 P.STATUS_DATE,
				 P.EXPIRATION_DATE,
				 T.ACTION_NOTES1 
		FROM  wrk_mark_actions T JOIN wrk_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  JOIN IP_PROC P ON P.proc_typ  = M.proc_typ
			 AND	P.proc_nbr  = M.proc_nbr  
		WHERE	 T.ACTION_CATEGORY  = 'S'
		 

/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Insert note and special actions' ;

		 For each special action, update the status of the process */
		SET @time1  =  GETDATE()
		
		/* Browse special actions */
		
		
		OPEN curActi 
				SELECT @count = 1 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM curActi INTO @recActi_SPECIAL_FINAL_STATUS, @recActi_ACTION_DATE, @recActi_MANUAL_DUE_DATE, @recActi_RESPONSIBLE_USER, @recActi_proc_typ, @recActi_proc_nbr
			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* update IP_PROC */
			UPDATE  IP_PROC   
			SET	STATUS_CODE = @recActi_SPECIAL_FINAL_STATUS,	
			    STATUS_DATE = @recActi_ACTION_DATE,	
			    EXPIRATION_DATE = @recActi_MANUAL_DUE_DATE,
			    RESPONSIBLE_USER_ID = @recActi_RESPONSIBLE_USER
			WHERE  proc_typ  = @recActi_proc_typ
			 AND	proc_nbr  = @recActi_proc_nbr 
			
			SELECT @count=@count +1
		END --) 
		
		
		close curActi
		/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'For each special action, update the status of the process' ;


		 Update the file to refer to the inserted process */
		SET @time1  =  GETDATE()
		
		/* Browse marks  */
		
		
		OPEN curMark 
				SELECT @count = 1 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM curMark INTO @recMark_proc_typ, @recMark_proc_nbr, @recMark_file_seq, @recMark_file_type, @recMark_file_series, @recMark_file_nbr 

			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* update IP_PROC */
			UPDATE  IP_FILE   
			SET	proc_typ = @recMark_proc_typ,	
			    proc_nbr = @recMark_proc_nbr 
			WHERE  file_seq   = @recMark_file_seq
			 AND	file_typ  = @recMark_file_type
			 AND	file_ser  = @recMark_file_series
			 AND	file_nbr  = @recMark_file_nbr 
			
			SELECT @count=@count +1
		END --) 
		
		
		close curMark

		/* Update the Novelty date (IPAS-720) */
		update IP_MARK set 
			novelty2_date=cast(filing_date as date),
			novelty1_date=cast(case when first_priority_date is not null and first_priority_date<filing_date then first_priority_date else filing_date end as date);

		
/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'Update the file to refer to the inserted process' ;

		
		 *************** FINAL STEP: all imported marks are flagged *************** */
		SET @time1  =  GETDATE()
		
		UPDATE  VW_IMPORT_MARK   
		SET	IND_IMPORT = 1 
		WHERE  IND_IMPORT  = 0 
		
		
		/* update sequence with last MARK_CODE for both IP_NAME and SE_NAME */
		
		DECLARE @nbr	NUMERIC
		
		SELECT @nbr  =  ISNULL(MAX(MARK_CODE) + 1, 1)
		FROM  IP_NAME 

		drop table SYS_SEC_DENOMINACION
		drop table SYS_SEC_BUSQ_DENOMINACION

		DECLARE @sql		VARCHAR(200)

		SET @sql = '
			create table SYS_SEC_DENOMINACION 
				(seqvalue int identity (' + CAST(@nbr AS VARCHAR) + ' ,1), 
        			 seqname varchar(1) )'
		EXECUTE	(@sql)

		SET @sql = '
			create table SYS_SEC_BUSQ_DENOMINACION
				(seqvalue int identity (' + CAST(@nbr AS VARCHAR) + ' ,1), 
        			 seqname varchar(1) )'
		EXECUTE	(@sql)
		
		
/*exec.dbo.Log_ProcedureCall  @Start1=@@time1 ,
@ProcedureName='Marcas',@Stage1= 'All imported marks are flagged' ;
*/
		
 DEALLOCATE curPrio
 DEALLOCATE cur4
 DEALLOCATE curName
 DEALLOCATE curActi
 DEALLOCATE curMark

		COMMIT TRANSACTION;

--		END TRY
/*
		BEGIN CATCH
			DECLARE @ErrorMessage NVARCHAR(4000);
			DECLARE @ErrorSeverity INT;
			DECLARE @ErrorState	INT;
			DECLARE @ErrorLine INT;
			
			SET @ErrorSeverity = ERROR_SEVERITY();
			SET @ErrorState		= ERROR_STATE();
			SET @ErrorLine		= ERROR_LINE();
			SET @ErrorMessage = 'Linea '+ cast(@ErrorLine as varchar) + ' ' + ERROR_MESSAGE();

			IF @ErrorState = 0
	 		BEGIN
	 				SET @ErrorState = 1
	 		END
	 
			ROLLBACK TRAN;
		
			 DEALLOCATE curPrio
			 DEALLOCATE cur4
			 DEALLOCATE curName
			 DEALLOCATE curActi
			 DEALLOCATE curMark

			RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
		END CATCH;
*/
		SET NOCOUNT OFF

	END



GO

/* 
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportMarkProcess'
            AND type = 'P')
	DROP PROCEDURE ImportMarkProcess
*/

/*
exec ImportMarkProcess
*/

