initialize-release
initialize 
	"Inicializa el objeto con sus variables, matrix y la lista de spots libres (freespot) ya inicializadas"
	
	super initialize.
	matrix := MatrixBA newX: 7 Y: 3.
	freespot := OrderedCollection new.
	0 to: 6 do:
	[:i|
		0 to: 2 do:
		[:j|
			freespot add: (FreeSpot newColumn: i row: j).
		].
	]. 