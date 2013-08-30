travel processing
processDurationMatrix: anAddressCollection withOrigin: aWaypoint andTravelRequest: travelRequest
	"Processes and return the DurationMatrix for anAddressCollection starting with aWaypoint and the mode holded by travelRequest"
	
	| dictionary auxWaypointCollection |
	auxWaypointCollection := OrderedCollection new.
	anAddressCollection size > 0
		ifTrue:
			[auxWaypointCollection addLast: aWaypoint.
			auxWaypointCollection addAll: anAddressCollection.
			dictionary := XmlParserRoute new
				executeDistanceMatrixParser:
					((TravelRequest modes at: travelRequest mode) durationMatrixUrlFor:
							anAddressCollection withOrigin: aWaypoint)
				andWaypoints: auxWaypointCollection.
			^dictionary]