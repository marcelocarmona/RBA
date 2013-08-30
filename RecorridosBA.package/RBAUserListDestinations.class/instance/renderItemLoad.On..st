rendering
renderItemLoad: anAddressValueObjectList On: html

	html scriptaculous updater
		id: 'direccionesList';
		callback:
			[:ajaxHtml | 
						self destinationsListComponent addressList: anAddressValueObjectList addressList .
						ajaxHtml render: self destinationsListComponent]

