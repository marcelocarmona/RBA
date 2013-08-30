map scripting
getRouteLine
	
	| jsRouteLine polyline htmlInstructions |
	jsRouteLine := ''.
	htmlInstructions := '<ol>'.
	(self travelQueryProcessor travel isNil not
		and: [self travelQueryProcessor travel routes isEmpty not])
		ifTrue:
			[self travelQueryProcessor travel allLegs
				do:
					[:aLeg | 
					aLeg steps
						do:
							[:aStep | 
							polyline := aStep polyline copyReplaceAll: '\' with: '\\'.
							jsRouteLine := jsRouteLine , 'calcRoute("' , polyline , '", "'
								, aLeg mode , '"); '.
							htmlInstructions := htmlInstructions , '<li><p>'
								, aStep instructions , '</p></li><hr>']].
			htmlInstructions := htmlInstructions , '</ol>'.
			htmlInstructions := htmlInstructions copyReplaceAll: '\' with: '\\'.
			htmlInstructions := htmlInstructions copyReplaceAll: '"' with: '\"'.
			htmlInstructions := '"<div>' , htmlInstructions , '</div>"'.
			jsRouteLine := jsRouteLine ,
					'document.getElementById("directions_panel").innerHTML = ' ,
					htmlInstructions , ';'].
	^jsRouteLine