1.
select user_id, user_name, connections, last_login_time from sa_get_user_status() where connections>0

2.
select @@max_connections

