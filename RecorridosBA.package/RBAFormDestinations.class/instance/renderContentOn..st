rendering
renderContentOn: html

 	   self session isLoggedIn 
		ifTrue: [
			html div
				class: 'box';
				with:
					[html heading: 'Recorridos de ' , self session user userName.
						html div
							id: 'listOfAddresses';
							with:self userListDestinationsComponent]].

	html form
		id: 'direcciones';
		class: 'box';
		with:
			[html heading 
				class:'titleBox'; 
				with:[html text:'Direcciones Seleccionadas'] .
			self renderRemoveListButtonOn: html.
			html fieldSet 
				id: 'inputs' ;
				with: [ html div with:[self renderNameListInputOn: html]].
					html div
						id: 'direccionesList';
						with:self destinationsListComponent.
			self renderSaveAddressValueObjectListButtonOn: html].

	html form
	class: 'box';
	with:
		[html heading: 'Dirección'.
		html fieldSet 
			id: 'inputs' ;
			with: [ 	html div with:[self renderStreetInputOn: html].
					html div with:[self renderDelayInputOn: html].
					html div with:[self renderLimitInputsOn: html].
					self renderLatitudeInputOn:  html.
					self renderLongitudeInputOn: html].
		self renderAddAddressButtonOn: html].
	
			
	html form
		id: 'IdModo';
		class: 'box';
		with:
				[html heading: 'Modo de viaje'.
					self renderModeRadioButtonsOn: html.].
	html form
		id: 'optimizationForm';
		class: 'box';
		with:
				[html heading: 'Optimización'.
					self renderOptimizationRadioButtonsOn: html.].
	html div
		id: 'bottom';
		with: [self renderBottomActionsOn: html]