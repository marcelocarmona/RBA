procesing
comprobarS1: aCharacter and: aString2 and: aString3 and: aString4 resu: aBoolean
"Este es el primer mensaje de una lista de mensajes, la idea es poder ejecutar recursivamete el primer string, caracter por caracter, para poder formar la mayor cantidad de combinaciones posibles y asi poder hallar el codigo de usuario correcto al logueo."

	aString2 do:[:c| self comprobarS2: aCharacter character: c and: aString3 and: aString4 resu: aBoolean].