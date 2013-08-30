as yet unclassified
descriptorForRBAUser: aDescriptor 
	| aTable |
	aTable := self tableNamed: 'USER'.
	aDescriptor table: aTable.
	(aDescriptor newMapping: DirectMapping)
		from: #userName 
		to: (aTable fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #password
		to: (aTable fieldNamed: 'password').
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (aTable fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #securitycode
		to: (aTable fieldNamed: 'codigo').
	(aDescriptor newMapping: DirectMapping)
		from: #securitypath
		to: (aTable fieldNamed: 'path').
	(aDescriptor newMapping: OneToManyMapping)
		attributeName: #listOfAddresses.

