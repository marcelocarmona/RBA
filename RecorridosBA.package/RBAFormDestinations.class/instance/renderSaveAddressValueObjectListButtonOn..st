rendering
renderSaveAddressValueObjectListButtonOn: html

self session isLoggedIn 
	ifTrue: [
		html button
			value: 'Guardar';
			class: 'buttonSilver';
			attributeAt: 'type' put: 'button';
			onClick:
					((html scriptaculous updater)
							id: 'listOfAddresses';
							triggerForm: (html scriptaculous element up: 'form');
							callback:
									[:ajaxHtml | ajaxHtml render: self userListDestinationsComponent]
							"onCreate: 'addAddressMarker()'" )]

