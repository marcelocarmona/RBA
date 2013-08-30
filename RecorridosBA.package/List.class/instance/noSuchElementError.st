private-errors
noSuchElementError
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	self error: #errAttemptedNonExistentInSequencedCollection << #dialogs >> 'attempt to index non-existent element in an ordered collection'.
	^self