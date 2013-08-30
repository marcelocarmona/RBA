instance creation
newFromRequest: aRequest
	"Answer a newly created and initialized instance."
	
	^super new initializeFromRequest: aRequest