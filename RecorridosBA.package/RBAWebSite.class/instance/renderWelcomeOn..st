rendering
renderWelcomeOn: html

    self session isLoggedIn
        ifTrue: [
		html div 
			id: 'welcome';
			with:[html text: 'Bienvenido '  , self session user userName]]
