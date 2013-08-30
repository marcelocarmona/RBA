private
unmarshal: aXmlDocument
	"Starts the Parser if elementStatus is OK, the other states indicates some type of error"
	
	| elementStatus elementRoutes collectionRoutes |
	elementStatus := aXmlDocument root elementNamed: 'status'.
	elementStatus characterData = 'OK'
		ifTrue:
			[collectionRoutes := OrderedCollection new.
			elementRoutes := aXmlDocument root elementsNamed: 'route'.
			elementRoutes
				do: [:each | collectionRoutes add: (self routeParser: each)].
			^collectionRoutes]
		ifFalse: [^self route]