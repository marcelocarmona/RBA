removing
removeFirst: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	t1 > limit ifTrue: [^self notEnoughElementsError].
	^self
		privateRemoveIndex: 1
		to: t1
		returnElements: true