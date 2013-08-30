private-collection accessing
moveDown: t1 fromIndex: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t3 |
	limit + t1 > collectionSize
		ifTrue: 
			[(t3 := self biggerCollectionWithAtLeast: limit + t1)
				replaceFrom: 1
				to: t2 - 1
				with: collection
				startingAt: 1.
			t3
				replaceFrom: t2 + t1
				to: limit + t1
				with: collection
				startingAt: t2.
			collectionSize := (collection := t3) size]
		ifFalse: [collection
				replaceFrom: t2 + t1
				to: limit + t1
				with: collection
				startingAt: t2].
	^self