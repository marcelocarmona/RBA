rendering
renderLongitudeInputOn: html

	html textInput
		id: 'IdLng';
		callback: [:aString | self address longitude: aString];
		value: self address longitude;
		attributeAt: 'type' put: 'hidden'.