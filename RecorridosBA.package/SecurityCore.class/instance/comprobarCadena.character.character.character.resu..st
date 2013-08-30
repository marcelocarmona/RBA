procesing
comprobarCadena: aCharacter character: aCharacter2 character: aCharacter3 character: aCharacter4 resu: aBoolean
"Este es el final de la cadena recursiva de strings, al llegar aca se tiene los chars de todos los string y se procede a corroborar si dicha cadena armada recursivamente machea con el codigo del usuario, en caso de que machee se devuelve True como respuesta y el usuario puede ingresar al sistema"

	|auxstring|
	auxstring := aCharacter asString , aCharacter2 asString , aCharacter3 asString , aCharacter4 asString.
	(((SecureHashAlgorithm new hashMessage: auxstring) asString) =  secmodel code)
	ifTrue: [aBoolean valor: true].