1.
select property('ServerName'), db_property('Name'), property('ProductVersion') , db_property('File') ,property('PlatformVer')

2.
select operation , version from syshistory where operation in ('INIT','UPGRADE');

3.
select * from sp_iqstatus() where name like '%Version:%'

4.
start_iq -v2

5.
Select connection_property( 'AppInfo' ) 

6.
select @@version
