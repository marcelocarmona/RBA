private
unmarshalDurationMatrix: aXmlDocument andWaypoints: auxWaypointCollection
	"Starts the Parser if elementStatus is OK, the other states indicates some type of error"
	
	| elementStatus auxDictionary index |
	elementStatus := aXmlDocument root elementAt:#status.
	elementStatus contentString = 'OK'
		ifTrue:
			[index := 1.
			aXmlDocument root allElementsNamed: 'row' 
				do:
					[:each | 
					auxDictionary := self rowParser: each withWaypoints: auxWaypointCollection.
					self durationMatrix
						at: (auxWaypointCollection at: index)
						put: auxDictionary.
					index := index + 1].
			^self durationMatrix]
		ifFalse: [^self durationMatrix]