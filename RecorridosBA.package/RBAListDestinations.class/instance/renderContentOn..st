rendering
renderContentOn: html
	
	self addressList isEmpty
		ifTrue: [html paragraph: 'No hay ninguna dirección seleccionada.']
		ifFalse: [html orderedList with: [self renderItemsOn: html]].