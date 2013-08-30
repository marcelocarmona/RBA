adding
add: t1 after: t2 
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t3 |
	t3 := self findIndexOf: t2.
	self add: t1 beforeIndex: t3 + 1.
	^t1