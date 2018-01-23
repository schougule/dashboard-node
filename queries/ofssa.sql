select 1 as ORDO, 'CS' as DESCR, '11001' as FLOW_ID,'PUB_DAT' as AREA, 'NA' from dual
UNION
select 2 as ORDO, 'BDEV' as DESCR, '11005' as FLOW_ID,'PUB_DAT' as AREA, to_char(max(fic_mis_date)) from OFSAA_COM.STG_FORWARD_EXCHG_RATES where V_RATE_DATA_SOURCE_CD = 'BDEV'
UNION
select 3 as ORDO, 'GL' as DESCR, '11018' as FLOW_ID, 'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_GL_DATA' and num_rows>0 and substr(subpartition_name,11,5)='11018')
UNION
select 4 as ORDO,'GMDB' as DESCR, '11022' as FLOW_ID,'PUB_DAT' as AREA,
to_char(nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')))  from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_INSTRUMENT_CONTRACT_MASTER'and num_rows>0 and substr(subpartition_name,11,5)='11022'
UNION
select 5 as ORDO, 'GL-CURR' as DESCR, '11022' as FLOW_ID,'PUB_DAT' as AREA, 'NA' from dual
UNION
SELECT 6  AS ORDO,'PartyRef' AS DESCR,'11003' AS FLOW_ID,'PUB_DAT' AS AREA, MIN(DT)
FROM (SELECT  TO_CHAR(NVL(to_date(SUBSTR(MAX(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))) AS dt
  FROM all_tab_subpartitions
  WHERE table_owner                 ='OFSAA_COM'
  AND table_name                   IN 'STG_CUSTOMER_MASTER'
  AND num_rows                      >0
  AND SUBSTR(subpartition_name,11,5)='11003'
  UNION
  SELECT TO_CHAR(NVL(to_date(SUBSTR(MAX(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))) AS dt
  FROM all_tab_subpartitions
  WHERE table_owner                 ='OFSAA_COM'
  AND table_name                   IN 'STG_CUSTOMER_DETAILS'
  AND num_rows                      >0
  AND SUBSTR(subpartition_name,11,5)='11003' )
UNION
select 7 as ORDO, 'PAC' as DESCR, '11015' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CARDS' and num_rows>0 and substr(subpartition_name,11,5)='11015'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5)='11015')
UNION
select 8 as ORDO, 'SIL' as DESCR, '11020' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11020'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5)='11020'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACT_TXNS' and num_rows>0 and substr(subpartition_name,11,5)='11020')
UNION
select 9 as ORDO, 'KGC' as DESCR, '11026' as FLOW_ID,'PUB_DAT' as AREA, 'NA' from dual
UNION
select 10 as ORDO, 'PAN' as DESCR, '11081' as FLOW_ID, 'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5)='11065'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_OD_ACCOUNTS' and num_rows>0 and substr(subpartition_name,11,5)='11010'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd'))  as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CASA' and num_rows>0 and substr(subpartition_name,11,5)='11010')
UNION
select 11 as ORDO, 'HCT' as DESCR, '11094' as FLOW_ID,'PUB_DAT' as AREA, 'NA' from dual
UNION
select 12 as ORDO, ' ' as DESCR, ' ' as FLOW_ID,' ' as AREA, ' ' from dual
UNION
select 13 as ORDO, 'KLC' as DESCR, '11031' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_COMMITMENT_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11030'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5)='11030'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_COMMITMENT_TXNS' and num_rows>0 and substr(subpartition_name,11,5)='11030')
union
select 14 as ORDO, 'TER' as DESCR, '11035' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11034'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_TD_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11034'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CASA' and num_rows>0 and substr(subpartition_name,11,5)='11034')
UNION
select 16 as ORDO, 'AVO' as DESCR, '11029' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11028'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11028'
)
UNION
select 17 as ORDO, 'CAL' as DESCR, '11033' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11032'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11032'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_TD_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11032')
UNION
select 18 as ORDO, 'KON' as DESCR, '11097' as FLOW_ID,'PUB_DAT' as AREA, 'NA' as d_ctx_per from dual
UNION
select 19 as ORDO, 'AIS' as DESCR, '11079' as FLOW_ID,'PUB_DAT' as AREA, 'NA' as d_ctx_per from dual
UNION
select 20 as ORDO, 'FIL' as DESCR, '11024' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5)='11002'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11002'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_TD_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11002'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACT_TXNS' and num_rows>0 and substr(subpartition_name,11,5)='11002'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11002')
UNION
select 21 as ORDO, 'PHL_PHC' as DESCR, '11043'  as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11044'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11044'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5)='11044'
)
UNION
select 22 as ORDO, 'INV' as DESCR, '11080' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and substr(subpartition_name,11,5)='11011'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and substr(subpartition_name,11,5)='11011'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACT_TXNS'  and substr(subpartition_name,11,5)='11011'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS'  and substr(subpartition_name,11,5)='11011')
UNION
select 23 as ORDO, 'FAFM_BONDS' as DESCR, '11042' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d 
  from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_INVESTMENTS' and num_rows>0 and substr(subpartition_name,11,5)='11039'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_INVESTMENTS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11039')
