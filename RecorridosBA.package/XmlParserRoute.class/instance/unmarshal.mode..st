private
unmarshal: aXmlDocument mode: aString
	"Starts the Parser if elementStatus is OK, the other states indicates some type of error"
	
	| elementStatus elementRoutes collectionRoutes |
	elementStatus := aXmlDocument root elementAt:#status.
	elementStatus contentString = 'OK'
		ifTrue:
			[collectionRoutes := OrderedCollection new.
			aXmlDocument root allElementsNamed: 'route'
				do:
					[:each | collectionRoutes add: (self routeParser: each mode: aString)].
			^collectionRoutes]
		ifFalse: [^self route]