actions
removeListOfAddresses: anAddressValueObjectList
	|storage persistentList persistentUser |

	self listOfAddresses remove: anAddressValueObjectList.

	"delete an persisted AddressValueObjectList"
	storage := RBAStorage default.
	
	storage session beginUnitOfWork.
	persistentList := storage session readOneOf: AddressValueObjectList where: [:each | each  id = anAddressValueObjectList id].
	persistentUser := storage session readOneOf: RBAUser where: [:each | each  userName = self userName].
	persistentUser listOfAddresses remove: persistentList.
	storage session commitUnitOfWork.
	