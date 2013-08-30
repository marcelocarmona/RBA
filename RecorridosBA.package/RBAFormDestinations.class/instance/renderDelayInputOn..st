rendering
renderDelayInputOn: html
	
	html label: 'Tiempo de espera: '.
	html numberInput
		id: 'IdRetardo';
		callback: [:aString | self address delay: aString];
		value: self address delay;
		min: 0;
		max: 9999;
		onKeyPress: 'isNumberKey(event)'.
	html text: ' minutos'.