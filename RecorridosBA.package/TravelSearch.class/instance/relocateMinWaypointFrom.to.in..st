search
relocateMinWaypointFrom: first to: last in: waypointList
	"Switches the min waypoint in waypointList (from first to last) whit the first waypoint of the list"
	
	| minIndex minDistance auxDistance auxWaypoint |
	minDistance := 99999.
	(first to: last)
		do:
			[:index | 
			auxDistance := (waypointList at: first - 1)
				distanceTo: (waypointList at: index).
			auxDistance < minDistance
				ifTrue:
					[minDistance := auxDistance.
					minIndex := index]].
	auxWaypoint := waypointList at: first.
	waypointList
		at: first
		put: (waypointList at: minIndex).
	waypointList at: minIndex put: auxWaypoint