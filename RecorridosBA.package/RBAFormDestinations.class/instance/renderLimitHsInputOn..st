rendering
renderLimitHsInputOn: html
	
	html numberInput
		id: 'IdLimiteHs';
		class:'textInputEnabled';
		callback: [:aString | self address limitHs: aString];
		value: self address limitHs;
		pattern: '[0-9]{13,16}';
		min: 0;
		max: 24;
		onKeyPress: 'isNumberKey(event)'