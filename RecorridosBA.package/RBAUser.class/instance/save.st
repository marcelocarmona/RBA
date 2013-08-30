actions
save
	|storage user|
	
	storage := RBAStorage default.
	
	storage session beginUnitOfWork.
	storage session register: self.
	storage session commitUnitOfWork.
