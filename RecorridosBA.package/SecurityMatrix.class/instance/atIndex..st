getters
atIndex: aInteger
	|index resu|
	index := ((aInteger - 1) * 3)+1.
	resu := (matrix matrix copyFrom: index to: (index + 2)) asString.
	 ^((resu at: 4) asString),((resu at: 7) asString),((resu at: 10) asString). 