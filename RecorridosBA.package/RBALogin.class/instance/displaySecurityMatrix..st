actions
displaySecurityMatrix: anUser

	|aux UserOrNil|
	aux := RBALoginSecurityMatrix new.
	aux user: anUser.
	aux login: self.
	self call: aux.
