rendering
renderCodeInputOn: html
	
	html textInput
			id: 'code_input_1';
			placeholder: '1';
			required;
			callback: [:value | self o1: value].
	html textInput
			id: 'code_input_2';
			placeholder: '2';
			required;
			callback: [:value | self o2: value].
	html textInput
			id: 'code_input_3';
			placeholder: '3';
			required;
			callback: [:value | self o3: value].
	html textInput
			id: 'code_input_4';
			placeholder: '4';
			required;
			callback: [:value | self o4: value].