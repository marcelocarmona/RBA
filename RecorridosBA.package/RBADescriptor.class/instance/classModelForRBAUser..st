as yet unclassified
classModelForRBAUser: aClassModel 
	aClassModel newAttributeNamed: #userName.
	aClassModel newAttributeNamed: #password.
	aClassModel newAttributeNamed: #securitycode.
	aClassModel newAttributeNamed: #securitypath.
	aClassModel newAttributeNamed: #listOfAddresses collectionOf: AddressValueObjectList.