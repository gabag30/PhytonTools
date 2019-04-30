-- This procedure Validates the Following 
--	 		1.	Date can not be less then 1700-01-01 
--			2.	Date can not greater then current date.
--	Call to This procedure - MarkDateValidationPROC 
--
--ENABLE_IGNORE_ERRORS
GO

IF OBJECT_ID('MarkDateValidationPROC', 'P') IS NOT NULL
  DROP PROCEDURE MarkDateValidationPROC;
GO 
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE MarkDateValidationPROC
AS
BEGIN
		SET NOCOUNT ON;

		-- 1.	Validate CAPTURE_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid CAPTURE_DATE. CAPTURE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE CAPTURE_DATE > GETDATE() or CAST(DATEPART(YYYY, CAPTURE_DATE) as NUMERIC) < 1700;	
		
		-- 2.	Validate ENTITLEMENT_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid ENTITLEMENT_DATE. ENTITLEMENT_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE ENTITLEMENT_DATE > GETDATE() or CAST(DATEPART(YYYY, ENTITLEMENT_DATE) as NUMERIC) < 1700;	
		
		-- 3.	Validate EXHIBITION_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid EXHIBITION_DATE. EXHIBITION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE EXHIBITION_DATE > GETDATE() or CAST(DATEPART(YYYY, EXHIBITION_DATE) as NUMERIC) < 1700;	
		
		-- 4.	Validate PUBLICATION_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PUBLICATION_DATE. PUBLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE PUBLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PUBLICATION_DATE) as NUMERIC) < 1700;	
		
		-- 5.	Validate RECEPTION_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid RECEPTION_DATE. RECEPTION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE RECEPTION_DATE > GETDATE() or CAST(DATEPART(YYYY, RECEPTION_DATE) as NUMERIC) < 1700;	
		
		-- 6.	Validate REGISTRATION_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid REGISTRATION_DATE. REGISTRATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE REGISTRATION_DATE > GETDATE() or CAST(DATEPART(YYYY, REGISTRATION_DATE) as NUMERIC) < 1700;	
		
		-- 7.	Validate ACTION_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid ACTION_DATE. ACTION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK_ACTIONS T WHERE ACTION_DATE > GETDATE() or CAST(DATEPART(YYYY, ACTION_DATE) as NUMERIC) < 1700;	
		
		-- 8.	Validate PUBLICATION_DATE
	--	INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
	--	SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PUBLICATION_DATE. PUBLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
	--	FROM VW_IMPORT_MARK_ACTIONS T WHERE PUBLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PUBLICATION_DATE) as NUMERIC) < 1700;	
		
		-- 9.	Validate RECEIPT_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid RECEIPT_DATE. RECEIPT_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK_PAYMENTS T WHERE RECEIPT_DATE > GETDATE() or CAST(DATEPART(YYYY, RECEIPT_DATE) as NUMERIC) < 1700;	
		
		-- 10.	Validate PRIORITY_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PRIORITY_DATE. PRIORITY_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK_PRIORITIES T WHERE PRIORITY_DATE > GETDATE() or CAST(DATEPART(YYYY, PRIORITY_DATE) as NUMERIC) < 1700;	
		
		-- 11.	Validate FILING_DATE 
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import)
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid FILING DATE. FILING DATE required to be greater than 1700-01-01 and lower than the current date.'
		FROM vw_import_mark T WHERE FILING_DATE > GETDATE() or CAST(DATEPART(YYYY, FILING_DATE) as NUMERIC) < 1700;	
		
		-----------------------------------------------------
		-- Can be a Future Date so no check with GETDATE()
		-----------------------------------------------------
		
		-- 1.	Validate EXPIRATION_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid EXPIRATION_DATE. EXPIRATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK T WHERE CAST(DATEPART(YYYY, EXPIRATION_DATE) as NUMERIC) < 1700;	
		
		-- 2.	Validate MANUAL_DUE_DATE
		INSERT INTO VW_IMPORT_MARK_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid MANUAL_DUE_DATE. MANUAL_DUE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_MARK_ACTIONS T WHERE CAST(DATEPART(YYYY, MANUAL_DUE_DATE) as NUMERIC) < 1700;	
	SET NOCOUNT OFF;
END;

GO

-- exec MarkDateValidationPROC