testing
limited
	"This waypoint is time limited if at least one of the walking waypoints is time limited"
	
	^self waypoints anySatisfy: [:aWaypoint | aWaypoint limited]