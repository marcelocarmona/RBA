private
legParser: aLeg
	
	| collectionsteps collectionwaypoints |
	collectionwaypoints := OrderedCollection new.
	collectionsteps := OrderedCollection new.
	(aLeg elementsNamed: 'step')
		do: [:step | collectionsteps add: (self stepParser: step)].
	^(Leg new)
		startLocation:
				(Point
						x:
							((aLeg elementNamed: 'start_location') elementNamed: 'lat') characterData
								asNumber
						y:
							((aLeg elementNamed: 'start_location') elementNamed: 'lng') characterData
								asNumber);
		endLocation:
				(Point
						x:
							((aLeg elementNamed: 'end_location') elementNamed: 'lat') characterData
								asNumber
						y:
							((aLeg elementNamed: 'end_location') elementNamed: 'lng') characterData
								asNumber);
		steps: collectionsteps;
		distance: (self distanceParser: aLeg);
		duration: (self durationParser: aLeg);
		startAddress: (self startAddressParser: aLeg);
		endAddress: (self endAddressParser: aLeg);
		waypoint: collectionwaypoints