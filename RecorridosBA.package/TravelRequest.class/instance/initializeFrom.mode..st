initialize-release
initializeFrom: aCollection mode: aMode
	
	self initialize.
	aCollection
		do:
			[:aWaypoint | 
			waypoints
				add:
					(Waypoint
						newWithPosition:
							(Point
								x: aWaypoint latitud asNumber
								y: aWaypoint longitude asNumber)
						delay: aWaypoint delay asNumber
						limit:
							(Time
								hour: aWaypoint limitHs asNumber
								minute: aWaypoint limitMin asNumber
								second: 0)
						address: aWaypoint street)].
	origin := waypoints first.
	waypoints removeFirst.
	mode := aMode.
	^self