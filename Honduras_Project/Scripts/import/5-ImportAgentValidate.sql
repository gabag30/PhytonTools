--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportAgentValidate'
            AND type = 'P')
	DROP PROCEDURE ImportAgentValidate
GO
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE ImportAgentValidate
AS 
	BEGIN
		SET NOCOUNT ON
		
		/* Procedure name: ImportAgentValidate
		Input:  IPAS database and import tables not imported (i.e. IND_IMPORT not 1)
		Output: if errors, validation flag set to 2 and error messages in VW_IMPORT_AGENT_RESULT
		if OK, validation flag set to 9
		*/
		
		/* flag all pending agents as to be validated */
		UPDATE  vw_import_agent   
		SET	ind_import = 0 
		WHERE  ind_import  is null
		 OR	ind_import  not in ( 0  , 1  ) 
		
		/* delete prior errors */
		DELETE FROM   VW_IMPORT_AGENT_RESULT    
		
		/* AGENT_CODE: if already exists in IP_AGENT, message ?Agent already exists in the database? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 agent_code,
				 2,
				 'Agent already exists in the database'
		FROM  vw_import_agent 
		WHERE	 ind_import  = 0
		 AND	AGENT_CODE  in
			(
		 	SELECT AGENT_CODE
			FROM  IP_AGENT 
			)
		
		/* NATIONALITY_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid agent nationality country code? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Invalid agent nationality country code'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	NATIONALITY_COUNTRY_CODE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* LEGAL_NATURE: if not null and IND_COMPANY = 0, message ?Agent legal nature only applies when the person is a company? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Agent legal nature only applies when the person is a company'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	LEGAL_NATURE  is not null
		 AND	IND_COMPANY  = 0
		
		/* LEGAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_GENERAL_ID = ?S?, 
		       message ?Invalid agent legal id type? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Invalid agent legal id type'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE is not null
		 AND	LEGAL_ID_TYPE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_GENERAL_ID  = 'S'
			)
		
		/* INDIVIDUAL_ID_TYPE: if not null and not exists if CF_PERSON_ID_TYPE with IND_INDIVIDUAL_ID = ?S?, 
		       message ?Invalid agent individual id type? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Invalid agent individual id type'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_TYPE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_ID_TYP
			FROM  CF_PERSON_ID_TYPE 
			WHERE	 IND_INDIVIDUAL_ID  = 'S'
			)
		
		/* If LEGAL_ID_TYPE is not null and LEGAL_ID_NBR is null, message ?Missing agent legal id number? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Missing agent legal id number'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is not null
		 AND	LEGAL_ID_NBR  is null
		
		/* If LEGAL_ID_TYPE is null and LEGAL_ID_NBR is not null, message ?Missing agent legal id type? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Missing agent legal id type'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	LEGAL_ID_TYPE  is null
		 AND	LEGAL_ID_NBR  is not null
		
		/* If INDIVIDUAL_ID_TYPE is not null and INDIVIDUAL_ID_NBR is null, message ?Missing agent individual id number? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Missing agent individual id number'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is not null
		 AND	INDIVIDUAL_ID_NBR  is null
		
		/* If INDIVIDUAL_ID_TYPE is null and INDIVIDUAL_ID_NBR is not null, message ?Missing agent individual id type? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Missing agent individual id type'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	INDIVIDUAL_ID_TYPE  is null
		 AND	INDIVIDUAL_ID_NBR  is not null
		
		/* RESIDENCE_COUNTRY_CODE: if not exists in CF_GEO_COUNTRY, message ?Invalid agent residence country code? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Invalid agent residence country code'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT COUNTRY_CODE
			FROM  cf_geo_country 
			)
		
		/* STATE_CODE: if not null and not exists RESIDENCE_COUNTRY_CODE / STATE_CODE in CF_GEO_STATE, 
		       message ?Invalid agent residence state code? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Invalid agent residence state code'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	STATE_CODE  is not null
		 AND	 NOT EXISTS
			(
		 	SELECT
					 cf_geo_state.COUNTRY_CODE,
					 cf_geo_state.STATE_CODE
			FROM  cf_geo_state 
			WHERE	 cf_geo_state.COUNTRY_CODE  = T.RESIDENCE_COUNTRY_CODE	COLLATE DATABASE_DEFAULT
			 AND	cf_geo_state.STATE_CODE  = T.STATE_CODE					COLLATE DATABASE_DEFAULT
			)
		
		/* If STATE_CODE Is null and exist any CF_GEO_STATE with the RESIDENCE_COUNTRY_CODE, 
		       message ?A state code is required for the specified agent residence country? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'A state code is required for the specified agent residence country'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	STATE_CODE  is null
		 AND	RESIDENCE_COUNTRY_CODE COLLATE DATABASE_DEFAULT in 
			(
		 	SELECT country_code
			FROM  cf_geo_state S 
			)
		
		/* If PERSON_GROUP_CODE is not null and not exists in IP_PERSON_GROUP, message ?Invalid agent person group code? */
		INSERT INTO  VW_IMPORT_AGENT_RESULT   
				( agent_code , 
				ind_import , 
				msg_import )  
		SELECT
				 T.agent_code,
				 2,
				 'Invalid agent person group code'
		FROM  vw_import_agent_persons T JOIN vw_import_agent M ON T.agent_code  = M.agent_code  
		WHERE	 ind_import  = 0
		 AND	PERSON_GROUP_CODE  is not null
		 AND	PERSON_GROUP_CODE  COLLATE DATABASE_DEFAULT not in
			(
		 	SELECT PERSON_GROUP_NBR
			FROM  IP_PERSON_GROUP 
			)
		
		/* *************** END OF VALIDATIONS *************** */
		/* set import indicator to "error", for those cases with error messages */
		UPDATE  M   
		SET	ind_import = 2 
		FROM  VW_IMPORT_AGENT M 
		WHERE    exists
			(
		 	SELECT *
			FROM  VW_IMPORT_AGENT_RESULT R 
			WHERE	 M.agent_code  = R.agent_code
			) 
		
		
		/* set import indicator to "validated", for those cases with no error messages */
		UPDATE  M   
		SET	ind_import = 9 
		FROM  VW_IMPORT_AGENT M 
		WHERE  ind_import  = 0 
		
		SET NOCOUNT OFF

	END


GO

