1.
select
  t.table_name,
  c.column_name,
  d.domain_name,
  c.width,
  c.scale
FROM SYS.SYSTAB t
JOIN SYS.SYSCOLUMN c
  ON t.table_id = c.table_id
join SYS.SYSDOMAIN d
  on d.domain_id = c.domain_id
where t.creator <> 0 --sysobjects type 'S'
and not exists (select * from sys.systab tv 
                where tv.creator in (2, 22) 
                and tv.table_id = t.table_id)



2.
select count(*), index_type from sp_iqindex() group by index_type;

3.
select  o.creation_time,last_modified_at ,T.table_name, O.status, B.table_type, b.view_def from sysobject O, systab T, systable B where B.table_id=T.table_id and o.object_id=T.object_id and O.object_id=(select T.object_id from systab T where T.table_name='<object_name>')

