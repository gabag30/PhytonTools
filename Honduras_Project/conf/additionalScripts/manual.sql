insert into [DGRPI_IPAS].[DGRPI].[IP_USER] ([ROW_VERSION]
      ,[USER_ID]
      ,[USER_NAME]
      ,[LOGIN]
      ,[IND_ADMINISTRATOR]
      ,[IND_EXAMINER]
      ,[IND_INACTIVE]
	  ,initials
      ,[OFFICE_DIVISION_CODE])
SELECT
1 row_version,
case when [rowNum]!=4 then rownum else 60 end  user_ID

      ,[NAME] user_name
      ,[CODE_USER] login,
	  'N' ind_administrator
	  ,'N' ind_examiner
	  ,'N'ind_inactive
      ,[SIGLAS] initials
	  ,'01' office_division_code
  FROM [NI1].[dbo].[vw_origin_users] where deleted='N' and rownum!=0
-------------------------------------------------------------------------