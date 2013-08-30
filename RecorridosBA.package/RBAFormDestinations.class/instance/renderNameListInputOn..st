rendering
renderNameListInputOn: html
self session isLoggedIn 
	ifTrue: [
		html textInput
			id: 'nameList';
			class:'textInput';
			placeholder: 'Nombre del Recorrido';
			callback: [:aNameList | self destinationsListComponent saveListOfAddresses: aNameList];
			value: self address street]

