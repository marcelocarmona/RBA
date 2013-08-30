testing
testSearchLimitedWaypoints
	
	| auxCollection waypoint8 waypoint9 waypoint10 |
	auxCollection := anOrderedCollection.
	limitedWaypointcollection := travelSerch searchLimitedWaypoints:
			auxCollection.
	self assert: (travelSerch searchLimitedWaypoints: auxCollection) size == 2.
	self assert: (limitedWaypointcollection at: 1) == waypoint3.
	waypoint8 := Waypoint
		newWithPosition:
			(Point
				x: -31.5794 asNumber
				y: -58.4466 asNumber)
		delay: 0
		limit: (Time hour: 10 minute: 0 second: 0)
		address: 'calle'.
	auxCollection add: waypoint8.
	limitedWaypointcollection := travelSerch searchLimitedWaypoints:
			auxCollection.
	self assert: limitedWaypointcollection size == 3.
	self assert: (limitedWaypointcollection at: 3) == waypoint8.
	waypoint9 := Waypoint
		newWithPosition:
			(Point
				x: -32.5823 asNumber
				y: -58.4444 asNumber)
		delay: 0
		limit: (Time hour: 0 minute: 0 second: 0)
		address: 'calle'.
	auxCollection add: waypoint9.
	limitedWaypointcollection := travelSerch searchLimitedWaypoints:
			auxCollection.
	self assert: limitedWaypointcollection size == 3.
	waypoint10 := Waypoint
		newWithPosition:
			(Point
				x: -33.5949 asNumber
				y: -58.4104 asNumber)
		delay: 15
		limit: (Time hour: 08 minute: 30 second: 0)
		address: 'calle'.
	auxCollection add: waypoint10.
	limitedWaypointcollection := travelSerch searchLimitedWaypoints:
			auxCollection.
	self assert: limitedWaypointcollection size == 4.
	self assert: (limitedWaypointcollection at: 1) == waypoint10