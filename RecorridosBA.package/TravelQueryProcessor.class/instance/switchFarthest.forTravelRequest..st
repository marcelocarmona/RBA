travel process
switchFarthest: aString forTravelRequest: travelRequest
	"Switches the last waypoint of the route with the farthest one (from the origin)"
	
	| farthestWaypoint |
	farthestWaypoint := (TravelRequest modes at: aString)
		searchFarthest: travelRequest waypoints
		withOrigin: travelRequest origin.
	travelRequest waypoints remove: farthestWaypoint.
	travelRequest waypoints addLast: farthestWaypoint