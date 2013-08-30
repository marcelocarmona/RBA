testing
testSwitchFarthest
	
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
	self travelQueryProcessor
		switchFarthest: self mode
		forTravelRequest: travelRequest.
	self
		assert:
			[travelRequest waypoints last
				== (travelRequest waypointAt: dir3 latitud @ dir3 longitude)] value.
	travelRequest addWaypoints: waypoint5.
	self travelQueryProcessor
		switchFarthest: self mode
		forTravelRequest: travelRequest.
	self assert: [travelRequest waypoints last == waypoint5] value.
	travelRequest addWaypoints: waypoint6.
	self travelQueryProcessor
		switchFarthest: self mode
		forTravelRequest: travelRequest.
	self assert: [travelRequest waypoints last == waypoint5] value.
	travelRequest addWaypoints: waypoint7.
	self travelQueryProcessor
		switchFarthest: self mode
		forTravelRequest: travelRequest.
	self assert: [travelRequest waypoints last == waypoint5] value