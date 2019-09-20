create view vw_prio as SELECT rowNum,left(nro_solici,4) file_ser,right(nro_solici,1) file_seq,substring(nro_solici,5,len(nro_solici)-5) file_nbr,NRO_SOLICI,case when(FECHA='None') then '' else FECHA end FECHA,NUMERO,PAIS,TIPO,Deleted FROM VW_ORIGIN_priorida where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0 union all SELECT rowNum,left(nro_solici,4) file_SER,1 file_SEQ,substring(nro_solici,5,len(nro_solici)-4) file_NBR,NRO_SOLICI,case when(FECHA='None') then '' else FECHA end FECHA,NUMERO,PAIS,TIPO,Deleted FROM VW_ORIGIN_priorida where ISNUMERIC(nro_solici)=1 and len(nro_solici)>0;;
 create view VW_PRODUCTO as SELECT rowNum,left(nro_solici,4) file_SER,right(nro_solici,1) file_SEQ,substring(nro_solici,5,len(nro_solici)-5) file_NBR,NRO_SOLICI,CLASE,PROD_SERV,CL_TYPE,Deleted FROM VW_ORIGIN_PRODUCTO where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0 union all SELECT rowNum,left(nro_solici,4) file_Ser,'1' file_SEQ,substring(nro_solici,5,len(nro_solici)-4) file_NBR,NRO_SOLICI,CLASE,PROD_SERV,CL_TYPE,Deleted FROM VW_ORIGIN_producto where ISNUMERIC(nro_solici)=1 and len(nro_solici)>5;;
 create view VW_TITUMAR as SELECT rowNum,left(nro_solici,4) file_SER,right(nro_solici,1) file_SEQ,substring(nro_solici,5,len(nro_solici)-5) file_NBR,NRO_SOLICI,titular,Deleted FROM VW_ORIGIN_TITUMAR where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0 union all SELECT rowNum,left(nro_solici,4) file_SER,'1' file_SEQ,substring(nro_solici,5,len(nro_solici)-4) file_NBR,NRO_SOLICI,titular,Deleted FROM VW_ORIGIN_TITUMAR where ISNUMERIC(nro_solici)=1 and len(nro_solici)>5;;
  create view VW_CCVS as SELECT rowNum,CCV,left(nro_solici,4) file_SER,  right(nro_solici,1) file_Seq,substring(cast(nro_solici as varchar),5,len(nro_solici)-5) file_NBR,NRO_SOLICI,Deleted FROM VW_ORIGIN_CCVS where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0 and NRO_SOLICI is not null union all SELECT rowNum,CCV,left(nro_solici,4) file_SER, '1' file_SEQ,substring(cast(nro_solici as varchar),5,len(nro_solici)-4) file_NBR,NRO_SOLICI,Deleted FROM VW_ORIGIN_ccvs where ISNUMERIC(nro_solici)=1 and len(nro_solici)>0;;
 create view VW_MARCAS as SELECT rowNum,left(NRO_SOLICI,4) file_SER, right(NRO_SOLICI,1) file_SEQ, substring(NRO_SOLICI,5,len(NRO_SOLICI)-5) file_NBR,NRO_SOLICI,case when(SOLICITADA='None') then '' else SOLICITADA end SOLICITADA,TIPO_MARCA,SIGNO,NOM_MARCA,case when replace(REGISTRO,' ','')='0' or registro ='' then null else registro end registro,case when(REGISTRADA='None') then '' else REGISTRADA end REGISTRADA,case when(RENUEVA='None') then '' else RENUEVA end RENUEVA,case when(EXPIRA='None') then '' else EXPIRA end EXPIRA,AGENTE,status,case when(STAT_DESDE='None') then '' else STAT_DESDE end STAT_DESDE,case when(PUBLICADA='None') then '' else PUBLICADA end PUBLICADA,DIARIO,case when(LIMITACION='None') then '' else LIMITACION end LIMITACION,HORA,case when(RTOMO='None') then '' else RTOMO end RTOMO,case when(RFOLIO ='None') then '' else RFOLIO end RFOLIO,case when(RESERVA ='None') then '' else RESERVA end RESERVA,NRO_PODER,modifica,qUien,CALIDAD,case when(CLASE ='None') then '' else CLASE end CLASE,MODIFICADO,case when(ANUALIDAD ='None') then '' else ANUALIDAD end ANUALIDAD,NRO_RESOL,LEY,CLASES_TXT,Deleted FROM VW_ORIGIN_marca where ISNUMERIC(NRO_SOLICI)=0 and len(NRO_SOLICI)>0 union all SELECT rowNum,left(NRO_SOLICI,4) file_SER, '1' file_SEQ, substring(NRO_SOLICI,5,len(NRO_SOLICI)-4) file_NBR,NRO_SOLICI,case when(SOLICITADA='None') then '' else SOLICITADA end SOLICITADA,TIPO_MARCA,SIGNO,NOM_MARCA,case when replace(REGISTRO,' ','')='0' or registro ='' then null else registro end registro,case when(REGISTRADA='None') then '' else REGISTRADA end REGISTRADA,case when(RENUEVA='None') then '' else RENUEVA end RENUEVA,case when(EXPIRA='None') then '' else EXPIRA end EXPIRA,AGENTE,status,case when(STAT_DESDE='None') then '' else STAT_DESDE end STAT_DESDE,case when(PUBLICADA='None') then '' else PUBLICADA end PUBLICADA,DIARIO,case when(LIMITACION='None') then '' else LIMITACION end LIMITACION,HORA,case when(RTOMO='None') then '' else RTOMO end RTOMO,case when(RFOLIO ='None') then '' else RFOLIO end RFOLIO,case when(RESERVA ='None') then '' else RESERVA end RESERVA,NRO_PODER,modifica,qUien,CALIDAD,case when(CLASE ='None') then '' else CLASE end CLASE,MODIFICADO,case when(ANUALIDAD ='None') then '' else ANUALIDAD end ANUALIDAD,NRO_RESOL,LEY,CLASES_TXT,Deleted FROM VW_ORIGIN_marca where ISNUMERIC(NRO_SOLICI)=1 and len(NRO_SOLICI)>5;;
 create view VW_PETIREG as SELECT rowNum,NRO_SOLICI,left(nro_solici,4) file_ser, case when (ISNUMERIC(NRO_SOLICI)=0) then right(nro_solici,1) else '1' end file_seq, case when (ISNUMERIC(NRO_SOLICI)=0) then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end file_nbr,NUM_SERIE,left(num_serie,4) doc_ser, case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else '1' end doc_seq, case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4) end doc_nbr,Deleted FROM VW_ORIGIN_petireg where len(NRO_SOLICI)>0 and len(num_serie)>0;;
 create view VW_PETICI as SELECT rowNum,left(NUM_SERIE,4) doc_ser,case when (ISNUMERIC(NUM_SERIE)=0) then right(NUM_SERIE,1) else '1' end doc_seq,case when (ISNUMERIC(NUM_SERIE)=0) then substring(NUM_SERIE,5,len(NUM_SERIE)-5) else substring(NUM_SERIE,5,len(NUM_SERIE)-4) end doc_nbr,NUM_SERIE,SOLICITADA,hora,TIPO_PETI,STATUS_RES,STAT_DESDE,AGENTE,CALIDAD,qUien,CUAL,NRO_RESOL,case when OBSERVACIO='None' then '' else OBSERVACIO end OBSERVACIO,LEY,cambrep,Deleted FROM VW_ORIGIN_peticion where len(num_serie)>=4;;
 create view VW_MOVIMI as SELECT rowNum,left(nro_solici,4) file_ser, case when (ISNUMERIC(NRO_SOLICI)=0) then right(nro_solici,1) else '1' end file_seq, case when (ISNUMERIC(NRO_SOLICI)=0) then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end file_nbr,NRO_SOLICI,case when COMENTARIO='None' then '' else COMENTARIO end COMENTARIO,F_EVENTO,case when F_VENCIM='None' then '' else F_VENCIM end F_VENCIM,F_TRANS,NRO_MOV,EVENTO,status,HORA,DOCUMENTO,USUARIO,N_ENTRADA,Deleted FROM VW_ORIGIN_movimi where len(NRO_SOLICI)>5;;
 create view VW_ORInoms as SELECT rowNum,NUM_SERIE,left(num_serie,4) doc_ser, case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else '1' end doc_seq, case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4) end doc_nbr,titular,Deleted FROM VW_ORIGIN_orinoms where len(num_SERIE)>0;;
  create view vw_nuenoms as SELECT rowNum,NUM_SERIE,left(num_serie,4) doc_ser, case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else '1' end doc_seq, case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4) end doc_nbr,titular,Deleted FROM VW_ORIGIN_nuenoms where len(num_SERIE)>0;;
  
 CREATE VIEW vw_marcas2 AS  
