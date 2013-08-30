search
searchForWalk: aWaypointCollection within: aMeterNumber
	"Searches the waypoints in aWaypointCollection that are within aMeterNumber with fixed waypoint total and max walking distance"
	
	^self searchForWalk: aWaypointCollection withinMeters: aMeterNumber
		withinWaypoints: 2 withinMaxWalkingDistance: 800