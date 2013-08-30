testing
userExist
	|storage userOrNil|

	storage := RBAStorage default.
	
	storage session beginUnitOfWork.
	userOrNil := storage session readOneOf: RBAUser where: [:each | each  userName = self userName].
	storage session commitUnitOfWork.
	
	^userOrNil isNil