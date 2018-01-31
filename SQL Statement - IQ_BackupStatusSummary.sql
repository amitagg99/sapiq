1.
select substring(Name,1,40) as Name, Value from sp_iqstatus() where Name like '%Backup%')

2.
select bu_id, bu_time, dependson_id, type, cmd  from sysiqbackuphistory


3.
sp_iqbackupsummary
sp_iqbackupdetails