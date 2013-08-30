rendering
renderUsernameOn: html
	html textInput 
			id:'username';
			placeholder: 'User Name';
			autofocus;
			required;
			on: #user of: self.