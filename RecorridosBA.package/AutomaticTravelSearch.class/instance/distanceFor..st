search
distanceFor: aWaypointCollection
	"Gets an approximation of the total distance required to walk the route specified by aWaypointCollection"
	
	| lastWaypoint total |
	total := 0.
	lastWaypoint := aWaypointCollection first.
	aWaypointCollection
		do:
			[:waypoint | 
			total := total + (lastWaypoint distanceTo: waypoint).
			lastWaypoint := waypoint].
	^total