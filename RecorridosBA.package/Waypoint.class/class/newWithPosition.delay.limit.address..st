instance creation
newWithPosition: aPoint delay: aDelay limit: aLimit address: anAddress
	"Answer a newly created and initialized instance."
	
	^super new initializeWithPosition: aPoint delay: aDelay limit: aLimit
		address: anAddress