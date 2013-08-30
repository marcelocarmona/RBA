private-collection accessing
privateRemoveIndex: t1 to: t2 returnElements: t3 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t4 t5 t6 t7 t8 t9 |
	t5 := t2 - t1 + 1.
	t3
		ifTrue: [(t4 := Array new: t5)
				replaceFrom: 1
				to: t5
				with: collection
				startingAt: t1]
		ifFalse: [t4 := nil].
	t6 := limit - t5.
	collection
		replaceFrom: t1
		to: t6
		with: collection
		startingAt: t2 + 1.
	t7 := self defaultElement.
	t8 := t6 + 1.
	t9 := limit.
	[t8 <= t9]
		whileTrue: 
			[collection at: t8 put: t7.
			t8 := t8 + 1].
	limit := t6.
	dependents == nil ifFalse: [self changed: #removeFrom:to: with: (Array with: t1 with: t2)].
	^t4