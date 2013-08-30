initialize-release
setUp
	
	| dir1 dir2 dir3 dir4 |
	travelSearch := AutomaticTravelSearch new.
	orderedCollection := OrderedCollection new.
	dir1 := Waypoint
		newWithPosition:
			(Point
				x: -34.60098909916739 asNumber
				y: -58.4033917617798 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Viamonte, 2502-2600'.
	dir2 := Waypoint
		newWithPosition:
			(Point
				x: -34.601218709789464 asNumber
				y: -58.401052875518815 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Viamonte, 2402-2500'.
	dir3 := Waypoint
		newWithPosition:
			(Point
				x: -34.601660266893866 asNumber
				y: -58.402318878173844 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Larrea, 601-699'.
	dir4 := Waypoint
		newWithPosition:
			(Point
				x: -34.60019428826607 asNumber
				y: -58.402576370239274 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'San Luis, 2502-2600'.
	orderedCollection add: dir1.
	orderedCollection add: dir2.
	orderedCollection add: dir3.
	orderedCollection add: dir4.
	^self