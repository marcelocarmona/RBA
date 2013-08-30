as yet unclassified
createUserWithName: aName andPass: aPass andCode: aCode andPath: aPath
	^self new initialize userName: aName ; password: aPass ; securitycode: aCode ; securitypath: aPath.