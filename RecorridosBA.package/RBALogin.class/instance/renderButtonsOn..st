rendering
renderButtonsOn: html
		html submitButton
			id:'submit';
			class:'button';
			callback: [self validateLogin];
			value: 'Entrar'.
		html anchor 
			callback: [self registerUser];
			with:'Registrate'.