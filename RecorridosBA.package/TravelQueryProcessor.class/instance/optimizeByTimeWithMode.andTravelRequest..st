travel process
optimizeByTimeWithMode: aString andTravelRequest: travelRequest
	"Optimizes the obtained route by the time constraints given by the user"
	
	| durationMatrix |
	
	durationMatrix := TravelQueryProcessor
		processDurationMatrix: travelRequest waypoints
		withOrigin: travelRequest origin
		andTravelRequest: travelRequest.
		
	travelRequest
		waypoints:
			((TravelRequest modes at: aString)
				searchRouteByTimeLimitFrom: travel request waypoints
				andOrigin: travel request origin
				andDurationMatrix: durationMatrix).
				
	self travel routes
		addAll:
			(TravelQueryProcessor
				processTravel: travelRequest waypoints
				withOrigin: travelRequest origin
				optimized: false
				alternatives: false
				withMode: travelRequest mode) routes