create view vw_prio as select aaa.FILE_SEQ,aaa.FILE_TYPE,aaa.FILE_SERIES,aaa.FILE_NBR,country_code,application_id,priority_date,ind_accepted   from (
select cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
 'M' FILE_TYPE,   cast(left(nro_solici,4)  as numeric (4,0)) FILE_SERIES,  
 cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) FILE_NBR,
 pais  country_code,numero application_id,
 case when fecha is null  then convert(datetime,'1900-01-01',120) else fecha end  priority_date,
 
 case when deleted='N' then 1 else 0 end ind_accepted  FROM VW_ORIGIN_PRIORIDA where nro_solici is not null and nro_solici!='' and len(replace(nro_solici,' ',''))>6 and isnumeric(left(nro_solici,1))=1 and len(NRO_SOLICI)>6 ) aaa ;;

 create view VW_MARCAS as SELECT rowNum,left(NRO_SOLICI,4) file_SER, right(NRO_SOLICI,1) file_SEQ, substring(NRO_SOLICI,5,len(NRO_SOLICI)-5) file_NBR,NRO_SOLICI,
 SOLICITADA,TIPO_MARCA,SIGNO,NOM_MARCA,registro,REGISTRADA, RENUEVA, EXPIRA,
AGENTE,status,STAT_DESDE, PUBLICADA,DIARIO, LIMITACION,HORA, RTOMO,
RFOLIO,RESERVA,NRO_PODER,modifica,qUien,CALIDAD,CLASE,MODIFICADO,ANUALIDAD,NRO_RESOL,LEY,CLASES_TXT,Deleted 
FROM VW_ORIGIN_marca where ISNUMERIC(NRO_SOLICI)=0 and len(NRO_SOLICI)>0 
union all SELECT rowNum,left(NRO_SOLICI,4) file_SER, '1' file_SEQ, 
substring(NRO_SOLICI,5,len(NRO_SOLICI)-4) file_NBR,NRO_SOLICI, SOLICITADA,
TIPO_MARCA,SIGNO,NOM_MARCA,registro, REGISTRADA, RENUEVA,EXPIRA,AGENTE,status, STAT_DESDE, PUBLICADA,DIARIO,LIMITACION,HORA, RTOMO, RFOLIO,
 RESERVA,NRO_PODER,modifica,qUien,CALIDAD, CLASE,MODIFICADO,ANUALIDAD,NRO_RESOL,LEY,CLASES_TXT,Deleted
 FROM VW_ORIGIN_marca where ISNUMERIC(NRO_SOLICI)=1 and len(NRO_SOLICI)>5;;


create view VW_MOVIMI as
  SELECT aaa.FILE_SEQ,aaa.FILE_TYPE,aaa.FILE_SERIES,aaa.FILE_NBR,ACTION_TYPE,ACTION_DATE,RESPONSIBLE_USER,ACTION_NOTES1,ACTION_NOTES2,ACTION_USER,ACTION_CATEGORY from
 (  SELECT movi.rowNum, cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
 'M' FILE_TYPE,   cast(left(nro_solici,4)  as numeric (4,0)) FILE_SERIES,  
 cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) FILE_NBR, evento ACTION_TYPE, action_date_ipas ACTION_DATE, 	   us.rowNum RESPONSIBLE_USER,
  case when COMENTARIO='None' then '' else COMENTARIO end ACTION_NOTES1,
  case when documento is not null and documento !='' then 'Refiere a documento: '+ DOCUMENTO else '' end ACTION_NOTES2,us.rowNum ACTION_USER,'N' ACTION_CATEGORY 
  
  FROM vw_origin_movimi movi, vw_origin_users us   
   where  len(NRO_SOLICI)>5 and movi.USUARIO=us.CODE_USER and isnumeric(substring(nro_solici,1,1))=1 and isnumeric(substring(nro_solici,1,10))=1 
    and action_date_ipas is not null and (movi.N_ENTRADA is null or movi.N_ENTRADA='')) aaa     
   where action_type not in ('MO','US','DC','CO','CP','IP','DS','DO','PU','AP','EO','AI','RR','EL','MA','OT','PE','PP','C1','ST','DP','RM','CE','MS','SP','SC','EM','LE','CL');;

