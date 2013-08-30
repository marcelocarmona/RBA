actions
login
	| loginAnswer user |
	loginAnswer := self call: RBALogin new.
	loginAnswer = #registerUser
		ifTrue: [user := self call: RBARegisterUser new]
		ifFalse: [user := loginAnswer].
 	user ifNotNil: [
 		self session login: user.
		self menuHeaderComponent login.
		self actionsOfLogin.
		]