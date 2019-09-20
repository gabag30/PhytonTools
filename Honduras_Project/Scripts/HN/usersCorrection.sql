  update CF_OFFICE_SECTION set SIGNATURE_USER_ID=null,SIGNATURE_USER_ID_SECONDARY=null;;
	update CF_OFFICE_DIVISION set SIGNATURE_USER_ID=null,SIGNATURE_USER_ID_SECONDARY=null;;
	update CF_OFFICE_DEPARTMENT set SIGNATURE_USER_ID=null,SIGNATURE_USER_ID_SECONDARY=null;;
   delete from IP_user where USER_ID!=4;;
     insert into IP_USER ([ROW_VERSION]
      ,[USER_ID]
      ,[USER_NAME]
      ,[LOGIN]
      ,[IND_ADMINISTRATOR]
      ,[IND_INACTIVE]
      ,[OFFICE_DIVISION_CODE]
       ,[INITIALS])

   select 1 row_version,case 
   when deleted='S' then rownum+1000
   when rownum=4 then 200
   when rownum=0 then 201
       else rownum end user_id, name user_name, code_user login, 'N' ind_administrator, case when deleted='S' then 1 else null end ind_inactive,'01' office_division_code,
   code_user initials
    from VW_ORIGIN_USERS;;