actions
chequearMatriz 
	
	(core login: o1 and: o2 and: o3 and: o4)
	ifTrue: [login answer: user]
	ifFalse:[^ self messageComponent errorMessage: 'Incorrecto!!!'].
	