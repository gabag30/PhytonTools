-- This procedure Validates the Following 
--	 		1.	Date can not be less then 1700-01-01 
--			2.	Date can not greater then current date.
--	Call to This procedure - UserDocDateValidationPROC  
--
GO

IF OBJECT_ID('UserDocDateValidationPROC', 'P') IS NOT NULL
  DROP PROCEDURE UserDocDateValidationPROC;
GO 
--DISABLE_IGNORE_ERRORS
GO

	CREATE PROCEDURE UserDocDateValidationPROC
	AS
	BEGIN
		SET NOCOUNT ON	
		-- 1.	Validate CAPTURE_DATE
		INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
		SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid CAPTURE_DATE. CAPTURE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_USERDOC U WHERE CAPTURE_DATE > GETDATE() or CAST(DATEPART(YYYY, CAPTURE_DATE) as NUMERIC) < 1700;	
		
		-- 2.	Validate FILING_DATE
		INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
		SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid FILING_DATE. FILING_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_USERDOC U WHERE FILING_DATE > GETDATE() or CAST(DATEPART(YYYY, FILING_DATE) as NUMERIC) < 1700;	
		
		-- 3.	Validate RECEPTION_DATE
		INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
		SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid RECEPTION_DATE. RECEPTION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_USERDOC U WHERE RECEPTION_DATE > GETDATE() or CAST(DATEPART(YYYY, RECEPTION_DATE) as NUMERIC) < 1700;	
		
		
		-- 4.	Validate ACTION_DATE
		INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
		SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid ACTION_DATE. ACTION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_USERDOC_ACTIONS U WHERE ACTION_DATE > GETDATE() or CAST(DATEPART(YYYY, ACTION_DATE) as NUMERIC) < 1700;	
		
		-- 5.	Validate PUBLICATION_DATE
	--	INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
	--	SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid PUBLICATION_DATE. PUBLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
	--	FROM VW_IMPORT_USERDOC_ACTIONS U WHERE PUBLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PUBLICATION_DATE) as NUMERIC) < 1700;	
		
		-- 6.	Validate RECEIPT_DATE
		INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
		SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid RECEIPT_DATE. RECEIPT_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_USERDOC_PAYMENTS U WHERE RECEIPT_DATE > GETDATE() or CAST(DATEPART(YYYY, RECEIPT_DATE) as NUMERIC) < 1700;	
		
		-- Can be a Future Date so no check with GETDATE()
		-- 1.	Validate MANUAL_DUE_DATE
		INSERT INTO VW_IMPORT_USERDOC_RESULT (userdoc_seq,userdoc_series, userdoc_nbr, ind_import, msg_import) 
		SELECT U.userdoc_seq, U.userdoc_series, U.userdoc_nbr, 2, 'Invalid MANUAL_DUE_DATE. MANUAL_DUE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_USERDOC_ACTIONS U WHERE CAST(DATEPART(YYYY, MANUAL_DUE_DATE) as NUMERIC) < 1700;	
		SET NOCOUNT OFF
	END;
GO

-- exec  UserDocDateValidationPROC	