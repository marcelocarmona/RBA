travel process
process: anOrderedCollection withMode: aString andOptimization: anotherString
	"Entry method of the route processing engine. It returns the final route for the waypoints in 'anOrderedCollection' with 'aString' mode and 'anotherString' optimization"
	
	| travelRequest |
	
	travelRequest := TravelRequest newFrom: anOrderedCollection mode: aString.
	
	((anotherString sameAs: 'distance') or: [anotherString sameAs: 'time'])
		ifTrue: [self switchFarthest: aString forTravelRequest: travelRequest].
		
	(TravelRequest modes at: aString) preProcess: travelRequest.
	
	self calculateRoute: travelRequest.
	
	(anotherString sameAs: 'time')
		ifTrue:
			[self optimizeByTimeWithMode: aString andTravelRequest: travelRequest].
		
	self travel request: travelRequest.
	
	self travel routes last
		legs:
			((TravelRequest modes at: aString)
				optimizeByTraffic: self travel routes last legs)