select substring(server_name,1,20) as server_name, substring(connection_info,1,30) as connection_info,mpx_mode, inc_state , status,substring(coordinator_failover,1,20) as coordinator_failover, substring(db_path,1,40) as db_path from sp_iqmpxinfo();