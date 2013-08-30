initialize-release
initializeX: aColumn Y: aRow 
	"Inicializa la matriz del tamaño dado por aColumn y aRow"
	
	super initialize.
	size := aRow.
	matrix := Array new: aColumn * aRow.
	^self. 