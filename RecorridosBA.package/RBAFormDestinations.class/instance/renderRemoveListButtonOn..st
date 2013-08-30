rendering
renderRemoveListButtonOn: html

		html button
		value: 'Nueva Lista';
		class: 'titleBoxbutton';
		attributeAt: 'type' put: 'button';
		onClick:
				((html scriptaculous updater)
						id: 'direccionesForm';
						callback:
								[:ajaxHtml | 
									self destinationsListComponent removeAll.
									ajaxHtml  render: self];
						onCreate: 'deleteAllMarkers();deleteAllPolylines()')
		

