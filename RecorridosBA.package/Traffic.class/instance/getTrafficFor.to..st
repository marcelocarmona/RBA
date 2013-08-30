accessing
getTrafficFor: startPoint to: endPoint
	"Returns the delay category (considering the traffic) for a step from startPoint to endPoint"
	
	| trafficPoint |
	trafficPoint := self traffic
		detect:
			[:each | 
			(each point dist: startPoint) < 0.0035
				or: [(each point dist: endPoint) < 0.0035]]
		ifNone: [^1].
	^trafficPoint state delay