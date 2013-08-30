procesing
loadMatrix

	|spot rand restovalue|
	secmodel path do: [:c|	
		rand := Random new.
		spot := secmatrix freespot atRandom: rand.
		secmatrix value: c x: spot column y: spot row.
		secmatrix freespot remove: spot.
	].
	0 to: 12 do:[:i|
		rand := Random new.
		spot := secmatrix freespot atRandom: rand.
		restovalue := secmodel resto atRandom: rand.
		secmatrix value: restovalue x: spot column y: spot row.
		secmatrix freespot remove: spot.
		secmodel resto remove: restovalue.
	].