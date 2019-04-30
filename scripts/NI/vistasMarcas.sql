create view imp_agent as 
  
  select 
  cast([AGENTE] as numeric) agent_code,
  0 IND_IMPORT,
  [NOMBRE] agent_name,
  '' notes,
  case when deleted='S' then 1 else 0 end ind_inactive
      
  FROM [vw_origin_agentes];;
  
  create view imp_agent_persons as 
  
  select 
  cast([AGENTE] as numeric) agent_code,
    Abrevia +' ' +NOMBRE PERSON_NAME,
        
      
       'NI' [NATIONALITY_COUNTRY_CODE]
      , 0 [IND_COMPANY]
      ,'AGE' [LEGAL_NATURE]
      
      ,'NI' [RESIDENCE_COUNTRY_CODE]
      
      ,direccion [ADDRESS_STREET]
      
      
      ,sexo [PERSON_GROUP_CODE]
  FROM [NI1].[dbo].[vw_origin_agentes];;
  
  
  
  --------------------------
  
create view imp_marcas as 
SELECT case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr
	  
	  
      ,'M' as application_type
	  ,case when [TIPO_MARCA]is not null or tipo_marca !='' then TIPO_MARCA else 'M' end as application_subtype
      ,1 law_code
      ,cast(case when (solicitada is null or solicitada ='') then dateadd(year,-10,cast(registrada as date)) 
		when isdate(solicitada)=0 then cast(substring(nro_solici,1,4)+'-'+substring(solicitada,6,5) as date)
	  else cast(solicitada as date) end as datetime) filing_date
	  ,cast(case when (solicitada is null or solicitada ='') then dateadd(year,-10,cast(registrada as date)) 
		when isdate(solicitada)=0 then cast(substring(nro_solici,1,4)+'-'+substring(solicitada,6,5) as date)
	  else cast(solicitada as date) end as datetime) reception_date
	  
	  ,cast(case when PUBLICADA is null or publicada ='' then 
	  
	  case when registrada !='' then
	  case when  isdate(registrada)=0 then substring(nro_solici,1,4)+'-'+substring(registrada,6,5) else registrada end
	  else null end
		else 
	  case when isdate(publicada)=0 then substring(nro_solici,1,4)+'-'+substring(publicada,6,5) else publicada end
	   end as datetime )publication_date
	  ,case when agente !='' then 'Agente: '+agente else '' end publication_notes
	  ,case when registrada != '' and registro !='' then 1 else 0 end ind_registered
	  ,case when registrada != '' then 
		case when isnumeric(left(right(replace(replace(registro,'/',''),' ',''),2),1))=0 then right(replace(replace(registro,'/',''),' ',''),2) 
		when isnumeric(right(replace(replace(registro,'/',''),' ',''),1))=0 then right(replace(replace(registro,'/',''),' ',''),1) else '1' end
	  	   else '' end REGISTRATION_TYPE
      ,cast(case when registrada!='' then 
	  case when len(replace(registro,' ',''))>8 then substring(replace(registro,' ',''),1,4) else
	  substring(registrada,1,4) end else null end as numeric) REGISTRATION_SERIES

	  ,cast(replace(replace(case when  registro is not null and registro !='' and  replace(replace(registro,'/',''),' ','')!='0' then 
	  case  when isnumeric(left(right(replace(replace(registro,'/',''),' ',''),2),1))=0 then substring(replace(replace(registro,'/',''),' ',''),1,len(replace(replace(registro,'/',''),' ',''))-2)
	  when isnumeric(right(replace(replace(registro,'/',''),' ',''),1))=0 then substring(replace(replace(registro,'/',''),' ',''),1,len(replace(replace(registro,'/',''),' ',''))-1) else 
	  case when len(replace(replace(registro,'/',''),' ',''))>8 then substring(replace(replace(registro,'/',''),' ',''),5,len(replace(replace(registro,'/',''),' ',''))-4) else
	  replace(replace(replace(registro,'S','5'),'/',''),' ','') end end else
	  	   null end,'.',''),',','') as numeric)  REGISTRATION_NBR
      
	  
	  ,null REGISTRATION_DUP
      ,cast(case when registrada !='' then case when isdate(registrada)=0 then 
	  case when cast(substring(registrada,3,2) as numeric)>20 then '19'+ substring(registrada,3,len(registrada)-2)
	     when cast(substring(registrada,3,2) as numeric)< 20 then '20'+ substring(registrada,3,len(registrada)-2) end
	   else registrada  end else 
	   null end  as datetime) REGISTRATION_DATE
      ,dateadd(year,-10,cast(case when expira !='' then case when isdate(expira)=0 then 
	  case when cast(substring(expira,3,2) as numeric)>20 then '19'+ substring(expira,3,len(expira)-2)
	     when cast(substring(expira,3,2) as numeric)< 20 then '20'+ substring(expira,3,len(expira)-2) end
	   else expira  end else 
	   null end as datetime)) ENTITLEMENT_DATE
      ,cast(case when expira !='' then case when isdate(expira)=0 then 
	  case when cast(substring(expira,3,2) as numeric)>20 then '19'+ substring(expira,3,len(expira)-2)
	     when cast(substring(expira,3,2) as numeric)< 20 then '20'+ substring(expira,3,len(expira)-2) end
	   else expira  end else 
	   null end as datetime) EXPIRATION_DATE
	   ,case when signo is null or signo ='' then 'D'
			when signo ='G' then 'M'
			when signo ='E' then 'F' else signo end sign_type
	  
	  
	  ,case when signo='F' and nom_marca='DISEÑO' then '' else [NOM_MARCA] end mark_name
      ,case when reserva !='' then reserva else null end disclaimer
      

	  ,case when rtomo !='' then 'Archivada con N° de Tomo: '+rtomo else '' end + 
	  case when rfolio !='' then ' y con N° de Folio: '+rfolio else '' end[NOTES]
      ,4 CAPTURE_USER_ID
      ,getdate() CAPTURE_DATE
   
  FROM [NI1].[dbo].[vw_origin_Marca] where NRO_SOLICI is not null and nro_solici!=''
     and nro_solici not like '%[ -]%' and deleted='N';;
	 
	 -----------------------------------
