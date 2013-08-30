actions
comprobarCodigo: c1 and: c2 and: c3 and: c4 and: codigo
	|c1bool c2bool c3bool c4bool|
	c1bool := false.c2bool := false.c3bool := false.c4bool := false.
	codigo do: [:c| (c asString = c1 asString )ifTrue: [c1bool := true].
       				(c asString = c2 asString )ifTrue: [c2bool := true].
					(c asString = c3 asString )ifTrue: [c3bool := true].
					(c asString = c4 asString )ifTrue: [c4bool := true]].
	 ^(((c1bool and: c2bool) and: c3bool) and: c4bool).