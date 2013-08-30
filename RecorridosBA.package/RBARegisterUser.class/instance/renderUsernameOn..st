rendering
renderUsernameOn: html
	
	html textInput 
			id:'username';
			placeholder: 'User Name';
			autofocus;
			required;
			callback: [:value | self user userName: value];
			value: self user userName