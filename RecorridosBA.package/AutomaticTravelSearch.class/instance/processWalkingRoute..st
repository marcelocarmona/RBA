search
processWalkingRoute: route
	"Process a walking route and returns the result directions"
	
	| auxRoute origin |
	auxRoute := route copy.
	origin := auxRoute removeFirst.
	auxRoute addLast: origin.
	^(TravelQueryProcessor processTravel: auxRoute withOrigin: origin
		optimized: true alternatives: false withMode: 'walking') routes first