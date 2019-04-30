
create view vw_prio as SELECT  rowNum       ,left(nro_solici,4) file_ser	  ,right(nro_solici,1) file_seq	  ,substring(nro_solici,5,len(nro_solici)-5) file_nbr	  ,NRO_SOLICI      ,FECHA       ,NUMERO       ,PAIS       ,TIPO       ,Deleted   FROM VW_ORIGIN_priorida   where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0  union all  SELECT  rowNum       ,left(nro_solici,4) file_SER	  ,'1' file_SEQ	  ,substring(nro_solici,5,len(nro_solici)-4) file_NBR	  ,NRO_SOLICI      ,FECHA       ,NUMERO       ,PAIS       ,TIPO       ,Deleted   FROM VW_ORIGIN_priorida   where ISNUMERIC(nro_solici)=1 and len(nro_solici)>0;;

create view VW_PRODUCTO  as SELECT rowNum 	,left(nro_solici,4) file_SER	,right(nro_solici,1) file_SEQ	,substring(nro_solici,5,len(nro_solici)-5) file_NBR      ,NRO_SOLICI       ,CLASE       ,PROD_SERV       ,CL_TYPE       ,Deleted   FROM VW_ORIGIN_PRODUCTO   where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0  union all  SELECT  rowNum 	,left(nro_solici,4) file_Ser	,'1' file_SEQ	,substring(nro_solici,5,len(nro_solici)-4) file_NBR      ,NRO_SOLICI       ,CLASE       ,PROD_SERV       ,CL_TYPE       ,Deleted   FROM VW_ORIGIN_producto   where ISNUMERIC(nro_solici)=1 and len(nro_solici)>5;;

create view VW_TITUMAR  as SELECT rowNum       ,left(nro_solici,4) file_SER	  ,right(nro_solici,1) file_SEQ	  ,substring(nro_solici,5,len(nro_solici)-5) file_NBR	  ,NRO_SOLICI       ,titular       ,Deleted   FROM VW_ORIGIN_TITUMAR   where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0  union all  SELECT  rowNum       ,left(nro_solici,4) file_SER	  ,'1' file_SEQ	  ,substring(nro_solici,5,len(nro_solici)-4) file_NBR	  ,NRO_SOLICI       ,titular       ,Deleted   FROM VW_ORIGIN_TITUMAR   where ISNUMERIC(nro_solici)=1 and len(nro_solici)>5;;

create view VW_CCVS  as SELECT rowNum       ,CCV 	  ,left(nro_solici,4) file_SER,	  right(nro_solici,1) file_Seq	  ,substring(cast(nro_solici as varchar),5,len(nro_solici)-5) file_NBR      ,NRO_SOLICI       ,Deleted   FROM VW_ORIGIN_CCVS    where ISNUMERIC(nro_solici)=0 and len(nro_solici)>0 and NRO_SOLICI is not null  union all  SELECT  rowNum       ,CCV 	  ,left(nro_solici,4) file_SER, '1' file_SEQ	  ,substring(cast(nro_solici as varchar),5,len(nro_solici)-4) file_NBR      ,NRO_SOLICI       ,Deleted   FROM VW_ORIGIN_ccvs    where ISNUMERIC(nro_solici)=1 and len(nro_solici)>0;;

create view VW_MARCAS  as SELECT  rowNum 	,left(NRO_SOLICI,4) file_SER,	right(NRO_SOLICI,1) file_SEQ,	substring(NRO_SOLICI,5,len(NRO_SOLICI)-5) file_NBR      ,NRO_SOLICI       ,SOLICITADA       ,TIPO_MARCA       ,SIGNO       ,NOM_MARCA       ,REGISTRO       ,REGISTRADA       ,RENUEVA       ,EXPIRA       ,AGENTE       ,status       ,STAT_DESDE       ,PUBLICADA       ,DIARIO       ,LIMITACION       ,HORA       ,RTOMO       ,RFOLIO       ,RESERVA       ,NRO_PODER       ,modifica       ,qUien       ,CALIDAD       ,CLASE       ,MODIFICADO       ,ANUALIDAD       ,NRO_RESOL       ,LEY       ,CLASES_TXT       ,Deleted   FROM VW_ORIGIN_marca    where ISNUMERIC(NRO_SOLICI)=0 and len(NRO_SOLICI)>0  union all  SELECT  rowNum 	,left(NRO_SOLICI,4) file_SER,	'1' file_SEQ,	substring(NRO_SOLICI,5,len(NRO_SOLICI)-4) file_NBR      ,NRO_SOLICI       ,SOLICITADA       ,TIPO_MARCA       ,SIGNO       ,NOM_MARCA       ,REGISTRO       ,REGISTRADA       ,RENUEVA       ,EXPIRA       ,AGENTE       ,status       ,STAT_DESDE       ,PUBLICADA       ,DIARIO       ,LIMITACION       ,HORA       ,RTOMO       ,RFOLIO       ,RESERVA       ,NRO_PODER       ,modifica       ,qUien       ,CALIDAD       ,CLASE       ,MODIFICADO       ,ANUALIDAD       ,NRO_RESOL       ,LEY       ,CLASES_TXT       ,Deleted   FROM VW_ORIGIN_marca    where ISNUMERIC(NRO_SOLICI)=1 and len(NRO_SOLICI)>5;;

