url
durationMatrixUrlFor: anAddressCollection withOrigin: aWaypoint
	"Returns the url for the Duration Matrix API"
	
	| urlQuery |
	urlQuery := URLQuery new.
	urlQuery
		durationMatrixUrlFor: anAddressCollection
		withOrigin: aWaypoint
		withMode: self modeString.
	^urlQuery urlQuery