create view imp_marcas_actions as 
SELECT case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr

	  --,NRO_SOLICI
      ,
	  cast(case 
	  when substring(f_evento,1,4)<1000 then '20'+substring([F_EVENTO],3,len(f_evento)-2) 
	  when substring(f_evento,1,4)=1028 then '1978'+substring([F_EVENTO],5,len(f_evento)-2)
	  when isdate(f_evento)=0 and substring(f_evento,1,4)<1900 then substring(nro_solici,1,4) +substring([F_EVENTO],5,len(f_evento)-2)
	  
	  else F_EVENTO end as datetime) action_date
	   


      ,'NI'+cast([EVENTO] as varchar) action_type
		,'' notes1
	  ,'' notes2
	  ,'' notes3
      ,'' notes4
      ,'' notes5
	  
	  
      ,case when uu.rowNum=4 then '60' else uu.rowNum end action_user

		,'N' [ACTION_CATEGORY]
		,'' [SPECIAL_FINAL_STATUS]
  FROM [NI1].[dbo].[vw_origin_movimimar] mm,
  [NI1].[dbo].[vw_origin_users] uu
  
  where nro_solici is not null and NRO_SOLICI!='' and mm.DELETED='N'
  and mm.usuario=uu.CODE_USER and f_evento is not null and f_evento!='' --and isdate(f_evento)=0 ;
  union all
    select 
  case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr
	  ,cast(case 
	   when substring(STAT_DESDE,1,4)<100 then '20'+substring(STAT_DESDE,3,len(STAT_DESDE)-2)
	  when  substring(STAT_DESDE,1,4) < 200 then '19'+substring(STAT_DESDE,3,len(STAT_DESDE)-2)
	  when  substring(STAT_DESDE,1,4) < 900 then '20'+substring(STAT_DESDE,3,len(STAT_DESDE)-2)
	  when  substring(STAT_DESDE,1,4) < 2000 then '19'+substring(STAT_DESDE,3,len(STAT_DESDE)-2)
	  else stat_desde end as datetime) action_date
	  ,'WIPO' action_type
	  ,'' notes1
	  ,'' notes2
	  ,'' notes3
      ,'' notes4
      ,'' notes5
	  ,4 action_user
	  ,'S' action_category
	  ,status [SPECIAL_FINAL_STATUS]

  FROM [NI1].[dbo].[vw_origin_Marca]
