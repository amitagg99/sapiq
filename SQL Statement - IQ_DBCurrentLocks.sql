1.
select b.conn_id,substring(a.userid,1,15) as userid, substring(a.Name,1,40) as Name ,@@servername as Hostname, a.MPXServerName, a.connCreateTime,substring(b.table_name,1,20) as table_name,substring(a.ReqType,1,30) as ReqType, datediff(ss,a.LastReqTime, now()) as Last_CALL_ET_sec, b.lock_type b.lock_class from sp_iqconnection() a,  sp_iqlocks() b where a.ConnHandle=b.conn_id

2.
sa_report_deadlocks
sp_iqlocks