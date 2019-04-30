--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportMarkValidate'
            AND type = 'P')
	DROP PROCEDURE ImportMarkValidate
GO 
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE ImportMarkValidate
AS 
	BEGIN
		SET NOCOUNT ON
		
		/* Procedure name: ImportMarkValidate
		Input:  IPAS database and import tables not imported (i.e. IND_IMPORT not 1)
		Output: if errors, validation flag set to 2 and error messages in VW_IMPORT_MARK_RESULT
		if OK, validation flag set to 9
		create or replace procedure ImportMarkValidate as
		*/
		
		/* flag all pending marks as to be validated */
		UPDATE  vw_import_mark   
		SET	ind_import = 0 
		WHERE  ind_import  is null
		 OR	ind_import  not in ( 0  , 1  ) 
		
		/* delete prior errors */
		DELETE FROM   VW_IMPORT_MARK_RESULT    
		
		/* 1.1.1 VW_IMPORT_MARK validations */
		/* 1.1.1.1 Codes validations */
		/* FILE_SEQ: if not exists in CF_FILE_SEQUENCE, insert message "Invalid file sequence code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid file sequence code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	file_seq  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT file_seq
			FROM  cf_file_sequence 
			)
		
		/* FILE_TYPE: if not exists in CF_FILE_TYPE, insert message Invalid file type code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid file type code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	file_type  not in
			(
		 	SELECT file_type
			FROM  cf_file_type 
			)
		
		/* DOC_ORI: if not null and not exists in CF_DOC_ORIGIN, message "Invalid document origin code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid document origin code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	doc_ori  is not null
		 AND	doc_ori  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT doc_ori
			FROM  CF_DOC_ORIGIN 
			)
		
		/* DOC_ORI: if null and not exists config param 'MigrationCodOri' message "Null document origin code but no 'MigrationDocOri' parameter configured" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Null document origin code but no [MigrationCodOri] parameter configured'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	doc_ori  is null
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  CF_CONFIG_PARAM 
			WHERE	 config_code  = 'MigrationCodOri'
			)
		
		/* DOC_ORI: if null and a nul value exists for config param 'MigrationCodOri' message "Null document origin code but no valid 'MigrationDocOri' parameter configured" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Null document origin code but no valid [MigrationCodOri] parameter configured'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	doc_ori  is null
		 AND	  exists
			(
		 	SELECT *
			FROM  CF_CONFIG_PARAM 
			WHERE	 config_code  = 'MigrationCodOri'
			 AND	value  is null
			)
		
		/* APPLICATION_TYPE: if not exists in CF_APPLICATION_TYPE, message "Invalid application type code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid application type code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	APPLICATION_TYPE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT appl_typ
			FROM  CF_APPLICATION_TYPE 
			)
		
		/* APPLICATION_TYPE / APPLICATION_SUBTYPE: if not exists in CF_APPLICATION_SUBTYPE, message "Invalid application type / subtype code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid application type / subtype code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	 NOT EXISTS
			(
		 	SELECT
					 CF_APPLICATION_SUBTYPE.appl_typ,
					 CF_APPLICATION_SUBTYPE.appl_subtyp
			FROM  CF_APPLICATION_SUBTYPE 
			WHERE	 CF_APPLICATION_SUBTYPE.appl_typ  = vw_import_mark.APPLICATION_TYPE			COLLATE DATABASE_DEFAULT
			 AND	CF_APPLICATION_SUBTYPE.appl_subtyp  = vw_import_mark.APPLICATION_SUBTYPE	COLLATE DATABASE_DEFAULT
			)
		
		/* LAW_CODE: if not exists in CF_LAW, message "Invalid law code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid law code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	LAW_CODE  not in
			(
		 	SELECT law_code
			FROM  CF_LAW 
			)
		
		/* Null registration: if IND_REGISTERED = 0 and any of the other registration data items is nut null/0, 
		       message "File not flagged as registered but some of the registration data items is not null" */

		/* Note: this control was removed in Chile
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'File not flagged as registered but some of the registration data items is not null'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	IND_REGISTERED  = 0
		 AND	(REGISTRATION_TYPE  is not null
		 OR	(REGISTRATION_SERIES  not in ( 0  )
		 AND	REGISTRATION_SERIES  IS NOT NULL)
		 OR	(REGISTRATION_NBR  not in ( 0  )
		 AND	REGISTRATION_NBR  IS NOT NULL)
		 OR	REGISTRATION_DUP  is not null
		 OR	REGISTRATION_DATE  is not null
		 OR	REGISTRATION_TYPE  is not null
		 OR	ENTITLEMENT_DATE  is not null
		 OR	EXPIRATION_DATE  is not null)
		*/
		
		/* Not null registration: if IND_REGISTERED = 1 and any of the other registration data items is null/0 
		       (except REGISTRATION_DUP), message "File flagged as registered but some of the registration data items is null" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'File flagged as registered but some of the registration data items is null'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	IND_REGISTERED  = 1
		 AND	(REGISTRATION_TYPE  is null
		 OR	REGISTRATION_SERIES  IS NULL
		 OR	REGISTRATION_NBR  IS NULL
		 OR	REGISTRATION_DATE  is null
		 OR	REGISTRATION_TYPE  is null
		 OR	ENTITLEMENT_DATE  is null
		 OR	EXPIRATION_DATE  is null)
		
		/* EXPIRATION_DATE: if less than ENTITLEMENT_DATE, message "Expiration date is less then entitlement date" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Expiration date is less then entitlement date'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	IND_REGISTERED  = 1
		 AND	EXPIRATION_DATE  < ENTITLEMENT_DATE
		
		/* SIGN_TYPE: if not in N / L / B / T / S / O, message "Invalid sign type, possible values are 
		       N = name only, L = logo only, B = both name and logo, T = tridimensional, S = sound, O = olfative" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid sign type, possible values are N = name only, L = logo only, B = both name and logo, T = tridimensional, S = sound, O = olfative'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	SIGN_TYPE  not in ( 'N'  , 'L'  , 'B'  , 'T'  , 'S'  , 'O'  )
		
		/* CAPTURE_USER_ID: if not exists in IP_USER, message "Invalid capture user code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Invalid capture user code'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	CAPTURE_USER_ID  is not null
		 AND	CAPTURE_USER_ID  not in
			(
		 	SELECT user_id
			FROM  IP_USER 
			)
		
		/* 1.1.1.2 Duplicate keys validations */
		/* If FILE_SEQ / FILE_TYPE / FILE_SERIES / FILE_NBR already exists in IP_FILE, 
		       insert message "File sequence / type / series / number already exists in the database" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'File sequence / type / series / number already exists in the database'
		FROM  vw_import_mark  M
		WHERE	ind_import  = 0
		 AND	EXISTS 
				(SELECT * 
				 FROM	IP_FILE F
				 WHERE	F.FILE_SEQ	= M.FILE_SEQ	COLLATE DATABASE_DEFAULT
				  AND	F.FILE_TYP	= M.FILE_TYPE	COLLATE DATABASE_DEFAULT
				  AND	F.FILE_SER	= M.FILE_SERIES
				  AND	F.FILE_NBR	= M.FILE_NBR
				)
		
		/* If DOC_NBR is not null and DOC_ORI / DOC_SERIES / DOC_NBR already exists in IP_DOC, 
		       insert message "Document origin / series / number already exists in the database" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Document origin / series / number already exists in the database'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	DOC_NBR  is not null
		 AND	DOC_ORI  COLLATE DATABASE_DEFAULT IN
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
		
		/* If DOC_NBR is not null and DOC_ORI / DOC_SERIES / DOC_NBR is repeated in VW_IMPORT_MARK,
		insert message "Document origin / series / number duplicated in intermediate table" */
		/* Generate work table with repeated DOC_ORI / DOC_SERIES / DOC_NBR */
		
		
		DECLARE @EXEC_IMMEDIATE_VAR VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR  = 'TRUNCATE TABLE wrk_doc_key' 

		EXECUTE (@EXEC_IMMEDIATE_VAR)
		INSERT INTO  wrk_doc_key    
		SELECT
				 DOC_ORI,
				 DOC_SERIES,
				 DOC_NBR
		FROM  VW_IMPORT_MARK 
		WHERE	 DOC_NBR  is not null
		GROUP BY DOC_ORI,
			 DOC_SERIES,
			  DOC_NBR 
		HAVING COUNT(*)  > 1  
		
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Document origin / series / number duplicated in intermediate table'
		FROM  vw_import_mark 
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
		
		/* If IND_REGISTERED = 1 and REGISTRATION_TYPE / REGISTRATION_SERIES / REGISTRATION_NBR / REGISTRATION_DUP 
		       already exists in IP_FILE, insert message "Registration type / series / number / duplicate already exists in the database" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Registration type / series / number / duplicate already exists in the database'
		FROM  vw_import_mark M
		WHERE	 ind_import  = 0
		 AND	IND_REGISTERED  = 1
		 AND	EXISTS
				(SELECT	*
				 FROM	IP_FILE F
				 WHERE	F.registration_typ	= M.registration_type	COLLATE DATABASE_DEFAULT
				  AND	F.registration_ser	= M.registration_series
				  AND	F.registration_nbr	= M.registration_nbr
				  AND	F.registration_dup	= M.registration_dup	COLLATE DATABASE_DEFAULT
				)
		
		/* 1.1.1.3 Sign validations */
		/* If SIGN_TYPE is N or B, and MARK_NAME is null, message "Mark name is required" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'Mark name is required'
		FROM  vw_import_mark 
		WHERE	 ind_import  = 0
		 AND	SIGN_TYPE  in ( 'N'  , 'B'  )
		 AND	MARK_NAME  is null
		
		/* 1.1.2 VW_IMPORT_MARK_OWNERS validations */
		/* 1.1.2.1 Owner validations */
		/* Generate work table with FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, IND_SERVICE and COUNT(*) */
		DELETE FROM   wrk_file_service_count    
		
		INSERT INTO  wrk_file_service_count    
		SELECT
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 IND_SERVICE,
				 COUNT(*) count1
		FROM  VW_IMPORT_MARK_OWNERS 
		GROUP BY FILE_SEQ,
			 FILE_TYPE,
			 FILE_SERIES,
			 FILE_NBR,
			  IND_SERVICE 
		
		/* No service address: where not exists corresponding tuple in the work table with IND_SERVICE = 1, 
		       message "No owner flagged as service address" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'No owner flagged as service address'
		FROM  vw_import_mark M 
		WHERE	 ind_import  = 0
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  wrk_file_service_count W 
			WHERE	 M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr
			 AND	ind_service  = 1
			)
		
		/* Several service addresses: where exists corresponding tuple in the work table with 
		      IND_SERVICE = 1 and with count column > 1, message "Several owners flagged as service addresses" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 M.file_seq,
				 M.file_type,
				 M.file_series,
				 M.file_nbr,
				 2,
				 'Several owners flagged as service addresses'
		FROM  vw_import_mark M JOIN wrk_file_service_count W ON M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr  
		WHERE	 ind_import  = 0
		 AND	ind_service  = 1
		 AND	count1  > 1
		
		/* 1.1.2.2 Person validations */
		/* NATIONALITY_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message "Invalid owner nationality country code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner nationality country code'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	NATIONALITY_COUNTRY_CODE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* LEGAL_NATURE: if not null and IND_COMPANY = 0, message "Owner legal nature only applies when the person is a company" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Owner legal nature only applies when the person is a company'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_NATURE  is not null
		 AND	IND_COMPANY  = 0
		
		/* LEGAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_GENERAL_ID = "S", 
		       message "Invalid owner legal id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner legal id type'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_TYPE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_GENERAL_ID  = 'S'
			)
		
		/* INDIVIDUAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_INDIVIDUAL_ID = "S", 
		       message "Invalid owner individual id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner individual id type'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_TYPE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_INDIVIDUAL_ID  = 'S'
			)
		
		/* If LEGAL_ID_TYPE is not null and LEGAL_ID_NBR is null, message "Missing owner legal id number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing owner legal id number'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_NBR  is null
		
		/* If LEGAL_ID_TYPE is null and LEGAL_ID_NBR is not null, message "Missing owner legal id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing owner legal id type'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is null
		 AND	LEGAL_ID_NBR  is not null
		
		/* If INDIVIDUAL_ID_TYPE is not null and INDIVIDUAL_ID_NBR is null, message "Missing owner individual id number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing owner individual id number'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_NBR  is null
		
		/* If INDIVIDUAL_ID_TYPE is null and INDIVIDUAL_ID_NBR is not null, message "Missing owner individual id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing owner individual id type'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is null
		 AND	INDIVIDUAL_ID_NBR  is not null
		
		/* RESIDENCE_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message "Invalid owner residence country code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner residence country code'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* STATE_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE in CF_GEO_STATE, 
		       message "Invalid owner residence state code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner residence state code'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	STATE_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_state.COUNTRY_CODE,
					 cf_geo_state.STATE_CODE
			FROM  cf_geo_state 
			WHERE	 cf_geo_state.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT
			 AND	cf_geo_state.STATE_CODE  = T.STATE_CODE COLLATE DATABASE_DEFAULT
			)
		
		/* If STATE_CODE Is null and exist any CF_GEO_STATE with the RESIDENCE_COUNTRY_CODE, 
		       message "A state code is required for the specified owner residence country" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'A state code is required for the specified owner residence country'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	STATE_CODE  is null
		 AND	RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT in
			(
		 	SELECT country_code
			FROM  cf_geo_state S 
			)


		
		/* CITY_CODE: if not null and not exists CITY_CODE / STATE_CODE/RESIDENCE_COUNTRY_CODE in CF_GEO_CITY, 
		       message "Invalid owner city code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner city code'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	CITY_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_city.COUNTRY_CODE,
					 cf_geo_city.STATE_CODE
			FROM  cf_geo_city 
			WHERE	 cf_geo_city.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT
			 AND	cf_geo_city.STATE_CODE  = T.STATE_CODE COLLATE DATABASE_DEFAULT
			 AND	cf_geo_city.CITY_CODE  = T.CITY_CODE COLLATE DATABASE_DEFAULT
			)


		
		/* If PERSON_GROUP_CODE is not null and not exists in IP_PERSON_GROUP, message "Invalid owner person group code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid owner person group code'
		FROM  vw_import_mark_owners T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	PERSON_GROUP_CODE  is not null
		 AND	PERSON_GROUP_CODE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_GROUP_NBR
			FROM  IP_PERSON_GROUP 
			)
		
		
		/* owners must be different for each file */
	/*	INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )
				
		SELECT DISTINCT 
			FILE_SEQ,
			FILE_TYPE,
			FILE_SERIES,
			FILE_NBR,
			2,
			'Duplicated owner'
	    FROM VW_IMPORT_MARK_OWNERS M
		WHERE EXISTS(    
			SELECT  FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					IND_COMPANY,LEGAL_NATURE,LEGAL_ID_TYPE,LEGAL_ID_NBR,INDIVIDUAL_ID_TYPE,INDIVIDUAL_ID_NBR,  COUNT(*) 
			FROM VW_IMPORT_MARK_OWNERS T 
			WHERE	T.file_seq  = M.file_seq
					AND	T.file_type  = M.file_type
					AND	T.file_series  = M.file_series
					AND	T.file_nbr  = M.file_nbr   
			GROUP BY FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,IND_COMPANY,LEGAL_NATURE,LEGAL_ID_TYPE,LEGAL_ID_NBR,INDIVIDUAL_ID_TYPE,INDIVIDUAL_ID_NBR
			HAVING COUNT(*)>1   
		)
 			*/
				
	  		
		
		
		
		/* 1.1.3 VW_IMPORT_MARK_REPRS validations */
		/* 1.1.3.1 Representative validations */
		/* Generate work table with FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, IND_SERVICE and COUNT(*) */
		
		
		DECLARE @EXEC_IMMEDIATE_VAR1 VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR1  = 'TRUNCATE TABLE wrk_file_service_count' 

		EXECUTE (@EXEC_IMMEDIATE_VAR1)
		INSERT INTO  wrk_file_service_count    
		SELECT
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 IND_SERVICE,
				 COUNT(*) count1
		FROM  VW_IMPORT_MARK_REPRS 
		GROUP BY FILE_SEQ,
			 FILE_TYPE,
			 FILE_SERIES,
			 FILE_NBR,
			  IND_SERVICE 
		
		/* No service address: where a representative exists but no one has IND_SERVICE = 1, 
		       message "No representative flagged as service address" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'No representative flagged as service address'
		FROM  vw_import_mark M 
		WHERE	 ind_import  = 0
		 AND	  exists
			(
		 	SELECT *
			FROM  wrk_file_service_count W 
			WHERE	 M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr
			)
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  wrk_file_service_count W 
			WHERE	 M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr
			 AND	ind_service  = 1
			)
		
		/* Several service addresses: where exists corresponding tuple in the work table with IND_SERVICE = 1 and with count column > 1, 
		       message "Several representatives flagged as service addresses" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 M.file_seq,
				 M.file_type,
				 M.file_series,
				 M.file_nbr,
				 2,
				 'Several representatives flagged as service addresses'
		FROM  vw_import_mark M JOIN wrk_file_service_count W ON M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr  
		WHERE	 ind_import  = 0
		 AND	ind_service  = 1
		 AND	count1  > 1
		
		/* REPRESENTATIVE_TYPE: if null, message "Null representative type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Null representative type'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	REPRESENTATIVE_TYPE  is null
		
		/* REPRESENTATIVE_TYPE: if not exists in CF_REPRESENTATIVE_TYPE, message "Invalid representative type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative type'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	REPRESENTATIVE_TYPE  not in
			(
		 	SELECT REPRESENTATIVE_TYPE
			FROM  CF_REPRESENTATIVE_TYPE 
			)
		
		/* AGENT_CODE: if not null and not exists in IF_AGENT, message "Invalid agent code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid agent code'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	AGENT_CODE  is not null
		 AND	AGENT_CODE  not in
			(
		 	SELECT AGENT_CODE
			FROM  IP_AGENT 
			)
		
		/* 1.1.3.2 Person validations */
		/* NATIONALITY_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message "Invalid representative nationality country code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative nationality country code'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	NATIONALITY_COUNTRY_CODE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* LEGAL_NATURE: if not null and IND_COMPANY = 0, message "Representative legal nature only applies when the person is a company" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Representative legal nature only applies when the person is a company'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_NATURE  is not null
		 AND	IND_COMPANY  = 0
		
		/* LEGAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_GENERAL_ID = "S", 
		       message "Invalid Representative legal id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative legal id type'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_TYPE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_GENERAL_ID  = 'S'
			)
		
		/* INDIVIDUAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_INDIVIDUAL_ID = "S", 
		       message "Invalid representative individual id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative individual id type'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_TYPE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_INDIVIDUAL_ID  = 'S'
			)
		
		/* If LEGAL_ID_TYPE is not null and LEGAL_ID_NBR is null, message "Missing representative legal id number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing representative legal id number'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_NBR  is null
		
		/* If LEGAL_ID_TYPE is null and LEGAL_ID_NBR is not null, message "Missing representative legal id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing representative legal id type'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is null
		 AND	LEGAL_ID_NBR  is not null
		
		/* If INDIVIDUAL_ID_TYPE is not null and INDIVIDUAL_ID_NBR is null, message "Missing representative individual id number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing representative individual id number'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_NBR  is null
		
		/* If INDIVIDUAL_ID_TYPE is null and INDIVIDUAL_ID_NBR is not null, message "Missing representative individual id type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Missing representative individual id type'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is null
		 AND	INDIVIDUAL_ID_NBR  is not null
		
		/* RESIDENCE_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message "Invalid representative residence country code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative residence country code'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* STATE_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE in CF_GEO_STATE, 
		       message "Invalid representative residence state code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative residence state code'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	STATE_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_state.COUNTRY_CODE,
					 cf_geo_state.STATE_CODE
			FROM  cf_geo_state 
			WHERE	 cf_geo_state.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT
			 AND	cf_geo_state.STATE_CODE  = T.STATE_CODE COLLATE DATABASE_DEFAULT
			)
		
		/* If STATE_CODE Is null and exist any CF_GEO_STATE with the RESIDENCE_COUNTRY_CODE, 
		       message "A state code is required for the specified representative residence country" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'A state code is required for the specified representative residence country'
		FROM  vw_import_mark_reprs T 
			   JOIN vw_import_mark M ON 
					T.file_seq  = M.file_seq COLLATE DATABASE_DEFAULT
			 AND	T.file_type  = M.file_type COLLATE DATABASE_DEFAULT
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	STATE_CODE  is null
		 AND	RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT in
			(
		 	SELECT country_code
			FROM  cf_geo_state 
			)



		
		/* CITY_CODE: if not null and not exists CITY_CODE / STATE_CODE/RESIDENCE_COUNTRY_CODE in CF_GEO_CITY, 
		       message "Invalid representative city code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative city code'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	CITY_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_city.COUNTRY_CODE,
					 cf_geo_city.STATE_CODE
			FROM  cf_geo_city 
			WHERE	 cf_geo_city.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT
			 AND	cf_geo_city.STATE_CODE  = T.STATE_CODE COLLATE DATABASE_DEFAULT
			 AND	cf_geo_city.CITY_CODE  = T.CITY_CODE COLLATE DATABASE_DEFAULT
			)


		
		/* If PERSON_GROUP_CODE is not null and not exists in IP_PERSON_GROUP, message "Invalid representative person group code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid representative person group code'
		FROM  vw_import_mark_reprs T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	PERSON_GROUP_CODE  is not null
		 AND	PERSON_GROUP_CODE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_GROUP_NBR
			FROM  IP_PERSON_GROUP 
			)
		
		
		
			/* owners must be different for each file */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )
				
		SELECT DISTINCT 
			FILE_SEQ,
			FILE_TYPE,
			FILE_SERIES,
			FILE_NBR,
			2,
			'Duplicated representative data'
	    FROM VW_IMPORT_MARK_REPRS M
		WHERE EXISTS(    
			SELECT  FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,
					IND_COMPANY,LEGAL_NATURE,LEGAL_ID_TYPE,LEGAL_ID_NBR,INDIVIDUAL_ID_TYPE,INDIVIDUAL_ID_NBR,  COUNT(*) 
			FROM VW_IMPORT_MARK_REPRS T 
			WHERE	T.file_seq  = M.file_seq
					AND	T.file_type  = M.file_type
					AND	T.file_series  = M.file_series
					AND	T.file_nbr  = M.file_nbr   
			GROUP BY FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR,PERSON_NAME,NATIONALITY_COUNTRY_CODE,IND_COMPANY,LEGAL_NATURE,LEGAL_ID_TYPE,LEGAL_ID_NBR,INDIVIDUAL_ID_TYPE,INDIVIDUAL_ID_NBR
			HAVING COUNT(*)>1   
		)
 			
		
		
		
		/* 1.1.4 VW_IMPORT_MARK_PRIORITIES validations */
		/* COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message "Invalid priority country code" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid priority country code'
		FROM  vw_import_mark_priorities T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	COUNTRY_CODE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  CF_GEO_COUNTRY 
			)
		
		/* Generate work table with FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, APPLICATION_ID and COUNT(*) */
		
		
		DECLARE @EXEC_IMMEDIATE_VAR2 VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR2  = 'TRUNCATE TABLE wrk_file_priority_count' 

		EXECUTE (@EXEC_IMMEDIATE_VAR2)
		INSERT INTO  wrk_file_priority_count    
		SELECT
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 APPLICATION_ID,
				 COUNT(*) count1
		FROM  VW_IMPORT_MARK_PRIORITIES 
		GROUP BY FILE_SEQ,
			 FILE_TYPE,
			 FILE_SERIES,
			 FILE_NBR,
			  APPLICATION_ID 
		
		/* Duplicate application id: where exists corresponding tuple in the work table with the same APPLICATION_ID 
		       and with count column > 1, message "Several priorities use the same application id" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 M.file_seq,
				 M.file_type,
				 M.file_series,
				 M.file_nbr,
				 2,
				 'Several priorities use the same application id'
		FROM  vw_import_mark_priorities T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  JOIN wrk_file_priority_count W ON T.file_seq  = W.file_seq
			 AND	T.file_type  = W.file_type
			 AND	T.file_series  = W.file_series
			 AND	T.file_nbr  = W.file_nbr
			 AND	T.application_id  = W.application_id  
		WHERE	 ind_import  = 0
		 AND	count1  > 1
		
		/* 1.1.5 VW_IMPORT_MARK_VIENNA_CLASSES validations */
		/* Category: if VIENNA_CATEGORY / VIENNA_EDITION_CODE not exists in CF_CLASS_VIENNA_CATEG, message "Invalid Vienna category / edition codes" */
		/* IPAS-1273/1341 Added VIENNA_EDITION_CODE for Vienna classification*/
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid Vienna category / edition codes'
		FROM  vw_import_mark_vienna_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
	    AND NOT EXISTS
			(
		 	 SELECT	*
			 FROM  CF_CLASS_VIENNA_CATEG 
			 WHERE	 CF_CLASS_VIENNA_CATEG.VIENNA_CATEGORY_CODE  = T.VIENNA_CATEGORY			 
			 AND	CF_CLASS_VIENNA_CATEG.VIENNA_EDITION_CODE   = T.VIENNA_EDITION_CODE
			)			
		
		/* Division: if VIENNA_CATEGORY / VIENNA_DIVISION / VIENNA_EDITION_CODE not exists in CF_CLASS_VIENNA_DIVIS, 
		       message "Invalid Vienna category / division / edition codes" */
		/* IPAS-1273/1341 Added VIENNA_EDITION_CODE for Vienna classification*/	   
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid Vienna category / division / edition codes'
		FROM  vw_import_mark_vienna_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	 NOT EXISTS
			(
		 	SELECT	*
			FROM  CF_CLASS_VIENNA_DIVIS 
			WHERE	 CF_CLASS_VIENNA_DIVIS.VIENNA_CATEGORY_CODE  = T.VIENNA_CATEGORY
			 AND	CF_CLASS_VIENNA_DIVIS.VIENNA_DIVISION_CODE   = T.VIENNA_DIVISION
			 AND	CF_CLASS_VIENNA_DIVIS.VIENNA_EDITION_CODE   = T.VIENNA_EDITION_CODE
			)
		
		/* Section: if VIENNA_SECTION is not null and VIENNA_CATEGORY / VIENNA_DIVISION / VIENNA_SECTION / VIENNA_EDITION_CODE
		       not exists in CF_CLASS_VIENNA_SECT, message "Invalid Vienna category / division / section / edition codes" */
		/* IPAS-1273/1341 Added VIENNA_EDITION_CODE for Vienna classification*/	   
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid Vienna category / division / section / edition codes'
		FROM  vw_import_mark_vienna_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	VIENNA_SECTION  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT *
			FROM  CF_CLASS_VIENNA_SECT 
			WHERE	 CF_CLASS_VIENNA_SECT.VIENNA_CATEGORY_CODE  = T.VIENNA_CATEGORY
			 AND	CF_CLASS_VIENNA_SECT.VIENNA_DIVISION_CODE   = T.VIENNA_DIVISION
			 AND	CF_CLASS_VIENNA_SECT.VIENNA_SECTION_CODE    = T.VIENNA_SECTION
			 AND	CF_CLASS_VIENNA_SECT.VIENNA_EDITION_CODE   = T.VIENNA_EDITION_CODE
			)
		
		/* If VIENNA_SECTION is null and the configuration parameter "VienaElementoOpcional" indicates N, 
		       message "Current configuration indicates that Vienna section is required" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Current configuration indicates that Vienna section is required'
		FROM  vw_import_mark_vienna_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr ,
			 cf_config_param 
		WHERE	 ind_import  = 0
		 AND	VIENNA_SECTION  is null
		 AND	config_code  = 'VienaElementoOpcional'
		 AND	value  = 'N'
		
		/* Generate work table with VIENNA_CATEGORY, VIENNA_DIVISION, VIENNA_SECTION and COUNT(*) */
		/* IPAS-1273/1341 Added VIENNA_EDITION_CODE for Vienna classification*/
		
		DECLARE @EXEC_IMMEDIATE_VAR3 VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR3  = 'TRUNCATE TABLE wrk_file_vienna_count' 

		EXECUTE (@EXEC_IMMEDIATE_VAR3)
		INSERT INTO  wrk_file_vienna_count    
		SELECT
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 VIENNA_EDITION_CODE,
				 VIENNA_CATEGORY,
				 VIENNA_DIVISION,
				 VIENNA_SECTION,
				 COUNT(*) count1
		FROM  VW_IMPORT_MARK_VIENNA_CLASSES 
		GROUP BY FILE_SEQ,
			 FILE_TYPE,
			 FILE_SERIES,
			 FILE_NBR,
			 VIENNA_EDITION_CODE,
			 VIENNA_CATEGORY,
			 VIENNA_DIVISION,
			  VIENNA_SECTION 
		
		/* If several tuples exist for the same Vienna codes, message "Several Vienna classes with the same number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 M.file_seq,
				 M.file_type,
				 M.file_series,
				 M.file_nbr,
				 2,
				 'Several Vienna classes with the same number'
		FROM  vw_import_mark M JOIN wrk_file_vienna_count W ON M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr  
		WHERE	 ind_import  = 0
		 AND	count1  > 1
		
		/* 1.1.6 VW_IMPORT_MARK_NICE_CLASSES validations */
		/* Generate work table with FILE_SEQ, FILE_TYPE, FILE_SERIES, FILE_NBR, NICE_CLASS_NBR and COUNT(*) */
		/* IPAS-1273/1341 Added NICE_CLASS_VERSION for NICE classification */
		
		DECLARE @EXEC_IMMEDIATE_VAR4 VARCHAR (4000)
		SELECT @EXEC_IMMEDIATE_VAR4  = 'TRUNCATE TABLE wrk_file_nice_count' 

		EXECUTE (@EXEC_IMMEDIATE_VAR4)
		INSERT INTO  wrk_file_nice_count    
		SELECT
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 NICE_CLASS_VERSION,
				 NICE_CLASS_NBR,				 
				 COUNT(*) count1
		FROM  VW_IMPORT_MARK_NICE_CLASSES 
		GROUP BY FILE_SEQ,
			 FILE_TYPE,
			 FILE_SERIES,
			 FILE_NBR,
			 NICE_CLASS_VERSION,
			  NICE_CLASS_NBR 
		
		/* NICE_CLASS_NBR: if not exists in CF_CLASS_NICE, message "Invalid Nice class number / version" */
		/* IPAS-1273/1341 Added NICE_CLASS_VERSION for NICE classification */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid Nice class number / version'
		FROM  vw_import_mark_nice_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		AND NOT EXISTS
			(
		 	 SELECT	*
			 FROM   CF_CLASS_NICE 
			 WHERE	CF_CLASS_NICE.NICE_CLASS_CODE  = T.NICE_CLASS_NBR			 
			 AND	CF_CLASS_NICE.NICE_CLASS_VERSION   = T.NICE_CLASS_VERSION
			)		
		
		/* NICE_CLASS_STATUS: if not exists in CF_PROCESS_RESULT_TYPE, message "Invalid Nice class status" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid Nice class status'
		FROM  vw_import_mark_nice_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	NICE_CLASS_STATUS COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT NICE_CLASS_STATUS_WCODE
			FROM  CF_PROCESS_RESULT_TYPE
			)
		

		/* If several tuples exist for the same NICE_CLASS_NBR, message "Several Nice classes with the same number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 M.file_seq,
				 M.file_type,
				 M.file_series,
				 M.file_nbr,
				 2,
				 'Several Nice classes with the same number'
		FROM  vw_import_mark M JOIN wrk_file_nice_count W ON M.file_seq  = W.file_seq
			 AND	M.file_type  = W.file_type
			 AND	M.file_series  = W.file_series
			 AND	M.file_nbr  = W.file_nbr  
		WHERE	 ind_import  = 0
		 AND	count1  > 1
		
		/* 1.1.7 VW_IMPORT_MARK_NATL_CLASSES validations */
		/* NATIONAL_CLASS_NBR: if not exists in CF_CLASS_NATL, message "Invalid national goods and services class number" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid national goods and services class number'
		FROM  vw_import_mark_natl_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	NATIONAL_CLASS_NBR  not in
			(
		 	SELECT NATL_CLASS_CODE
			FROM  CF_CLASS_NATL 
			)
		
		/* OJO NATIONAL_CLASS_NBR: if not exists in CF_CLASS_NATL_2_NICE, 
		       message "National goods and services class number not mapped to Nice class(es)" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'National goods and services class number not mapped to Nice class(es)'
		FROM  vw_import_mark_natl_classes T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	NATIONAL_CLASS_NBR  not in
			(
		 	SELECT NATL_CLASS_CODE
			FROM  CF_CLASS_NATL_2_SEARCH
			)
		
		/* If a mark has no Nice and no national class, 
		       message "Mark has no Nice class and no national class" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 M.file_seq,
				 M.file_type,
				 M.file_series,
				 M.file_nbr,
				 2,
				 'Mark has no Nice class and no national class'
		FROM  vw_import_mark M 
		WHERE	 ind_import  = 0
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  VW_IMPORT_MARK_NICE_CLASSES C1 
			WHERE	 M.file_seq  = C1.file_seq
			 AND	M.file_type  = C1.file_type
			 AND	M.file_series  = C1.file_series
			 AND	M.file_nbr  = C1.file_nbr
			)
		 AND	NOT   exists
			(
		 	SELECT *
			FROM  VW_IMPORT_MARK_NATL_CLASSES C2 
			WHERE	 M.file_seq  = C2.file_seq
			 AND	M.file_type  = C2.file_type
			 AND	M.file_series  = C2.file_series
			 AND	M.file_nbr  = C2.file_nbr
			)
		
		/* 1.1.8 VW_IMPORT_MARK_PAYMENTS validations */
		/* RECEIPT_TYPE: if not exists in CF_RECEIPT_TYPE, message "Invalid receipt type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid receipt type'
		FROM  vw_import_mark_payments T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	RECEIPT_TYPE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT RECEIPT_TYP
			FROM  CF_RECEIPT_TYPE 
			)
		
		/* CURRENCY_TYPE: if not exists in CF_CURRENCY_TYPE, message "Invalid currency type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid currency type'
		FROM  vw_import_mark_payments T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  
		WHERE	 ind_import  = 0
		 AND	CURRENCY_TYPE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT CURRENCY_TYP
			FROM  CF_CURRENCY_TYPE 
			)


		/*VW_IMPORT_MARK_VALID_STATES validations	*/
		
		/* Check if validity national states is missing */