CREATE VIEW vw_marcas2 AS  
with cte as (
SELECT 
cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
 'M' FILE_TYPE,   cast(left(nro_solici,4)  as numeric (4,0)) FILE_SERIES,  
 cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) FILE_NBR,
cast(0 as numeric) ind_import, 
'MAR' application_type, 
case when TIPO_MARCA is not null then tipo_marca else 'MF' end application_subtype, 
cast(1 as numeric) law_code,
case when solicitada is null then cast('1900-01-01' as datetime) else 
convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) end 		FILING_DATE,

case when solicitada is null then cast('1900-01-01' as datetime) else 
convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) end 	 RECEPTION_DATE,
 PUBLICADA   PUBLICATION_DATE, 
 cast(case when (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null else 1 end as numeric(1,0)) ind_registered, 
  cast(case when (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null else case when (ISNUMERIC(REGISTRO)=0) then right(REGISTRO,1) else '1' end end as varchar) registration_type ,  
  case when (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null else
  case when registrada is not null then year(registrada) else 1900 end end  registration_series, 

   case 
   when  (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null
   when  isnumeric(registro)=1 then registro else Replace(REGISTRO, Substring(REGISTRO, PatIndex('%[^0-9.-]%', REGISTRO), 1), '') end
		
		   registration_nbr,
		   case when  (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null else case when registrada is null then cast('1900-01-01' as date) else registrada end end registration_date,
		   
		   case when  (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null else
		   case when registrada is null and expira is null and renueva is null then cast('1900-01-01' as date)
				when expira is null and renueva is null then registrada
				when renueva is null then case when datediff(year, registrada, expira) >10 then dateadd(year,-10,expira) else REGISTRADA end
				else renueva end end entitlement_date,
		   
		   
		   case when  (registro is null or registro='0' or len(replace(registro,' ',''))=0) then null else
		   case when registrada is null and expira is null and renueva is null then cast('1900-01-01' as date)
				when expira is null and renueva is null then dateadd(year,10,registrada)
				when expira is null then dateadd(year,10,renueva)
				else expira end end expiration_date,





	  SIGNO sign_type,
   NOM_MARCA mark_name, 
   case when RESERVA is not null then 'RESERVA: '+cast(RESERVA as varchar(max)) else '' end +
   case when LIMITACION is not null and len(LIMITACION)>0 then 'LIMITACION: ' + cast(LIMITACION as varchar(3000)) else '' end notes,   
   case when (len(rtomo)>0) then cast(rtomo as varchar) else '' end  tomo,
   case when len(rfolio)>0 then cast(rfolio as varchar) else '' end folio,
   case when len(NRO_RESOL)>0 then cast(NRO_RESOL as varchar)  else '' end nro_resoluc,
      
  4 as capture_user_id,  
   getdate() as capture_date, rowNum,NRO_SOLICI ,
   RN = ROW_NUMBER()OVER(PARTITION BY cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar),
   cast(left(NRO_SOLICI,4) as numeric(4,0)) ,
   cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0))
    ORDER BY nro_solici)  
	   FROM vw_origin_marca 
   where Deleted='N' and len(nro_solici)>5 
   
   )

   select case when rn>1 then file_SEQ + cast(rn as varchar) else file_seq end file_SEQ
      ,FILE_TYPE
      ,FILE_SERIES
      ,file_NBR
      ,ind_import
      ,application_type
      ,application_subtype
      ,law_code
      ,FILING_DATE
      ,RECEPTION_DATE
      ,PUBLICATION_DATE
      ,ind_registered
      ,registration_type
      ,registration_series
      ,registration_nbr
     ,REGISTRAtion_date
    ,entitlement_date
   ,expiration_date
      ,sign_type
      ,mark_name
      ,notes
      ,tomo,folio,nro_resoluc
      ,capture_user_id
      ,capture_date
      ,rowNum
      ,NRO_SOLICI
      ,RN from cte  ;;


-------------;;
 
create view VW_PRODUCTO as select aaa.FILE_SEQ,aaa.FILE_TYPE,aaa.FILE_SERIES,aaa.FILE_NBR,NICE_CLASS_VERSION,nice_class_edition,nice_class_nbr,NICE_CLASS_STATUS,NICE_CLASS_DESCRIPTION from (
SELECT cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
 'M' FILE_TYPE,   cast(left(nro_solici,4)  as numeric (4,0)) FILE_SERIES,  
 cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) FILE_NBR,
   '2017.01' NICE_CLASS_VERSION
,cast(10 as numeric) nice_class_edition
,cast(CLASE as numeric ) nice_class_nbr
,'C' NICE_CLASS_STATUS
,PROD_SERV NICE_CLASS_DESCRIPTION
 FROM VW_ORIGIN_PRODUCTO 
   where  nro_solici is not null and nro_solici!='' and len(replace(nro_solici,' ',''))>6 and isnumeric(left(nro_solici,1))=1 
   and clase is not null and clase !='' ) aaa ;;
 -------------;;  
 
 create view VW_TITUMAR as 
select aaa.FILE_SEQ,aaa.FILE_TYPE,aaa.FILE_SERIES,aaa.FILE_NBR,ind_service,PERSON_NAME,ADDRESS_STREET,NATIONALITY_COUNTRY_CODE,RESIDENCE_COUNTRY_CODE from(
  SELECT cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
 'M' FILE_TYPE,   cast(left(nro_solici,4)  as numeric (4,0)) FILE_SERIES,  
 cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) FILE_NBR,
'1' ind_service
,NOMBRE PERSON_NAME
,case when (direccion is null or direccion='') then 'Falta direccion' else DIRECCION end ADDRESS_STREET
,case when (pais is null or pais='') then 'HN' else PAIS end NATIONALITY_COUNTRY_CODE
,case when(len(LUGAR)>2 and len(pais)=2 ) then pais when len(lugar)=2 then lugar else 'HN' end RESIDENCE_COUNTRY_CODE FROM VW_ORIGIN_titumar ori, VW_ORIGIN_TITULAR titu  where ori.deleted='N' and ori.titular=titu.TITULAR and nro_solici is not null and nro_solici!='' and len(replace(nro_solici,' ',''))>6 and isnumeric(left(nro_solici,1))=1
and len(NRO_SOLICI)>6 ) aaa;;


 
 create view VW_PETIREG as 
 SELECT rowNum,NRO_SOLICI,NUM_SERIE,
cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
'M' FILE_TYPE, 
cast(left(nro_solici,4) as numeric(4,0)) file_ser, 
cast( substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)) as numeric(10,0))  FILE_NBR,
case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else 'M' end doc_seq,
cast(left(num_serie,4) as numeric(4,0)) doc_ser, 
cast(case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4)  end as numeric(10,0)) doc_nbr,
Deleted FROM VW_ORIGIN_petireg 
where NRO_SOLICI is not null and num_serie is not null and isnumeric(left(nro_solici,4))=1

union all SELECT  rowNum,nro_solici,  	documento num_serie, 
	cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) FILE_SEQ,
'M' FILE_TYPE, 
left(nro_solici,4) file_ser, 
cast( substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)) as numeric(10,0))  FILE_NBR,

	case when (ISNUMERIC(documento)=0) then right(documento,1) else 'M' end doc_seq,
	cast(left(documento,4) as numeric(4,0)) doc_ser, 
	cast( substring(documento,5,len(documento)-4) as numeric(10,0)) doc_nbr,
      DELETED 
  FROM vw_origin_movimi where evento in ('MO','US','DC','CO',
  'CP','IP','DS','DO','PU','AP','EO','AI','RR','EL','MA','OT','PE','PP','C1','ST','DP','RM','CE','MS','SP','SC','EM','LE','CL')
  and documento is not null and len(documento)>4 and isnumeric(documento)=1 and deleted='N';;   




    

 create view  VW_PETICI as 
 SELECT  rowNum,
