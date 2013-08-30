accessing
value: aValue x: aColumn  y: aRow 
	"inserta un elemento aValue dentro de la matrix determiando los puntos X e Y de dicha matriz"
	
	matrix at: (((aColumn * size) + aRow) +1) put: aValue.   