accessing
generateUserPath
	|resu rand todos letra final|
	final := ''.
	todos :=  OrderedCollection new.
	'abcdefghijklmnopqrstuvwxyz' do:[:c| todos add: c.].
	0 to: 7 do:
	[:i|
		rand:= Random new.
		letra := todos atRandom: rand.
		final := final asString ,letra asString. 
		todos remove: letra.
	].
	^final.