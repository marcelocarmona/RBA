private-collection accessing
privateAddLast: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	limit := limit + 1.
	collection at: limit put: t1.
	dependents == nil ifFalse: [self changed: #insert: with: limit].
	^t1