/*		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'The list of validity national states is missing'
		FROM  VW_IMPORT_MARK m, CF_APPLICATION_TYPE t
                WHERE
                        ind_import=0 and 
                        m.APPLICATION_TYPE COLLATE DATABASE_DEFAULT  =  t.APPL_TYP and 
                        t.IND_VALID_IN_STATES='S' and
                        not exists (select * from VW_IMPORT_MARK_VALID_STATES s where
                         s.FILE_SEQ=m.FILE_SEQ and
                         s.FILE_TYPE=m.FILE_TYPE and
                         s.FILE_SERIES=m.FILE_SERIES and
                         s.FILE_NBR=m.FILE_NBR);
*/

		/* Check if validity national states must be empty */
/*		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'The list of validity national states does not apply for this application type'
		FROM  VW_IMPORT_MARK m, CF_APPLICATION_TYPE t
                WHERE
                        ind_import=0 and 
                        m.APPLICATION_TYPE COLLATE DATABASE_DEFAULT  =  t.APPL_TYP and 
                        t.IND_VALID_IN_STATES='N' and
                        exists (select * from VW_IMPORT_MARK_VALID_STATES s where
                         s.FILE_SEQ=m.FILE_SEQ and
                         s.FILE_TYPE=m.FILE_TYPE and
                         s.FILE_SERIES=m.FILE_SERIES and
                         s.FILE_NBR=m.FILE_NBR);

                	INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'The list of validity national states does not apply for this application type'
		FROM  VW_IMPORT_MARK m, CF_APPLICATION_TYPE t
                WHERE
                        ind_import=0 and 
                        m.APPLICATION_TYPE COLLATE DATABASE_DEFAULT  =  t.APPL_TYP and 
                        t.IND_VALID_IN_STATES='N' and
                        exists (select * from VW_IMPORT_MARK_VALID_STATES s where
                         s.FILE_SEQ=m.FILE_SEQ and
                         s.FILE_TYPE=m.FILE_TYPE and
                         s.FILE_SERIES=m.FILE_SERIES and
                         s.FILE_NBR=m.FILE_NBR);
*/
                         /* Check if The country code used in one of the validity states is not the national country code*/

                	INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 file_seq,
				 file_type,
				 file_series,
				 file_nbr,
				 2,
				 'The country code used in one of the validity states is not the national country code'
		FROM  VW_IMPORT_MARK m, CF_CONFIG_PARAM t
                WHERE
                        ind_import=0 and 
                        t.CONFIG_CODE='CodPaisEstadisticasOmpi' and
                        exists (select * from VW_IMPORT_MARK_VALID_STATES s where
                         s.FILE_SEQ=m.FILE_SEQ and
                         s.FILE_TYPE=m.FILE_TYPE and
                         s.FILE_SERIES=m.FILE_SERIES and
                         s.FILE_NBR=m.FILE_NBR and
                         s.COUNTRY_CODE COLLATE DATABASE_DEFAULT <> VALUE);



		
		/* 1.1.9 VW_IMPORT_MARK_ACTIONS validations */
		/* If CF_APPLICATION_TYPE.GENERATE_PROC_TYP is null, message "The application type is not configured so as to generate a process" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'The application type is not configured so as to generate a process'
		FROM  vw_import_mark_actions T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  JOIN cf_application_type AT ON M.application_type  = AT.appl_typ COLLATE DATABASE_DEFAULT 
		WHERE	 GENERATE_PROC_TYP  is null
		
		/* ACTION_TYPE: if not exists in CF_ACTION_TYPE, message "Invalid action type" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid action type'
		FROM  vw_import_mark_actions T 
		WHERE	 ACTION_TYPE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT action_typ
			FROM  cf_action_type 
			)
		
		/* SPECIAL_FINAL_STATUS: if not null and ACTION_CATEGORY in A / N, message "Special final status is only applicable for special actions" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Special final status is only applicable for special actions'
		FROM  vw_import_mark_actions T 
		WHERE	 SPECIAL_FINAL_STATUS  is not null
		 AND	ACTION_CATEGORY  in ( 'A'  , 'N'  )
		
		/* If ACTION_CATEGORY is S and SPECIAL_FINAL_STATUS is null, message "Special final status is required" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Special final status is required'
		FROM  vw_import_mark_actions T 
		WHERE	 SPECIAL_FINAL_STATUS  is null
		 AND	ACTION_CATEGORY  = 'S'
		
/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS not exists in CF_STATUS 
		       (where proc_typ is CF_APPLICATION_TYPE.GENERATE_PROC_TYP for the corresponding application type), 
		       message "Special final status is not a valid status in the process type associated to the application type" */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Special final status is not a valid status in the process type associated to the application type'
		FROM  vw_import_mark_actions T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
			 AND	T.file_type  = M.file_type
			 AND	T.file_series  = M.file_series
			 AND	T.file_nbr  = M.file_nbr  JOIN cf_application_type AT ON M.application_type  = AT.appl_typ COLLATE DATABASE_DEFAULT 
		WHERE	 SPECIAL_FINAL_STATUS  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT	*
			FROM	cf_status 
			WHERE	cf_status.proc_typ  = AT.GENERATE_PROC_TYP
			 AND	cf_status.status_code  = T.SPECIAL_FINAL_STATUS COLLATE DATABASE_DEFAULT
			)
		
			/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS is origin for 
	   a "due date" automatic action, then MANUAL_DUE_DATE must not be null. 
	   Otherwise, message ?Special final status is origin for a 'date is due' automatic action, but manual due date is null? */
	INSERT INTO  VW_IMPORT_MARK_RESULT   
			( file_seq , 
			file_type , 
			file_series , 
			file_nbr , 
			ind_import , 
			msg_import )  
	SELECT
			 T.file_seq,
			 T.file_type,
			 T.file_series,
			 T.file_nbr,
			 2,
			 'Special final status is origin for a "date is due" automatic action, but manual due date is null'
	FROM  vw_import_mark_actions T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
		 AND	T.file_type  = M.file_type
		 AND	T.file_series  = M.file_series
		 AND	T.file_nbr  = M.file_nbr  JOIN cf_application_type AT  ON M.application_type  = AT.appl_typ COLLATE DATABASE_DEFAULT 
	WHERE	 SPECIAL_FINAL_STATUS  is not null
	 AND	GENERATE_PROC_TYP  IN
		(
	 	SELECT proc_typ
		FROM  cf_migration 
		WHERE	 action_typ  in
			(
	 		SELECT action_typ
			FROM  cf_action_type 
			WHERE	 automatic_action_wcode  = 1
			)
		)
	 AND	SPECIAL_FINAL_STATUS COLLATE DATABASE_DEFAULT  IN
		(
	 	SELECT initial_status_code
		FROM  cf_migration 
		WHERE	 action_typ  in
			(
	 		SELECT action_typ
			FROM  cf_action_type 
			WHERE	 automatic_action_wcode  = 1
			)
		)
	 AND	manual_due_date  is null
	
	/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS is not origin for 
	   a "due date" automatic action, then MANUAL_DUE_DATE must be null. 
	   Otherwise, message "Special final status is not origin for a 'date is due' automatic action, but manual due date is not null" */
	INSERT INTO  VW_IMPORT_MARK_RESULT   
			( file_seq , 
			file_type , 
			file_series , 
			file_nbr , 
			ind_import , 
			msg_import )  
	SELECT
			 T.file_seq,
			 T.file_type,
			 T.file_series,
			 T.file_nbr,
			 2,
			 'Special final status is not origin for a "date is due" automatic action, but manual due date is not null'
	FROM  vw_import_mark_actions T 
		  JOIN vw_import_mark M ON 
				T.file_seq  = M.file_seq
		 AND	T.file_type  = M.file_type
		 AND	T.file_series  = M.file_series
		 AND	T.file_nbr  = M.file_nbr  
		  JOIN cf_application_type AT ON M.application_type   = AT.appl_typ    COLLATE DATABASE_DEFAULT
	WHERE	 SPECIAL_FINAL_STATUS  is not null
	 AND	 GENERATE_PROC_TYP + SPECIAL_FINAL_STATUS COLLATE DATABASE_DEFAULT not in
		(
	 	SELECT	proc_typ + initial_status_code
		FROM	cf_migration 
		WHERE	 action_typ  in
			(
	 		SELECT action_typ
			FROM  cf_action_type 
			WHERE	 automatic_action_wcode  = 1
			)
		 )
	 AND	manual_due_date  is not null
	
	/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS requires a
	   responsible user, then RESPONSIBLE_USER must not be null. 
	   Otherwise, message ?Special final status requires a responsible user to be assigned? */
