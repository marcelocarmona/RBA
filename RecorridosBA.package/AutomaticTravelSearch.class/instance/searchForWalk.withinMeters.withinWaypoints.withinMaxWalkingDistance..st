search
searchForWalk: aWaypointCollection withinMeters: aMeterNumber withinWaypoints: aWaypointNumber withinMaxWalkingDistance: aDistanceNumber
	"Searches the waypoints in aWaypointCollection that are within aMeterNumber and filters the routes that have less than aWaypointNumber and their distances are bigger than aDistanceNumber"
	
	| aWalkingRoute routes |
	routes := Set new.
	aWaypointCollection
		do:
			[:wp | 
			aWalkingRoute := aWaypointCollection
				select: [:waypoint | (wp distanceTo: waypoint) < aMeterNumber].
			(aWalkingRoute size >= aWaypointNumber
				and:
					[(aWalkingRoute
						inject: 0
						into:
							[:walkingDistance :waypoint | walkingDistance + (wp distanceTo: waypoint)])
						< aDistanceNumber]) ifTrue: [routes add: aWalkingRoute]].
	routes := self exclusiveRoutes: routes forWaypoints: aWaypointCollection.
	^routes