travel processing
urlFor: anAddressCollection
	"Return the URL for a list of addresses"
	
	| urlQuery |
	urlQuery := URLQuery new.
	urlQuery urlFor: anAddressCollection.
	^urlQuery urlQuery