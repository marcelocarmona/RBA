rendering
renderItemButtonRemove: aDirection On: html

	html button
		attributeAt: 'type' put: 'button';
		class:'removeButton';
		onClick:
			((html scriptaculous updater)
				id: 'direccionesList';
				callback:
					[:ajaxHtml | 
						self addressList remove: aDirection.
						ajaxHtml render: self];
				onComplete:
					'removeMarkerAt(' , (self addressList indexOf: aDirection) printString ,');
					deleteAllPolylines()').