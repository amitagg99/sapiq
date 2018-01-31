1.
select d.user_name, a.login_policy_name, b.ls_name , b.server_name, d.last_login_time from sysloginpolicy a, SYSIQLSMEMBERS b , SYSIQLOGINPOLICYLSINFO c , sysuser d where c.login_policy_id=d.login_policy_id and a.login_policy_id=c.login_policy_id and c.ls_id=b.ls_id and d.password is not null 

2.
Login Policy Option(parameter) Configuration:
select * from sysiqlspolicyoption;
select * from sysloginpolicy

3.
LOGICAL SERVER - Nodes:
select * from SYSIQLSMEMBERS
select * from sysiqlspolicy
