initialize-release
initializeFromRequest: aRequest
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.
	self request: aRequest.
	self search: (TravelRequest modes at: aRequest mode).
	self routes: OrderedCollection new.
	^self