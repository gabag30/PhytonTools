--ENABLE_IGNORE_ERRORS
GO

IF OBJECT_ID('CallToDateValidationPROC', 'P') IS NOT NULL
  DROP PROCEDURE CallToDateValidationPROC;
GO 
--DISABLE_IGNORE_ERRORS
GO

CREATE PROCEDURE CallToDateValidationPROC 
(
  @APPLICATIONTYPE VARCHAR(4000) 
) 
AS 
BEGIN
SET NOCOUNT ON;
  
  IF @APPLICATIONTYPE = 'MARK' BEGIN	   
	exec MarkDateValidationPROC;	
  END     
  	
  IF @APPLICATIONTYPE = 'PATENT' BEGIN	  
	exec PatentDateValidationPROC;		
  END     
  
  IF @APPLICATIONTYPE = 'USERDOC' BEGIN	  	
	exec UserDocDateValidationPROC;	
  END 
  SET NOCOUNT OFF;
END
GO

-- exec CallToDateValidationPROC;