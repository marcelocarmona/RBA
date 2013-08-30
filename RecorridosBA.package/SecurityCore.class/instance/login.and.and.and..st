procesing
login: aSelectionone and: aSelectiontwo and: aSelectiontree and: aSelectionfour

	|string1 string2 string3 string4 index1 index2 index3 index4 resu|
	index1 := ((aSelectionone - 1) * 3)+1.
	index2 := ((aSelectiontwo - 1) * 3)+1.
	index3 := ((aSelectiontree - 1) * 3)+1.
	index4 := ((aSelectionfour - 1) * 3)+1.
	string1 := secmatrix matrix matrix copyFrom: index1 to: (index1 + 2).
	string2 := secmatrix matrix matrix copyFrom: index2 to: (index2 + 2).
	string3 := secmatrix matrix matrix copyFrom: index3 to: (index3+ 2).
	string4 := secmatrix matrix matrix copyFrom: index4 to: (index4 + 2).
	resu := Resultado  new.
	resu valor: false.
	string1 do: [:c| self comprobarS1: c and: string2 and: string3 and: string4 resu: resu].
	^resu valor.