1.
select b.table_name,b.table_type,a.create_time,a.update_time,z.dbspace_name from sysiqtable a, systable b, sysfile z where z.file_id=b.file_id and a.table_id=b.table_id and a.table_id in (select distinct table_id from syspartitions) 

2.
select partition_id,partition_values,partition_name from syspartitions where table_id in (select table_id from systable where table_name='<table_name>')
