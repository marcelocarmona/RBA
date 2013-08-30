hooks
children
	|aCollection|
	aCollection := OrderedCollection new.
	aCollection add: self menuHeaderComponent.
	aCollection add: self messageComponent.
	^aCollection