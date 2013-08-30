search
searchRouteByTimeLimitFrom: aWaypointCollection andOrigin: aWaypoint andDurationMatrix: distanceMatrix
	"Relocates the waypoints in aWaypointCollection trying to fulfill the time limitations of the time-limited waypoints"
	
	| limitedWaypoints auxWaypointList processed |
	auxWaypointList := List new.
	auxWaypointList add: aWaypoint.
	auxWaypointList addAll: aWaypointCollection.
	processed := OrderedCollection new.
	processed addLast: aWaypoint.
	limitedWaypoints := self searchLimitedWaypoints: aWaypointCollection.
	limitedWaypoints
		do:
			[:limitedWaypoint | 
			self relocateWaypoint: limitedWaypoint in: auxWaypointList checking:
					processed withDurations: distanceMatrix.
			self
				optimizeDistanceFrom: processed last
				in: auxWaypointList.
			processed add: limitedWaypoint].
	self
		optimizeDistanceFrom: processed last
		in: auxWaypointList.
	auxWaypointList removeFirst.
	^auxWaypointList