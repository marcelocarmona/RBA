accessing
fromAllWaypointsAt: aPoint
	"Gets a waypoint (from all the waypoints) that is very close to aPoint"
	
	^self allWaypoints
		detect: [:aWaypoint | (aWaypoint position dist: aPoint) < 0.001]
		ifNone: [nil]