removing
removeFrom: t1 to: t2 returnElements: t3 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	t1 > t2
		ifTrue: 
			[t3 ifTrue: [^Array new].
			^nil].
	t1 > limit ifTrue: [^self subscriptBoundsError: t1].
	t2 > limit ifTrue: [^self subscriptBoundsError: t2].
	^self
		privateRemoveIndex: t1
		to: t2
		returnElements: t3