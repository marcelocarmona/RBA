testing
samePoint: aPoint
	"Answers if it is the same point as the value object point"
	
	^((Point
		x: self latitud
		y: self longitude) dist: aPoint) < 0.001