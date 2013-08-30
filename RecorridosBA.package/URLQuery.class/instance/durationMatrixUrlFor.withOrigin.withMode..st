url process
durationMatrixUrlFor: aWaypointCollection withOrigin: aWaypoint withMode: aStringMode
	"Returns the duration matrix URL with the passed options"
	
	| pointUrl |
	pointUrl := self pointUrlForWaypoints: aWaypointCollection andOrigin:
			aWaypoint.
	aWaypointCollection size > 0
		ifTrue:
			[self
				urlQuery:
					'http://maps.googleapis.com/maps/api/distancematrix/xml?origins=' ,
							pointUrl , '&destinations=' , pointUrl , '&sensor=false&mode=' ,
							aStringMode , '&language=es']