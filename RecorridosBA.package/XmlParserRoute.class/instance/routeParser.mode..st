private
routeParser: aRoute mode: aString
	
	| collectionLegs |
	collectionLegs := OrderedCollection new.
	aRoute allElementsNamed: 'leg'
		do: [:each | collectionLegs add: (self legParser: each mode: aString)].
	^(Route new)
		summary: (aRoute elementAt: 'summary') contentString;
		legs: collectionLegs