case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else 'M' end doc_seq,
cast(left(num_serie,4) as numeric(4,0)) doc_ser, 
cast(case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4)  end as numeric(10,0)) doc_nbr,
NUM_SERIE,
SOLICITADA,hora,
case when tipo_peti='RN' then 'ESC007' when tipo_peti='FU' then 'ESC067' when tipo_peti='LU' then 'ESC069' when tipo_peti='TR' then 'ESC096' when tipo_peti='CN' then 'ESC057' when tipo_peti='CD' then 'ESC056' when tipo_peti='NU' then 'ESC016' when tipo_peti='CC' then 'ESC013' when tipo_peti='RH' then 'ESC094' else tipo_peti end TIPO_PETI
,STATUS_RES,STAT_DESDE,AGENTE,CALIDAD,qUien,CUAL,NRO_RESOL,case when OBSERVACIO='None' then '' else OBSERVACIO end OBSERVACIO,LEY,cambrep,Deleted 
FROM VW_ORIGIN_peticion where len(num_serie)>=4 and TIPO_PETI in ('RN','FU','LU','TR','CN','CD','NU','CC','RH')
union all SELECT  rowNum,
	case when (ISNUMERIC(documento)=0) then right(documento,1) else 'M' end doc_seq,
	cast(left(documento,4) as numeric(4,0)) doc_ser, 
	cast( substring(documento,5,len(documento)-4) as numeric(10,0)) doc_nbr,
	documento num_serie
      ,F_EVENTO solicitada
	  ,HORA
      ,case when evento='MO' then 'ESC099'
when evento='US' then 'ESC061'
when evento='DC' then 'ESC036'
when evento='CO' then 'ESC012'
when evento='CP' then 'ESC020'
when evento='IP' then 'ESC063'
when evento='DS' then 'ESC006'
when evento='DO' then 'ESC022'
when evento='PU' then 'ESC002'
when evento='AP' then 'ESC003'
when evento='EO' then 'ESC001'
when evento='AI' then 'ESC090'
when evento='RR' then 'ESC037'
when evento='EL' then 'ESC030'
when evento='MA' then 'ESC023'
when evento='OT' then 'ESC066'
when evento='PE' then 'ESC025'
when evento='PP' then 'ESC085'
when evento='C1' then 'ESC043'
when evento='ST' then 'ESC021'
when evento='DP' then 'ESC102'
when evento='RM' then 'ESC104'
when evento='CE' then 'ESC051'
when evento='MS' then 'ESC074'
when evento='SP' then 'ESC027'
when evento='SC' then 'ESC041'
when evento='EM' then 'ESC066'
when evento='LE' then 'ESC106'
when evento='CL' then 'ESC066'
when evento='NU' then 'ESC016'
when evento='CC' then 'ESC013'
when evento='RH' then 'ESC094'
else evento end TIPO_PETI      ,null status_res
	  , null stat_desde
	  ,null agente
	  , null calidad
	  ,null quien
	  ,null cual
	  ,null nro_resol
	  ,COMENTARIO observacio
      ,null ley, null cambrep
      ,DELETED
      
  FROM vw_origin_movimi where evento in ('MO','US','DC','CO',
  'CP','IP','DS','DO','PU','AP','EO','AI','RR','EL','MA','OT','PE','PP','C1','ST','DP','RM','CE','MS','SP','SC','EM','LE','CL')
  and documento is not null and len(documento)>4 and isnumeric(documento)=1 and deleted='N';;  
  
  
    
create  view  VW_ORInoms as SELECT rowNum,NUM_SERIE,
case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else 'M' end doc_seq,
cast(left(num_serie,4) as numeric(4,0)) doc_ser, 
cast(case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4)  end as numeric(10,0)) doc_nbr,
titular,Deleted FROM VW_ORIGIN_orinoms where num_serie is not null;;  



create  view  vw_nuenoms as 
SELECT rowNum,NUM_SERIE,
case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else 'M' end doc_seq,
cast(left(num_serie,4) as numeric(4,0)) doc_ser, 
cast(case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4)  end as numeric(10,0)) doc_nbr,
titular,Deleted FROM VW_ORIGIN_nuenoms where len(num_SERIE)>0;;  


  
  
   
create  view  vw_userdoc as 
with cte as (
select aaa.rowNum
      ,doc_seq
      ,doc_ser
      ,doc_nbr
      ,aaa.NUM_SERIE
	  ,0 as ind_import
	  ,TIPO_PETI userdoc_TYPE
	  ,1 as law_code
      ,convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) FILING_DATE

,convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) RECEPTION_DATE 
      ,case when isnumeric(NRO_RESOL)=1 then 'Nro. resolucion: '+ NRO_RESOL else '' end +          case when len(observacio)>0 then 'observaciones: '+ cast( OBSERVACIO as varchar(max)) else '' end  notes   
      , NOMBRE PERSON_NAME 