union
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d 
  from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11039'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_ACCOUNT_CASH_FLOWS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11039'))
UNION
select 24 as ORDO, 'FAFM_REP' as DESCR, '11041' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d 
  from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11038'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_ACCOUNT_CASH_FLOWS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11038')
union
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d 
  from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_REPO_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11038'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_REPO_CONTRACTS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11038'))
UNION
select 25 as ORDO,'GRID FPL' as DESCR, '11096' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_PARTY_RATING_DETAILS' and num_rows>0 and substr(subpartition_name,11,5)='13001'
)
UNION
select 26 as ORDO,'GVE' as DESCR, '11098' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11048'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_TD_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11048'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CASA' and num_rows>0 and substr(subpartition_name,11,5)='11048'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_OD_ACCOUNTS' and num_rows>0 and substr(subpartition_name,11,5)='11048'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11048'
)
UNION
select 27 as ORDO,'FFM_GLS' as DESCR, '11098' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_COMMITMENT_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11040'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_COMMITMENT_CONTRACTS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11040')
union
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11040'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_ACCOUNT_CASH_FLOWS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11040')
union
select nvl(to_date(substr(min(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11040'
and to_char(last_analyzed,'yyyymmdd') = (select max(to_char(last_analyzed,'yyyymmdd')) from all_tab_subpartitions 
                                          where table_owner ='OFSAA_COM' and table_name='STG_LOAN_CONTRACTS' 
                                            and num_rows>0 and substr(subpartition_name,11,5)='11040'))
UNION
select 28 as ORDO,'RER' as DESCR, '11025' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_OD_ACCOUNTS' and num_rows>0 and substr(subpartition_name,11,5)='11061'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5) ='11059'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5) ='11065'
union 
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5) ='11063'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_OD_ACCOUNTS_TXNS' and substr(subpartition_name,11,5)='11061'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACT_TXNS' and substr(subpartition_name,11,5) ='11059'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACT_TXNS' and substr(subpartition_name,11,5) ='11065'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_LOAN_CONTRACT_TXNS' and substr(subpartition_name,11,5) ='11063'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5) ='11059'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5) ='11061'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5) ='11063'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_CUSTOMER_RELATIONSHIP' and num_rows>0 and substr(subpartition_name,11,5) ='11065')
union
select 29 as ORDO,'MAN HDRM' as DESCR, '11014' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(max(fic_mis_date),to_date('19000101','yyyymmdd')) as d from OFSAA_COM.STG_GL_ATTR_INTF
UNION
select nvl(max(fic_mis_date),to_date('19000101','yyyymmdd')) as d from OFSAA_COM.STG_GL_B_INTF
UNION
select nvl(max(fic_mis_date),to_date('19000101','yyyymmdd')) as d from OFSAA_COM.STG_GL_TL_INTF)
UNION
select 30 as ORDO,'MAN GL' as DESCR, '11049' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_GL_DATA' and num_rows>0 and substr(subpartition_name,11,5)='11049')
UNION
select 31 as ORDO,'MAN BONDS' as DESCR, '11104' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_INVESTMENTS' and num_rows>0 and substr(subpartition_name,11,5)='11050'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11050')
UNION
select 32 as ORDO,'MAN REPO' as DESCR, '11057' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and num_rows>0 and substr(subpartition_name,11,5)='11057'
union
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_REPO_CONTRACTS' and num_rows>0 and substr(subpartition_name,11,5)='11057')
UNION
select 33 as ORDO,'Wirrow' as DESCR, '11099' as FLOW_ID,'PUB_DAT' as AREA,to_char(min(d)) as d_ctx_per from (
select nvl(max(fic_mis_date),to_date('19000101','yyyymmdd')) as d from ofsaa_com.stg_investments where N_ECB_COLL_VALUE_LCY is not null)
UNION
select 34 as ORDO, 'Man 35D' as DESCR, '11109' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name='STG_ACCOUNT_CASH_FLOWS' and substr(subpartition_name,11,5)='11047')
UNION
select 35 as ORDO, 'Man IRF' as DESCR, '11114' as FLOW_ID,'PUB_DAT' as AREA, to_char(min(d)) as d_ctx_per from (
select nvl(to_date(substr(max(partition_name),2,10),'yyyymmdd'),to_date('19000101','yyyymmdd')) as d from all_tab_subpartitions where table_owner ='OFSAA_COM' 
and table_name = 'STG_IRC_RATE_HIST' and num_rows>0 and substr(subpartition_name,11,5)='11022')
