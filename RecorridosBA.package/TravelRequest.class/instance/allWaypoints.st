accessing
allWaypoints
	"Returns all waypoints (excluding the origin)."
	
	| auxList |
	auxList := List new.
	self waypoints do: [:each | auxList addAll: each asList].
	^auxList