,case when (pais is null or pais='') then 'HN' else  PAIS end NATIONALITY_COUNTRY_CODE 
,case when(len( LUGAR)>2 and len(pais)=2 ) then pais when len(lugar)=2 then lugar else 'HN' end 
RESIDENCE_COUNTRY_CODE ,case when (direccion is null or direccion='') then 'Falta direccion' else  DIRECCION end ADDRESS_STREET 
,4 capture_user_id ,getdate() capture_date
, STATUS_RES, 
STAT_DESDE, AGENTE
	  
	  ,aaa.Deleted 
	  ,RN = ROW_NUMBER()OVER(PARTITION BY doc_seq,doc_ser,doc_nbr ORDER BY doc_ser,doc_nbr)  
	  
	  from (
SELECT  rowNum,
case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else 'M' end doc_seq,
cast(left(num_serie,4) as numeric(4,0)) doc_ser, 
cast(case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4)  end as numeric(10,0)) doc_nbr,
NUM_SERIE,
SOLICITADA,hora,
case when tipo_peti='RN' then 'ESC007' when tipo_peti='FU' then 'ESC067' when tipo_peti='LU' then 'ESC069' when tipo_peti='TR' then 'ESC096' when tipo_peti='CN' then 'ESC057' when tipo_peti='CD' then 'ESC056' when tipo_peti='NU' then 'ESC016' when tipo_peti='CC' then 'ESC013' when tipo_peti='RH' then 'ESC094' else tipo_peti end TIPO_PETI,STATUS_RES,STAT_DESDE,AGENTE,CALIDAD,qUien,CUAL,NRO_RESOL,case when OBSERVACIO='None' then '' else OBSERVACIO end OBSERVACIO,LEY,cambrep,Deleted
 FROM vw_origin_peticion where len(num_serie)>=4 and TIPO_PETI in ('RN','FU','LU','TR','CN','CD','NU','CC','RH')
union all SELECT  rowNum,
	case when (ISNUMERIC(documento)=0) then right(documento,1) else 'M' end doc_seq,
	cast(left(documento,4) as numeric(4,0)) doc_ser, 
	cast( substring(documento,5,len(documento)-4) as numeric(10,0)) doc_nbr,
	documento num_serie
      ,F_EVENTO solicitada
	  ,HORA
      ,case when evento='MO' then 'ESC099'
when evento='US' then 'ESC061'
when evento='DC' then 'ESC036'
when evento='CO' then 'ESC012'
when evento='CP' then 'ESC020'
when evento='IP' then 'ESC063'
when evento='DS' then 'ESC006'
when evento='DO' then 'ESC022'
when evento='PU' then 'ESC002'
when evento='AP' then 'ESC003'
when evento='EO' then 'ESC001'
when evento='AI' then 'ESC090'
when evento='RR' then 'ESC037'
when evento='EL' then 'ESC030'
when evento='MA' then 'ESC023'
when evento='OT' then 'ESC066'
when evento='PE' then 'ESC025'
when evento='PP' then 'ESC085'
when evento='C1' then 'ESC043'
when evento='ST' then 'ESC021'
when evento='DP' then 'ESC102'
when evento='RM' then 'ESC104'
when evento='CE' then 'ESC051'
when evento='MS' then 'ESC074'
when evento='SP' then 'ESC027'
when evento='SC' then 'ESC041'
when evento='EM' then 'ESC066'
when evento='LE' then 'ESC106'
when evento='CL' then 'ESC066'
when evento='NU' then 'ESC016'
when evento='CC' then 'ESC013'
when evento='RH' then 'ESC094'
else evento end TIPO_PETI      ,null status_res
	  , null stat_desde
	  ,null agente
	  , null calidad
	  ,null quien
	  ,null cual
	  ,null nro_resol
	  ,COMENTARIO observacio
      ,null ley, null cambrep
      ,DELETED
      
  FROM vw_origin_movimi where evento in ('MO','US','DC','CO',
  'CP','IP','DS','DO','PU','AP','EO','AI','RR','EL','MA','OT','PE','PP','C1','ST','DP','RM','CE','MS','SP','SC','EM','LE','CL')
  and documento is not null and len(documento)>4 and isnumeric(documento)=1 and deleted='N' ) aaa
  left join vw_origin_nuenoms nom 
