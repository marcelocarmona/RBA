accessing
at: t1 put: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	t1 <= limit ifTrue: [^self privateAt: t1 put: t2].
	t1 = (limit + 1) ifTrue: [^self addLast: t2].
	^self subscriptBoundsError: t1