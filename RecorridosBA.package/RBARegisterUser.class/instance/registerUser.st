actions
registerUser
	|rbauser |
	"Primero las validaciones de los campos"
	self user userName isEmptyOrNil
		ifTrue: [^ self messageComponent errorMessage: 'Por favor elige un nombre de usuario!'].
	self user password size = 0
		ifTrue: [^ self messageComponent errorMessage: 'Por favor elige una contraseña!'].
	self user password = self repeatedPassword
		ifFalse: [^ self messageComponent errorMessage: 'Tu contraseña repetida no coincide!'].
	(self comprobarCodigo: user c1 and: user c2 and: user c3 and: user c4 and: user securitypath)
		ifFalse: [^ self messageComponent errorMessage: 'Los Codigos deben estar en la cadena'].
	self user userExist
		ifFalse: [^ self messageComponent errorMessage: 'El nombre de usuario ya existe'].
	

	rbauser := RBAUser createUserWithName: user userName
					 andPass: (SecureHashAlgorithm new hashMessage: user password) asString
					andCode: (SecureHashAlgorithm new hashMessage: (user c1 asString,user c2 asString, user c3 asString,user c4 asString)) asString andPath: user securitypath. 
      
	rbauser save.
	
	self answer: self user.
	