on aaa.num_serie=nom.NUM_SERIE 
left join  vw_origin_TITULAR titu on  nom.titular=titu.TITULAR   
where aaa.num_serie is not null
  
  
  
  )


  select 
  case when rn=1 then DOC_SEQ else doc_seq +'-'+cast(rn as varchar) end userdoc_seq,
  cast(doc_ser as numeric(4,0)) USERDOC_SERIES,
  cast(doc_nbr as numeric(10,0)) USERDOC_NBR, IND_IMPORT      
, USERDOC_TYPE, LAW_CODE, FILING_DATE, RECEPTION_DATE, NOTES, case when PERSON_NAME is null then 'falta capturar nombre' else person_name end person_name  , NATIONALITY_COUNTRY_CODE, RESIDENCE_COUNTRY_CODE      
, ADDRESS_STREET, CAPTURE_USER_ID, CAPTURE_DATE from cte ;;
 

   




create  view  vw_userdoc_files as 
with cte as (
select aaa.rowNum
      ,doc_seq
      ,doc_ser
      ,doc_nbr
      ,aaa.NUM_SERIE 
	  ,aaa.Deleted 
	  ,RN = ROW_NUMBER()OVER(PARTITION BY doc_seq,doc_ser,doc_nbr ORDER BY doc_ser,doc_nbr)  
	  
	  from (SELECT  rowNum,case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else 'M' end doc_seq, cast(left(num_serie,4) as numeric(4,0)) doc_ser, cast(case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5) else substring(num_serie,5,len(num_serie)-4)  end as numeric(10,0)) doc_nbr, NUM_SERIE,deleted FROM VW_ORIGIN_peticion where len(num_serie)>=4 and TIPO_PETI in ('RN','FU','LU','TR','CN','CD','NU','CC','RH') union all SELECT  rowNum,	case when (ISNUMERIC(documento)=0) then right(documento,1) else 'M' end doc_seq,	cast(left(documento,4) as numeric(4,0)) doc_ser, 	cast( substring(documento,5,len(documento)-4) as numeric(10,0)) doc_nbr,	documento num_serie      ,DELETED     FROM vw_origin_movimi where evento in ('MO','US','DC','CO',  'CP','IP','DS','DO','PU','AP','EO','AI','RR','EL','MA','OT','PE','PP','C1','ST','DP','RM','CE','MS','SP','SC','EM','LE','CL')  and documento is not null and len(documento)>4 and isnumeric(documento)=1 and deleted='N' ) aaa where aaa.num_serie is not null  )  
	select   pp.nro_solici,pp.file_ser,pp.file_seq,pp.file_nbr, cc.num_serie,  case when cc.doc_seq is not null then case  when rn=1 then cc.DOC_SEQ else cc.doc_seq +'-'+cast(rn as varchar) end   else pp.doc_seq end userdoc_seq,  case when cc.doc_ser is not null then cast(cc.doc_ser as numeric(4,0)) else cast(pp.doc_ser as numeric(4,0)) end USERDOC_SERIES,  case when cc.doc_nbr is not null then cast(cc.doc_nbr as numeric(10,0)) else cast(pp.doc_nbr as numeric(10,0)) end USERDOC_NBR   from cte cc right join (SELECT  rowNum      ,NRO_SOLICI      ,file_ser      ,file_seq      ,file_nbr      ,NUM_SERIE      ,doc_ser      ,doc_seq      ,doc_nbr      FROM vw_PETIREG ) pp on cc.num_serie=pp.num_serie where cc.deleted='N'

;;  

--CREATE UNIQUE CLUSTERED INDEX ud_files_ix ON VW_USERDOC_FILES (userdoc_seq,userdoc_series,userdoc_nbr);;


--with cte as (SELECT  rowNum      ,NRO_SOLICI      ,file_ser      ,file_seq      ,file_nbr      ,NUM_SERIE      ,doc_ser      ,doc_seq      ,doc_nbr      ,Deleted	  ,RN = ROW_NUMBER()OVER(PARTITION BY doc_seq,doc_ser,doc_nbrORDER BY doc_ser,doc_nbr)  FROM vw_PETIREG)  select jj.USERDOC_SEQ,jj.USERDOC_SERIES,jj.USERDOC_NBR,file_seq      ,file_TYPE,file_series    ,file_nbr from ( select     case when rn=1 then DOC_SEQ else doc_seq +'-'+cast(rn as varchar) end userdoc_seq       ,  cast(doc_ser as numeric) USERDOC_SERIES       ,cast(doc_nbr as numeric) USERDOC_NBR      ,file_seq	  ,'M' FILE_TYPE	  ,cast(file_ser as numeric)  FILE_SERIES   ,cast(file_nbr as numeric) FILE_NBR from cte where num_serie!='0000000000' and isnumeric(file_ser)=1 ) jj ;;    


