ordering
reorderWaypoints
	"Reorders the waypoints of the travel request, to match the order from the result route"
	
	| waypoints waux |
	waypoints := List new.
	self routes last legs
		do:
			[:aLeg | 
			waux := self request waypointAt: aLeg startLocation.
			waux isNil ifFalse: [waypoints addLast: waux]].
	waypoints addLast: self request waypoints last.
	self request waypoints: waypoints