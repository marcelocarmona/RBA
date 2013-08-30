rendering
renderAjaxLoadingOn: html
	
	html div id: 'process'.

	(html div)
		id: 'processInfo';
		with:
			[html div id: 'processImage'.
				(html div)
					id: 'processText';
					with: 'Calculando...']