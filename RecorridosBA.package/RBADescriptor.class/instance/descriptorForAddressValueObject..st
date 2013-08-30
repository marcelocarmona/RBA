as yet unclassified
descriptorForAddressValueObject: aDescriptor 
	| aTable |
	aTable := self tableNamed: 'ADDRESS'.
	aDescriptor table: aTable.
	(aDescriptor newMapping: DirectMapping)
		from: #street 
		to: (aTable fieldNamed: 'street').
	(aDescriptor newMapping: DirectMapping)
		from: #latitud 
		to: (aTable fieldNamed: 'latitud').
	(aDescriptor newMapping: DirectMapping)
		from: #longitude 
		to: (aTable fieldNamed: 'longitude').
	(aDescriptor newMapping: DirectMapping)
		from: #delay 
		to: (aTable fieldNamed: 'delay').
	(aDescriptor newMapping: DirectMapping)
		from: #limitHs 
		to: (aTable fieldNamed: 'limitHs').
	(aDescriptor newMapping: DirectMapping)
		from: #limitMin 
		to: (aTable fieldNamed: 'limitMin').
	(aDescriptor newMapping: DirectMapping)
		from: #id
		to: (aTable fieldNamed: 'id').