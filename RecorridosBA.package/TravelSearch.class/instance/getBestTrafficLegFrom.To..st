search
getBestTrafficLegFrom: startLocation To: endLocation
	"Gets the best leg (in time) from one point to another"
	
	| aTravel bestLeg minDuration AuxDuration |
	aTravel := TravelQueryProcessor
		processTravel:
			(OrderedCollection with: (Waypoint newWithPosition: endLocation))
		withOrigin: (Waypoint newWithPosition: startLocation)
		optimized: false
		alternatives: true
		withMode: 'driving'.
	aTravel routes first applyTrafficTimes.
	bestLeg := aTravel routes first legs first.
	minDuration := aTravel routes first getRouteDuration.
	aTravel routes removeFirst.
	aTravel routes
		do:
			[:aRoute | 
			aRoute applyTrafficTimes.
			AuxDuration := aRoute getRouteDuration.
			AuxDuration < minDuration
				ifTrue:
					[minDuration := AuxDuration.
					bestLeg := aRoute legs first]].
	^bestLeg