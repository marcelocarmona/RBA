enumerating
select: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 t3 t4 t5 |
	t2 := self species new.
	t3 := 1.
	t4 := limit.
	[t3 <= t4]
		whileTrue: 
			[t5 := self at: t3.
			(t1 value: t5)
				ifTrue: [t2 addLast: t5].
			t3 := t3 + 1].
	^t2