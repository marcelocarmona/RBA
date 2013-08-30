private
addRouteTime: aTime
	"Adds the total time to walk the route"
	
	| auxTime |
	auxTime := aTime.
	self route legs do: [:leg | auxTime := auxTime addSeconds: leg duration].
	^auxTime