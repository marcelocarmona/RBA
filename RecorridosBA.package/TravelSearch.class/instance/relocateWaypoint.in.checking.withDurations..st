search
relocateWaypoint: limitedWaypoint in: aWaypointList checking: processedWaypointSet withDurations: durationMatrix
	"Relocates a limitedWaypoint in aWaypointList such it fullfills the time limitations provided by the user"
	
	| auxWaypoint index |
	[(processedWaypointSet
		contains:
			[:eachWaypoint | 
			eachWaypoint
				= (aWaypointList at: (aWaypointList indexOf: limitedWaypoint) - 1)])
		or:
			[limitedWaypoint checkTimeIn: durationMatrix with: aWaypointList using:
					self]]
		whileFalse:
			[index := aWaypointList indexOf: limitedWaypoint.
			auxWaypoint := aWaypointList at: index - 1.
			aWaypointList
				at: index - 1
				put: limitedWaypoint.
			aWaypointList at: index put: auxWaypoint]