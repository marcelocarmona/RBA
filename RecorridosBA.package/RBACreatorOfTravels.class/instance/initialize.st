initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	self destinationsFormComponent: RBAFormDestinations new.
	self destinationsFormComponent parent: self.
	self travelQueryProcessor: TravelQueryProcessor new.

