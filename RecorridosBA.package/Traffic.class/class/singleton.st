singleton
singleton
	"Returns the singleton"
	
	singleton ifNil: [singleton := Traffic new].
	^singleton