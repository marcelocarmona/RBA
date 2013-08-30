accessing
before: t1 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t2 |
	(t2 := self findIndexOf: t1) = 1 ifTrue: [^self firstObjectError].
	^self privateAt: t2 - 1