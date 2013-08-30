private
createTrafficData
	"Creates mock traffic data"
	
	self traffic: OrderedCollection new.
	self traffic
		add:
			(TrafficPoint
				newWithPoint: -34.603824 @ -58.381777
				andState: RedState new).
	self traffic
		add:
			(TrafficPoint
				newWithPoint: -34.609193 @ -58.381348
				andState: RedState new).
	self traffic
		add:
			(TrafficPoint
				newWithPoint: -34.617634 @ -58.380919
				andState: YellowState new).
	self traffic
		add:
			(TrafficPoint
				newWithPoint: -34.592732 @ -58.382206
				andState: YellowState new)