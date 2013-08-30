hooks
children
	|aCollection|
	aCollection := super children.
	aCollection add: self destinationsFormComponent.
	^aCollection