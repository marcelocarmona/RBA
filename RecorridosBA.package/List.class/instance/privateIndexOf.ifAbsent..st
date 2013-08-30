private-collection accessing
privateIndexOf: t1 ifAbsent: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t3 t4 |
	t3 := 1.
	t4 := limit.
	[t3 <= t4]
		whileTrue: 
			[(collection at: t3)
				= t1 ifTrue: [^t3].
			t3 := t3 + 1].
	^t2 value