/*	INSERT INTO  VW_IMPORT_MARK_RESULT   
			( file_seq , 
			file_type , 
			file_series , 
			file_nbr , 
			ind_import , 
			msg_import )  
	SELECT
			 T.file_seq,
			 T.file_type,
			 T.file_series,
			 T.file_nbr,
			 2,
			 'Special final status requires a responsible user to be assigned'
	FROM  vw_import_mark_actions T 
			JOIN vw_import_mark M ON T.file_seq  = M.file_seq
		 AND	T.file_type  = M.file_type
		 AND	T.file_series  = M.file_series
		 AND	T.file_nbr  = M.file_nbr  
			JOIN cf_application_type AT ON M.application_type  = AT.appl_typ COLLATE DATABASE_DEFAULT
	WHERE	 SPECIAL_FINAL_STATUS  is not null
	 AND	(GENERATE_PROC_TYP + SPECIAL_FINAL_STATUS)  IN
		(
	 	SELECT proc_typ + status_code
		FROM  cf_status 
		WHERE	 ind_responsible_req  = 'S'
		)
	 AND	responsible_user  is null
*/	
	/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS requires no
	   responsible user, then RESPONSIBLE_USER must be null. 
	   Otherwise, message ?Special final status requires no responsible user to be assigned? */
/*	INSERT INTO  VW_IMPORT_MARK_RESULT   
			( file_seq , 
			file_type , 
			file_series , 
			file_nbr , 
			ind_import , 
			msg_import )  
	SELECT
			 T.file_seq,
			 T.file_type,
			 T.file_series,
			 T.file_nbr,
			 2,
			 'Special final status requires no responsible user to be assigned'
	FROM  vw_import_mark_actions T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
		 AND	T.file_type  = M.file_type
		 AND	T.file_series  = M.file_series
		 AND	T.file_nbr  = M.file_nbr  JOIN cf_application_type AT ON M.application_type  = AT.appl_typ COLLATE DATABASE_DEFAULT 
	WHERE	 SPECIAL_FINAL_STATUS  is not null
	 AND	 (GENERATE_PROC_TYP + SPECIAL_FINAL_STATUS) NOT IN
		(
	 	SELECT	proc_typ + status_code
		FROM  cf_status 
		WHERE	 ind_responsible_req  = 'S'
		)
	 AND	responsible_user  is not null
*/	
	/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS is origin for 
	   a "end of freezing" automatic action, then a "freezing" document must be specified in tables
	   VW_IMPORT_MARK_FREEZE_FILE or VW_IMPORT_MARK_FREEZE_UDOC.
	   Otherwise, message ?Special final status is origin for an 'end of freezing' automatic action, but no freezings exist in VW_IMPORT_MARK_FREEZE_FILE / UDOC? */
	/*
	INSERT INTO  VW_IMPORT_MARK_RESULT   
			( file_seq , 
			file_type , 
			file_series , 
			file_nbr , 
			ind_import , 
			msg_import )  
	SELECT
			 T.file_seq,
			 T.file_type,
			 T.file_series,
			 T.file_nbr,
			 2,
			 'Special final status is origin for an "end of freezing" automatic action, but no freezings exist in VW_IMPORT_MARK_FREEZE_FILE / UDOC'
	FROM  vw_import_mark_actions T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
		 AND	T.file_type  = M.file_type
		 AND	T.file_series  = M.file_series
		 AND	T.file_nbr  = M.file_nbr  JOIN cf_application_type AT ON M.application_type  = AT.appl_typ  COLLATE DATABASE_DEFAULT
	WHERE	 SPECIAL_FINAL_STATUS  is not null
	 AND	(GENERATE_PROC_TYP + SPECIAL_FINAL_STATUS ) IN
		(
	 	SELECT proc_typ + initial_status_code
		FROM  cf_migration 
		WHERE	 action_typ  in
			(
	 		SELECT action_typ
			FROM  cf_action_type 
			WHERE	 automatic_action_wcode  = 2
			)
		)
	 AND	NOT   exists
		(
	 	SELECT *
		FROM  vw_import_mark_file_freezes ff 
		WHERE	 ff.file_type  = T.file_type
		 AND	ff.file_seq  = T.file_seq
		 AND	ff.file_series  = T.file_series
		 AND	ff.file_nbr  = T.file_nbr
		)
	 AND	NOT   exists
		(
	 	SELECT *
		FROM  vw_import_mark_udoc_freezes uf 
		WHERE	 uf.file_type  = T.file_type
		 AND	uf.file_seq  = T.file_seq
		 AND	uf.file_series  = T.file_series
		 AND	uf.file_nbr  = T.file_nbr
		)
	*/
	/* If SPECIAL_FINAL_STATUS is not null and proc_typ / SPECIAL_FINAL_STATUS is not origin for 
	   a "end of freezing" automatic action, then no "freezing" document must be specified in tables
	   VW_IMPORT_MARK_FREEZE_FILE or VW_IMPORT_MARK_FREEZE_UDOC.
	   Otherwise, message ?Special final status is not origin for an 'end of freezing' automatic action, but a freezings exist in VW_IMPORT_MARK_FREEZE_FILE / UDOC? */
