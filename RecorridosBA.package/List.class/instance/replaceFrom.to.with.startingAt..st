accessing
replaceFrom: t1 to: t2 with: t3 startingAt: t4 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	t1 > (limit + 1) ifTrue: [^self subscriptBoundsError: t1].
	t2 <= limit
		ifTrue: 
			[collection
				replaceFrom: t1
				to: t2
				with: t3
				startingAt: t4.
			dependents == nil ifFalse: [self changed: #replace: with: (Array with: t1 with: t2)].
			^self].
	^self subscriptBoundsError: t2