where nro_solici is not null and NRO_SOLICI!='' and DELETED='N' and stat_desde is not null and STAT_DESDE!=''
  and isdate(STAT_DESDE)=0
  union all
  SELECT  case when isnumeric(left(right(mm.nro_solici,2),1))=0 then right(mm.nro_solici,2) 
		when isnumeric(right(mm.nro_solici,1))=0 then right(mm.nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(mm.nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(mm.nro_solici,2),1))=0 then substring(mm.nro_solici,5,len(mm.nro_solici)-6)
	  when isnumeric(right(mm.nro_solici,1))=0 then substring(mm.nro_solici,5,len(mm.nro_solici)-5) else substring(mm.nro_solici,5,len(mm.nro_solici)-4) end as numeric) file_nbr
	  ,cast([FECHAI] as datetime) action_date
	  ,'NINN' action_type
	  ,'' notes1
	  ,[VISTO] notes2
	  ,[CONSIDERAR] notes3
      ,[PORTANTO] notes4
      ,'' notes5
      ,case when uu.rowNum=4 then '60' else uu.rowNum end action_user
      ,'N' [ACTION_CATEGORY]
		,'' [SPECIAL_FINAL_STATUS]


      
  FROM [NI1].[dbo].[vw_origin_examen] cc,vw_origin_Marca mm,[NI1].[dbo].[vw_origin_users] uu where 
  cc.NRO_SOLICI is not null and cc.NRO_SOLICI!='' and
  cast(cc.NRO_SOLICI as varchar)=cast(mm.NRO_SOLICI as varchar) and mm.deleted='N' and cc.USUARIO=uu.CODE_USER
  union all
  SELECT  case when isnumeric(left(right(mm.nro_solici,2),1))=0 then right(mm.nro_solici,2) 
		when isnumeric(right(mm.nro_solici,1))=0 then right(mm.nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(mm.nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(mm.nro_solici,2),1))=0 then substring(mm.nro_solici,5,len(mm.nro_solici)-6)
	  when isnumeric(right(mm.nro_solici,1))=0 then substring(mm.nro_solici,5,len(mm.nro_solici)-5) else substring(mm.nro_solici,5,len(mm.nro_solici)-4) end as numeric) file_nbr
	  ,cast([FECHAI] as datetime) action_date
	  ,'NIRC' action_type
	  ,'' notes1
	  ,[VISTO] notes2
	  ,[CONSIDERAR] notes3
      ,[PORTANTO] notes4
      ,'' notes5
      ,case when uu.rowNum=4 then '60' else uu.rowNum end action_user
      ,'N' [ACTION_CATEGORY]
		,'' [SPECIAL_FINAL_STATUS]


      
  FROM [NI1].[dbo].[vw_origin_resoluciones] cc,vw_origin_Marca mm,[NI1].[dbo].[vw_origin_users] uu where 
  cc.NRO_SOLICI is not null and cc.NRO_SOLICI!='' and
  cast(cc.NRO_SOLICI as varchar)=cast(mm.NRO_SOLICI as varchar) and mm.deleted='N' and cc.USUARIO=uu.CODE_USER
  
  ;;
--------------------------------------  
	create view imp_mark_nice as
  SELECT case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr
	  ,'0' nice_class_version
	  ,'11' nice_class_edition
	  ,cast(clase  as numeric) nice_class_nbr
	  ,'A' [NICE_CLASS_STATUS]
	  ,PROD_SERV nice_class_description
  FROM [NI1].[dbo].[vw_origin_producto]
  where NRO_SOLICI is not null and NRO_SOLICI !=''  and clase is not null and clase!='';;
-------------------------------------------  

/****** Script for SelectTopNRows command from SSMS  ******/
create view imp_marc_owners as

SELECT 
      case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr
	  ,1 ind_service
	  ,[NOMBRE] person_name
	  ,pais NATIONALITY_COUNTRY_CODE
	  ,0 ind_company
	  ,pais RESIDENCE_COUNTRY_CODE
      ,[DIRECCION]
      ,[PAIS]

      ,case
