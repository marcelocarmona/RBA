rendering
renderMainContentOn: html
	
	user securitypath: self generateUserPath.
	html form
		id:'login';
		class:'box';
		with:[
			html div
				class: 'loginTitle';
				with:[html text:'Registro de usuario'].
				
			html fieldSet 
				id: 'inputs' ;
				class:'inputs';
					with: [	self renderUsernameOn: html. 
							self renderPasswordOn: html.
							self renderRepeatedPasswordOn: html].
			html fieldSet 
				id: 'codigo_seguridad';
					with:[ html text: 'Seleccionar 4 caracteres: '. 
						   html text: user securitypath].
			html fieldSet 
				id: 'inputs_security' ;
					with: [	self renderCodeInputOn: html. ].
			html fieldSet 
				id: 'actions' ;
					with: [ self renderButtonsOn: html]].
				