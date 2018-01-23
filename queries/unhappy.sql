select 1 as ORDO,'CS' as DESCR, '11001' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_ADA_CODING_SCHEMES'and num_rows>0
UNION
select 2 as ORDO,'BDEV' as DESCR, '11005' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_BDV_EX_RATES'and num_rows>0
UNION
select 3 as ORDO,'GL ' as DESCR, '11018' as FLOW_ID,'NA' as AREA, 'NA' from dual
UNION
select 4 as ORDO,'GMDB' as DESCR, '11035' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_GMDB_BONDS'and num_rows>0
UNION
select 5 as ORDO,'GL-EXR' as DESCR, '11077' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_PLS_GL_EX_RATE_DIM' and num_rows>0
UNION
select 6 as ORDO,'Party-Ref' as DESCR, '11003' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FDW_PRF_FASO' and num_rows>0
UNION
select 7 as ORDO,'PAC' as DESCR, '11015' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_PAC_LIMITS_D' and num_rows>0
UNION
select 8 as ORDO,'SIL' as DESCR, '11020' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_SIL_EOD' and num_rows>0
UNION
select 9 as ORDO,'KGC' as DESCR, '11026' as FLOW_ID,'NA' as AREA, 'NA' from dual
UNION
select 10 as ORDO,'PAN' as DESCR, '11081' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_PAN_GAL_BAL' and num_rows>0
UNION
select 11 as ORDO,'GMDB BONDS' as DESCR, '11135' as FLOW_ID,'unhappy' as AREA,
to_char(to_date(substr(max(partition_name),2,10),'yyyymmdd')) as D_CTX_PER from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_GMDB_BONDS' and num_rows>0
UNION
select 12 as ORDO,' ' as DESCR, ' ' as FLOW_ID,' ' as AREA, ' ' from dual
UNION
select 13 as ORDO,'KLC' as DESCR, '11031' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_FCO_KLC%_D'and num_rows>0 group by table_name)
UNION
select 14 as ORDO,'TER' as DESCR, '11035' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name in ('INC_FCO_TER_CROI') and num_rows>0 group by table_name)
UNION
select 16 as ORDO,'AVO' as DESCR, '11029' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_FCO_AVO%' and num_rows>0 group by table_name)
UNION
select 17 as ORDO,'CAL' as DESCR, '11033' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_FCO_CAL%' and num_rows>0 group by table_name)
UNION
select 18 as ORDO,'KON' as DESCR, '11097' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_KDR%' and num_rows>0 group by table_name)
UNION
select 19 as ORDO,'AIS' as DESCR, '11079' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name in ('INC_FIL_CAP_EOM','INC_FIL_ALL_EOM')
and num_rows>0 group by table_name)
UNION
select 20 as ORDO,'FIL' as DESCR, '11024' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name in ('INC_FIL_DAY_EOD','INC_FIL_OUT_EOM') and num_rows>0 group by table_name)
UNION
select 21 as ORDO,'PHL PHC' as DESCR, '11043' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name in ('INC_PHL') and num_rows>0 group by table_name)
UNION
select 22 as ORDO,'INV' as DESCR, '11080' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_INV%D' and num_rows>0 group by table_name)
UNION
select 23 as ORDO,'FAFM BONDS' as DESCR, '11042' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FAFM_BONDS_INV' and num_rows>0 group by table_name)
UNION
select 24 as ORDO,'FAFM REPO' as DESCR, '11041' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FAFM_REPO' and num_rows>0 group by table_name)
UNION
select 25 as ORDO,'GRID FPL' as DESCR, '11096' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name in ('INC_PARTY_RATING','INC_GRID_FPL') and num_rows>0 group by table_name)
UNION
select 26 as ORDO,'GVE' as DESCR, '11010' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name = 'INC_GVE_FB' and num_rows>0 group by table_name)
UNION
select 27 as ORDO,'FFM GLS' as DESCR, '11098' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_FAFM_GLSM%' and num_rows>0 group by table_name)
UNION
select 28 as ORDO,'RER' as DESCR, '11025' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name = 'INC_RER_CLAIMS' and num_rows>0 group by table_name)
UNION
select 29 as ORDO,'MAN HDRM' as DESCR, '11014' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FINREF_GL' and num_rows>0 group by table_name)
UNION
select 30 as ORDO,'MAN GL' as DESCR, '11110' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FIN_MAN_GL' group by table_name)
UNION
select 32 as ORDO,'MAN BONDS' as DESCR, '11104' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FIN_MAN_INVESTMENTS'  group by table_name)
UNION
select 32 as ORDO,'MAN REPO' as DESCR, '11103' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FIN_MAN_REPO' group by table_name)
UNION
select 33 as ORDO,'Wirrow' as DESCR, '11099' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name='INC_FIN_MAN_WIRROW' group by table_name)
UNION
select 34 as ORDO,'Man 35D' as DESCR, '11109' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
 and table_name='INC_FIN_MAN_35D' group by table_name)
UNION
select 35 as ORDO,'Man IRF' as DESCR, '11114' as FLOW_ID,'Unhappy' as AREA,to_char(min(d_ctx_per)) from (select 
to_date(substr(max(partition_name),2,10),'yyyymmdd') as D_CTX_PER, table_name  from all_tab_partitions where table_owner ='PSA01_OWNER' 
and table_name like 'INC_GMDB_IRF%' group by table_name)
