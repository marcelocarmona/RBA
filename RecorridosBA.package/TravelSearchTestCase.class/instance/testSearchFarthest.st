testing
testSearchFarthest
	
	| waypoint5 waypoint6 waypoint7 |
	waypoint5 := Waypoint
		newWithPosition:
			(Point
				x: -34.5794 asNumber
				y: -58.4466 asNumber)
		delay: 0
		limit: (Time hour: 0 minute: 0 second: 0)
		address: 'calle'.
	waypoint6 := Waypoint
		newWithPosition:
			(Point
				x: -34.5823 asNumber
				y: -58.4444 asNumber)
		delay: 0
		limit: (Time hour: 0 minute: 0 second: 0)
		address: 'calle'.
	waypoint7 := Waypoint
		newWithPosition:
			(Point
				x: -34.5949 asNumber
				y: -58.4104 asNumber)
		delay: 0
		limit: (Time hour: 0 minute: 0 second: 0)
		address: 'calle'.
	farthestWaypoint := travelSerch searchFarthest: anOrderedCollection
		withOrigin: waypoint1.
	self assert: farthestWaypoint == waypoint3.
	anOrderedCollection add: waypoint5.
	farthestWaypoint := travelSerch searchFarthest: anOrderedCollection
		withOrigin: waypoint1.
	self assert: farthestWaypoint == waypoint5.
	anOrderedCollection add: waypoint6.
	farthestWaypoint := travelSerch searchFarthest: anOrderedCollection
		withOrigin: waypoint1.
	self assert: farthestWaypoint == waypoint5.
	anOrderedCollection add: waypoint7.
	farthestWaypoint := travelSerch searchFarthest: anOrderedCollection
		withOrigin: waypoint1.
	self assert: farthestWaypoint == waypoint5