when departamen='MA' then 'Managua'
when departamen='LE' then 'León'
when departamen='GR' then 'Granada'
when departamen='CH' then 'Chinandega'
when departamen='BO' then 'Boaco'
when departamen='CZ' then 'Carazo'
when departamen='CT' then 'Chontales'
when departamen='ES' then 'Estelí'
when departamen='JI' then 'Jinotega'
when departamen='MZ' then 'Madriz'
when departamen='MY' then 'Masaya'
when departamen='MT' then 'Matagalpa'
when departamen='NS' then 'Nueva Segovia (Ocotal)'
when departamen='RI' then 'Rivas'
when departamen='RS' then 'Río San Juan (San Carlos)'
when departamen='PC' then 'Región Autónoma del Atlántico Norte (Puerto Cabezas)'
when departamen='BF' then 'Región Autónoma del Atlántico Sur (Bluefields)'
when departamen='R0' then 'Región de Piemonte (provincia de Cuneo)'
end [CITY_NAME]
,case
when municipio='A1' then 'San Francisco Libre'
when municipio='A2' then 'Tipitapa'
when municipio='A3' then 'Managua'
when municipio='A4' then 'San Rafael del Sur'
when municipio='A5' then 'Villa Carlos Fonseca'
when municipio='A6' then 'El Crucero'
when municipio='A7' then 'Mateare'
when municipio='A8' then 'Ciudad Sandino'
when municipio='A9' then 'Ticuantepe'
when municipio='A0' then 'Achuapa'
when municipio='AA' then 'El Sauce'
when municipio='AB' then 'Santa Rosa del Peñón'
when municipio='AC' then 'El Jicaral'
when municipio='AD' then 'Larreynaga-Malpaisillo'
when municipio='AE' then 'Telica'
when municipio='AF' then 'Quezalguaque'
when municipio='AG' then 'León'
when municipio='AH' then 'La Paz Centro'
when municipio='AI' then 'Nagarote'
when municipio='AJ' then 'Granada'
when municipio='AK' then 'Diriomo'
when municipio='AL' then 'Diriá'
when municipio='AN' then 'Nandaime'
when municipio='AM' then 'El Viejo'
when municipio='AO' then 'Puerto Morazán'
when municipio='AP' then 'Somotillo'
when municipio='AQ' then 'Santo Tomás del Norte'
when municipio='AR' then 'Cinco Pinos'
when municipio='AS' then 'San Pedro del Norte'
when municipio='AT' then 'San Francisco del Norte'
when municipio='AV' then 'Corinto'
when municipio='AW' then 'Villanueva'
when municipio='AY' then 'Chinandega'
when municipio='AZ' then 'Posoltega'
when municipio='B1' then 'Chichigalpa'
when municipio='B2' then 'El Realejo'
when municipio='B3' then 'Teustepe'
when municipio='B4' then 'San José de los Remates'
when municipio='B5' then 'Santa Lucía'
when municipio='B6' then 'Boaco'
when municipio='B7' then 'Camoapa'
when municipio='B8' then 'San Lorenzo'
when municipio='B9' then 'San Marcos'
when municipio='B0' then 'Diriamba'
when municipio='BA' then 'Dolores'
when municipio='BB' then 'Jinotepe'
when municipio='BC' then 'El Rosario'
when municipio='BD' then 'La Paz'
when municipio='BE' then 'Santa Teresa'
when municipio='BF' then 'La Conquista'
when municipio='BG' then 'Comalapa'
when municipio='BH' then 'Juigalpa'
when municipio='BI' then 'La Libertad'
when municipio='BJ' then 'Santo Domingo'
when municipio='BK' then 'San Pedro de Lovago'
when municipio='BL' then 'Santo Tomás'
when municipio='BN' then 'El Rama'
when municipio='BM' then 'Villa Sandino'
when municipio='BO' then 'Acoyapa'
when municipio='BP' then 'Cuapa'
when municipio='BQ' then 'El Coral'
when municipio='BR' then 'Mueye de los Bueyes'
when municipio='BS' then 'Nueva Guinea'
when municipio='BT' then 'El Ayote'
when municipio='BU' then 'Pueblo Nuevo'
when municipio='BV' then 'Condega'
when municipio='BW' then 'San Juan de Limay'
when municipio='BY' then 'Estelí'
when municipio='BZ' then 'La Trinidad'
when municipio='C1' then 'San Nicolás'
when municipio='C2' then 'La Concordia'
when municipio='C3' then 'San Sebastián de Yalí'
when municipio='C4' then 'San Rafael del Norte'
when municipio='C5' then 'Jinotega'
when municipio='C6' then 'Santa María de Pantasma'
when municipio='C7' then 'Cuá Bocay'
when municipio='C8' then 'Wiwilí'
when municipio='C9' then 'San José de Cusmapa'
when municipio='C0' then 'Las Sabanas'
when municipio='CA' then 'San Lucas'
when municipio='CB' then 'Somoto'
when municipio='CC' then 'Totogalpa'
when municipio='CD' then 'Yalaguina'
when municipio='CE' then 'Palacaguina'
when municipio='CF' then 'Telpaneca'
when municipio='CG' then 'San Juan de Río Coco'
when municipio='CH' then 'Tisma'
when municipio='CI' then 'Masaya'
when municipio='CJ' then 'Nindirí'
when municipio='CK' then 'La Concepción'
when municipio='CL' then 'Masatepe'
when municipio='CN' then 'Nandasmo'
when municipio='CM' then 'Niquinohomo'
when municipio='CO' then 'Catarina'
when municipio='CP' then 'San Juan de Oriente'
when municipio='CQ' then 'Matagalpa'
when municipio='CR' then 'Sébaco'
when municipio='CS' then 'San Isidro'
when municipio='CT' then 'Ciudad Darío'
when municipio='CU' then 'Terrabona'
when municipio='CV' then 'San Dionisio'
when municipio='CW' then 'Esquipulas'
when municipio='CY' then 'Muy-Muy'
when municipio='CZ' then 'San Ramón'
when municipio='D1' then 'Matiguás'
when municipio='D2' then 'Río Blanco'
when municipio='D3' then 'Rancho Grande'
when municipio='D4' then 'Tuma La Dalia'
when municipio='D5' then 'Santa María'
when municipio='D6' then 'Macuelizo'
when municipio='D7' then 'Dipilto'
when municipio='D8' then 'Ocotal'
when municipio='D9' then 'Mozonte'
when municipio='D0' then 'San Fernando'
when municipio='DA' then 'Jalapa'
when municipio='DB' then 'Murra'
when municipio='DC' then 'Wiwilí'
when municipio='DE' then 'El Jícaro'
when municipio='DF' then 'Ciudad Antigua'
when municipio='DG' then 'Quilali'
when municipio='DH' then 'Tola'
when municipio='DI' then 'Belén'
when municipio='DJ' then 'Potosí'
when municipio='DK' then 'Buenos Aires'
when municipio='DL' then 'San Jorge'
when municipio='DN' then 'Rivas'
when municipio='DM' then 'San Juan del Sur'
when municipio='DO' then 'Cardenas'
when municipio='DP' then 'Moyogalpa'
when municipio='DQ' then 'Altagracia'
when municipio='DR' then 'Morrito'
when municipio='DS' then 'El Almendro'
when municipio='DT' then 'San Miguelito'
when municipio='DU' then 'San Carlos'
when municipio='DV' then 'El Castillo'
when municipio='DW' then 'San Juan del Norte'
when municipio='DY' then 'Waslala'
when municipio='DZ' then 'Waspan'
when municipio='E1' then 'Puerto Cabezas'
when municipio='E2' then 'Prinzapolka'
when municipio='E3' then 'Bonanza'
when municipio='E4' then 'Siuna'
when municipio='E5' then 'Rosita'
when municipio='E6' then 'Bocana de Paiwas'
when municipio='E7' then 'La Cruz de Río Grande'
when municipio='E8' then 'Kukra Hill'
when municipio='E9' then 'Laguna de Perlas'
when municipio='E0' then 'Bluefields'
when municipio='EA' then 'Corn Island'
when municipio='EB' then 'El Tortuguero'
when municipio='EC' then 'Desembocadura Río Grande'
when municipio='R0' then 'Región de Piemonte (provincia de Cuneo)' end address_zone
     
      
  FROM [NI1].[dbo].[vw_origin_titumar] mm, [NI1].[dbo].[vw_origin_titular] tt
  where NRO_SOLICI is not null and NRO_SOLICI!='' and mm.deleted='N' and tt.DELETED='N'
  and mm.titular=tt.TITULAR ;;
  ----------------------------------
  /****** Script for SelectTopNRows command from SSMS  ******/
