url process
urlForWaypoints: aWaypointCollection
	"Returns part of the directions URL"
	
	| url |
	url := ''.
	1
		to: aWaypointCollection size - 1
		do:
			[:index | 
			url := url , (aWaypointCollection at: index) position x printString , ','
				, (aWaypointCollection at: index) position y printString.
			index < (aWaypointCollection size - 1) ifTrue: [url := url , '|']].
	^url