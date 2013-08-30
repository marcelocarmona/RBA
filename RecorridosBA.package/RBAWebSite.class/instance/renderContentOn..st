rendering
renderContentOn: html

	(html div)
		id: 'header';
		with: [self renderHeaderOn: html].
		
	html render: self messageComponent.

	(html div)
		id: 'mainContent';
		with: [self renderMainContentOn: html].
	
	self renderAjaxLoadingOn: html.