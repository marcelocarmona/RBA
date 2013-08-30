rendering
renderContentOn: html

	self session user listOfAddresses isEmpty 
		ifTrue: [html text: 'no tiene ningun recorrido guardado'] 
		ifFalse:[ html orderedList with: [self renderItemsOn: html]] 