adding
addAllLast: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 |
	t2 := t1 size.
	limit + t2 > collectionSize ifTrue: [self growCollectionBy: (self growSize max: t2)].
	self
		moveElementsFrom: t1
		ofSize: t2
		toMyCollectionStartingAt: limit + 1.
	limit := limit + t2.
	dependents == nil ifFalse: [self changed: #appendCollection: with: t1 size].
	^t1