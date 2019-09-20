-- This procedure Validates the Following 
--	 		1.	Date can not be less then 1700-01-01 
--			2.	Date can not greater then current date.
--	Call to This procedure - PatentDateValidationPROC  
--
--ENABLE_IGNORE_ERRORS

GO

IF OBJECT_ID('PatentDateValidationPROC', 'P') IS NOT NULL
  DROP PROCEDURE PatentDateValidationPROC;
GO 
--DISABLE_IGNORE_ERRORS
GO



	CREATE PROCEDURE PatentDateValidationPROC
	AS
	BEGIN
		SET NOCOUNT ON
		-- 1.	Validate CAPTURE_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid CAPTURE_DATE. CAPTURE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE CAPTURE_DATE > GETDATE() or CAST(DATEPART(YYYY, CAPTURE_DATE) as NUMERIC) < 1700;	
		
		-- 2.	Validate ENTITLEMENT_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid ENTITLEMENT_DATE. ENTITLEMENT_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE ENTITLEMENT_DATE > GETDATE() or CAST(DATEPART(YYYY, ENTITLEMENT_DATE) as NUMERIC) < 1700;	
		
		-- 3.	Validate EXHIBITION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid EXHIBITION_DATE. EXHIBITION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE EXHIBITION_DATE > GETDATE() or CAST(DATEPART(YYYY, EXHIBITION_DATE) as NUMERIC) < 1700;	
		
		
		-- 4.	Validate FILING_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid FILING_DATE. FILING_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE FILING_DATE > GETDATE() or CAST(DATEPART(YYYY, FILING_DATE) as NUMERIC) < 1700;	
		
		-- 5.	Validate PCT_APPLICATION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PCT_APPLICATION_DATE. PCT_APPLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE PCT_APPLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PCT_APPLICATION_DATE) as NUMERIC) < 1700;	
		
		-- 6.	Validate PCT_PUBLICATION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PCT_PUBLICATION_DATE. PCT_PUBLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE PCT_PUBLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PCT_PUBLICATION_DATE) as NUMERIC) < 1700;	
		
		
		-- 7.	Validate PUBLICATION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PUBLICATION_DATE. PUBLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE PUBLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PUBLICATION_DATE) as NUMERIC) < 1700;	
		
		-- 8.	Validate RECEPTION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid RECEPTION_DATE. RECEPTION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE RECEPTION_DATE > GETDATE() or CAST(DATEPART(YYYY, RECEPTION_DATE) as NUMERIC) < 1700;		
		
		-- 9.	Validate REGIONAL_APPL_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid REGIONAL_APPL_DATE. REGIONAL_APPL_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE REGIONAL_APPL_DATE > GETDATE() or CAST(DATEPART(YYYY, REGIONAL_APPL_DATE) as NUMERIC) < 1700;	
		
		-- 10.	Validate REGIONAL_PUBL_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid REGIONAL_PUBL_DATE. REGIONAL_PUBL_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE REGIONAL_PUBL_DATE > GETDATE() or CAST(DATEPART(YYYY, REGIONAL_PUBL_DATE) as NUMERIC) < 1700;	
		
		-- 11.	Validate REGISTRATION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid REGISTRATION_DATE. REGISTRATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE REGISTRATION_DATE > GETDATE() or CAST(DATEPART(YYYY, REGISTRATION_DATE) as NUMERIC) < 1700;	
		
		-- 12.	Validate SPECIAL_PUBL_APPL_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid SPECIAL_PUBL_APPL_DATE. SPECIAL_PUBL_APPL_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE SPECIAL_PUBL_APPL_DATE > GETDATE() or CAST(DATEPART(YYYY, SPECIAL_PUBL_APPL_DATE) as NUMERIC) < 1700;	
			
		-- 13.	Validate SPECIAL_PUBL_REQU_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid SPECIAL_PUBL_REQU_DATE. SPECIAL_PUBL_REQU_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE SPECIAL_PUBL_REQU_DATE > GETDATE() or CAST(DATEPART(YYYY, SPECIAL_PUBL_REQU_DATE) as NUMERIC) < 1700;	
		
		-- 14.	Validate ACTION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid ACTION_DATE. ACTION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT_ACTIONS T WHERE ACTION_DATE > GETDATE() or CAST(DATEPART(YYYY, ACTION_DATE) as NUMERIC) < 1700;	
		
		-- 15.	Validate PUBLICATION_DATE
	--	INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
	--	SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PUBLICATION_DATE. PUBLICATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
	--	FROM VW_IMPORT_PATENT_ACTIONS T WHERE PUBLICATION_DATE > GETDATE() or CAST(DATEPART(YYYY, PUBLICATION_DATE) as NUMERIC) < 1700;	
		
		-- 16.	Validate RECEIPT_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid RECEIPT_DATE. RECEIPT_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT_PAYMENTS T WHERE RECEIPT_DATE > GETDATE() or CAST(DATEPART(YYYY, RECEIPT_DATE) as NUMERIC) < 1700;	
			
		-- 17.	Validate PRIORITY_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid PRIORITY_DATE. PRIORITY_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT_PRIORITIES T WHERE PRIORITY_DATE > GETDATE() or CAST(DATEPART(YYYY, PRIORITY_DATE) as NUMERIC) < 1700;	
		
		-- Can be a Future Date so no check with GETDATE()
		
		-- 1.	Validate EXPIRATION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid EXPIRATION_DATE. EXPIRATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT T WHERE CAST(DATEPART(YYYY, EXPIRATION_DATE) as NUMERIC) < 1700;	
		
		-- 2.	Validate MANUAL_DUE_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid MANUAL_DUE_DATE. MANUAL_DUE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT_ACTIONS T WHERE CAST(DATEPART(YYYY, MANUAL_DUE_DATE) as NUMERIC) < 1700;	
		
		-- 3.	Validate EXPIRATION_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid EXPIRATION_DATE. EXPIRATION_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT_ANNUITIES T WHERE CAST(DATEPART(YYYY, EXPIRATION_DATE) as NUMERIC) < 1700;

		-- 4.	Validate GRACE_DATE
		INSERT INTO VW_IMPORT_PATENT_RESULT (file_seq, file_type, file_series, file_nbr, ind_import, msg_import) 
		SELECT T.file_seq, T.file_type, T.file_series, T.file_nbr, 2, 'Invalid GRACE_DATE. GRACE_DATE required to be greater than 1700-01-01 and lower than the current date.' 
		FROM VW_IMPORT_PATENT_ANNUITIES T WHERE CAST(DATEPART(YYYY, GRACE_DATE) as NUMERIC) < 1700;	
		
		SET NOCOUNT OFF

	END;
GO

-- exec PatentDateValidationPROC	