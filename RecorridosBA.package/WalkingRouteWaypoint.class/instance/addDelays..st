private
addDelays: aTime
	"Adds all the delays fo this waypoint collection to a certain time"
	
	| auxTime |
	auxTime := aTime.
	waypoints
		do: [:waypoint | auxTime := auxTime addSeconds: waypoint delay * 60].
	^auxTime