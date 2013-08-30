initialize-release
connect

	login := Login new database: MySQLPlatform new.
	login databaseName: 'RBA'.
	login username: 'rba'.
	login password: 'rba'.
	login host: '127.0.0.1'.
	login port: '3306'.
	
	"Data base connection"
	accessor := DatabaseAccessor forLogin: login.
	accessor login.
	
	"Glorp session"
	session := GlorpSession new.
	session system: (RBADescriptor forPlatform: login database).
	session accessor: accessor.