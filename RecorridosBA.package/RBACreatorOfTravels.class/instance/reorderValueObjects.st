ordering
reorderValueObjects
	
	| anAddressList aWaipointCollection |
	anAddressList := OrderedCollection new.
	aWaipointCollection := OrderedCollection new.
	aWaipointCollection
		addLast: self travelQueryProcessor travel request origin.
	aWaipointCollection
		addAll: self travelQueryProcessor travel request allWaypoints.
	aWaipointCollection
		do:
			[:aWaipoint | 
			anAddressList
				add:
					(self destinationsFormComponent destinationsListComponent addressList
						select: [:anAddress | anAddress street == aWaipoint address]) first].
	self destinationsFormComponent destinationsListComponent addressList:
			anAddressList