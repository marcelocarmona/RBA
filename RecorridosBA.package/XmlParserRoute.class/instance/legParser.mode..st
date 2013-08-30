private
legParser: aLeg mode: aString
	
	| collectionsteps |
	collectionsteps := OrderedCollection new.
	aLeg allElementsNamed: 'step'
		do: [:step | collectionsteps add: (self stepParser: step)].
	^(Leg new)
		startLocation:
				(Point
						x:
							((aLeg elementAt: 'start_location') elementAt: 'lat') contentString 
								asNumber
						y:
							((aLeg elementAt: 'start_location') elementAt: 'lng') contentString
								asNumber);
		endLocation:
				(Point
						x:
							((aLeg elementAt: 'end_location') elementAt: 'lat') contentString
								asNumber
						y:
							((aLeg elementAt: 'end_location') elementAt: 'lng') contentString
								asNumber);
		steps: collectionsteps;
		distance: (self distanceParser: aLeg);
		duration: (self durationParser: aLeg);
		startAddress: (self startAddressParser: aLeg);
		endAddress: (self endAddressParser: aLeg);
		mode: aString