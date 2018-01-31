1. 
SELECT PROPERTY( 'CurrentCacheSize' )

2. 
select substring(stat_desc,1,50) Parameter, substring(stat_value,1,20) Value from sp_iqstatistics() where stat_name in ('TempCacheHits','MainCacheHits','TempCacheFinds','MainCacheFinds')

3.
select  CURRENT TIMESTAMP AS TimeStamp,  Value as MainIQ_IO_Statistics     from sp_iqstatus() where Name = 'Main IQ I/O:'

4.
select  CURRENT TIMESTAMP AS TimeStamp,  Value as TeampIQ_IO_Statistics    from sp_iqstatus() where Name = 'Temporary IQ I/O:'

5.
select * from sp_iqstatus() where Name like ‘%IQ large%’

6.
select @@servername, substring(stat_name,1,50) as stat_name, substring(stat_value,1,20) stat_value from sp_iqstatistics() where stat_name in ( 'MainCachePagesInUsePercentage','TempCachePagesInUsePercentage','MainCacheCurrentSize','MainCacheCurrentSize')




/* SAP Note 2432798 - SAP IQ, About catalog cache */
/* SAP Note 2464164 - How to configure IQ startup parameters -c, -cl/-ch, -iqmc, -iqtc, -iqlm */




