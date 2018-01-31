1.
select substring(DBSpaceName,1,20) as DBSpaceName, DBSpaceType, Usage, TotalSize, Reserve, NumFiles, Online, Writable from sp_iqdbspace()

2.
sp_iqdbspace
sa_disk_free_space

Example:
========
call sa_disk_free_space (system);
--> returns disk info for the system DBspace (.DB) 
call sa_disk_free_space (translog);
--> returns disk info for the transaction log  (.LOG).
call sa_disk_free_space (temp);
--> returns disk info for the disk where temporary files reside.


