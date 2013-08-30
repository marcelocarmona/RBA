enumerating
do: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 t3 |
	t2 := 1.
	t3 := limit.
	[t2 <= t3]
		whileTrue: 
			[t1 value: (self privateAt: t2).
			t2 := t2 + 1].
	^self