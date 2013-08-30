private
routeParser: aRoute
	
	| collectionLegs |
	collectionLegs := OrderedCollection new.
	(aRoute elementsNamed: 'leg')
		do: [:each | collectionLegs add: (self legParser: each)].
	^(Route new)
		summary: (aRoute elementNamed: 'summary') characterData;
		legs: collectionLegs