with cte as (
SELECT cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) file_SEQ,
1 FILE_TYPE,
cast(left(NRO_SOLICI,4) as numeric(4,0)) as FILE_SERIES,
cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) file_NBR,
cast(0 as numeric) ind_import, 
'M' application_type, 
TIPO_MARCA application_subtype, 
cast(1 as numeric) law_code,
CONVERT(datetime,  CASE   WHEN (SOLICITADA IS NULL or SOLICITADA='') THEN '1900-01-01'    when substring(solicitada,1,4)<1900 then '19' + substring(solicitada,3,len(solicitada))         when substring(solicitada,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(solicitada,5,len(solicitada))   ELSE SOLICITADA END  ,120) 		[FILING_DATE],
CONVERT(datetime,  CASE   WHEN (SOLICITADA IS NULL or SOLICITADA='') THEN '1900-01-01' when substring(solicitada,1,4)<1900 then '19' + substring(solicitada,3,len(solicitada))  when substring(solicitada,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(solicitada,5,len(solicitada)) ELSE SOLICITADA END  ,120) [RECEPTION_DATE],
CONVERT(datetime,  case   when substring(PUBLICADA,1,4)<1900 and len(PUBLICADA)>0 then '20' + substring(PUBLICADA,3,len(PUBLICADA)) else PUBLICADA end   ,120)  PUBLICATION_DATE, 
 cast(case when (registro is null or registro='') then null else 1 end as numeric(1,0)) ind_registered, 
  cast(case when (ISNUMERIC(REGISTRO)=0) then right(REGISTRO,1) else '1' end as varchar) registration_type ,  
   
   cast(case when registro is null then null else (case when (registrada is null) then 1 else 	   substring(registrada,1,4) end)  end as numeric(4,0))  registration_series, 

   case WHEN REGISTRO LIKE '%[0-9]%' THEN (
   case when len(registro)>0 then   cast(Left(SubString(REGISTRO,   PatIndex('%[0-9]%', REGISTRO), 8000),PatIndex('%[^0-9]%', SubString(REGISTRO, PatIndex('%[0-9]%', REGISTRO), 8000) + 'X')-1)  as varchar) else null end)
   else '0' end  registration_nbr,
  
   CONVERT(datetime,  case   when (registro is null or registro ='') then null   when (registro IS NOT NULL AND REGISTRADA IS NULL AND SOLICITADA IS NULL) THEN '1900-01-01'         when (registro is not null AND (REGISTRADA IS NULL or registrada='') AND SOLICITADA IS NOT NULL)   		THEN (  			CASE   				WHEN (SOLICITADA IS NULL or solicitada='') THEN '1900-01-01'   				when substring(solicitada,1,4)<1900 then '19' + substring(solicitada,3,len(solicitada))     				when substring(solicitada,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(solicitada,5,len(solicitada))          				ELSE SOLICITADA END)         		ELSE (  			CASE   				WHEN (REGISTRADA IS NULL or registrada='') THEN '1900-01-01'   				when substring(REGISTRADA,1,4)<1900 then '19' + substring(REGISTRADA,3,len(REGISTRADA))  				when substring(REGISTRADA,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(REGISTRADA,5,len(REGISTRADA))  				ELSE REGISTRADA END)   		END,120) REGISTRAtion_date,

      CONVERT(datetime,  case    	when (registro is null or registro='') then null  	when (registro is not null and (renueva is null or renueva='')) then   		(case   		when (registro is null or registro='') then null   		when (registro is not null AND (REGISTRADA IS NULL or registrada='') AND (SOLICITADA IS NULL or solicitada='')) THEN '1900-01-01'         		when (registro is not null AND (REGISTRADA IS NULL or registrada='') AND SOLICITADA IS NOT NULL) THEN   			(CASE WHEN (SOLICITADA IS NULL or solicitada='') THEN '1900-01-01'   					when substring(solicitada,1,4)<1900 then '19' + substring(solicitada,3,len(solicitada))         					when substring(solicitada,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(solicitada,5,len(solicitada))          				ELSE SOLICITADA END)         		ELSE (CASE   				WHEN (REGISTRADA IS NULL or registrada='') THEN '1900-01-01'   				when substring(REGISTRADA,1,4)<1900 then '19' + substring(REGISTRADA,3,len(REGISTRADA))         				when substring(REGISTRADA,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(REGISTRADA,5,len(REGISTRADA))          				ELSE REGISTRADA END)
   END)       		when substring(renueva,1,4)<1900 then '20' + substring(renueva,3,len(renueva)) else renueva end,120) entitlement_date ,  
   
    case  when (registro is null or registro='') then null   	else convert(datetime,  		case when (registro is not null AND (EXPIRA IS NULL or expira='') AND (SOLICITADA IS NULL or solicitada='') AND (RENUEVA IS NULL or renueva='')) THEN '1900-01-01'   		when (registro is not null AND (EXPIRA IS NULL or expira ='') AND RENUEVA IS NOT NULL and len(renueva)>3) THEN   			(CASE 	    when substring(RENUEVA,1,4)<1900 then '20' + substring(RENUEVA,3,len(RENUEVA))         						when substring(RENUEVA,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(RENUEVA,5,len(RENUEVA))          						ELSE RENUEVA END)         		when (registro is not null AND (EXPIRA IS NULL or expira ='') AND (RENUEVA IS  NULL or renueva='') AND SOLICITADA IS NOT NULL) THEN   			(CASE when substring(solicitada,1,2)<19 then '19' + substring(solicitada,3,len(solicitada))   					when substring(solicitada,1,4)<1900 then '20' + substring(solicitada,3,len(solicitada))         					when substring(solicitada,1,4)>2019 then cast(left(NRO_SOLICI,4) as varchar) + substring(solicitada,5,len(solicitada))          			ELSE SOLICITADA END)         		ELSE  (CASE WHEN (EXPIRA IS NULL or expira='') THEN '1900-01-01'   					when (substring(EXPIRA,1,4)<1900 and substring(EXPIRA,3,2)<60) then '20' + substring(EXPIRA,3,len(EXPIRA))   					when (substring(EXPIRA,1,4)<1900 and substring(EXPIRA,3,2)>60) then '19' + substring(EXPIRA,3,len(EXPIRA))    					when substring(EXPIRA,1,4)>2060  then '19' + substring(EXPIRA,3,len(EXPIRA))   					ELSE EXPIRA END)   		 END,120) 	   end expiration_date ,
	  SIGNO sign_type,
   NOM_MARCA mark_name, 
   cast(LIMITACION as varchar(2000)) disclaimer ,   
   (case when (len(rtomo)>0) then 'Tomo: ' + cast(rtomo as varchar) + ' -- ' else '' end ) +       (case when len(rfolio)>0 then 'Folio: ' + cast(rfolio as varchar) + ' -- ' else '' end) +          (case when len(NRO_RESOL)>0 then 'Resolucion: ' + cast(NRO_RESOL as varchar) + ' -- ' else '' end) +          (case when (len(reserva)>0) then 'Reserva: ' + cast(RESERVA as varchar(max)) else '' end)        notes,   
   4 as capture_user_id,   
   getdate() as capture_date, [rowNum],[NRO_SOLICI] ,
   RN = ROW_NUMBER()OVER(PARTITION BY cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar),
   cast(left(NRO_SOLICI,4) as numeric(4,0)) ,
   cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0))
    ORDER BY nro_solici)  
	   FROM vw_origin_marca 
   where Deleted='N' and len(nro_solici)>5
   
   )

   select case when rn>1 then [file_SEQ] + cast(rn as varchar) else file_seq end file_SEQ
      ,[FILE_TYPE]
      ,[FILE_SERIES]
      ,[file_NBR]
      ,[ind_import]
      ,[application_type]
      ,[application_subtype]
      ,[law_code]
      ,[FILING_DATE]
      ,[RECEPTION_DATE]
      ,[PUBLICATION_DATE]
      ,[ind_registered]
      ,[registration_type]
      ,[registration_series]
      ,[registration_nbr]
      ,[REGISTRAtion_date]
      ,[entitlement_date]
      ,[expiration_date]
      ,[sign_type]
      ,[mark_name]
      ,[disclaimer]
      ,[notes]
      ,[capture_user_id]
      ,[capture_date]
      ,[rowNum]
      ,[NRO_SOLICI]
      ,[RN] from cte ;;