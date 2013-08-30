testing
checkTimeIn: durationMatrix with: aWaypointList using: travelSearch
	"Returns if this waypoints fulfills its time limitation"
	
	^(travelSearch timeTo: self in: aWaypointList withDurations:
			durationMatrix) <= self limit