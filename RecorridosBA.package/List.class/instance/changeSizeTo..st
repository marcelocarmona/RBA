adding
changeSizeTo: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 t3 t4 |
	t1 < 0 ifTrue: [self error: #errNeedPositiveIntegerArg << #dialogs >> 'This message needs a positive integer argument'].
	collectionSize >= t1
		ifTrue: 
			[t3 := t1 + 1.
			t4 := limit.
			[t3 <= t4]
				whileTrue: 
					[collection at: t3 put: nil.
					t3 := t3 + 1].
			limit := t1.
			^self].
	(t2 := self biggerCollectionWithAtLeast: t1)
		replaceFrom: 1
		to: self size
		with: collection
		startingAt: 1.
	collectionSize := (collection := t2) size.
	limit := t1.
	^self