private
changeCapacityTo: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 |
	t1 < self size ifTrue: [self error: #errSmallSizeError << #dialogs >> 'I can''t shrink that small'].
	(t2 := collection species new: t1)
		replaceFrom: 1
		to: limit
		with: collection
		startingAt: 1.
	collection := t2.
	collectionSize := t2 size.
	^self