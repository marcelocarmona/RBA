private
stepParser: aStep
	
	| aTravelStep |
	aTravelStep := (Step new)
		start:
				(Point
						x:
							((aStep elementAt: 'start_location') elementAt: 'lat') contentString
								asNumber
						y:
							((aStep elementAt: 'start_location') elementAt: 'lng') contentString
								asNumber);
		end:
				(Point
						x:
							((aStep elementAt: 'end_location') elementAt: 'lat') contentString
								asNumber
						y:
							((aStep elementAt: 'end_location') elementAt: 'lng') contentString
								asNumber);
		distance: (self distanceParser: aStep);
		duration: (self durationParser: aStep);
		polyline:
				((aStep elementAt: 'polyline') elementAt: 'points') contentString;
		instructions: (aStep elementAt: 'html_instructions') contentString.
	aTravelStep
		traffic:
			(Traffic
				getTrafficFor: aTravelStep start
				to: aTravelStep end).
	^aTravelStep