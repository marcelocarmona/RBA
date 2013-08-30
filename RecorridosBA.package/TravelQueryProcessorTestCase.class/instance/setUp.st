initialize-release
setUp
	
	mode := 'auto'.
	orderedCollection := OrderedCollection new.
	dir1 := AddressValueObject new.
	dir2 := AddressValueObject new.
	dir3 := AddressValueObject new.
	dir4 := AddressValueObject new.
	dir1 latitud: -34.5996.
	dir1 longitude: -58.3798.
	dir1 delay: 0.
	dir1 limitHs: 0.
	dir1 limitMin: 0.
	dir1 street: 'Suipacha, 702-800'.
	dir2 latitud: -34.5936.
	dir2 longitude: -58.404.
	dir2 street: 'Av Santa Fe, 2601-2699'.
	dir2 delay: 0.
	dir2 limitHs: 0.
	dir2 limitMin: 0.
	dir3 latitud: -34.6041.
	dir3 longitude: -58.4251.
	dir3 street: 'Sarmiento, 4201-4299'.
	dir3 delay: 0.
	dir3 limitHs: 0.
	dir3 limitMin: 0.
	dir4 latitud: -34.6041.
	dir4 longitude: -58.3812.
	dir4 street: 'San Nicol√°s, Av 9 de Julio'.
	dir4 delay: 0.
	dir4 limitHs: 0.
	dir4 limitMin: 0.
	orderedCollection add: dir1.
	orderedCollection add: dir2.
	orderedCollection add: dir3.
	orderedCollection add: dir4.
	travelQueryProcessor := TravelQueryProcessor new.
	travelRequest := TravelRequest newFrom: orderedCollection mode: mode