private
executeParser: aResponse
	
	self initialize.
	self xmlDocument: (self xmlParser parse: aResponse asURI).
	^self unmarshal: self xmlDocument