create  view  vw_userdoc_owners as 
with cte as (SELECT pet.rowNum,cast(doc_ser as numeric(4,0))  doc_ser, doc_seq       , cast(doc_nbr as numeric(10,0))  doc_nbr     ,pet. NUM_SERIE       , 0 as ind_import , 
TIPO_PETI userdoc_TYPE , 1 as law_code       ,       
convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) FILING_DATE      
,'1' ind_service,  
convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) RECEPTION_DATE 		,
case when isnumeric(NRO_RESOL)=1 then 'Nro. resolucion: '+ NRO_RESOL else '' end +          case when len(observacio)>0 then 'observaciones: '+ cast( OBSERVACIO as varchar(max)) else '' end  notes   , 
NOMBRE PERSON_NAME ,case when (pais is null or pais='') then 'HN' else  PAIS end NATIONALITY_COUNTRY_CODE ,case when(len( LUGAR)>2 and len(pais)=2 ) then pais when len(lugar)=2 then lugar else 'HN' end RESIDENCE_COUNTRY_CODE ,case when (direccion is null or direccion='') then 'Falta direccion' else  DIRECCION end ADDRESS_STREET ,4 capture_user_id ,getdate() capture_date       , STATUS_RES       , STAT_DESDE       , AGENTE       , CALIDAD       , qUien       , CUAL       , NRO_RESOL       , OBSERVACIO       , LEY       , cambrep       ,pet. Deleted 	  ,RN = ROW_NUMBER()OVER(PARTITION BY doc_seq,doc_ser,doc_nbr ORDER BY doc_ser,doc_nbr)   FROM   vw_PETICI pet,   VW_ORIGIN_nuenoms nom ,  VW_ORIGIN_TITULAR titu     where pet.num_serie is not null and pet.num_serie !='' and len(pet.num_serie)>5   and pet.num_serie=nom.NUM_SERIE and nom.titular=titu.TITULAR)   select jj.userdoc_SEQ,jj.userdoc_SERIES,jj.userdoc_NBR,jj.IND_SERVICE      ,jj.PERSON_NAME      ,jj.NATIONALITY_COUNTRY_CODE      ,jj.RESIDENCE_COUNTRY_CODE      ,jj.ADDRESS_STREET from (
select case when rn=1 then DOC_SEQ else doc_seq +'-'+cast(rn as varchar) end userdoc_seq,doc_ser USERDOC_SERIES,doc_nbr USERDOC_NBR      ,IND_SERVICE      ,PERSON_NAME      ,NATIONALITY_COUNTRY_CODE      ,RESIDENCE_COUNTRY_CODE      ,ADDRESS_STREET from  cte ) jj ;;   







