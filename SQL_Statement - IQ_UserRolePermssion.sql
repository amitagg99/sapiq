


1. My roles
select role_name,grant_type from sp_displayroles() 

2. Priviledge assigned to a ROLE
sp_displayroles() <role_name>
 
3. 
sp_objectpermission '<user_name>'

4.
select * from sysrolegrants

5.Last login time for IQ USER
select user_name, last_login_time, login_policy_id  from sysuser where password is not null and last_login_time is not null

6. Users with DBA privileges
select * from sysrolegrants where role_name like '%DBA%'



/* SAP note 2518909 - How to find permissions granted to users in SAP IQ */ 
