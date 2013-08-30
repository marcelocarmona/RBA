adding
add: t1 beforeIndex: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	t2 <= limit
		ifTrue: [self privateInsertObject: t1 beforeIndex: t2]
		ifFalse: [t2 = (limit + 1)
				ifTrue: [self addLast: t1]
				ifFalse: [^self
						subscriptBoundsErrorFor: #add:beforIndex:
						index: t2
						value: t1]].
	^t1