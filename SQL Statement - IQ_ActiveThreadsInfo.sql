select substring(stat_desc,1,50) stat_desc, substring(stat_value,1,20) stat_value from sp_iqstatistics() where stat_name in ('ThreadsFree', 'ThreadsInUse', 'ConnectionsActive','OperationsActiveLoadTableStatements')