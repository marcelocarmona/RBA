search
optimizeDistanceFrom: anOrigin in: waypointList
	"Optimizes the waypoints in waypointList from anOrigin till the next limited waypoint or to the end of the list"
	
	| originIndex nextWaypointIndex |
	originIndex := waypointList indexOf: anOrigin.
	nextWaypointIndex := originIndex + 1.
	[nextWaypointIndex <= waypointList size
		and: [(waypointList at: nextWaypointIndex) limited not]]
		whileTrue: [nextWaypointIndex := nextWaypointIndex + 1].
	(originIndex + 1 to: nextWaypointIndex - 1)
		do:
			[:index | 
			self
				relocateWaypointsFrom: index
				to: nextWaypointIndex - 1
				in: waypointList]