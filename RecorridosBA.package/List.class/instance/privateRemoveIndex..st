private-collection accessing
privateRemoveIndex: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 |
	t2 := collection at: t1.
	collection
		replaceFrom: t1
		to: limit - 1
		with: collection
		startingAt: t1 + 1.
	collection at: limit put: self defaultElement.
	limit := limit - 1.
	dependents == nil ifFalse: [self changed: #remove: with: t1].
	^t2