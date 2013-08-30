initialize-release
initializeWithPosition: aPoint delay: aDelay limit: aLimit address: anAddress
	"Initialize a newly created instance. This method must answer the receiver."
	
	self position: aPoint.
	self delay: aDelay.
	self limit: aLimit.
	self address: anAddress.
	^self