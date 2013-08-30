accessing
getTrafficFor: startPoint to: endPoint
	"Returns the delay category (considering the traffic) for a step from startPoint to endPoint using the singleton"
	
	^Traffic singleton getTrafficFor: startPoint to: endPoint