create  view  vw_userdoc_reprs as 
with cte as (SELECT pet. rowNum       , cast(doc_ser as numeric(4,0))  doc_ser    , doc_seq       , cast(doc_nbr as numeric(10,0))  doc_nbr     ,pet. NUM_SERIE       , 0 as ind_import , 
TIPO_PETI userdoc_TYPE , 1 as law_code       ,        convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) FILING_DATE       ,'1' ind_service,    
convert(datetime,cast(solicitada as varchar)+
' '+case when substring(HORA,1,2)<24 then substring(HORA,1,2) else '00' end
+':'+case when substring(HORA,3,2)<60 then substring(HORA,3,2) else '59' end
+':'+case  when substring(HORA,5,2)<0 then '00' when substring(HORA,5,2)<60 then substring(HORA,5,2) else '59' end
+'.000',120) RECEPTION_DATE 	
,case when isnumeric(NRO_RESOL)=1 then 'Nro. resolucion: '+ NRO_RESOL else '' end +          case when len(observacio)>0 then 'observaciones: '+ cast( OBSERVACIO as varchar(max)) else '' end  notes   , titu.PERSON_NAME ,titu.NATIONALITY_COUNTRY_CODE ,titu.RESIDENCE_COUNTRY_CODE ,titu.ADDRESS_STREET ,4 capture_user_id ,getdate() capture_date       , STATUS_RES       , STAT_DESDE       , AGENTE       , OBSERVACIO       , LEY       , cambrep       ,pet. Deleted 	  ,RN = ROW_NUMBER()OVER(PARTITION BY doc_seq,doc_ser,doc_nbr ORDER BY doc_ser,doc_nbr)   FROM   vw_PETICI pet,  VW_IMPORT_AGENT_PERSONS titu     where pet.num_serie is not null and pet.num_serie !='' and len(pet.num_serie)>5   and AGENTE IS NOT NULL and agente!='' AND ISNUMERIC(AGENTE)=1 AND   CAST(PET.AGENTE AS NUMERIC)=titu.agent_code)  select jj.userdoc_seq,jj.userdoc_series,jj.userdoc_nbr, jj.IND_SERVICE	  ,jj.REPRESENTATIVE_TYPE      ,jj.PERSON_NAME      ,jj.NATIONALITY_COUNTRY_CODE      ,jj.RESIDENCE_COUNTRY_CODE      ,jj.ADDRESS_STREET from (select case when rn=1 then DOC_SEQ else doc_seq +'-'+cast(rn as varchar) end userdoc_seq      ,doc_ser  USERDOC_SERIES      ,doc_nbr  USERDOC_NBR      ,IND_SERVICE	  ,'AG' REPRESENTATIVE_TYPE      ,PERSON_NAME      ,NATIONALITY_COUNTRY_CODE      ,RESIDENCE_COUNTRY_CODE      ,ADDRESS_STREET from  cte ) jj inner join vw_import_userdoc mm on
   jj.USERDOC_SEQ=mm.USERDOC_SEQ and jj.USERDOC_SERIES=mm.USERDOC_SERIES and jj.userdoc_NBR = mm.userdoc_NBR;;   
   
   

create  view  VW_MOVIMI_USERDOC as 


select aaa.rowNum,aaa.userdoc_seq,aaa.userdoc_series,aaa.userdoc_nbr,N_ENTRADA,ACTION_DATE,ACTION_TYPE,RESPONSIBLE_USER,
ACTION_NOTES1,ACTION_NOTES2,ACTION_USER,ACTION_CATEGORY from (
select 
movi.rowNum,
case when (ISNUMERIC(movi.N_ENTRADA)=0) then right(movi.N_ENTRADA,1) else 'M' end userdoc_seq
,convert(numeric,case when isnumeric(left(movi.N_ENTRADA,4))=1 then left(movi.N_ENTRADA,4) else '1' end) userdoc_series
,cast(case when (ISNUMERIC(movi.N_ENTRADA)=0) then substring(movi.N_ENTRADA,5,len(movi.N_ENTRADA)-5) else substring(movi.N_ENTRADA,5,len(movi.N_ENTRADA)-4) end as numeric )  userdoc_nbr , 
movi.N_ENTRADA,
evento ACTION_TYPE, 
action_date_ipas ACTION_DATE
,case when us.rowNum is not null then us.rowNum else null end RESPONSIBLE_USER,
case when COMENTARIO='None' then '' else COMENTARIO end ACTION_NOTES1,
 case when documento is not null and documento !='' then 'Refiere a documento: '+ DOCUMENTO else '' end ACTION_NOTES2
 ,case when us.rowNum is not null then us.rowNum else '4' end ACTION_USER
 ,'N' ACTION_CATEGORY 

 FROM vw_origin_movimi movi 
 left join vw_origin_users us on movi.USUARIO=us.CODE_USER  

 where   ISNUMERIC(n_entrada)=1 and
  action_date_ipas is not null and movi.N_ENTRADA is not null and movi.evento is not null ) aaa


  
 inner join vw_userdoc ud on aaa.userdoc_seq = ud.userdoc_seq
 and aaa.userdoc_series=ud.USERDOC_SERIES and aaa.userdoc_nbr=ud.USERDOC_NBR  ;;  


;;
With cte as (select oo.*,rn=row_number() over(partition by oo.userdoc_type,FILING_DATE,RECEPTION_DATE order by oo.userdoc_type,FILING_DATE,RECEPTION_DATE) from VW_IMPORT_USERDOC oo) delete from cte where rn>1 ;;

 
  

 

