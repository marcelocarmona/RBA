search
timeTo: limitedWaypoint in: aWaypointList withDurations: durationMatrix
	"Calculates the time that takes to get to limitedWaypoint within aWaypointList"
	
	| timeFromStart |
	timeFromStart := aWaypointList first limit.
	2
		to: (aWaypointList indexOf: limitedWaypoint)
		do:
			[:index | 
			timeFromStart := timeFromStart
				addTime:
					(Time
						hour: 0
						minute: (aWaypointList at: index - 1) delay
						second: 0).
			timeFromStart := timeFromStart
				addSeconds:
					((durationMatrix at: (aWaypointList at: index - 1))
						at: (aWaypointList at: index))].
	^timeFromStart