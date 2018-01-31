1.
select a.table_id, b.table_name,b.table_type, a.create_time,a.update_time from  sysiqtable a, systable b where a.table_id=b.table_id and create_time > '2016-08-20'

2.
select  o.creation_time,last_modified_at ,T.table_name, O.status, B.table_type, b.view_def from sysobject O, systab T, systable B where B.table_id=T.table_id and o.object_id=T.object_id and O.object_id=(select T.object_id from systab T where T.table_name='<object_name>')