create view imp_marc_priori as
SELECT case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr
      
      ,[PAIS] country_code
	  ,[NUMERO] application_id
      ,cast([FECHA] as datetime) priority_date
      
      ,[OBSERVACIO] notes

  FROM [NI1].[dbo].[vw_origin_priorida]
  where NRO_SOLICI is not null and NRO_SOLICI !='' and deleted ='N' and fecha is not null and fecha !='';;

  
  --------------------------------------------------------
  create view imp_marc_reprs as
	   select 
	   case when isnumeric(left(right(nro_solici,2),1))=0 then right(nro_solici,2) 
		when isnumeric(right(nro_solici,1))=0 then right(nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(nro_solici,2),1))=0 then substring(nro_solici,5,len(nro_solici)-6)
	  when isnumeric(right(nro_solici,1))=0 then substring(nro_solici,5,len(nro_solici)-5) else substring(nro_solici,5,len(nro_solici)-4) end as numeric) file_nbr

  
    
        ,1 [IND_SERVICE]
      ,'AGE' [REPRESENTATIVE_TYPE]
  ,cast(aa.AGENTE as numeric) agent_code
  ,Abrevia +' ' +NOMBRE PERSON_NAME

       ,'NI' [NATIONALITY_COUNTRY_CODE]
      , 0 [IND_COMPANY]
      ,'AGE' [LEGAL_NATURE]
      
      ,'NI' [RESIDENCE_COUNTRY_CODE]
      
      ,direccion [ADDRESS_STREET]
      
      
      ,sexo [PERSON_GROUP_CODE]
  FROM [NI1].[dbo].[vw_origin_agentes] aa , [NI1].[dbo].[vw_origin_Marca] mm where
  aa.AGENTE=mm.AGENTE and mm.NRO_SOLICI is not null and mm.NRO_SOLICI !='' and mm.agente is not null and mm.agente!=''
  ;;
  
  ---------------------------------------------
  
  create view imp_marc_viena as
 select 
	   case when isnumeric(left(right(mm.nro_solici,2),1))=0 then right(mm.nro_solici,2) 
		when isnumeric(right(mm.nro_solici,1))=0 then right(mm.nro_solici,1) else '1' end as FILE_SEQ
	  ,'M' as FILE_TYPE
	  ,cast(substring(mm.nro_solici,1,4) as numeric) file_series
	  ,cast(case 
	  when isnumeric(left(right(mm.nro_solici,2),1))=0 then substring(mm.nro_solici,5,len(mm.nro_solici)-6)
	  when isnumeric(right(mm.nro_solici,1))=0 then substring(mm.nro_solici,5,len(mm.nro_solici)-5) else substring(mm.nro_solici,5,len(mm.nro_solici)-4) end as numeric) file_nbr

  

 ,cast(0 as numeric)  VIENNA_EDITION_CODE,
 cast(substring(replace(replace(ccv,' ',''),'.',''),1,2) as numeric) VIENNA_CATEGORY   ,
 cast(case when substring(replace(replace(ccv,' ',''),'.',''),3,2) is null or
 substring(replace(replace(ccv,' ',''),'.',''),3,2)='' then 1 else substring(replace(replace(ccv,' ',''),'.',''),3,2) end as numeric)  VIENNA_DIVISION  
 ,cast(case when isnumeric(substring(replace(replace(ccv,' ',''),'.',''),5,2))=0 then null else substring(replace(replace(ccv,' ',''),'.',''),5,2) end as numeric)   VIENNA_SECTION 
 FROM vw_origin_ccvs cc, vw_origin_Marca mm where cc.NRO_SOLICI=mm.NRO_SOLICI AND CCV is not null AND CCV !='';;
 -------------