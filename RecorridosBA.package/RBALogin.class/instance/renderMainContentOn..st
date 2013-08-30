rendering
renderMainContentOn: html
	
	html form
		id:'login';
		class:'box';
		with:[
			html div
				class: 'loginTitle';
				with:[html text:'Login'].
				
			html fieldSet 
				id: 'inputs' ;
					with: [	self renderUsernameOn: html. 
							self renderPasswordOn: html].
			html fieldSet 
				id: 'actions' ;
					with: [ self renderButtonsOn: html]]
