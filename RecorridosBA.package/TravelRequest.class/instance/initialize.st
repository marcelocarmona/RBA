initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	^self
		initializeFrom: nil
		waypoints: List new
		mode: nil