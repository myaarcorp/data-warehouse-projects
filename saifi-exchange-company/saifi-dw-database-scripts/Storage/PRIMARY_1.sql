/*
Do not change the database path or name variables.
Any sqlcmd variables will be properly substituted during 
build and deployment.
*/
ALTER DATABASE [$(DatabaseName)]
	ADD FILE
	(
		NAME = [PRIMARY_1],
		FILENAME = '$(DefaultDataPath)$(DefaultFilePrefix)_PRIMARY_1.ndf'
	) TO FILEGROUP [PRIMARY]
	