create view VW_PETIREG  as SELECT rowNum ,NRO_SOLICI ,left(nro_solici,4) file_ser, case when (ISNUMERIC(NRO_SOLICI)=0) then right(nro_solici,1) else '1' end file_seq, case when (ISNUMERIC(NRO_SOLICI)=0) then substring(nro_solici,5,len(nro_solici)-5)  else substring(nro_solici,5,len(nro_solici)-4) end file_nbr        ,NUM_SERIE 	  ,left(num_serie,4) doc_ser, case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else '1' end doc_seq, case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5)  else substring(num_serie,5,len(num_serie)-4) end doc_nbr       ,Deleted   FROM VW_ORIGIN_petireg   where len(NRO_SOLICI)>0 and len(num_serie)>0;;

create view VW_PETICI  as SELECT  rowNum       	  ,left(NUM_SERIE ,4) doc_ser, case when (ISNUMERIC(NUM_SERIE )=0) then right(NUM_SERIE ,1) else '1' end doc_seq, case when (ISNUMERIC(NUM_SERIE )=0) then substring(NUM_SERIE ,5,len(NUM_SERIE )-5)  else substring(NUM_SERIE ,5,len(NUM_SERIE )-4) end doc_nbr ,NUM_SERIE       ,SOLICITADA       ,hora       ,TIPO_PETI       ,STATUS_RES       ,STAT_DESDE       ,AGENTE       ,CALIDAD       ,qUien       ,CUAL       ,NRO_RESOL       ,OBSERVACIO       ,LEY       ,cambrep       ,Deleted   FROM VW_ORIGIN_peticion   where len(num_serie)>0;;

create view VW_MOVIMI  as SELECT rowNum ,left(nro_solici,4) file_ser, case when (ISNUMERIC(NRO_SOLICI)=0) then right(nro_solici,1) else '1' end file_seq, case when (ISNUMERIC(NRO_SOLICI)=0) then substring(nro_solici,5,len(nro_solici)-5)  else substring(nro_solici,5,len(nro_solici)-4) end file_nbr        ,NRO_SOLICI       ,COMENTARIO       ,F_EVENTO       ,F_VENCIM       ,F_TRANS       ,NRO_MOV       ,EVENTO       ,status       ,HORA       ,DOCUMENTO       ,USUARIO       ,N_ENTRADA       ,Deleted   FROM VW_ORIGIN_movimi   where len(NRO_SOLICI)>5;;

create view VW_ORInoms  as    SELECT  rowNum       ,NUM_SERIE 	  ,left(num_serie,4) doc_ser, case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else '1' end doc_seq, case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5)  else substring(num_serie,5,len(num_serie)-4) end doc_nbr       ,titular       ,Deleted   FROM VW_ORIGIN_orinoms   where len(num_SERIE)>0;;

create view vw_nuenoms as  SELECT  rowNum       ,NUM_SERIE 	   ,left(num_serie,4) doc_ser, case when (ISNUMERIC(num_serie)=0) then right(num_serie,1) else '1' end doc_seq, case when (ISNUMERIC(num_serie)=0) then substring(num_serie,5,len(num_serie)-5)  else substring(num_serie,5,len(num_serie)-4) end doc_nbr       ,titular       ,Deleted   FROM VW_ORIGIN_nuenoms   where len(num_SERIE)>0;;
