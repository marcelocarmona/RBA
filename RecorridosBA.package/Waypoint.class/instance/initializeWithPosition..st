initialize-release
initializeWithPosition: aPoint
	"Initialize a newly created instance. This method must answer the receiver."
	
	self initializeWithPosition: aPoint delay: 0 limit: nil.
	^self