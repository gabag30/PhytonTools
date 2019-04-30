ALTER TABLE vw_origin_movimi DROP COLUMN ACTION_DATE_IPAS;;
ALTER TABLE vw_origin_movimi ADD ACTION_DATE_IPAS datetime;;

update vw_origin_movimi  set action_date_IPAS=convert(datetime,cast(f_evento as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120);;

