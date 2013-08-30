rendering
renderButtonsOn: html
		html submitButton
			id:'submit';
			callback: [self registerUser];
			value: 'Registrar'.
		
		html anchor 
			id:'cancel';
			callback: [self answer: nil];
			with:'Cancelar'.


	