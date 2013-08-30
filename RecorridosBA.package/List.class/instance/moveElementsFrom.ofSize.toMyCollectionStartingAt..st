private-collection accessing
moveElementsFrom: t1 ofSize: t2 toMyCollectionStartingAt: t3 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	t1 isSequenceable
		ifTrue: [collection
				replaceFrom: t3
				to: t3 + t2 - 1
				with: t1
				startingAt: 1]
		ifFalse: 
			[| t4 |
			t4 := t3.
			t1
				do: 
					[:t5 | 
					collection at: t4 put: t5.
					t4 := t4 + 1]].
	^self