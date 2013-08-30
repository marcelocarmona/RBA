rendering
renderLimitMinInputOn: html
	
	html numberInput
		id: 'IdLimiteMin';
		callback: [:aString | self address limitMin: aString];
		value: self address limitMin;
		min: 0;
		max: 60;
		onKeyPress: 'isNumberKey(event)'