initialize-release
initializeFrom: aWaypoint waypoints: aCollection mode: aMode
	
	super initialize.
	origin := aWaypoint.
	waypoints := aCollection.
	mode := aMode.
	^self