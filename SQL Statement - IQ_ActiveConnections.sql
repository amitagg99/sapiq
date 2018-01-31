1.
SELECT a.ConnHandle, a.IQConnID, a.Name, a. UserID, b.txnid, b.TxnCreateTime, minutes(b.TxnCreateTime, now()) AS DurationMinutes FROM sp_iqconnection() a, sp_iqtransaction() b WHERE b.State = 'ACTIVE' AND a.IQConnID = b.IQConnID AND a.Name NOT LIKE 'IQ_MPX_%'

2.
SELECT a.ConnHandle, a.IQConnID, a.IQthreads, a.ConncreateTime, b.TxnCreateTime, a.LastReqTime, a."Name", a. UserID, b.txnid,a.ReqType,a.NodeAddr, b.cmtid, minutes(b.TxnCreateTime, now()) AS LOGON_SINCE_Minutes,minutes(a.LastReqTime, now()) AS LAST_CALL_ET_MIN FROM sp_iqconnection() a, sp_iqtransaction() b WHERE b.State = 'ACTIVE' AND a.IQConnID = b.IQConnID AND a."Name" NOT LIKE 'IQ_MPX_%'

3.
select "CONNECTION_PROPERTY" ('NodeAddress',"a"."ConnHandle") as "NodeAddress", "a"."ConnHandle", "a"."IQconnID", substring("a"."Userid",1,10) as UserID, "a"."ReqType",  substring("a"."Name",1,30) as Name, substring("a"."ConnCreateTime",1,30) as ConnCreateTime, substring("a"."LastReqTime",1,30) as LastReqTime,a.LastIdle, datediff(ss,a.LastReqTime, now()) as Last_CALL_ET_sec, "a"."TempTableSpaceKB", "a"."TempWorkSpaceKB","b"."CmdLine" from "dbo"."sp_iqconnection"() as "a","dbo"."sp_iqcontext"() as "b" where "a"."ConnHandle" = "b"."ConnHandle" and b.CmdLine <> 'NO COMMAND'  and b.CmdLine <> '' 
