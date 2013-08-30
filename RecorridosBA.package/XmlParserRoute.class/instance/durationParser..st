private
durationParser: anElement
	
	^((anElement elementAt:#duration)elementAt:#value) contentString asNumber