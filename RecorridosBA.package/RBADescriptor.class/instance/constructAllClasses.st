as yet unclassified
constructAllClasses
	^ (super constructAllClasses) 
		add: RBAUser;
		add: AddressValueObjectList;
		add: AddressValueObject;
		 yourself