/*
	INSERT INTO  VW_IMPORT_MARK_RESULT   
			( file_seq , 
			file_type , 
			file_series , 
			file_nbr , 
			ind_import , 
			msg_import )  
	SELECT
			 T.file_seq,
			 T.file_type,
			 T.file_series,
			 T.file_nbr,
			 2,
			 'Special final status is not origin for an "end of freezing" automatic action, but a freezings exist in VW_IMPORT_MARK_FREEZE_FILE / UDOC'
	FROM  vw_import_mark_actions T JOIN vw_import_mark M ON T.file_seq  = M.file_seq
		 AND	T.file_type  = M.file_type
		 AND	T.file_series  = M.file_series
		 AND	T.file_nbr  = M.file_nbr  JOIN cf_application_type AT ON M.application_type  = AT.appl_typ  COLLATE DATABASE_DEFAULT
	WHERE	 SPECIAL_FINAL_STATUS  is not null
	 AND	 (GENERATE_PROC_TYP + SPECIAL_FINAL_STATUS) COLLATE DATABASE_DEFAULT NOT IN
		(
	 	SELECT	proc_typ + initial_status_code
		FROM  cf_migration 
		WHERE	 action_typ  in
			(
	 		SELECT action_typ
			FROM  cf_action_type 
			WHERE	 automatic_action_wcode  = 2
			)
		)
	 AND	(  exists
		(
	 	SELECT *
		FROM  vw_import_mark_file_freezes ff 
		WHERE	 ff.file_type  = T.file_type
		 AND	ff.file_seq  = T.file_seq
		 AND	ff.file_series  = T.file_series
		 AND	ff.file_nbr  = T.file_nbr
		)
	 OR	  exists
		(
	 	SELECT *
		FROM  vw_import_mark_udoc_freezes uf 
		WHERE	 uf.file_type  = T.file_type
		 AND	uf.file_seq  = T.file_seq
		 AND	uf.file_series  = T.file_series
		 AND	uf.file_nbr  = T.file_nbr
		))
	
*/		

		
		
		/* If ACTION_NOTES1 is not null and CF_ACTION_TYPE.NOTES1_PROMPT is null, 
		       message "Current configuration indicates that this action type does not accept an action notes 1" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		/* OJO ignorar por ahora 
		    insert  into VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
		    select  T.file_seq, T.file_type, T.file_series, T.file_nbr,
		            2, 'Current configuration indicates that this action type does not accept an action notes 1'
		    from    vw_import_mark_actions T
		            join cf_action_type AT on
		                T.action_type   = AT.action_typ
		    where   length(ACTION_NOTES1)   > 1   and
		            NOTES1_PROMPT           is null
		    ;
		*/
		/* If ACTION_NOTES2 is not null and CF_ACTION_TYPE.NOTES2_PROMPT is null, 
		       message "Current configuration indicates that this action type does not accept an action notes 2" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		/* OJO ignorar por ahora
		    insert  into VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
		    select  T.file_seq, T.file_type, T.file_series, T.file_nbr,
		            2, 'Current configuration indicates that this action type does not accept an action notes 2'
		    from    vw_import_mark_actions T
		            join cf_action_type AT on
		                T.action_type   = AT.action_typ
		    where   length(ACTION_NOTES2)   > 1   and
		            NOTES2_PROMPT           is null
		    ;
		*/
		/* If ACTION_NOTES3 is not null and CF_ACTION_TYPE.NOTES3_PROMPT is null, 
		       message "Current configuration indicates that this action type does not accept an action notes 3" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		/* OJO ignorar por ahora
		    insert  into VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
		    select  T.file_seq, T.file_type, T.file_series, T.file_nbr,
		            2, 'Current configuration indicates that this action type does not accept an action notes 3'
		    from    vw_import_mark_actions T
		            join cf_action_type AT on
		                T.action_type   = AT.action_typ
		    where   length(ACTION_NOTES3)   > 1   and
		            NOTES3_PROMPT           is null
		    ;
		*/
		/* If ACTION_NOTES4 is not null and CF_ACTION_TYPE.NOTES4_PROMPT is null, 
		       message "Current configuration indicates that this action type does not accept an action notes 4" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		/* OJO ignorar por ahora
		    insert  into VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
		    select  T.file_seq, T.file_type, T.file_series, T.file_nbr,
		            2, 'Current configuration indicates that this action type does not accept an action notes 4'
		    from    vw_import_mark_actions T
		            join cf_action_type AT on
		                T.action_type   = AT.action_typ
		    where   length(ACTION_NOTES4)   > 1   and
		            NOTES4_PROMPT           is null
		    ;
		*/
		/* If ACTION_NOTES5 is not null and CF_ACTION_TYPE.NOTES5_PROMPT is null, 
		       message "Current configuration indicates that this action type does not accept an action notes 5" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		/* OJO ignorar por ahora
		    insert  into VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
		    select  T.file_seq, T.file_type, T.file_series, T.file_nbr,
		            2, 'Current configuration indicates that this action type does not accept an action notes 5'
		    from    vw_import_mark_actions T
		            join cf_action_type AT on
		                T.action_type   = AT.action_typ
		    where   length(ACTION_NOTES5)   > 1   and
		            NOTES5_PROMPT           is null
		    ;
		*/
		/* ACTION_USER: if not exists in IP_USER, message "Invalid action user" */
		/* Performace note: join with VW_IMPORT_MARK to select marks with IND_IMPORT = 0 */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Invalid action user'
		FROM  vw_import_mark_actions T 
		WHERE	 (ACTION_USER  is null
		 OR	ACTION_USER  not in
			(
		 	SELECT user_id
			FROM  ip_user 
			))

		/* if duplicate file + action date/type, message "Duplicate action date and type" */
		
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )  
		SELECT
				 T.file_seq,
				 T.file_type,
				 T.file_series,
				 T.file_nbr,
				 2,
				 'Duplicate action date and type'
		FROM  vw_import_mark_actions T 
		GROUP	BY file_seq, file_type, file_series, file_nbr, action_date, action_type
		HAVING	COUNT(*) > 1 
		

	/* Check duplicated logos */
		INSERT INTO  VW_IMPORT_MARK_RESULT   
				( file_seq , 
				file_type , 
				file_series , 
				file_nbr , 
				ind_import , 
				msg_import )
				
	SELECT DISTINCT 
			FILE_SEQ,
			FILE_TYPE,
			FILE_SERIES,
			FILE_NBR,
			2,
			'Duplicated Logo'
	    FROM VW_IMPORT_MARK_LOGOS M
	    GROUP BY FILE_SEQ,FILE_TYPE,FILE_SERIES,FILE_NBR
		HAVING COUNT(*)>1
	    
	 -- Move below check into CallToDateValidationPROC --> MarkDateValidationPROC SP   
	/* IPAS-375 Added validation for filing date */
	--insert  into VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
	--select  T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid Filing date. Filing date required to be greater than 1700-01-01 and lower than the current date.' 
	--from vw_import_mark T where filing_date > GETDATE() or CAST(DATEPART(YYYY, filing_date) as NUMERIC) < 1700

	/* IPAS-623 FIX 
			Call to Mark Date validation 
		*/
			exec CallToDateValidationPROC 'MARK';		
		/* FIX IPAS-623 Ends here*/
	
		/* *************** END OF VALIDATIONS *************** */
		/* set import indicator to "error", for those cases with error messages */
		UPDATE  M   
		SET	ind_import = 2 
		FROM  VW_IMPORT_MARK M 
		WHERE    exists
			(
		 	SELECT *
			FROM  VW_IMPORT_MARK_RESULT R 
			WHERE	 M.file_seq  = R.file_seq
			 AND	M.file_type  = R.file_type
			 AND	M.file_series  = R.file_series
			 AND	M.file_nbr  = R.file_nbr
			) 
		
		/* set import indicator to "validated", for those cases with no error messages */
		UPDATE  M   
		SET	ind_import = 9 
		FROM  VW_IMPORT_MARK M 
		WHERE  ind_import  = 0 
		

		SET NOCOUNT OFF

	END




GO

-- exec ImportMarkValidate
		