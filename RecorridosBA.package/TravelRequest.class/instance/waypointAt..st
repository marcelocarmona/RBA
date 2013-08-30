accessing
waypointAt: aPoint
	"Gets a waypoint that is very close to aPoint"
	
	^self waypoints
		detect: [:aWaypoint | (aWaypoint position dist: aPoint) < 0.001]
		ifNone: [nil]