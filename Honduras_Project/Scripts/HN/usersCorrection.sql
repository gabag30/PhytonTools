  update CF_OFFICE_SECTION set SIGNATURE_USER_ID=null,SIGNATURE_USER_ID_SECONDARY=null;;
	update CF_OFFICE_DIVISION set SIGNATURE_USER_ID=null,SIGNATURE_USER_ID_SECONDARY=null;;
	update CF_OFFICE_DEPARTMENT set SIGNATURE_USER_ID=null,SIGNATURE_USER_ID_SECONDARY=null;;
  
 with cte as (
  SELECT rowNum
      ,CODE_USER
      ,NAME
      ,DELETED
	  ,row_Number() over (partition by code_user,name order by rowNum) rn
  FROM VW_ORIGIN_USERS where rowNum !=4)
  delete from cte where rn >1;;
   
   with cte as (
  SELECT login,user_id
	  ,row_number() over (partition by login order by user_id) rn
  FROM IP_USER where user_id !=4)
  delete from cte where rn >1;;
  

UPDATE IP_USER set last_update_user_id=null,last_login_date=null,last_update_date=null where user_id!=4;;

update CF_THIS_GROUP set LAST_UPDATE_DATE=null, LAST_UPDATE_USER_ID=null;;

UPDATE IP_USER set user_id=2000+user_id,last_update_user_id=null,last_login_date=null,last_update_date=null where user_id<1000 and user_id!=4;;

update Table_A   
SET
    Table_A.user_id = Table_B.rowNum
FROM
    IP_USER AS Table_A
    INNER JOIN (SELECT rowNum
      ,CODE_USER
      ,NAME

      ,DELETED
  FROM VW_ORIGIN_USERS where DELETED='N' and rowNum !=4)  AS Table_B
        ON Table_A.login = Table_B.CODE_USER and Table_B.DELETED = 'N' and Table_b.rowNum !=4 
WHERE
    
	 table_a.user_id!=4 ;;

delete from IP_USER where user_ID >999;;

