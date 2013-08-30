initialize-release
initialize: aWaypointCollection
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.	" *** Edit the following to properly initialize instance variables ***"
	waypoints := aWaypointCollection.
	route := nil.	" *** And replace this comment with additional initialization code *** "
	^self