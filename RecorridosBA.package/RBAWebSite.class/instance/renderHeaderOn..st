rendering
renderHeaderOn: html

html div 
	class:'wrapper';
	with:[
	
		html div 
			id: 'logo';
			with:[ html anchor
					with: 'RBA'].
		html div 
			id: 'sublogo';
			with:[ html text: 'Recorridos en Buenos Aires'].
		
		self renderWelcomeOn: html.

		html render: self menuHeaderComponent] 