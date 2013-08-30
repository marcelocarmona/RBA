search
relocateWaypointsFrom: first to: last in: waypointList
	"Relocates the waypoints in waypointList from first to last, comparing the distance between them"
	
	(first to: last - 1)
		do:
			[:index | self relocateMinWaypointFrom: index to: last in: waypointList]