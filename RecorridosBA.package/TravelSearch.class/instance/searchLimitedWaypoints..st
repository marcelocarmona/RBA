search
searchLimitedWaypoints: aWaypointCollection
	"Returns a collection with the limited waypoints in aWaypointCollection ordered by their time limitations"
	
	^(aWaypointCollection reject: [:waypoint | waypoint limited not])
		asSortedCollection: [:a :b | a limit < b limit]