rendering
renderLatitudeInputOn: html

	html textInput
		id: 'IdLat';
		callback: [:aString | self address latitud: aString];
		value: self address latitud;
		attributeAt: 'type' put: 'hidden'.