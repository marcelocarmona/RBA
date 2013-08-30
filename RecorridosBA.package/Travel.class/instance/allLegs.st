accessing
allLegs
	"Returns all legs of the last route of the travel"
	
	| auxLegs |
	auxLegs := List new.
	self routes last legs
		do:
			[:aLeg | 
			auxLegs add: aLeg.
			auxLegs addAll: (self request waypointAt: aLeg endLocation) allLegs].
	^auxLegs