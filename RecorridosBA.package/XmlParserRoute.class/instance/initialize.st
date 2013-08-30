initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.
	xmlParser := nil"XMLParser new validate: false".
	xmlDocument := nil.
	route := Route new.
	durationMatrix := Dictionary new.	
	^self