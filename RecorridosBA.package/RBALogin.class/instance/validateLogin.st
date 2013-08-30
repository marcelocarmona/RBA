actions
validateLogin

	|userOrNil storage|

	storage := RBAStorage default.

	userOrNil := storage getUser: self user and: self password.
	
	userOrNil notNil 
		ifTrue: [self displaySecurityMatrix: userOrNil]
		ifFalse: [self loginFailed].