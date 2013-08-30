distance
max: aWaypoint
	
	^(self position max: aWaypoint position) = self position
		ifTrue: [self]
		ifFalse: [aWaypoint]