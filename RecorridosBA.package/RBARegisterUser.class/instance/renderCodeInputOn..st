rendering
renderCodeInputOn: html
	
	html textInput 
			id:'code_1';
			class:'code_1';
			placeholder: '1';
			required;
			callback: [:value | self user c1: value];
			value: self user c1.
	html textInput 
			id:'code_2';
			class:'code_1';
			placeholder: '2';
			required;
			callback: [:value | self user c2: value];
			value: self user c2.
	html textInput 
			id:'code_3';
			class:'code_1';
			placeholder: '3';
			required;
			callback: [:value | self user c3: value];
			value: self user c3.
	html textInput 
			id:'code_4';
			class:'code_1';
			placeholder: '4';
			required;
			callback: [:value | self user c4: value];
			value: self user c4.