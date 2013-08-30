rendering
renderItem: anAddressValueObjectList on: html

html listItem
	class: 'link';
	with: [	self renderItemButtonRemove: anAddressValueObjectList On: html.
			html anchor 
				onClick: (	html scriptaculous updater
								id: 'direccionesList';
								callback: [:ajaxHtml | 
									self destinationsListComponent addressList: anAddressValueObjectList addressList copy.
									ajaxHtml render: self destinationsListComponent]);
				onClick:  'deleteAllPolylines(); deleteAllMarkers();', (self loadMarkers: anAddressValueObjectList );				
				with: anAddressValueObjectList]
		
		