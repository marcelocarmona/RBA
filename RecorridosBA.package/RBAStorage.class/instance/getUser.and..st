actions
getUser: userName and: password
	
	"select + where"
	
	^session readOneOf: RBAUser where: [:each | each userName = userName AND:[each password = (SecureHashAlgorithm new hashMessage: (password) ) asString ] ].