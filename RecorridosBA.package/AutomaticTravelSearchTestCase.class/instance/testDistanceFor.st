initialize-release
testDistanceFor
	
	self assert: [travelSearch distanceFor: orderedCollection] value > 0.
	self deny: [travelSearch distanceFor: orderedCollection] value isNil.
	self
		assert: [travelSearch distanceFor: orderedCollection] value rounded = 52