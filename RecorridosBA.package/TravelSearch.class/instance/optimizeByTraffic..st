search
optimizeByTraffic: aLegCollection
	"Optimizes the legs to get the less time consuming legs, checking the traffic"
	
	| aLegCollectionAux |
	aLegCollectionAux := OrderedCollection new.
	aLegCollection
		do:
			[:aLeg | 
			aLegCollectionAux
				add:
					(self
						getBestTrafficLegFrom: aLeg startLocation
						To: aLeg endLocation)].
	^aLegCollectionAux