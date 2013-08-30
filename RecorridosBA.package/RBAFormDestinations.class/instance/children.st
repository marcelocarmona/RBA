hooks
children
	|aCollection|
	aCollection := OrderedCollection new.
	aCollection add: self destinationsListComponent.
	aCollection add: self userListDestinationsComponent.
	^aCollection