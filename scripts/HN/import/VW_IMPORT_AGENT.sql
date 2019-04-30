--FIELDS  AGENT_CODE,IND_IMPORT,AGENT_NAME,IND_INACTIVE;;
--QUERY 
select cast(agente as integer) AGENT_CODE,0 IND_IMPORT,
case when nombre is not null then nombre else 'falta capturar nombre de agente:' + agente end AGENT_NAME, IND_INACTIVE 
from (select  agente, nombre,IND_INACTIVE ,RN = ROW_NUMBER()OVER(PARTITION BY agente ORDER BY agente) 
from (SELECT  distinct  agente, nombre,Case when (DELETED='S') 
then 1 else 0 end ind_inactive FROM vw_origin_agentes) ff where agente!=0  ) ll where RN=1 and agente is not null;;