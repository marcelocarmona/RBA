private
executeParser: aResponse mode: aString
	
	self initialize.
	self xmlDocument: (XMLDOMParser parseDocumentFrom:  aResponse asUrl retrieveContents contentStream).
	^self
		unmarshal: self xmlDocument
		mode: aString