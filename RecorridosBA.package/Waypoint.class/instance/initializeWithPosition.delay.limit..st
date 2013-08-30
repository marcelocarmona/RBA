initialize-release
initializeWithPosition: aPoint delay: aDelay limit: aLimit
	"Initialize a newly created instance. This method must answer the receiver."
	
	self position: aPoint.
	self delay: aDelay.
	self limit: aLimit.
	^self