initialize-release
testSearchForWalkWithinMetersWithinWaypointsWithinMaxWalkingDistance
	
	| dir1 dir2 dir3 aMeterNumber aWaypointNumber aDistanceNumber |
	aMeterNumber := 50.
	aWaypointNumber := 5.
	aDistanceNumber := 2000.
	self
		deny:
			[travelSearch searchForWalk: orderedCollection withinMeters: aMeterNumber
				withinWaypoints: aWaypointNumber withinMaxWalkingDistance:
					aDistanceNumber] value isNil.
	[travelSearch searchForWalk: orderedCollection withinMeters: aMeterNumber
		withinWaypoints: aWaypointNumber withinMaxWalkingDistance:
			aDistanceNumber] value do: [:each | self assert: each size > 0].
	[travelSearch searchForWalk: orderedCollection withinMeters: aMeterNumber
		withinWaypoints: aWaypointNumber withinMaxWalkingDistance:
			aDistanceNumber] value do: [:each | self assert: each size = 4].
	dir1 := Waypoint
		newWithPosition:
			(Point
				x: -34.60291427626907 asNumber
				y: -58.40223304748537 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Larrea, 501-599'.
	dir2 := Waypoint
		newWithPosition:
			(Point
				x: -34.6054928839311 asNumber
				y: -58.40824119567873 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Ecuador, 301-399'.
	orderedCollection add: dir1.
	orderedCollection add: dir2.
	[travelSearch searchForWalk: orderedCollection withinMeters: aMeterNumber
		withinWaypoints: aWaypointNumber withinMaxWalkingDistance:
			aDistanceNumber] value do: [:each | self assert: each size = 5].
	dir3 := Waypoint
		newWithPosition:
			(Point
				x: -34.601395332912944 asNumber
				y: -58.4034990501404 asNumber)
		delay: 0
		limit: (Time hour: 8 minute: 0 second: 0)
		address: 'Paso, 602-700'.
	orderedCollection add: dir3.
	[travelSearch searchForWalk: orderedCollection withinMeters: aMeterNumber
		withinWaypoints: aWaypointNumber withinMaxWalkingDistance:
			aDistanceNumber] value do: [:each | self assert: each size = 6]