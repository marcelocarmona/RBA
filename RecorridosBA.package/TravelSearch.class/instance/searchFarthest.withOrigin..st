search
searchFarthest: aWaypointCollection withOrigin: aWaypoint
	"Gets the farthest waypoint in aWaypointCollection from aWaypoint"
	
	| farthest distanceToFarthest |
	farthest := aWaypoint.
	distanceToFarthest := -1.
	aWaypointCollection
		do:
			[:waypoint | 
			(waypoint distanceTo: aWaypoint) > distanceToFarthest
				ifTrue:
					[distanceToFarthest := waypoint distanceTo: aWaypoint.
					farthest := waypoint]].
	^farthest