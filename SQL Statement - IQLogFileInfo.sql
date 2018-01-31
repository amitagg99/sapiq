1.
select file_id,file_name,dbspace_name,store_type from sysfile where dbspace_name not in ('IQ_SYSTEM_MAIN','IQ_SYSTEM_TEMP','ip1_user')

2.
select property(‘ConsoleLogFile’) as srvlogfile;

3.
SELECT dbf.dbfile_name, f.* FROM SYSFILE f, SYSDBFILE dbf WHERE f.file_id=dbf.dbfile_id

4.
select property('RequestLogFile'), property('RequestLogging');



