as yet unclassified
tableForADDRESS_LIST: aTable 
	|userID|
	(aTable createFieldNamed: 'id' type: platform sequence) bePrimaryKey.
	(aTable	createFieldNamed: 'name_list' type: (platform varChar: 50)).
	(aTable	createFieldNamed: 'date' type: (platform timestamp )).
	userID := aTable createFieldNamed: 'user_id' type: platform int4.
	aTable addForeignKeyFrom: userID to: ((self tableNamed: 'USER') fieldNamed: 'id').