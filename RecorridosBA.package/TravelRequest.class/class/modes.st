mode
modes
	
	modes isNil
		ifTrue:
			[modes := Dictionary new.
			modes
				at: 'walking'
				put: WalkingTravelSearch new.
			modes
				at: 'driving'
				put: ByCarTravelSearch new.
			modes
				at: 'auto'
				put: AutomaticTravelSearch new].
	^modes