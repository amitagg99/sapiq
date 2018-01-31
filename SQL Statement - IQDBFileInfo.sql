select substring(DBSpaceName,1,15) as DBSpaceName, substring(Path,1,50) as Path , SegmentType, RWMode, Online , Usage, DBFileSize from sp_iqfile('IQ_SYSTEM_MAIN')

