testing
checkTimeIn: durationMatrix with: aWaypointList using: travelSearch
	"Checks the time limitations for the whole waypoint (if at least of one of the inner waypoints fails, the whole waypoint fails)"
	
	^(self waypoints
		anySatisfy:
			[:waypoint | 
			(waypoint checkTimeIn: durationMatrix with: aWaypointList using:
					travelSearch) not]) not