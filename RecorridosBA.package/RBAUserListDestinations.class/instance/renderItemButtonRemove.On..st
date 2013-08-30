rendering
renderItemButtonRemove: anAddressValueObjectList On: html

	html button
		class:'removeButton';
		onClick:
			(html scriptaculous updater
				id: 'listOfAddresses';
				callback:
					[:ajaxHtml | self session user removeListOfAddresses: anAddressValueObjectList.
						ajaxHtml render: self])