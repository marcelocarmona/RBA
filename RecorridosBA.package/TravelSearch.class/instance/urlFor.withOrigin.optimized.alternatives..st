url
urlFor: anAddressCollection withOrigin: aWaypoint optimized: optimized alternatives: alternatives
	"Returns the url for the Directions API"
	
	| urlQuery |
	urlQuery := URLQuery new.
	urlQuery
		urlFor: anAddressCollection
		withOrigin: aWaypoint
		optimized: optimized
		alternatives: alternatives
		mode: self modeString.
	^urlQuery urlQuery