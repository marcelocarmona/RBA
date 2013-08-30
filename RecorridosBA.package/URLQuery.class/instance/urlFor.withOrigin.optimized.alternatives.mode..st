url process
urlFor: aWaypointCollection withOrigin: aWaypoint optimized: optimized alternatives: alternatives mode: aModeString
	"Returns the directions URL for the passed parameters"
	
	aWaypointCollection size > 0
		ifTrue:
			[self
				urlQuery:
					'http://maps.google.com/maps/api/directions/xml?origin='
						, aWaypoint position x printString , ','
						, aWaypoint position y printString , '&destination='
						, aWaypointCollection last position x printString , ','
						, aWaypointCollection last position y printString.
			aWaypointCollection size > 1
				ifTrue:
					[self
						urlQuery:
							self urlQuery , '&waypoints=optimize:' , optimized printString , '|'
								, (self urlForWaypoints: aWaypointCollection)].
			self
				urlQuery:
					self urlQuery , '&sensor=false&alternatives=' , alternatives printString ,
							'&mode=' , (TravelRequest modes at: aModeString) modeString ,
							'&language=es']