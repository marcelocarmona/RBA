private
rowParser: aRow withWaypoints: auxWaypointCollection
	
	| index dictionary |
	index := 1.
	dictionary := Dictionary new.
	aRow allElementsNamed:'element' 
		do:
			[:each | 
			dictionary
				at: (auxWaypointCollection at: index)
				put:
					((each elementAt:'duration') elementAt:'value') contentString 
						asNumber.
			index := index + 1].
	^dictionary