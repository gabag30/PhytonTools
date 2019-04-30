--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'ImportSetPersonNbr'
            AND type = 'P')
	DROP PROCEDURE ImportSetPersonNbr
GO 
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE ImportSetPersonNbr
AS 
	BEGIN
		SET NOCOUNT ON
		
		/* Procedure name: ImportSetPersonNbr
		Input: work table WRK_PERSON_ADDR with null PERSON_NBR / ADDR_NBR,
		Output: assigned values for PERSON_NBR / ADDR_NBR, from existing data if possible,
		otherwise new data is created in IP_PERSON and IP_PERSON_ADDRESSES.
		create or replace procedure ImportSetPersonNbr as
		*/
		
		DECLARE @time1                                    DATETIME 
		DECLARE @NumPERSON_NBR                            FLOAT 

		DECLARE cur1 cursor LOCAL FOR 
		SELECT DISTINCT
				 PERSON_NAME,
				 PERSON_NAME_LANG2,
				 
				CASE IND_COMPANY 
					WHEN 1 THEN 'M' 
					ELSE 'F' 
				END PERSON_WCODE,
				 NATIONALITY_COUNTRY_CODE,
				 AGENT_CODE,
				 LEGAL_NATURE,
				 LEGAL_NATURE_LANG2,
				 TELEPHONE,
				 EMAIL,
				 PERSON_GROUP_CODE,
				 LEGAL_ID_TYPE,
				 LEGAL_ID_NBR,
				 INDIVIDUAL_ID_TYPE,
				 INDIVIDUAL_ID_NBR
		FROM  wrk_person_addr 
		WHERE	 person_nbr  is null
		
		DECLARE @rec1_PERSON_NAME					VARCHAR(2000)
		DECLARE @rec1_PERSON_NAME_LANG2				VARCHAR(2000)
		DECLARE @rec1_PERSON_WCODE					VARCHAR(200)	
		DECLARE @rec1_NATIONALITY_COUNTRY_CODE		VARCHAR(200)
		DECLARE @rec1_AGENT_CODE					NUMERIC
		DECLARE @rec1_LEGAL_NATURE					VARCHAR(2000)
		DECLARE @rec1_LEGAL_NATURE_LANG2			VARCHAR(2000)
		DECLARE @rec1_TELEPHONE						VARCHAR(200)
		DECLARE @rec1_EMAIL							VARCHAR(200)
		DECLARE @rec1_PERSON_GROUP_CODE				NUMERIC
		DECLARE @rec1_LEGAL_ID_TYPE					VARCHAR(200)
		DECLARE @rec1_LEGAL_ID_NBR					NUMERIC
		DECLARE @rec1_INDIVIDUAL_ID_TYPE			VARCHAR(200)
		DECLARE @rec1_INDIVIDUAL_ID_NBR				NUMERIC

		DECLARE @NumADDR_NBR                        FLOAT 

		DECLARE cur2 cursor LOCAL FOR 
		SELECT DISTINCT
				 PERSON_NBR,
				 ADDRESS_STREET,
				 ADDRESS_STREET_LANG2,
				 ADDRESS_ZONE,
				 CITY_NAME,
				 RESIDENCE_COUNTRY_CODE,
				 STATE_CODE,
				 CITY_CODE,
				 STATE_NAME,
				 ZIP_CODE
		FROM  wrk_person_addr 
		WHERE	 addr_nbr  is null
		
		DECLARE @rec2_PERSON_NBR				NUMERIC
		DECLARE @rec2_ADDRESS_STREET			VARCHAR(2000)
		DECLARE @rec2_ADDRESS_STREET_LANG2		VARCHAR(2000)
		DECLARE @rec2_ADDRESS_ZONE				VARCHAR(2000)
		DECLARE @rec2_CITY_NAME					VARCHAR(2000)
		DECLARE @rec2_RESIDENCE_COUNTRY_CODE	VARCHAR(200)
		DECLARE @rec2_STATE_CODE				VARCHAR(200)
		DECLARE @rec2_CITY_CODE				VARCHAR(200)
		DECLARE @rec2_STATE_NAME				VARCHAR(200)
		DECLARE @rec2_ZIP_CODE					VARCHAR(200)

		/* In order to use existing tuples in IP_PERSON, a massive update of WRK_PERSON_ADDR.PERSON_NBR is done,
		       taking into account the possibility of NULL values */
		SELECT @time1  =  GETDATE()
		
		UPDATE  T   
		SET	person_nbr = (	SELECT min(person_nbr)
			FROM  IP_PERSON P 
			WHERE	 P.PERSON_NAME  = T.PERSON_NAME COLLATE DATABASE_DEFAULT
			 AND	P.PERSON_WCODE  = 
				CASE T.IND_COMPANY 
					WHEN 1 THEN 'M' 
					ELSE 'F' 
				END
			 AND	ISNULL(P.PERSON_NAME_LANG2, '')  = ISNULL(T.PERSON_NAME_LANG2, '')			COLLATE DATABASE_DEFAULT	
			 AND	P.NATIONALITY_COUNTRY_CODE  = T.NATIONALITY_COUNTRY_CODE			COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.PERSON_GROUP_NBR, '')  = ISNULL(T.PERSON_GROUP_CODE, '') COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.LEGAL_NATURE, '')  = ISNULL(T.LEGAL_NATURE, '')			COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.LEGAL_NATURE_LANG2, '')  = ISNULL(T.LEGAL_NATURE_LANG2, '')			COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.AGENT_CODE, 0)  = ISNULL(T.AGENT_CODE, 0)
			 AND	ISNULL(P.GRAL_PERSON_ID_TYP, '')  = ISNULL(T.LEGAL_ID_TYPE, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.GRAL_PERSON_ID_NBR, 0)  = ISNULL(T.LEGAL_ID_NBR, 0)
			 AND	ISNULL(P.INDI_PERSON_ID_TYP, '')  = ISNULL(T.INDIVIDUAL_ID_TYPE, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.INDI_PERSON_ID_NBR, 0)  = ISNULL(T.INDIVIDUAL_ID_NBR, 0)
			 AND	ISNULL(P.EMAIL, '')  = ISNULL(T.EMAIL, '')							COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.TELEPHONE, '')  = ISNULL(T.TELEPHONE, '')					COLLATE DATABASE_DEFAULT
		) 
		FROM  wrk_person_addr T; 
		
		INSERT INTO  wrk_log    
		 VALUES 		( 'First massive update of PERSON_NBR' , 
				@time1 , datediff(ss, @time1, getdate()));
		
		/* now the new persons are added individually to IP_PERSON */
		SELECT @time1  =  GETDATE()
		
		/* initilize numbering valriable */
		SELECT @NumPERSON_NBR  =  maxnumber
		FROM  CF_THIS_CONTROL 
		WHERE	 TABLENAME  = 'PERSONA'
		
		/* process WRK_PERSON_ADDR with no matching IP_PERSON (i.e. with null PERSON_NBR), taking into
		account that the same person may appear several times */
		
		
		OPEN cur1 
		DECLARE @count		 INT 
		SELECT @count = 1 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM cur1 INTO @rec1_PERSON_NAME,@rec1_PERSON_NAME_LANG2, @rec1_PERSON_WCODE, @rec1_NATIONALITY_COUNTRY_CODE, @rec1_AGENT_CODE, @rec1_LEGAL_NATURE,@rec1_LEGAL_NATURE_LANG2, @rec1_TELEPHONE, @rec1_EMAIL, @rec1_PERSON_GROUP_CODE, @rec1_LEGAL_ID_TYPE, @rec1_LEGAL_ID_NBR, @rec1_INDIVIDUAL_ID_TYPE, @rec1_INDIVIDUAL_ID_NBR
			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* Increment the variable with the last person number */
			
			SELECT @NumPERSON_NBR  = @NumPERSON_NBR + 1 
			/* Insert a new tuple in IP_PERSON with the generated code and the data from WRK_PERSON_ADDR */
			INSERT INTO  IP_PERSON   
					( ROW_VERSION , 
					PERSON_NBR , 
					PERSON_NAME , 
					PERSON_NAME_LANG2 ,
					PERSON_WCODE , 
					NATIONALITY_COUNTRY_CODE , 
					AGENT_CODE , 
					LEGAL_NATURE , 
					LEGAL_NATURE_LANG2 ,
					TELEPHONE , 
					EMAIL , 
					PERSON_GROUP_NBR , 
					GRAL_PERSON_ID_TYP , 
					GRAL_PERSON_ID_NBR , 
					GRAL_PERSON_ID_TXT , 
					INDI_PERSON_ID_TYP , 
					INDI_PERSON_ID_NBR , 
					INDI_PERSON_ID_TXT )  
			 VALUES 		( 1 , 
					@NumPERSON_NBR , 
					@rec1_PERSON_NAME , 
					@rec1_PERSON_NAME_LANG2 ,
					@rec1_PERSON_WCODE , 
					@rec1_NATIONALITY_COUNTRY_CODE , 
					@rec1_AGENT_CODE , 
					@rec1_LEGAL_NATURE , 
					@rec1_LEGAL_NATURE_LANG2 , 
					@rec1_TELEPHONE , 
					@rec1_EMAIL , 
					@rec1_PERSON_GROUP_CODE , 
					@rec1_LEGAL_ID_TYPE , 
					@rec1_LEGAL_ID_NBR , 
					CAST(@rec1_LEGAL_ID_NBR as VARCHAR (15)) , 
					@rec1_INDIVIDUAL_ID_TYPE , 
					@rec1_INDIVIDUAL_ID_NBR , 
					CAST(@rec1_INDIVIDUAL_ID_NBR as VARCHAR (15)) )  
			
			SELECT @count=@count +1
		END --) 
		
		
		close cur1
		
		INSERT INTO  wrk_log    
		 VALUES 		( 'Add new persons' , 
				@time1 , datediff(ss, @time1, getdate()));
		
		/* In order to use the just-inserted tuples in IP_PERSON, the same massive update of WRK_PERSON_ADDR.PERSON_NBR 
		       is done again*/
		SELECT @time1  =  GETDATE()
		
		UPDATE  T   
		SET	person_nbr = (	SELECT min (person_nbr)
			FROM  IP_PERSON P 
			WHERE	 P.PERSON_NAME  = T.PERSON_NAME COLLATE DATABASE_DEFAULT
			AND	ISNULL(P.PERSON_NAME_LANG2, '')  = ISNULL(T.PERSON_NAME_LANG2, '')			COLLATE DATABASE_DEFAULT
			 AND	P.PERSON_WCODE  = 
				CASE T.IND_COMPANY 
					WHEN 1 THEN 'M' 
					ELSE 'F' 
				END
			 AND	P.NATIONALITY_COUNTRY_CODE  = T.NATIONALITY_COUNTRY_CODE			COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.PERSON_GROUP_NBR, '')  = ISNULL(T.PERSON_GROUP_CODE, '') COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.LEGAL_NATURE_LANG2, '')  = ISNULL(T.LEGAL_NATURE_LANG2, '')			COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.LEGAL_NATURE, '')  = ISNULL(T.LEGAL_NATURE, '')			COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.AGENT_CODE, 0)  = ISNULL(T.AGENT_CODE, 0)
			 AND	ISNULL(P.GRAL_PERSON_ID_TYP, '')  = ISNULL(T.LEGAL_ID_TYPE, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.GRAL_PERSON_ID_NBR, 0)  = ISNULL(T.LEGAL_ID_NBR, 0)
			 AND	ISNULL(P.INDI_PERSON_ID_TYP, '')  = ISNULL(T.INDIVIDUAL_ID_TYPE, '') COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.INDI_PERSON_ID_NBR, 0)  = ISNULL(T.INDIVIDUAL_ID_NBR, 0)
			 AND	ISNULL(P.EMAIL, '')  = ISNULL(T.EMAIL, '')						COLLATE DATABASE_DEFAULT
			 AND	ISNULL(P.TELEPHONE, '')  = ISNULL(T.TELEPHONE, '')				COLLATE DATABASE_DEFAULT
		) 
		FROM  wrk_person_addr T 
		WHERE  person_nbr  is null 
		
		INSERT INTO  wrk_log    
		 VALUES 		( 'Second massive update of PERSON_NBR' , 
				@time1 , datediff(ss, @time1, getdate()));
		
		/* Use the variable with the last person number to update CF_THIS_CONTROL */
		UPDATE  CF_THIS_CONTROL   
		SET	maxnumber = @NumPERSON_NBR 
		WHERE  TABLENAME  = 'PERSONA' 
		
		/* In order to use existing tuples in IP_PERSON_ADDRESSES, a massive update of WRK_PERSON_ADDR.ADDR_NBR is done 
		       taking into account the possibility of NULL values */
		SELECT @time1  =  GETDATE()
		
		UPDATE  T   
		SET	addr_nbr = (	SELECT min(addr_nbr)
			FROM  IP_PERSON_ADDRESSES A 
			WHERE	 A.PERSON_NBR  = T.PERSON_NBR
			 AND	A.RESIDENCE_COUNTRY_CODE	= T.RESIDENCE_COUNTRY_CODE		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ADDR_STREET, '')  = ISNULL(T.ADDRESS_STREET, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ADDR_STREET_LANG2, '')  = ISNULL(T.ADDRESS_STREET_LANG2, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.STATE_NAME, '')	= ISNULL(T.STATE_NAME, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.STATE_CODE, '')	= ISNULL(T.STATE_CODE, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.CITY_CODE, '')	= ISNULL(T.CITY_CODE, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.CITY_NAME, '')	= ISNULL(T.CITY_NAME, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ADDR_ZONE, '')	= ISNULL(T.ADDRESS_ZONE, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ZIPCODE, '')		= ISNULL(T.ZIP_CODE, '')		COLLATE DATABASE_DEFAULT
		) 
		FROM  wrk_person_addr T 
		
		INSERT INTO  wrk_log    
		 VALUES 		( 'First massive update of ADDR_NBR' , 
				@time1 , datediff(ss, @time1, getdate()));
		
		/* now the new addresses are added individually to IP_PERSON_ADDRESSES */
		SELECT @time1  =  GETDATE()
		
		/* process those WRK_PERSON_ADDR with no matching IP_PERSON_ADDRESSES (i.e. with null ADDR_NBR) */
		
		
		OPEN cur2 
				SELECT @count = 1 
		WHILE (0 = 0) 
		BEGIN --( 
			
			fetch NEXT FROM cur2 INTO @rec2_PERSON_NBR, @rec2_ADDRESS_STREET,@rec2_ADDRESS_STREET_LANG2, @rec2_ADDRESS_ZONE, @rec2_CITY_NAME, @rec2_RESIDENCE_COUNTRY_CODE, @rec2_STATE_CODE,@rec2_CITY_CODE, @rec2_STATE_NAME, @rec2_ZIP_CODE
			IF (@@FETCH_STATUS = -1) 
			BREAK

			/* initilize numbering variable */
			SELECT @NumADDR_NBR  =  MAX(addr_nbr)
			FROM  IP_PERSON_ADDRESSES 
			WHERE	 person_nbr  = @rec2_PERSON_NBR
			
			/* Increment the variable with the last address number */
			
			SELECT @NumADDR_NBR  = ISNULL(@NumADDR_NBR, 0)
			SELECT @NumADDR_NBR  = @NumADDR_NBR + 1 
			/* Insert a new tuple in IP_PERSON_ADDRESSES with the generated code and the data from WRK_PERSON_ADDR */
			INSERT INTO  IP_PERSON_ADDRESSES   
					( ROW_VERSION , 
					PERSON_NBR , 
					ADDR_NBR , 
					ADDR_STREET , 
					ADDR_STREET_LANG2 ,
					ADDR_ZONE , 
					CITY_NAME , 
					RESIDENCE_COUNTRY_CODE , 
					STATE_CODE , 
					CITY_CODE,
					STATE_NAME , 
					ZIPCODE )  
			 VALUES 		( 1 , 
					@rec2_PERSON_NBR , 
					@NumADDR_NBR , 
					@rec2_ADDRESS_STREET , 
					@rec2_ADDRESS_STREET_LANG2 , 
					@rec2_ADDRESS_ZONE , 
					@rec2_CITY_NAME , 
					@rec2_RESIDENCE_COUNTRY_CODE , 
					@rec2_STATE_CODE , 
					@rec2_CITY_CODE ,
					@rec2_STATE_NAME , 
					@rec2_ZIP_CODE )  
			
			SELECT @count=@count +1
		END --) 
		
		
		close cur2
		
		INSERT INTO  wrk_log    
		 VALUES 		( 'Add new addresses' , 
				@time1 , datediff(ss, @time1, getdate()));
		
		/* In order to use the just-inserted IP_PERSON_ADDRESSES, the same massive update of WRK_PERSON_ADDR.ADDR_NBR 
		       is done again */
		SELECT @time1  =  GETDATE()
		
		UPDATE  T   
		SET	addr_nbr = (	SELECT min(addr_nbr)
			FROM  IP_PERSON_ADDRESSES A 
			WHERE	 A.PERSON_NBR  = T.PERSON_NBR
			 AND	A.RESIDENCE_COUNTRY_CODE	= T.RESIDENCE_COUNTRY_CODE		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ADDR_STREET, '')  = ISNULL(T.ADDRESS_STREET, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ADDR_STREET_LANG2, '')  = ISNULL(T.ADDRESS_STREET_LANG2, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.STATE_NAME, '')	= ISNULL(T.STATE_NAME, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.STATE_CODE, '')	= ISNULL(T.STATE_CODE, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.CITY_NAME, '')	= ISNULL(T.CITY_NAME, '')		COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ADDR_ZONE, '')	= ISNULL(T.ADDRESS_ZONE, '')	COLLATE DATABASE_DEFAULT
			 AND	ISNULL(A.ZIPCODE, '')		= ISNULL(T.ZIP_CODE, '')		COLLATE DATABASE_DEFAULT
		) 
		FROM  wrk_person_addr T 
		WHERE  addr_nbr  is null 
		
		INSERT INTO  wrk_log    
		 VALUES 		( 'First massive update of ADDR_NBR' , 
				@time1 , datediff(ss, @time1, getdate()));
		
 DEALLOCATE cur1
 DEALLOCATE cur2

		SET NOCOUNT OFF

	END



GO

