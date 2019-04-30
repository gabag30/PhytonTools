--ENABLE_IGNORE_ERRORS
GO
If Exists ( SELECT name 
            FROM sysobjects  
            WHERE name = 'userdocImportTwo'
            AND type = 'P')
	DROP PROCEDURE userdocImportTwo

GO
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE userdocImportTwo
AS 


begin transaction;



 INSERT INTO  CF_DOC_SERIES   
				( row_version , 
				doc_ser , 
				ind_active )  
		SELECT DISTINCT
				 1,
				 userdoc_series,
				 'N'
		FROM  wrk_userdoc 
		WHERE	 userdoc_series  not in
			(
		 	SELECT doc_ser
			FROM  CF_DOC_SERIES 
			);
			 
			
			INSERT INTO  CF_DOC_SERIES   
				( row_version , 
				doc_ser , 
				ind_active )  
		SELECT DISTINCT
				 1,
				 CAST(DATEPART(YYYY, reception_date) as NUMERIC),
				 'N'
		FROM  wrk_userdoc 
		WHERE	 CAST(DATEPART(YYYY, reception_date) as NUMERIC)  not in
			(
		 	SELECT doc_ser
			FROM  CF_DOC_SERIES 
			);
			 
			
			INSERT INTO  IP_DAY   
				( row_version , 
				daily_date , 
				doc_ser ,
				next_working_date)  
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
		FROM  wrk_userdoc 
		WHERE	 cast(reception_date as DATE)  not in
			(
		 	SELECT daily_date
			FROM  IP_DAY 
			);
			INSERT INTO  IP_DAILY_LOG   
				( row_version , 
				doc_ori , 
				doc_log , 
				daily_log_date )  
		SELECT DISTINCT
				 1,
				 DOC_ORI,
				 'E',
				 cast(RECEPTION_DATE as DATE)
		FROM  wrk_userdoc M 
		WHERE	 NOT   exists
			(
		 	SELECT *
			FROM  IP_DAILY_LOG L 
			WHERE	 L.DOC_ORI  = M.DOC_ORI COLLATE DATABASE_DEFAULT
			 AND	DOC_LOG  = 'E'
			 AND	DAILY_LOG_DATE  = cast(RECEPTION_DATE as DATE)
			);
			 
			
			INSERT INTO  IP_DOC   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				DOC_SEQ_TYP , 
				DOC_SEQ_SERIES , 
				DOC_SEQ_NBR , 
				DAILY_LOG_DATE , 
				RECEPTION_DATE ,
				FILING_DATE , 
				RECEPTION_WCODE )  
		SELECT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 USERDOC_SEQ,
				 USERDOC_SERIES,
				 USERDOC_NBR,
				 cast(RECEPTION_DATE as DATE),
				 RECEPTION_DATE,
				 FILING_DATE,
				 'PE'
		FROM  WRK_USERDOC M ;
		 
			
		INSERT INTO  IP_DOC_FILES   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				FILE_SEQ , 
				FILE_TYP , 
				FILE_SER , 
				FILE_NBR )  
		SELECT		DISTINCT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR
		FROM  WRK_USERDOC_FILES T JOIN wrk_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  ;
			  
			
			INSERT INTO  IP_USERDOC   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				CAPTURE_USER_ID , 
				CAPTURE_DATE , 
				APPLICANT_PERSON_NBR , 
				APPLICANT_ADDR_NBR , 
				APPLICANT_NOTES )  
		SELECT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 CAPTURE_USER_ID,
				 CAPTURE_DATE,
				 APPLICANT_PERSON_NBR,
				 APPLICANT_ADDR_NBR,
				 APPLICANT_NOTES
		FROM  WRK_USERDOC;
		 
		
			ALTER TABLE IP_USERDOC_TYPES NOCHECK CONSTRAINT PROMOCION_TIPO_FK_TRAMITE;

			INSERT INTO  IP_USERDOC_TYPES   
							( ROW_VERSION , 
							DOC_ORI , 
							DOC_LOG , 
							DOC_SER , 
							DOC_NBR , 
							USERDOC_TYP , 
							PROC_TYP , 
							PROC_NBR )  
					SELECT
							 1,
							 DOC_ORI,
							 'E',
							 DOC_SERIES,
							 DOC_NBR,
							 USERDOC_TYPE,
							 USERDOC_PROC_TYP,
							 USERDOC_PROC_NBR
					FROM  WRK_USERDOC;
		 
		
		INSERT INTO  IP_USERDOC_NEW_OWNERS   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				PERSON_NBR , 
				ADDR_NBR , 
				NOTES )  
		SELECT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 PERSON_NBR,
				 ADDR_NBR,
				 OWNERSHIP_NOTES
		FROM  WRK_USERDOC_OWNERS T JOIN wrk_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr; 
		 
		
		INSERT INTO  IP_USERDOC_REPRS   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				PERSON_NBR , 
				ADDR_NBR , 
				REPRESENTATIVE_TYP )  
		SELECT
				 1,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 PERSON_NBR,
				 ADDR_NBR,
				 REPRESENTATIVE_TYPE
		FROM  WRK_USERDOC_REPRS T JOIN wrk_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr ; 
		 
		
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
		FROM   VW_import_userdoc_payments T JOIN wrk_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  ;
		 
				
		INSERT INTO  IP_PROC   
				( ROW_VERSION , 
				PROC_TYP , 
				PROC_NBR , 
				CREATION_DATE , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				USERDOC_TYP , 
				STATUS_CODE , 
				STATUS_DATE , 
				FILE_PROC_TYP , 
				FILE_PROC_NBR )  
		SELECT
				 1,
				 USERDOC_PROC_TYP,
				 USERDOC_PROC_NBR,
				 RECEPTION_DATE,
				 DOC_ORI,
				 'E',
				 DOC_SERIES,
				 DOC_NBR,
				 USERDOC_TYPE,
				 USERDOC_STATUS_CODE,
				 RECEPTION_DATE,
				 USERDOC_PROC_TYP,
				 USERDOC_PROC_NBR
		FROM  WRK_userdoc uu
		join CF_PROCESS_TYPE pp
		on pp.PROC_TYP=uu.USERDOC_PROC_TYP 
		where pp.RELATED_TO_WCODE=5
		and	 USERDOC_PROC_TYP  is not null
		 
		
		
		ALTER TABLE IP_USERDOC_TYPES CHECK CONSTRAINT PROMOCION_TIPO_FK_TRAMITE;
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
				 USERDOC_PROC_TYP,
				 USERDOC_PROC_NBR,
				 ACTION_NBR,
				 ACTION_TYPE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_USER,
				 ACTION_USER,
				 ACTION_NOTES2,
				 ACTION_NOTES3,
				 ACTION_NOTES4,
				 ACTION_NOTES5,
				 GENERAL_NOTES,
				 'N',
				 null,
				 null,
				 null,
				 null,
				 ACTION_NOTES1
		FROM  wrk_userdoc_actions T JOIN wrk_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 USERDOC_PROC_TYP  is not null
		 AND	ACTION_CATEGORY  = 'N';
		 
		
		 
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
				 U.USERDOC_PROC_TYP,
				 U.USERDOC_PROC_NBR,
				 ACTION_NBR,
				 ACTION_TYPE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_USER,
				 ACTION_USER,
				 ACTION_NOTES2,
				 ACTION_NOTES3,
				 ACTION_NOTES4,
				 ACTION_NOTES5,
				 GENERAL_NOTES,
				 'S',
				 SPECIAL_FINAL_STATUS,
				 P.STATUS_CODE,
				 P.STATUS_DATE,
				 P.EXPIRATION_DATE,
				 ACTION_NOTES1
		FROM  wrk_userdoc_actions T JOIN wrk_userdoc U ON U.userdoc_seq  = T.userdoc_seq
			 AND	U.userdoc_series  = T.userdoc_series
			 AND	U.userdoc_nbr  = T.userdoc_nbr  JOIN IP_PROC P ON P.proc_typ  = U.userdoc_proc_typ
			 AND	P.proc_nbr  = U.userdoc_proc_nbr  
		WHERE	 USERDOC_PROC_TYP  is not null
		 AND	ACTION_CATEGORY  = 'S'
		 
		 	
		UPDATE R 
		SET R.STATUS_CODE = P.SPECIAL_FINAL_STATUS,R.STATUS_DATE=P.ACTION_DATE, R.EXPIRATION_DATE=P.MANUAL_DUE_DATE
		
		FROM IP_PROC AS R
		INNER JOIN (SELECT	 SPECIAL_FINAL_STATUS,
				 ACTION_DATE,
				 MANUAL_DUE_DATE,
				 userdoc_proc_typ,
				 userdoc_proc_nbr
		FROM  WRK_USERDOC_ACTIONS T 
		      JOIN WRK_userdoc M ON T.userdoc_seq  = M.userdoc_seq
			 AND	T.userdoc_series  = M.userdoc_series
			 AND	T.userdoc_nbr  = M.userdoc_nbr  
		WHERE	 ACTION_CATEGORY  = 'S'
		 AND	userdoc_proc_typ  is not null) AS P 
			   ON R.PROC_TYP = P.USERDOC_PROC_TYP and R.PROC_NBR=P.USERDOC_PROC_NBR;
		 
		
		INSERT INTO  IP_PROC   
				( ROW_VERSION , 
				PROC_TYP , 
				PROC_NBR , 
				CREATION_DATE , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				USERDOC_TYP , 
				USERDOC_FILE_SEQ , 
				USERDOC_FILE_TYP , 
				USERDOC_FILE_SER , 
				USERDOC_FILE_NBR , 
				STATUS_CODE , 
				STATUS_DATE , 
				UPPER_PROC_TYP, 
				UPPER_PROC_NBR,
				FILE_PROC_TYP , 
				FILE_PROC_NBR )  
		SELECT
				 1,
				 USERDOC_FILE_PROC_TYP,
				 USERDOC_FILE_PROC_NBR,
				 RECEPTION_DATE,
				 u.DOC_ORI,
				 'E',
				 DOC_SERIES,
				 U.DOC_NBR,
				 USERDOC_TYPE,
				 UF.file_seq,
				 UF.file_type,
				 UF.file_series,
				 UF.file_nbr,
				 USERDOC_FILE_STATUS_CODE,
				 RECEPTION_DATE,
				 F.PROC_TYP,
				 F.PROC_NBR,
				 F.PROC_TYP,
				 F.PROC_NBR
		FROM  wrk_userdoc U JOIN wrk_userdoc_files UF ON U.userdoc_seq  = UF.userdoc_seq
			 AND	U.userdoc_series  = UF.userdoc_series
			 AND	U.userdoc_nbr  = UF.userdoc_nbr  JOIN IP_FILE F ON UF.file_seq  = F.file_seq COLLATE DATABASE_DEFAULT
			 AND	UF.file_type  = F.file_typ COLLATE DATABASE_DEFAULT
			 AND	UF.file_series  = F.file_ser
			 AND	UF.file_nbr  = F.file_nbr  
		WHERE	 USERDOC_FILE_PROC_TYP  is not null;	
		 
		
		INSERT INTO  ip_userdoc_procs   
				( ROW_VERSION , 
				DOC_ORI , 
				DOC_LOG , 
				DOC_SER , 
				DOC_NBR , 
				USERDOC_TYP , 
				USERDOC_FILE_SEQ , 
				USERDOC_FILE_TYP , 
				USERDOC_FILE_SER , 
				USERDOC_FILE_NBR , 
				PROC_TYP , 
				PROC_NBR )  
		SELECT		 DISTINCT
				 1,
				 U.DOC_ORI,
				 'E',
				 U.DOC_SERIES,
				 U.DOC_NBR,
				 USERDOC_TYPE,
				 FILE_SEQ,
				 FILE_TYPE,
				 FILE_SERIES,
				 FILE_NBR,
				 USERDOC_FILE_PROC_TYP,
				 USERDOC_FILE_PROC_NBR
		FROM  wrk_userdoc_files UF JOIN wrk_userdoc U ON U.userdoc_seq  = UF.userdoc_seq
			 AND	U.userdoc_series  = UF.userdoc_series
			 AND	U.userdoc_nbr  = UF.userdoc_nbr  
		WHERE	 USERDOC_FILE_PROC_TYP  is not null;
		 
		
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
				 USERDOC_FILE_PROC_TYP,
				 USERDOC_FILE_PROC_NBR,
				 ACTION_NBR,
				 ACTION_TYPE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_USER,
				 ACTION_USER,
				 ACTION_NOTES2,
				 ACTION_NOTES3,
				 ACTION_NOTES4,
				 ACTION_NOTES5,
				 GENERAL_NOTES,
				 'N',
				 null,
				 null,
				 null,
				 null,
				 ACTION_NOTES1
		FROM  wrk_userdoc_actions T JOIN wrk_userdoc_files UF ON UF.userdoc_seq  = T.userdoc_seq
			 AND	UF.userdoc_series  = T.userdoc_series
			 AND	UF.userdoc_nbr  = T.userdoc_nbr  
		WHERE	 ACTION_CATEGORY  = 'N'
		 AND	USERDOC_FILE_PROC_TYP  is not null
		 AND	PROCESS_FILE_NBR  is null;
		 
		
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
				 USERDOC_FILE_PROC_TYP,
				 USERDOC_FILE_PROC_NBR,
				 ACTION_NBR,
				 ACTION_TYPE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_USER,
				 ACTION_USER,
				 ACTION_NOTES2,
				 ACTION_NOTES3,
				 ACTION_NOTES4,
				 ACTION_NOTES5,
				 GENERAL_NOTES,
				 'N',
				 null,
				 null,
				 null,
				 null,
				 ACTION_NOTES1
		FROM  wrk_userdoc_actions T JOIN wrk_userdoc_files UF ON UF.userdoc_seq  = T.userdoc_seq
			 AND	UF.userdoc_series  = T.userdoc_series
			 AND	UF.userdoc_nbr  = T.userdoc_nbr
			 AND	UF.file_seq  = T.process_file_seq
			 AND	UF.file_type  = T.process_file_type
			 AND	UF.file_series  = T.process_file_series
			 AND	UF.file_nbr  = T.process_file_nbr  
		WHERE	 ACTION_CATEGORY  = 'N'
		 AND	USERDOC_FILE_PROC_TYP  is not null;
		 
		
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
				 UF.USERDOC_FILE_PROC_TYP,
				 UF.USERDOC_FILE_PROC_NBR,
				 ACTION_NBR,
				 ACTION_TYPE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_DATE,
				 ACTION_USER,
				 ACTION_USER,
				 ACTION_NOTES2,
				 ACTION_NOTES3,
				 ACTION_NOTES4,
				 ACTION_NOTES5,
				 GENERAL_NOTES,
				 'S',
				 SPECIAL_FINAL_STATUS,
				 P.STATUS_CODE,
				 P.STATUS_DATE,
				 P.EXPIRATION_DATE,
				 ACTION_NOTES1
		FROM  wrk_userdoc_actions T JOIN wrk_userdoc_files UF ON UF.userdoc_seq  = T.userdoc_seq
			 AND	UF.userdoc_series  = T.userdoc_series
			 AND	UF.userdoc_nbr  = T.userdoc_nbr  JOIN IP_PROC P ON P.proc_typ  = UF.userdoc_file_proc_typ
			 AND	P.proc_nbr  = UF.userdoc_file_proc_nbr  
		WHERE	 ACTION_CATEGORY  = 'S'
		 AND	USERDOC_FILE_PROC_TYP  is not null
		 AND	PROCESS_FILE_NBR  is null;
		 
		
	UPDATE R 
		SET R.STATUS_CODE = P.SPECIAL_FINAL_STATUS,R.STATUS_DATE=P.ACTION_DATE, R.EXPIRATION_DATE=P.MANUAL_DUE_DATE
		
		FROM IP_PROC AS R
		INNER JOIN (SELECT	SPECIAL_FINAL_STATUS,
				ACTION_DATE,
				MANUAL_DUE_DATE,
				 userdoc_file_proc_typ,
				 userdoc_file_proc_nbr
		FROM  WRK_USERDOC_ACTIONS T 
		      JOIN WRK_userdoc_files M ON T.userdoc_seq  = M.userdoc_seq
			 AND	T.userdoc_series  = M.userdoc_series
			 AND	T.userdoc_nbr  = M.userdoc_nbr  
		WHERE	 ACTION_CATEGORY  = 'S'
		 AND	userdoc_file_proc_typ  is not null
		 AND	process_file_nbr  is not null) AS P 
			   ON R.PROC_TYP = P.USERDOC_FILE_PROC_TYP and R.PROC_NBR=P.USERDOC_FILE_PROC_NBR;
		 
		
		
commit transaction;
		 
		