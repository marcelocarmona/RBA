initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.	
	address := AddressValueObject new.
	mode := 'auto'.
	optimization := 'none'.
	self destinationsListComponent: RBAListDestinations new.
	self userListDestinationsComponent: (RBAUserListDestinations new: self destinationsListComponent).
	^self