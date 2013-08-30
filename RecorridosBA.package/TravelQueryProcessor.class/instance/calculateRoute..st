travel process
calculateRoute: travelRequest
	"Calculates a route for a travel request"
	
	self
		travel:
			(TravelQueryProcessor
				processTravel: travelRequest waypoints
				withOrigin: travelRequest origin
				optimized: true
				alternatives: false
				withMode: travelRequest mode).
	self travel request: travelRequest.
	self travel reorderWaypoints