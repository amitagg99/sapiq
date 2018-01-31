1.
sp_iqversionuse

2.
select * from sp_iqstatus() where name like '%Versions:%')

3.
select server, count(*) as TransactionCount from sp_iqversionuse() group by server

4.
select server, Sum(MaxKBRelease/1024/1024) as SizeinGB from sp_iqversionuse() group by server

5.
select top 5 Server,VersionID,MaxKBRelease  from sp_iqversionuse() order by MaxKBRelease desc

6.
select a.Userid, a.connHandle, a.MainTableKBCr,b.CmdLine,b.ConnOrCurCreateTime from sp_iqtransaction() a,sp_iqcontext() b where a.VersionID=127004135 AND a.ConnHandle=b.ConnHandle

