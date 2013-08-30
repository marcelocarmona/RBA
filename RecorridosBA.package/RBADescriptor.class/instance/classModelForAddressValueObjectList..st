as yet unclassified
classModelForAddressValueObjectList: aClassModel 
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #nameList.
	aClassModel newAttributeNamed: #date.
	aClassModel newAttributeNamed: #addressList collectionOf: AddressValueObject.