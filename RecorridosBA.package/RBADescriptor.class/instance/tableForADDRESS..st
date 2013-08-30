as yet unclassified
tableForADDRESS: aTable 
	| addressListId | 
	
	(aTable createFieldNamed: 'id' type: platform sequence) bePrimaryKey.
	(aTable	createFieldNamed: 'street'	type: (platform varChar: 255)).
	aTable createFieldNamed: 'latitud' type: (platform float8).
	aTable createFieldNamed: 'longitude' type: (platform float8).
	aTable createFieldNamed: 'delay' type: (platform int).
	aTable createFieldNamed: 'limitHs' type: (platform int).
	aTable createFieldNamed: 'limitMin' type: (platform int).
	addressListId := aTable createFieldNamed: 'address_list_id' type: platform int4.
	aTable addForeignKeyFrom: addressListId to: ((self tableNamed: 'ADDRESS_LIST') fieldNamed: 'id').