rendering
renderStreetInputOn: html

	html textInput
		id: 'IdStreet';
		class:'textInputDisabled';
		callback: [:aString | self address street: aString];
		value: self address street; 
		attributeAt: 'readonly' put: True.

