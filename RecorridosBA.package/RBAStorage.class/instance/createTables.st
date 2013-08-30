actions
createTables
	self session inTransactionDo:
		[self session system allTables do:
		[:each |
			self accessor
				createTable: each
				ifError: [:error |Transcript show: error messageText]]].