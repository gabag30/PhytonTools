insert into IP_LOGO(row_version,file_seq,file_typ,file_ser,file_nbr)
select row_version,file_seq,file_typ,file_ser,file_nbr from ip_mark where 
file_seq+file_typ+cast(file_ser as varchar)+cast(file_nbr as varchar) not in (select file_seq+file_typ+cast(file_ser as varchar)+cast(file_nbr as varchar) from IP_LOGO);;
UPDATE
    Table_A
SET
    Table_A.capture_USER_ID = Table_B.nuevo
FROM
    IP_FILE AS Table_A
    INNER JOIN (SELECT  [rowNum] viejo
      ,ss.user_id nuevo


  FROM [vw_origin_users] ou, IP_USER ss where ou.code_user=ss.login) AS Table_B
        ON Table_A.capture_USER_ID = Table_B.viejo;;

		 UPDATE
    Table_A
SET
    Table_A.capture_USER_ID = Table_B.nuevo
FROM
    IP_MARK AS Table_A
    INNER JOIN (SELECT  [rowNum] viejo
      ,ss.user_id nuevo


  FROM [vw_origin_users] ou, IP_USER ss where ou.code_user=ss.login and ou.DELETED='N') AS Table_B
        ON Table_A.capture_USER_ID = Table_B.viejo;;

			 UPDATE
    Table_A
SET
    Table_A.capture_USER_ID = Table_B.nuevo,
	Table_A.authorising_USER_ID = Table_B.nuevo,
	Table_A.responsible_USER_ID = Table_B.nuevo
FROM
    IP_ACTION AS Table_A
    INNER JOIN (SELECT  [rowNum] viejo
      ,ss.user_id nuevo


  FROM [vw_origin_users] ou, IP_USER ss where ou.code_user=ss.login) AS Table_B
        ON Table_A.capture_USER_ID = Table_B.viejo;;

UPDATE
    Table_A
SET
    Table_A.STATUS_CODE = Table_B.estado,table_A.STATUS_DATE=getdate()
FROM
    IP_PROC AS Table_A
    INNER JOIN (select gg.estado, ff.PROC_TYP,ff.PROC_NBR  from
(SELECT 
cast(case when ISNUMERIC(nro_solici)= 0 then right(NRO_SOLICI,1) else '1'  end as varchar) file_SEQ ,
'M' FILE_TYPE,
cast(left(NRO_SOLICI,4) as numeric(4,0)) as FILE_SERIES,
cast(substring(NRO_SOLICI,5,len(NRO_SOLICI)-(case when ISNUMERIC(nro_solici)=0 then 5 else 4 end)  ) as numeric(10,0)) file_NBR,
case 
              when status ='60' then '030'
              when status ='98' then '038'
              when status='40' then '165'
              when status ='30' then '010'
              when status='80' then '036'
              when status='82' then '069'
              when status='99' then '006'
              when status='01' then '001'
              when status ='07' then '008'
              when status='04' then '004'
              when status='06' then '010'
              when status='25' then '012'
              when status='55' then '030'
              when status='70' then '039'
              when status='78' then '039'
              when status='08' then '012'
              when status='10' then '001'
              when status='02' then '004'
              when status='03' then '099'
              when status='05' then '09'
              when status='41' then '165'
              when status='42' then '165'
              when status='43' then '165'
              when status='32' then '010'
              when status='45' then '165'
              when status='37' then '090'
              when status='50' then '014'
              when status ='52' then'023'
              when status = '14' then '090'
              when status ='81' then '030'
              when status='71' then '030'
              when status='20' then '090'
              when status='26' then  '165'
              when status='44' then '090'
              when status ='97' then '006'
              when status='17' then '090'
              when status ='19' then '090'
              when status='12' then '090'
              when status = '13' then '090'
              when status ='15' then '090'
              when status ='22' then '090'
              when status ='RD' then '090'
       end as estado
          FROM vw_origin_marca 
   where Deleted='N' and len(nro_solici)>5 and status is not null ) gg, IP_FILE ff
   where ff.FILE_SEQ=gg.file_SEQ and ff.FILE_TYP=gg.FILE_TYPE and cast(ff.FILE_SER as varchar)= gg.file_series and cast(ff.file_nbr as varchar)=gg.file_nbr) AS Table_B
        ON Table_A.PROC_TYP = Table_B.PROC_TYP and Table_A.PROC_NBR=Table_B.PROC_NBR;;
		
		update IP_DOC set ind_specific_edoc='N', IND_INTERFACE_EDOC='S' where file_nbr is null;;
		
insert into CF_CONFIG_PARAM values 

  (1,'ExtraDataMarkDataText1TabId','1'),(1,'ExtraDataMarkDataText1','N° Tomo'),
  (1,'ExtraDataMarkDataText2TabId','1'),(1,'ExtraDataMarkDataText2','N° Folio'),
  (1,'ExtraDataMarkDataText3TabId','1'),(1,'ExtraDataMarkDataText3','N° Resolución');;

    UPDATE
    Table_A
SET
    Table_A.DATA_TEXT1 = Table_B.tomo,
    Table_A.DATA_TEXT2 = Table_B.folio,
	table_a.DATA_TEXT3 = table_b.nro_resoluc
FROM
    ip_doc AS Table_A
    INNER JOIN (SELECT  dd.DOC_ORI,dd.DOC_LOG,dd.DOC_SER,dd.doc_nbr
      ,case when tomo is null then '' else tomo end tomo
      ,case when folio is null then '' else folio end folio
      ,case when nro_resoluc is null then '' else nro_resoluc end nro_resoluc

  FROM vw_marcas2 vv inner join ip_doc dd
  on vv.file_SEQ=dd.FILE_SEQ and vv.FILE_TYPE=dd.FILE_TYP and vv.FILE_SERIES=dd.FILE_SER and vv.file_NBR=dd.FILE_NBR)
 AS Table_B
        ON Table_A.doc_ori = Table_B.doc_ori and
		Table_A.doc_log = Table_B.doc_log and
		Table_A.doc_ser = Table_B.doc_ser and
		Table_A.doc_nbr = Table_B.doc_nbr ;;