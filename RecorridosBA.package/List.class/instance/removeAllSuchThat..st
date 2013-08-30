removing
removeAllSuchThat: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 t3 t4 |
	t2 := self class new.
	t4 := 1.
	[t4 <= limit]
		whileTrue: 
			[t3 := self privateAt: t4.
			(t1 value: t3)
				ifTrue: 
					[t2 addLast: t3.
					self privateRemoveIndex: t4]
				ifFalse: [t4 := t4 + 1]].
	^t2