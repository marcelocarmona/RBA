travel processing
processTravel: anAddressCollection withOrigin: aWaypoint optimized: optimized alternatives: alternatives withMode: aModeString
	"Processes and returns a Travel for anAddressCollection starting with aWaypoint with the passed options (optimized, alternatives and aModeString)"
	
	| travel |
	anAddressCollection size > 0
		ifTrue:
			[travel := Travel new.
			travel
				routes:
					(XmlParserRoute new
						executeParser:
							((TravelRequest modes at: aModeString) urlFor: anAddressCollection
								withOrigin: aWaypoint optimized: optimized alternatives:
									alternatives)
						mode: aModeString).
			^travel]