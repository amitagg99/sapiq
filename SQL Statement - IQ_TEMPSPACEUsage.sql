1.
select month(now()),today(),cast(now() as time) as TIMESTAMP,substring(@@servername,1,20) as HOSTNAME,substring(DBSpaceName,1,20) as DBSPACE_NAME,Usage as PERC_USED from sp_iqdbspace() where DBSpaceName='IQ_SYSTEM_TEMP';)

2.
select Top 5 ConnHandle,  IQconnID, Name , IQCmdType,LastIQCmdTime, ConnCreateTime, NodeAddr, (TempTableSpaceKB+TempWorkSpaceKB) as TempSpaceUsed from sp_iqconnection() order by TempSpaceUsed desc 


/* SAP Note 2170845 - Script to monitor temp file usage */
/* SAP Note 2118482 - How to monitor IQ Temp Cache usage? */
/* SAP Note 2479771 - How to detect whether a local temporary table exists or not in a user connection */
/* SAP Note 2142537 - How to identify connections and queries involved in high temp space usage - SAP IQ */