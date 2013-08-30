search
preProcess: aTravelRequest
	"We search for walking routes and override the waypoints that matches a walking rooute with a WalkingRouteWaypoint that contains them (one per route founded)"
	
	(self
		searchForWalk: aTravelRequest waypoints
		within: 100)
		do:
			[:route | 
			aTravelRequest waypoints removeAll: route.
			aTravelRequest waypoints
				add:
					(WalkingRouteWaypoint
						new: route
						andRoute: (self processWalkingRoute: route))]