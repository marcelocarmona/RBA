initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	street := nil.
	latitud := nil.
	longitude := nil.
	delay := 0.
	limitHs := 0.
	limitMin := 0.
	^self