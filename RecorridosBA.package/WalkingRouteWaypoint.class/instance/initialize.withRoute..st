initialize-release
initialize: aWaypointCollection withRoute: aRoute
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Edit the following to properly initialize instance variables ***"
	waypoints := aWaypointCollection
		sorted:
			[:a :b | 
			b limited
				ifTrue:
					[a limited
						ifTrue: [a limit < b limit]
						ifFalse: [false]]
				ifFalse: [true]].
	route := aRoute.	" *** And replace this comment with additional initialization code *** "
	^self