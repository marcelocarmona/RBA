rendering
renderMainContentOn: html
	
	html form
		id:'login';
		class:'box';
		with:[
			html div
				class: 'loginTitle';
				with:[html text:'Codigo personal'].
			
			self renderMatrix: html.
				
			html fieldSet 
				id: 'inputs' ;
					with: [self renderCodeInputOn: html].
			
			html fieldSet 
				id: 'actions' ;
					with: [ self renderButtonsOn: html]].