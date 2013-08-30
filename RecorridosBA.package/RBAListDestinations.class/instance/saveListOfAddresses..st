actions
saveListOfAddresses: aNameList

	|anAddressValueObjectList|
	
	anAddressValueObjectList := AddressValueObjectList new: self addressList copy.
	anAddressValueObjectList nameList: aNameList.

	self session user addListOfAddresses: anAddressValueObjectList