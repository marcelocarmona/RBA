distance
distanceTo: aWaypoint
	"Returns the distance between two points"
	
	^(self position dist: aWaypoint position) * 10000