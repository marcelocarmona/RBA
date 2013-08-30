private
insertCollection: t1 before: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t3 |
	t2 <= limit
		ifTrue: 
			[t3 := t1 size.
			self moveDown: t3 fromIndex: t2.
			self
				moveElementsFrom: t1
				ofSize: t3
				toMyCollectionStartingAt: t2.
			limit := limit + t3.
			dependents == nil ifTrue: [^nil].
			^self changed: #insertCollection: with: (Array with: t2 with: t1 size)].
	t2 = (limit + 1) ifTrue: [^self addAllLast: t1].
	^self
		subscriptBoundsErrorFor: #insertCollection:before:
		index: t2
		value: t1