search
exclusiveRoutes: aRouteCollection forWaypoints: aWaypointList
	"Filters the routes in aRouteCollection so that no routes has shared waypoints between them"
	
	| sharedWaypointRoutes selectedRoute resultRoutes |
	resultRoutes := Set new.
	aWaypointList
		do:
			[:aWaypoint | 
			sharedWaypointRoutes := aRouteCollection asList "------>asList <-------"
				select: [:aRoute | aRoute includes: aWaypoint].
			sharedWaypointRoutes notEmpty
				ifTrue:
					[selectedRoute := sharedWaypointRoutes
						inject: (sharedWaypointRoutes first)"--->first<----"
						into:
							[:max :route | 
							route size > max size
								ifTrue: [route]
								ifFalse: [max]].
					resultRoutes add: selectedRoute.
					aRouteCollection
						removeAll:
							(aRouteCollection
								select:
									[:aRoute | 
									selectedRoute
										anySatisfy: [:anotherWaypoint | aRoute includes: anotherWaypoint]])]].
	^resultRoutes