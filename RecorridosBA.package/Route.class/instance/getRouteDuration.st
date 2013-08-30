private
getRouteDuration
	"Returns the route total duration"
	
	^self legs
		inject: 0
		into: [:sum :aLeg | sum + aLeg duration]