private
applyTrafficTimes
	"Applies the traffic times to every step in the route"
	
	| durationAux |
	self legs
		do:
			[:aLeg | 
			durationAux := 0.
			aLeg steps
				do:
					[:aStep | 
					aStep duration: aStep duration * aStep traffic.
					durationAux := durationAux + aStep duration].
			aLeg duration: durationAux]