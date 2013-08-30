*recorridosba
asList
	"	***This is decompiled code.*** 
	This may reflect a problem with the configuration of your image and its 
	sources and changes files. 
	Please refer to the documentation and the settings tool for help in setting up 
	the proper source code files."

	| t1 |
	t1 := List new: self size.
	self do: [:t2 | t1 addLast: t2].
	^t1