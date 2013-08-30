map scripting
getMarkersScript
	
	| jsMarkers time auxWaypoint |
	jsMarkers := ''.
	time := nil.
	self travelQueryProcessor travel routes isEmpty
		ifFalse:
			[self travelQueryProcessor travel allLegs
				do:
					[:aLeg | 
					time
						ifNil:
							[auxWaypoint := self travelQueryProcessor travel request origin.
							time := auxWaypoint limit]
						ifNotNil:
							[auxWaypoint := self travelQueryProcessor travel request
								fromAllWaypointsAt: aLeg startLocation].
					jsMarkers := jsMarkers , ' markersInfoArray.push(['
						,
							(auxWaypoint limited
								ifTrue:
									['"'
										,
											(auxWaypoint limit print24 ) , '"']
								ifFalse: ['null']) , ',"'
						, (time print24) , '"]); '.
					time := (time
						addTime:
							(Time
								hour: 0
								minute: auxWaypoint delay
								second: 0)) addSeconds: aLeg duration].
			auxWaypoint := self travelQueryProcessor travel request
				fromAllWaypointsAt:
					self travelQueryProcessor travel allLegs last endLocation.
			jsMarkers := jsMarkers , ' markersInfoArray.push(['
				,
					(auxWaypoint limited
						ifTrue:
							['"'
								,
									(auxWaypoint limit print24 ) , '"']
						ifFalse: ['null']) , ',"'
				, (time print24) , '"]); '].
		
	self destinationsFormComponent destinationsListComponent addressList
		do:
			[:anAddressValueObject | 
			jsMarkers := jsMarkers , ' addAddressMarkerWithLocationAndAddress('
				, anAddressValueObject latitud asString, ',' , anAddressValueObject longitude asString ,
					',' , ' "' , anAddressValueObject street , '"); '].
	^jsMarkers