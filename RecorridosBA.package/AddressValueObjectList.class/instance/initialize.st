initialize-release
initialize

	super initialize.
	self nameList: 'Sin Nombre'.
	self date: TimeStamp now.
	self addressList: OrderedCollection new.
	^self