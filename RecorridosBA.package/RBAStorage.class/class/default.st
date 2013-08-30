as yet unclassified
default
		singleton isNil ifTrue: [singleton := super new].
		singleton connect.
		^singleton