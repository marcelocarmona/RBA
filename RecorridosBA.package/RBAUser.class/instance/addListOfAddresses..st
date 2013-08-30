actions
addListOfAddresses: anAddressValueObjectList
	|storage persistentUser|
	
	self listOfAddresses add: anAddressValueObjectList.
	
	"change id of persistent AddressValueObjects, to create new repeated AddressValueObjects"
	anAddressValueObjectList addressList do:[:anAddressValueObject | anAddressValueObject id: nil].
	
	"persist an AddressValueObjectList"
	storage := RBAStorage default.
	
	storage session beginUnitOfWork.
	persistentUser := storage session readOneOf: RBAUser where: [:each | each  userName = self userName].
	persistentUser listOfAddresses add: anAddressValueObjectList.
	storage session commitUnitOfWork.

	