initialize-release
setUp
	
	anOrderedCollection := OrderedCollection new.
	limitedWaypointcollection := SortedCollection new.
	waypoint1 := Waypoint
		newWithPosition:
			(Point
				x: -34.5996 asNumber
				y: -58.3798 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Suipacha, 702-800'.
	waypoint2 := Waypoint
		newWithPosition:
			(Point
				x: -34.5936 asNumber
				y: -58.404)
		delay: 20
		limit: (Time hour: 0 minute: 0 second: 0)
		address: 'Av Santa Fe, 2601-2699'.
	waypoint3 := Waypoint
		newWithPosition:
			(Point
				x: -34.6041 asNumber
				y: -58.4251 asNumber)
		delay: 0
		limit: (Time hour: 9 minute: 0 second: 0)
		address: 'Sarmiento, 4201-4299'.
	waypoint4 := Waypoint
		newWithPosition:
			(Point
				x: -34.6041 asNumber
				y: -58.3812 asNumber)
		delay: 0
		limit: (Time hour: 9 minute: 20 second: 0)
		address: 'San Nicol√°s, Av 9 de Julio'.
	anOrderedCollection add: waypoint2.
	anOrderedCollection add: waypoint3.
	anOrderedCollection add: waypoint4.
	origin := waypoint1.
	travelSerch := TravelSearch new.
	farthestWaypoint := Waypoint new