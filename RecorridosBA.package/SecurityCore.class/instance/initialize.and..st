initialize-release
initialize: aSecMatrix and: aSecModel 
"setea las variables secmatrix y secmodel con sus respectivas clases"

	super initialize.
	secmatrix := aSecMatrix.
	secmodel := aSecModel.
	^self.  