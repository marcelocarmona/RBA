private
executeDistanceMatrixParser: aResponse andWaypoints: auxWaypointCollection
	
	self initialize.
	self xmlDocument: (XMLDOMParser parseDocumentFrom:  aResponse asUrl retrieveContents contentStream).
	^self
		unmarshalDurationMatrix: self xmlDocument
		andWaypoints: auxWaypointCollection