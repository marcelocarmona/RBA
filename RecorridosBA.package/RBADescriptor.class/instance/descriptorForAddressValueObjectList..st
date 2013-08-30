as yet unclassified
descriptorForAddressValueObjectList: aDescriptor 
	| aTable |
	aTable := self tableNamed: 'ADDRESS_LIST'.
	aDescriptor table: aTable.
	(aDescriptor newMapping: DirectMapping)
		from: #nameList 
		to: (aTable fieldNamed: 'name_list').
	(aDescriptor newMapping: DirectMapping)
		from: #date 
		to: (aTable fieldNamed: 'date').
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (aTable fieldNamed: 'id').
	(aDescriptor newMapping: OneToManyMapping)
		attributeName: #addressList.
	