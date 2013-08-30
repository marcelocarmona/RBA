accessing
limit
	"Returns the min limit within the waypoints"
	
	| auxLimit |
	auxLimit := nil.
	self waypoints
		do:
			[:waypoint | 
			waypoint limited
				ifTrue:
					[auxLimit
						ifNil: [auxLimit := waypoint limit]
						ifNotNil:
							[waypoint limit < auxLimit ifTrue: [auxLimit := waypoint limit]]]]