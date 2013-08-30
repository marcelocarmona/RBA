url process
pointUrlForWaypoints: aWaypointCollection andOrigin: aWaypoint
	"Returns the part of the duration matrix URL"
	
	| auxWaipointCollection stringUrl |
	auxWaipointCollection := OrderedCollection new.
	auxWaipointCollection addLast: aWaypoint.
	auxWaipointCollection addAll: aWaypointCollection.
	stringUrl := ''.
	auxWaipointCollection
		do:
			[:anotherWaipoint | 
			stringUrl := stringUrl , anotherWaipoint position x printString , ','
				, anotherWaipoint position y printString]
		separatedBy: [stringUrl := stringUrl , '|'].
	^stringUrl