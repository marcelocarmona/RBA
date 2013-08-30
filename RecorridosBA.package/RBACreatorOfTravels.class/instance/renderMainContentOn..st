rendering
renderMainContentOn: html

	(html div)
		id: 'direccionesForm';
		with: self destinationsFormComponent.

	(html div)
		id: 'googleMap';
		class: 'box';
		with: [	html paragraph: 'Haga click en la ubicación deseada:'.
				(html div)
					id: 'mapContainer';
					with: [(html div)
								id: 'map_canvas';
								with:''].
		
				(html form)
					id: 'directionsToggler';
					with:
						[(html checkbox)
							id: 'directionsCheckbox';
							with: 'Mostrar indicaciones'].

				html div id: 'directions_panel']