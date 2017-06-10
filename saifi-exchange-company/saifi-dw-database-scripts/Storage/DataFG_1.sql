/*
Do not change the database path or name variables.
Any sqlcmd variables will be properly substituted during 
build and deployment.
*/
ALTER DATABASE [$(DatabaseName)]
	ADD FILE
	(
		NAME = [DataFG_1],
		FILENAME = '$(DefaultDataPath)$(DefaultFilePrefix)_DataFG_1.ndf'
	) TO FILEGROUP [DataFG]
	
