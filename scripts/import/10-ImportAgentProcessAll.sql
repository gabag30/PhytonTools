--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportAgentProcessAll'
            AND type = 'P')
	DROP PROCEDURE ImportAgentProcessAll
GO 
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE ImportAgentProcessAll
AS 
	BEGIN
		SET NOCOUNT ON
		
		/* Procedure name: ImportAgentProcessAll
		Input:  import tables with IND_IMPORT = 9
		Output: IPAS database updated and import tables updated with IND_IMPORT = 1
		*/

		/* insert agents */
		INSERT INTO  IP_AGENT   
				( ROW_VERSION , 
				AGENT_CODE , 
				AGENT_NAME , 
				NOTIFICATION_WCODE,IND_INACTIVE )  
		SELECT
				 1,
				 AGENT_CODE,
				 substring(AGENT_NAME,1,60),
				 'C',
				 CASE when ind_INACTIVE=0 then 'N' else 'S' end ind_inactive
		FROM  vw_import_agent 
		WHERE	IND_IMPORT = 9
		
		/* Load WRK_PERSON_ADDR from VW_IMPORT_AGENT_PERSONS */
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
				 T.AGENT_CODE,
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
				 CITY_NAME,
				 ADDRESS_ZONE,
				 ADDRESS_STREET,
				 ADDRESS_STREET_LANG2,
				 ZIP_CODE,
				 null,
				 null,
				 1
		FROM  vw_import_agent_persons T
		 JOIN vw_import_agent A on A.AGENT_CODE = T.AGENT_CODE
		
		/* Call procedure ImportSetPersonNbr() to set PERSON_NBR and ADDR_NBR.
		This procedure will already insert persons linked to the agent, so there's no need to
		further process ther generated person numbers */
		EXEC IMPORTSETPERSONNBR

		UPDATE vw_import_agent set IND_IMPORT=1 where IND_IMPORT=9

		SET NOCOUNT OFF

	END


GO

