as yet unclassified
tableForUSER: aTable 
	(aTable createFieldNamed: 'id' type: platform sequence) bePrimaryKey.
	(aTable
		createFieldNamed: 'name'
		type: (platform varChar: 50))isUnique: true; beNullable: false.
	(aTable
		createFieldNamed: 'password'
		type: (platform varChar: 256)) beNullable: false.
	(aTable
		createFieldNamed: 'codigo'
		type: (platform varChar: 256))beNullable: false.
	(aTable
		createFieldNamed: 'path'
		type: (platform varChar: 8))beNullable: false.	