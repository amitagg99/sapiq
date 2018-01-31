SELECT a.ConnHandle, a.IQConnID,b.VersionID, a.IQthreads, a.ConncreateTime, b.TxnCreateTime, a.LastReqTime, b."State", a."Name", a. UserID, b.txnid,a.ReqType,a.NodeAddr, b.cmtid, minutes(b.TxnCreateTime, now()) AS LOGON_SINCE_Minutes,minutes(a.LastReqTime, now()) AS LAST_CALL_ET_MIN FROM sp_iqconnection() a, sp_iqtransaction() b WHERE b.State = 'ACTIVE' AND a.IQConnID = b.IQConnID AND a."Name" NOT LIKE 'IQ_MPX_%' and LAST_CALL_ET_MIN > 0 and LOGON_SINCE_Minutes > 15


/* Parameter "LOGON_SINCE_Minutes" in where clause can be used to control the output of long running SQL's to identify query running more than "X" mins e.g. >15mins or > 2min or > 60min as per requirement */ 

