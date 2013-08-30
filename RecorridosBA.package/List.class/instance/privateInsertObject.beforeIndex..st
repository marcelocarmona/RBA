private-collection accessing
privateInsertObject: t1 beforeIndex: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	self moveDown: 1 fromIndex: t2.
	collection at: t2 put: t1.
	limit := limit + 1.
	dependents == nil ifFalse: [self changed: #insert: with: t2].
	^self