--FIELDS AGENT_CODE,PERSON_NAME,NATIONALITY_COUNTRY_CODE,IND_COMPANY,RESIDENCE_COUNTRY_CODE,ADDRESS_STREET;;
--QUERY
 select cast(replace(agente,' ','') as integer) AGENT_CODE,nombre PERSON_NAME,'HN' NATIONALITY_COUNTRY_CODE,0 IND_COMPANY,
 'HN' RESIDENCE_COUNTRY_CODE,direccion ADDRESS_STREET from (select  agente,case when nombre is null then 'falta capturar nombre de agente: '+agente else nombre end nombre,direccion,pais ,RN = ROW_NUMBER()OVER(PARTITION BY agente ORDER BY agente)
 from (SELECT   agente     , nombre      ,Case when (direccion is null) then 'DIRECCION A CAPTURAR' else direccion end direccion,'HN' as pais FROM dbo.vw_origin_agentes) ff where agente!=0  )
 ll where RN=1;;
