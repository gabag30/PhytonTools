--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportUserdocValidate'
            AND type = 'P')
	DROP PROCEDURE ImportUserdocValidate
GO 
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE ImportUserdocValidate
AS 
BEGIN
		SET NOCOUNT ON
		
		/* Procedure name: ImportUserdocValidate
		Input:  IPAS database and import tables not imported (i.e. IND_IMPORT not 1)
		Output: if errors, validation flag set to 2 and error messages in VW_IMPORT_USERDOC_RESULT
		if OK, validation flag set to 9
		create or replace procedure ImportUserdocValidate as
		*/
		
		/* flag all pending marks as to be validated */
		UPDATE  vw_import_userdoc   
		SET	ind_import = 0 
		WHERE  ind_import  is null
		 OR	ind_import  not in ( 0  , 1  ) 
		
		/* delete errors from prior executions */
		DELETE FROM   VW_IMPORT_USERDOC_RESULT    
		
		/* 4.1.1 VW_IMPORT_USERDOC validations */
		/* 4.1.1.1 Codes validations */
		/* DOC_ORI: if not null and not exists in CF_DOC_ORIGIN, message ?Invalid document origin code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid document origin code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	doc_ori  is not null
		 AND	doc_ori  COLLATE database_default not in
			(
		 	SELECT doc_ori
			FROM  CF_DOC_ORIGIN 
			)
		
		/* DOC_ORI: if null and not exists config param 'MigrationCodOri' message ?Null document origin code but no 'MigrationDocOri' parameter configured? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Null document origin code but no [MigrationCodOri] parameter configured'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	doc_ori  is null
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  CF_CONFIG_PARAM 
			WHERE	 config_code  = 'MigrationCodOri'
			)
		
		/* USERDOC_SEQ: if not exists in CF_DOC_SEQUENCE, message ?Invalid document sequence code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid document sequence code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	userdoc_seq  COLLATE database_default not in
			(
		 	SELECT doc_seq_typ
			FROM  CF_DOC_SEQUENCE 
			)
		
		/* USERDOC_TYPE: if not exists in CF_USERDOC_TYPE, message ?Invalid user document type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid user document type'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	USERDOC_TYPE COLLATE database_default not in
			(
		 	SELECT userdoc_typ
			FROM  CF_USERDOC_TYPE 
			)
		
		/* LAW_CODE: if not exists in CF_LAW, message ?Invalid law code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid law code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	LAW_CODE  not in
			(
		 	SELECT law_code
			FROM  CF_LAW 
			)
		
		/* CAPTURE_USER_ID: if not null and does not exist in IP_USER, message ?Invalid capture user code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid capture user code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	CAPTURE_USER_ID  is not null
		 AND	CAPTURE_USER_ID  not in
			(
		 	SELECT user_id
			FROM  IP_USER 
			)
		
		/* 4.1.1.2 Duplicate keys validations */
		/* If USERDOC_SEQ / SERIES / NBR already exists in IP_DOC (doc_seq_typ, doc_seq_series, doc_seq_nbr), 
		       insert message ?Userdoc sequence / series / number already exists in the database? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Userdoc sequence / series / number already exists in the database'
		FROM	vw_import_userdoc 
		WHERE	ind_import  = 0
		 AND	exists
				(select	*
				 from	IP_DOC D
				 where	USERDOC_SEQ		= doc_seq_typ COLLATE database_default
				  and	USERDOC_SERIES	= doc_seq_series
				  and	USERDOC_NBR		= doc_seq_nbr
				)

		/* If DOC_NBR is not null and DOC_ORI / DOC_SERIES / DOC_NBR already exists in IP_DOC, 
		       insert message ?Document origin / series / number already exists in the database? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Document origin / series / number already exists in the database'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	DOC_NBR  is not null
		 AND	DOC_ORI  COLLATE database_default IN
			(
		 	SELECT doc_ori
			FROM  IP_DOC 
			)
		 AND	'E'  IN
			(
		 	SELECT doc_log
			FROM  IP_DOC 
			)
		 AND	DOC_SERIES  IN
			(
		 	SELECT doc_ser
			FROM  IP_DOC 
			)
		 AND	DOC_NBR  IN
			(
		 	SELECT doc_nbr
			FROM  IP_DOC 
			)
		
		/* If DOC_NBR is not null and DOC_ORI / DOC_SERIES / DOC_NBR is repeated in VW_IMPORT_USERDOC,
		insert message ?Document origin / series / number duplicated in intermediate table? */
		/* Generate work table with repeated DOC_ORI / DOC_SERIES / DOC_NBR */
		
		
		DECLARE @EXEC_IMMEDIATE_VAR VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR  = 'TRUNCATE TABLE wrk_doc_key' 

		EXECUTE (@EXEC_IMMEDIATE_VAR)
		INSERT INTO  wrk_doc_key    
		SELECT
				 DOC_ORI,
				 DOC_SERIES,
				 DOC_NBR
		FROM  VW_IMPORT_USERDOC 
		WHERE	 DOC_NBR  is not null
		GROUP BY DOC_ORI,
			 DOC_SERIES,
			  DOC_NBR 
		HAVING COUNT(*)  > 1  
		
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Document origin / series / number duplicated in intermediate table'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	DOC_NBR  is not null
		 AND	DOC_ORI  IN
			(
		 	SELECT doc_ori
			FROM  wrk_doc_key 
			)
		 AND	DOC_SERIES  IN
			(
		 	SELECT doc_series
			FROM  wrk_doc_key 
			)
		 AND	DOC_NBR  IN
			(
		 	SELECT doc_nbr
			FROM  wrk_doc_key 
			)
		
		/* 4.1.1.3 Applicant person validations */
		/* PERSON_NAME: if null and any of the other applicant person columns are not null, 
		       message ?Applicant name not specified but other person data is specified? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Applicant name not specified but other person data is specified'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is null
		 AND	(NATIONALITY_COUNTRY_CODE  is not null
		 OR	IND_COMPANY  is not null
		 OR	LEGAL_NATURE  is not null
		 OR	LEGAL_ID_TYPE  is not null
		 OR	LEGAL_ID_NBR  is not null
		 OR	INDIVIDUAL_ID_TYPE  is not null
		 OR	INDIVIDUAL_ID_NBR  is not null
		 OR	RESIDENCE_COUNTRY_CODE  is not null
		 OR	STATE_NAME  is not null
		 OR	STATE_CODE  is not null
		 OR	CITY_NAME  is not null
		 OR	ADDRESS_ZONE  is not null
		 OR	ADDRESS_STREET  is not null
		 OR	ZIP_CODE  is not null
		 OR	EMAIL  is not null
		 OR	TELEPHONE  is not null
		 OR	PERSON_GROUP_CODE  is not null)
		
		/* ADDRESS_STREET: if null, message ?Address street is required? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Address street is required'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	ADDRESS_STREET  is null
		
		/* NATIONALITY_COUNTRY_CODE: if not null or exists in CF_GEO_COUNTRY, message ?Invalid applicant nationality country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Null or invalid applicant nationality country code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	(NATIONALITY_COUNTRY_CODE  is null
		 OR	NATIONALITY_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			))
		
		/* RESIDENCE_COUNTRY_CODE: if not null or exists in CF_GEO_COUNTRY, message ?Invalid applicant nationality country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Null or invalid applicant residence country code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	(RESIDENCE_COUNTRY_CODE  is null
		 OR	RESIDENCE_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			))
		
		/* LEGAL_NATURE: if not null and IND_COMPANY = 0, message ?Applicant legal nature only applies when the person is a company? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Applicant legal nature only applies when the person is a company'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	LEGAL_NATURE  is not null
		 AND	IND_COMPANY  = 0
		
		/* LEGAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_GENERAL_ID = ?S?, 
		       message ?Invalid applicant legal id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid owner legal id type'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_TYPE  COLLATE database_default not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_GENERAL_ID  = 'S'
			)
		
		/* INDIVIDUAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_INDIVIDUAL_ID = ?S?, 
		       message ?Invalid applicant individual id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid owner individual id type'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_TYPE  COLLATE database_default not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_INDIVIDUAL_ID  = 'S'
			)
		
		/* If LEGAL_ID_TYPE is not null and LEGAL_ID_NBR is null, message ?Missing applicant legal id number? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Missing applicant legal id number'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_NBR  is null
		
		/* If LEGAL_ID_TYPE is null and LEGAL_ID_NBR is not null, message ?Missing applicant legal id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Missing applicant legal id type'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	LEGAL_ID_TYPE  is null
		 AND	LEGAL_ID_NBR  is not null
		
		/* If INDIVIDUAL_ID_TYPE is not null and INDIVIDUAL_ID_NBR is null, message ?Missing applicant individual id number? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Missing applicant individual id number'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_NBR  is null
		
		/* If INDIVIDUAL_ID_TYPE is null and INDIVIDUAL_ID_NBR is not null, message ?Missing applicant individual id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Missing applicant individual id type'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	INDIVIDUAL_ID_TYPE  is null
		 AND	INDIVIDUAL_ID_NBR  is not null
		
		/* RESIDENCE_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid applicant residence country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid applicant residence country code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	RESIDENCE_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* STATE_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE in CF_GEO_STATE, 
		       message ?Invalid applicant residence state code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid applicant residence state code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	STATE_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_state.COUNTRY_CODE,
					 cf_geo_state.STATE_CODE
			FROM  cf_geo_state 
			WHERE	 cf_geo_state.COUNTRY_CODE  = vw_import_userdoc.RESIDENCE_COUNTRY_CODE COLLATE database_default
			 AND	cf_geo_state.STATE_CODE  = vw_import_userdoc.STATE_CODE COLLATE database_default
			)
		
		/* If STATE_CODE Is null and exist any CF_GEO_STATE with the RESIDENCE_COUNTRY_CODE, 
		       message ?A state code is required for the specified applicant residence country? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'A state code is required for the specified applicant residence country'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	STATE_CODE  is null
		 AND	RESIDENCE_COUNTRY_CODE COLLATE database_default in
			(
		 	SELECT country_code
			FROM  cf_geo_state S 
			)


		/* CITY_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE/CITY_CODE in CF_GEO_CITY, 
		       message ?Invalid applicant residence state code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid applicant city code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	CITY_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_city.COUNTRY_CODE,
					 cf_geo_city.STATE_CODE
			FROM  cf_geo_city 
			WHERE	 cf_geo_city.COUNTRY_CODE  = vw_import_userdoc.RESIDENCE_COUNTRY_CODE COLLATE database_default
			 AND	cf_geo_city.STATE_CODE  = vw_import_userdoc.STATE_CODE COLLATE database_default
			 AND	cf_geo_city.CITY_CODE  = vw_import_userdoc.CITY_CODE COLLATE database_default
			)






		
		/* If PERSON_GROUP_CODE is not null and not exists in IP_PERSON_GROUP, message ?Invalid applicant person group code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'Invalid applicant person group code'
		FROM  vw_import_userdoc 
		WHERE	 ind_import  = 0
		 AND	PERSON_NAME  is not null
		 AND	PERSON_GROUP_CODE  is not null
		 AND	PERSON_GROUP_CODE  COLLATE database_default not in
			(
		 	SELECT PERSON_GROUP_NBR
			FROM  IP_PERSON_GROUP 
			)
		
		/* 4.1.2 VW_IMPORT_USERDOC_FILES validations */
		/* If FILE_SEQ / FILE_TYP / FILE_SER / FILE_NBR not exists in IP_FILE, message ?Affected file does not exist? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Affected file does not exist'
		FROM  vw_import_userdoc_files T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	 NOT EXISTS
			(
		 	SELECT
					 ip_file.file_seq,
					 ip_file.file_typ,
					 ip_file.file_ser,
					 ip_file.file_nbr
			FROM  ip_file 
			WHERE	 ip_file.file_seq  = T.FILE_SEQ COLLATE database_default
			 AND	ip_file.file_typ  = T.FILE_TYPE COLLATE database_default
			 AND	ip_file.file_ser  = T.FILE_SERIES
			 AND	ip_file.file_nbr  = T.FILE_NBR
			)
		
		/* If the userdoc type configuration indicates no association with files, 
		       message ?The type of the userdoc indicates that no association to files is possible? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'The type of the userdoc indicates that no association to files is possible'
		FROM  vw_import_userdoc_files T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	userdoc_type COLLATE database_default not in
			(
		 	SELECT userdoc_typ
			FROM  CF_USERDOC_TYPE 
			WHERE	 ind_affects_file  = 'S'
			)
		
		/* 4.1.3 VW_IMPORT_USERDOC_OWNERS validations */
		/* 4.1.3.1 New owner validations */
		/* Generate work table with USERDOC_SEQ / SERIES / NBR, IND_SERVICE and COUNT(*) */
		
		
		DECLARE @EXEC_IMMEDIATE_VAR1 VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR1  = 'TRUNCATE TABLE wrk_userdoc_service_count' 

		EXECUTE (@EXEC_IMMEDIATE_VAR1)
		INSERT INTO  wrk_userdoc_service_count    
		SELECT
				 USERDOC_SEQ,
				 USERDOC_SERIES,
				 USERDOC_NBR,
				 IND_SERVICE,
				 COUNT(*) count1
		FROM  VW_IMPORT_USERDOC_OWNERS 
		GROUP BY USERDOC_SEQ,
			 USERDOC_SERIES,
			 USERDOC_NBR,
			  IND_SERVICE 
		
		 /* check for duplicated owners*/
		 
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
						( userdoc_seq , 
						userdoc_series , 
						userdoc_nbr , 
						ind_import , 
						msg_import )  
		SELECT DISTINCT USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,
					2,	'Duplicated userdoc owner'

	    FROM VW_IMPORT_USERDOC M
		WHERE IND_IMPORT=0 and
			EXISTS(    
		
			SELECT  USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					coalesce(IND_COMPANY,0),coalesce(LEGAL_NATURE,''),
					coalesce(LEGAL_ID_TYPE,''),coalesce(LEGAL_ID_NBR,0),coalesce(INDIVIDUAL_ID_TYPE,''),coalesce(INDIVIDUAL_ID_NBR,0), 
					RESIDENCE_COUNTRY_CODE,coalesce(STATE_NAME,''),coalesce(STATE_CODE,''),coalesce(CITY_CODE,''),coalesce(CITY_NAME,''),coalesce(CITY_CODE,''),
					coalesce(ADDRESS_ZONE,''),coalesce(ADDRESS_STREET,''),coalesce(ZIP_CODE,''),coalesce(EMAIL,''),
					coalesce(TELEPHONE,''),	coalesce(PERSON_GROUP_CODE,'')
			FROM VW_IMPORT_USERDOC_OWNERS T 
			WHERE	M.USERDOC_SEQ=T.USERDOC_SEQ and
					M.USERDOC_SERIES=T.USERDOC_SERIES and
					M.USERDOC_NBR=T.USERDOC_NBR
			GROUP BY 
					USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					coalesce(IND_COMPANY,0),coalesce(LEGAL_NATURE,''),
					coalesce(LEGAL_ID_TYPE,''),coalesce(LEGAL_ID_NBR,0),coalesce(INDIVIDUAL_ID_TYPE,''),coalesce(INDIVIDUAL_ID_NBR,0), 
					RESIDENCE_COUNTRY_CODE,coalesce(STATE_NAME,''),coalesce(STATE_CODE,''),coalesce(CITY_CODE,''),coalesce(CITY_NAME,''),coalesce(CITY_CODE,''),
					coalesce(ADDRESS_ZONE,''),coalesce(ADDRESS_STREET,''),coalesce(ZIP_CODE,''),coalesce(EMAIL,''),
					coalesce(TELEPHONE,''),	coalesce(PERSON_GROUP_CODE,'')			
			HAVING COUNT(*)>1   
			)
		 
		
		
		
		 /* check for duplicated owners*/
		 
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
						( userdoc_seq , 
						userdoc_series , 
						userdoc_nbr , 
						ind_import , 
						msg_import )  
		SELECT DISTINCT USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,
					2,	'Duplicated userdoc owner'

	    FROM VW_IMPORT_USERDOC M
		WHERE IND_IMPORT=0 and
			EXISTS(    
		
			SELECT  USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					coalesce(IND_COMPANY,0),coalesce(LEGAL_NATURE,''),
					coalesce(LEGAL_ID_TYPE,''),coalesce(LEGAL_ID_NBR,0),coalesce(INDIVIDUAL_ID_TYPE,''),coalesce(INDIVIDUAL_ID_NBR,0), 
					RESIDENCE_COUNTRY_CODE,coalesce(STATE_NAME,''),coalesce(STATE_CODE,''),coalesce(CITY_CODE,''),coalesce(CITY_NAME,''),coalesce(CITY_CODE,''),
					coalesce(ADDRESS_ZONE,''),coalesce(ADDRESS_STREET,''),coalesce(ZIP_CODE,''),coalesce(EMAIL,''),
					coalesce(TELEPHONE,''),	coalesce(PERSON_GROUP_CODE,'')
			FROM VW_IMPORT_USERDOC_OWNERS T 
			WHERE	M.USERDOC_SEQ=T.USERDOC_SEQ and
					M.USERDOC_SERIES=T.USERDOC_SERIES and
					M.USERDOC_NBR=T.USERDOC_NBR
			GROUP BY 
					USERDOC_SEQ,USERDOC_SERIES,USERDOC_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					coalesce(IND_COMPANY,0),coalesce(LEGAL_NATURE,''),
					coalesce(LEGAL_ID_TYPE,''),coalesce(LEGAL_ID_NBR,0),coalesce(INDIVIDUAL_ID_TYPE,''),coalesce(INDIVIDUAL_ID_NBR,0), 
					RESIDENCE_COUNTRY_CODE,coalesce(STATE_NAME,''),coalesce(STATE_CODE,''),coalesce(CITY_CODE,''),coalesce(CITY_NAME,''),coalesce(CITY_CODE,''),
					coalesce(ADDRESS_ZONE,''),coalesce(ADDRESS_STREET,''),coalesce(ZIP_CODE,''),coalesce(EMAIL,''),
					coalesce(TELEPHONE,''),	coalesce(PERSON_GROUP_CODE,'')			
			HAVING COUNT(*)>1   
			)
		 
		
		
		
		/* No service address: where a new owner exists but none has IND_SERVICE = 1, 
		       message ?No new owner flagged as service address? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'No new owner flagged as service address'
		FROM  vw_import_userdoc U 
		WHERE	 ind_import  = 0
		 AND	  exists
			(
		 	SELECT *
			FROM  wrk_userdoc_service_count W 
			WHERE	 U.userdoc_seq  = W.userdoc_seq
			 AND	U.userdoc_series  = W.userdoc_series
			 AND	U.userdoc_nbr  = W.userdoc_nbr
			)
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  wrk_userdoc_service_count W 
			WHERE	 U.userdoc_seq  = W.userdoc_seq
			 AND	U.userdoc_series  = W.userdoc_series
			 AND	U.userdoc_nbr  = W.userdoc_nbr
			 AND	ind_service  = 1
			)
		
		/* Several service addresses: where exists corresponding tuple in the work table with 
		      IND_SERVICE = 1 and with count column > 1, message ?Several new owners flagged as service addresses? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 U.userdoc_seq,
				 U.userdoc_series,
				 U.userdoc_nbr,
				 2,
				 'Several new owners flagged as service addresses'
		FROM  vw_import_userdoc U JOIN wrk_userdoc_service_count W ON U.userdoc_seq  = W.userdoc_seq
			 AND	U.userdoc_series  = W.userdoc_series
			 AND	U.userdoc_nbr  = W.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	ind_service  = 1
		 AND	count1  > 1
		
		/* 4.1.3.2 Person validations */
		/* NATIONALITY_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid new owner nationality country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner nationality country code'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.NATIONALITY_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* LEGAL_NATURE: if not null and IND_COMPANY = 0, message ?New owner legal nature only applies when the person is a company? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'New owner legal nature only applies when the person is a company'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_NATURE  is not null
		 AND	T.IND_COMPANY  = 0
		
		/* LEGAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_GENERAL_ID = ?S?, 
		       message ?Invalid new owner legal id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner legal id type'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_ID_TYPE  is not null
		 AND	T.LEGAL_ID_TYPE COLLATE database_default not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_GENERAL_ID  = 'S'
			)
		
		/* INDIVIDUAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_INDIVIDUAL_ID = ?S?, 
		       message ?Invalid new owner individual id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner individual id type'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.INDIVIDUAL_ID_TYPE  is not null
		 AND	T.INDIVIDUAL_ID_TYPE  COLLATE database_default not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_INDIVIDUAL_ID  = 'S'
			)
		
		/* If LEGAL_ID_TYPE is not null and LEGAL_ID_NBR is null, message ?Missing new owner legal id number? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing new owner legal id number'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_ID_TYPE  is not null
		 AND	T.LEGAL_ID_NBR  is null
		
		/* If LEGAL_ID_TYPE is null and LEGAL_ID_NBR is not null, message ?Missing new owner legal id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing new owner legal id type'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_ID_TYPE  is null
		 AND	T.LEGAL_ID_NBR  is not null
		
		/* If INDIVIDUAL_ID_TYPE is not null and INDIVIDUAL_ID_NBR is null, message ?Missing new owner individual id number? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing new owner individual id number'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.INDIVIDUAL_ID_TYPE  is not null
		 AND	T.INDIVIDUAL_ID_NBR  is null
		
		/* If INDIVIDUAL_ID_TYPE is null and INDIVIDUAL_ID_NBR is not null, message ?Missing new owner individual id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing new owner individual id type'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.INDIVIDUAL_ID_TYPE  is null
		 AND	T.INDIVIDUAL_ID_NBR  is not null
		
		/* RESIDENCE_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid new owner residence country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner residence country code'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.RESIDENCE_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* STATE_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE in CF_GEO_STATE, 
		       message ?Invalid new owner residence state code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner residence state code'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.STATE_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_state.COUNTRY_CODE,
					 cf_geo_state.STATE_CODE
			FROM  cf_geo_state 
			WHERE	 cf_geo_state.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE database_default
			 AND	cf_geo_state.STATE_CODE  = T.STATE_CODE COLLATE database_default
			)
		
		/* If STATE_CODE Is null and exist any CF_GEO_STATE with the RESIDENCE_COUNTRY_CODE, 
		       message ?A state code is required for the specified new owner residence country? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'A state code is required for the specified new owner residence country'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.STATE_CODE  is null
		 AND	T.RESIDENCE_COUNTRY_CODE COLLATE database_default in
			(
		 	SELECT country_code
			FROM  cf_geo_state S 
			)


		/* CITY_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE /CITY_CODE in CF_GEO_CITY, 
		       message ?Invalid new owner residence state code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner city code'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.CITY_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_city.COUNTRY_CODE,
					 cf_geo_city.STATE_CODE
			FROM  cf_geo_city 
			WHERE	 cf_geo_city.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE database_default
			 AND	cf_geo_city.STATE_CODE  = T.STATE_CODE COLLATE database_default
 			 AND	cf_geo_city.CITY_CODE  = T.CITY_CODE COLLATE database_default
			)
		


		
		/* If PERSON_GROUP_CODE is not null and not exists in IP_PERSON_GROUP, message ?Invalid new owner person group code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid new owner person group code'
		FROM  vw_import_userdoc_owners T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.PERSON_GROUP_CODE  is not null
		 AND	T.PERSON_GROUP_CODE  COLLATE database_default not in
			(
		 	SELECT PERSON_GROUP_NBR
			FROM  IP_PERSON_GROUP 
			)
		
		/* 4.1.4 VW_IMPORT_USERDOC_REPRS validations */
		/* 4.1.4.1 Representative validations */
		/* Generate work table with USERDOC_SEQ / SERIES / NBR, IND_SERVICE and COUNT(*) */
		
		
		DECLARE @EXEC_IMMEDIATE_VAR2 VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR2  = 'TRUNCATE TABLE wrk_userdoc_service_count' 

		EXECUTE (@EXEC_IMMEDIATE_VAR2)
		INSERT INTO  wrk_userdoc_service_count    
		SELECT
				 USERDOC_SEQ,
				 USERDOC_SERIES,
				 USERDOC_NBR,
				 IND_SERVICE,
				 COUNT(*) count1
		FROM  vw_import_userdoc_reprs 
		GROUP BY USERDOC_SEQ,
			 USERDOC_SERIES,
			 USERDOC_NBR,
			  IND_SERVICE 
		
		/* No service address: where a representative exists but no-one has IND_SERVICE = 1, 
		       message ?No representative flagged as service address? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 userdoc_seq,
				 userdoc_series,
				 userdoc_nbr,
				 2,
				 'No representative flagged as service address' ojo
		FROM  vw_import_userdoc U 
		WHERE	 ind_import  = 0
		 AND	  exists
			(
		 	SELECT *
			FROM  wrk_userdoc_service_count W 
			WHERE	 U.userdoc_seq  = W.userdoc_seq
			 AND	U.userdoc_series  = W.userdoc_series
			 AND	U.userdoc_nbr  = W.userdoc_nbr
			)
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  wrk_userdoc_service_count W 
			WHERE	 U.userdoc_seq  = W.userdoc_seq
			 AND	U.userdoc_series  = W.userdoc_series
			 AND	U.userdoc_nbr  = W.userdoc_nbr
			 AND	ind_service  = 1
			)
		
		/* Several service addresses: where exists corresponding tuple in the work table with 
		      IND_SERVICE = 1 and with count column > 1, message ?Several representatives flagged as service addresses? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 U.userdoc_seq,
				 U.userdoc_series,
				 U.userdoc_nbr,
				 2,
				 'Several representatives flagged as service addresses'
		FROM  vw_import_userdoc U JOIN wrk_userdoc_service_count W ON U.userdoc_seq  = W.userdoc_seq
			 AND	U.userdoc_series  = W.userdoc_series
			 AND	U.userdoc_nbr  = W.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	ind_service  = 1
		 AND	count1  > 1
		
		/* REPRESENTATIVE_TYPE: if not exists in CF_REPRESENTATIVE_TYPE, message ?Invalid representative type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 U.userdoc_seq,
				 U.userdoc_series,
				 U.userdoc_nbr,
				 2,
				 'Invalid representative type'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	REPRESENTATIVE_TYPE  not in
			(
		 	SELECT REPRESENTATIVE_TYPE
			FROM  CF_REPRESENTATIVE_TYPE 
			)
		
		/* AGENT_CODE: if not null and not exists in IF_AGENT, message ?Invalid agent code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 U.userdoc_seq,
				 U.userdoc_series,
				 U.userdoc_nbr,
				 2,
				 'Invalid agent code'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	AGENT_CODE  is not null
		 AND	AGENT_CODE  not in
			(
		 	SELECT AGENT_CODE
			FROM  IP_AGENT 
			)
		
		/* 4.1.4.2 Person validations */
		/* NATIONALITY_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid representative nationality country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative nationality country code'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.NATIONALITY_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* LEGAL_NATURE: if not null and IND_COMPANY = 0, message ?New representative nature only applies when the person is a company? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Representative legal nature only applies when the person is a company'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_NATURE  is not null
		 AND	T.IND_COMPANY  = 0
		
		/* LEGAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_GENERAL_ID = ?S?, 
		       message ?Invalid representative legal id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative legal id type'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_ID_TYPE  is not null
		 AND	T.LEGAL_ID_TYPE  COLLATE database_default not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_GENERAL_ID  = 'S'
			)
		
		/* INDIVIDUAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_INDIVIDUAL_ID = ?S?, 
		       message ?Invalid representative individual id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative individual id type'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.INDIVIDUAL_ID_TYPE  is not null
		 AND	T.INDIVIDUAL_ID_TYPE  COLLATE database_default not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_INDIVIDUAL_ID  = 'S'
			)
		
		/* If LEGAL_ID_TYPE is not null and LEGAL_ID_NBR is null, message ?Missing representative legal id number? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing representative legal id number'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_ID_TYPE  is not null
		 AND	T.LEGAL_ID_NBR  is null
		
		/* If LEGAL_ID_TYPE is null and LEGAL_ID_NBR is not null, message ?Missing representative legal id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing representative legal id type'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.LEGAL_ID_TYPE  is null
		 AND	T.LEGAL_ID_NBR  is not null
		
		/* If INDIVIDUAL_ID_TYPE is not null and INDIVIDUAL_ID_NBR is null, message ?Missing representative individual id number? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing representative individual id number'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.INDIVIDUAL_ID_TYPE  is not null
		 AND	T.INDIVIDUAL_ID_NBR  is null
		
		/* If INDIVIDUAL_ID_TYPE is null and INDIVIDUAL_ID_NBR is not null, message ?Missing representative individual id type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Missing representative individual id type'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.INDIVIDUAL_ID_TYPE  is null
		 AND	T.INDIVIDUAL_ID_NBR  is not null
		
		/* RESIDENCE_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid representative residence country code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative residence country code'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.RESIDENCE_COUNTRY_CODE COLLATE database_default not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* STATE_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE in CF_GEO_STATE, 
		       message ?Invalid representative residence state code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative residence state code'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.STATE_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_state.COUNTRY_CODE,
					 cf_geo_state.STATE_CODE
			FROM  cf_geo_state 
			WHERE	 cf_geo_state.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE database_default
			 AND	cf_geo_state.STATE_CODE  = T.STATE_CODE COLLATE database_default
			)
		
		/* If STATE_CODE Is null and exist any CF_GEO_STATE with the RESIDENCE_COUNTRY_CODE, 
		       message ?A state code is required for the specified representative residence country? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'A state code is required for the specified representative residence country'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.STATE_CODE  is null
		 AND	T.RESIDENCE_COUNTRY_CODE COLLATE database_default in
			(
		 	SELECT country_code
			FROM  cf_geo_state S 
			)



		/* CITY_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE/CITY_CODE in CF_GEO_CITY, 
		       message ?Invalid representative residence state code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative city code'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.CITY_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_city.COUNTRY_CODE,
					 cf_geo_city.STATE_CODE
			FROM  cf_geo_city 
			WHERE	 cf_geo_city.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE database_default
			 AND	cf_geo_city.STATE_CODE  = T.STATE_CODE COLLATE database_default
			 AND	cf_geo_city.CITY_CODE  = T.CITY_CODE COLLATE database_default
			)



		
		/* If PERSON_GROUP_CODE is not null and not exists in IP_PERSON_GROUP, message ?Invalid representative person group code? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid representative person group code'
		FROM  vw_import_userdoc_reprs T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	T.PERSON_GROUP_CODE  is not null
		 AND	T.PERSON_GROUP_CODE  COLLATE database_default not in
			(
		 	SELECT PERSON_GROUP_NBR
			FROM  IP_PERSON_GROUP 
			)
		
		/* 4.1.5 VW_IMPORT_USERDOC_PAYMENTS validations */
		/* RECEIPT_TYPE: if not exists in CF_RECEIPT_TYPE, message ?Invalid receipt type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid receipt type'
		FROM  vw_import_userdoc_payments T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	RECEIPT_TYPE COLLATE database_default not in
			(
		 	SELECT RECEIPT_TYP
			FROM  CF_RECEIPT_TYPE 
			)
		
		/* CURRENCY_TYPE: if not exists in CF_CURRENCY_TYPE, message ?Invalid currency type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid currency type'
		FROM  vw_import_userdoc_payments T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ind_import  = 0
		 AND	CURRENCY_TYPE COLLATE database_default not in
			(
		 	SELECT CURRENCY_TYP
			FROM  CF_CURRENCY_TYPE 
			)
		
		/* 4.1.6 VW_IMPORT_USERDOC_ACTIONS validations */
		/* If CF_USERDOC_TYPE.GENERATE_PROC_TYP is null, message ?The user document type is not configured so as to generate a process? */
		
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Duplicate action date and type'
		FROM  vw_import_userdoc_actions T 
		GROUP	BY userdoc_seq,  userdoc_series, userdoc_nbr, action_date, action_type
		HAVING	COUNT(*) > 1
		
		
		
		
		
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'The application type is not configured so as to generate a process'
		FROM  vw_import_userdoc_actions T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  JOIN cf_userdoc_type UT ON U.userdoc_type  = UT.userdoc_typ  COLLATE database_default
		WHERE	 GENERATE_PROC_TYP  is null
		
		/* If PROCESS_FILE_SEQ / PROCESS_FILE_TYPE / PROCESS_FILE_SERIES / PROCESS_FILE_NBR is not null and 
		       the CF_PROCESS_TYPE identified by CF_USERDOC_TYPE.GENERATE_PROC_TYP has column 
		       RELATED_TO_WCODE <> 2 (related to user doc / file), 
		       message ?The file identifying one of the processes for the user document, is only applicable if the type of the process to be generated for the user doc is related both to a user doc and a file? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'The file identifying one of the processes for the user document, is only applicable if the type of the process to be generated for the user doc is related both to a user doc and a file'
		FROM  vw_import_userdoc_actions T 
		 JOIN vw_import_userdoc U ON 
				U.userdoc_seq  = T.userdoc_seq COLLATE database_default
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
			 JOIN cf_userdoc_type UT ON U.userdoc_type  = UT.userdoc_typ  COLLATE database_default
		 JOIN cf_process_type PT ON PT.proc_typ  = UT.generate_proc_typ  COLLATE database_default
		WHERE	 (PROCESS_FILE_SEQ  is not null
		 OR	PROCESS_FILE_TYPE  is not null
		 OR	PROCESS_FILE_SERIES  is not null
		 OR	PROCESS_FILE_NBR  is not null)
		 AND	RELATED_TO_WCODE  <> 2
		
		/* If PROCESS_FILE_SEQ / PROCESS_FILE_TYPE / PROCESS_FILE_SERIES / PROCESS_FILE_NBR is not null and 
		       not exists in VW_IMPORT_USERDOC_FILES, 
		       message ?The file identifying one of the processes for the user document, is not related to the user document? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'The file identifying one of the processes for the user document, is not related to the user document'
		FROM  vw_import_userdoc_actions T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 (PROCESS_FILE_SEQ  is not null
		 OR	PROCESS_FILE_TYPE  is not null
		 OR	PROCESS_FILE_SERIES  is not null
		 OR	PROCESS_FILE_NBR  is not null)
		 AND	 NOT EXISTS
			(
		 	SELECT
					 F.FILE_SEQ,
					 F.FILE_TYPE,
					 F.FILE_SERIES,
					 F.FILE_NBR
			FROM  vw_import_userdoc_files F 
			WHERE	 U.userdoc_seq  = F.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr
			 AND	F.FILE_SEQ  = T.PROCESS_FILE_SEQ
			 AND	F.FILE_TYPE  = T.PROCESS_FILE_TYPE
			 AND	F.FILE_SERIES  = T.PROCESS_FILE_SERIES
			 AND	F.FILE_NBR  = T.PROCESS_FILE_NBR
			)
		
		/* ACTION_TYPE: if not exists in CF_ACTION_TYPE, message ?Invalid action type? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid action type'
		FROM  vw_import_userdoc_actions T 
		WHERE	 ACTION_TYPE COLLATE database_default not in
			(
		 	SELECT action_typ
			FROM  cf_action_type 
			)
		
		/* SPECIAL_FINAL_STATUS: if not null and ACTION_CATEGORY in A / N, message ?Special final status is only applicable for special actions? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Special final status is only applicable for special actions'
		FROM  vw_import_userdoc_actions T 
		WHERE	 SPECIAL_FINAL_STATUS  is not null
		 AND	ACTION_CATEGORY  in ( 'A'  , 'N'  )
		
		/* If ACTION_CATEGORY is S and SPECIAL_FINAL_STATUS is null, message ?Special final status is required? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Special final status is required'
		FROM  vw_import_userdoc_actions T 
		WHERE	 SPECIAL_FINAL_STATUS  is null
		 AND	ACTION_CATEGORY  = 'S'
		
		/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS not exists in CF_STATUS 
		       (where proc_typ is CF_APPLICATION_TYPE.GENERATE_PROC_TYP for the corresponding application type), 
		       message ?Special final status is not a valid status in the process type associated to the userdoc type? */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Special final status is not a valid status in the process type associated to the userdoc type'
		FROM  vw_import_userdoc_actions T JOIN vw_import_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  JOIN cf_userdoc_type UT ON U.userdoc_type  = UT.userdoc_typ COLLATE database_default 
		WHERE	 SPECIAL_FINAL_STATUS  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT	*
			FROM  cf_status 
			WHERE	 cf_status.proc_typ  = UT.GENERATE_PROC_TYP
			 AND	cf_status.status_code  = T.SPECIAL_FINAL_STATUS COLLATE database_default
			)
		
		/* If ACTION_NOTES1 is not null and CF_ACTION_TYPE.NOTES1_PROMPT is null, 
		       message ?Current configuration indicates that this action type does not accept an action notes 1? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		/* OJO ignorar por ahora
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Current configuration indicates that this action type does not accept an action notes 1'
		FROM  vw_import_userdoc_actions T JOIN cf_action_type AT ON T.action_type  = AT.action_typ  
		WHERE	 LEN(ACTION_NOTES1)  > 1
		 AND	NOTES1_PROMPT  is null
		
		/* If ACTION_NOTES2 is not null and CF_ACTION_TYPE.NOTES2_PROMPT is null, 
		       message ?Current configuration indicates that this action type does not accept an action notes 2? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Current configuration indicates that this action type does not accept an action notes 2'
		FROM  vw_import_userdoc_actions T JOIN cf_action_type AT ON T.action_type  = AT.action_typ  
		WHERE	 LEN(ACTION_NOTES2)  > 1
		 AND	NOTES2_PROMPT  is null
		
		/* If ACTION_NOTES3 is not null and CF_ACTION_TYPE.NOTES3_PROMPT is null, 
		       message ?Current configuration indicates that this action type does not accept an action notes 3? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Current configuration indicates that this action type does not accept an action notes 3'
		FROM  vw_import_userdoc_actions T JOIN cf_action_type AT ON T.action_type  = AT.action_typ  
		WHERE	 LEN(ACTION_NOTES3)  > 1
		 AND	NOTES3_PROMPT  is null
		
		/* If ACTION_NOTES4 is not null and CF_ACTION_TYPE.NOTES4_PROMPT is null, 
		       message ?Current configuration indicates that this action type does not accept an action notes 4? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Current configuration indicates that this action type does not accept an action notes 4'
		FROM  vw_import_userdoc_actions T JOIN cf_action_type AT ON T.action_type  = AT.action_typ  
		WHERE	 LEN(ACTION_NOTES4)  > 1
		 AND	NOTES4_PROMPT  is null
		
		/* If ACTION_NOTES5 is not null and CF_ACTION_TYPE.NOTES5_PROMPT is null, 
		       message ?Current configuration indicates that this action type does not accept an action notes 5? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Current configuration indicates that this action type does not accept an action notes 5'
		FROM  vw_import_userdoc_actions T JOIN cf_action_type AT ON T.action_type  = AT.action_typ  
		WHERE	 LEN(ACTION_NOTES5)  > 1
		 AND	NOTES5_PROMPT  is null
		*/

		/* ACTION_USER: if not exists in IP_USER, message ?Invalid action user? */
		/* Performace note: join with VW_IMPORT_USERDOC to select userdocs with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_USERDOC_RESULT   
				( userdoc_seq , 
				userdoc_series , 
				userdoc_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.userdoc_seq,
				 T.userdoc_series,
				 T.userdoc_nbr,
				 2,
				 'Invalid action user'
		FROM  vw_import_userdoc_actions T 
		WHERE	 (ACTION_USER  is null
		 OR	ACTION_USER  not in
			(
		 	SELECT user_id
			FROM  ip_user 
			))
		
			-- Move below check into CallToDateValidationPROC --> MarkDateValidationPROC SP
		/* IPAS-375 Added validation for filing date */
	--	insert  into VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import)
	--	select  U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid Filing date. Filing date required to be greater than 1700-01-01 and lower than the current date.' 
	--	from  vw_import_userdoc U where filing_date > GETDATE() or CAST(DATEPART(YYYY, filing_date) as NUMERIC) < 1700

			/* IPAS-623 FIX 
			Call to Mark Date validation 
		*/
			exec CallToDateValidationPROC 'USERDOC';		
		/* FIX IPAS-623 Ends here*/

		/* *************** END OF VALIDATIONS *************** */
		/* update error indicator in VW_IMPORT_USERDOC */
		UPDATE  U   
		SET	ind_import = 2 
		FROM  VW_IMPORT_USERDOC U 
		WHERE    exists
			(
		 	SELECT *
			FROM  VW_IMPORT_USERDOC_RESULT T 
			WHERE	 U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr
			) 
		
		/* set import indicator to "validated", for those cases with no error messages */
		UPDATE  VW_IMPORT_USERDOC   
		SET	ind_import = 9 
		WHERE  ind_import  = 0 
		

		SET NOCOUNT OFF

	END


GO
