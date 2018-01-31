1.
Select view_name, view_owner from sp_iqview() where view_def like ‘%TABLE_NAME%’

2.
Select proc_name, creator from sysprocedure where proc_defn like ‘%TABLE_NAME%’
