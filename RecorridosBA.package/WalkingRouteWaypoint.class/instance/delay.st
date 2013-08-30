accessing
delay
	"Answers the total time of delay in this waypoint, i.e, the sum of all delays and the time to complete the route; as minutes"
	
	| totalTime |
	totalTime := Time hour: 0 minute: 0 second: 0.
	totalTime := self addDelays: totalTime.
	totalTime := self addRouteTime: totalTime.
	^totalTime asSeconds // 60