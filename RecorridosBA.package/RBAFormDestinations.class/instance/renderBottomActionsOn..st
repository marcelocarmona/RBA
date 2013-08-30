rendering
renderBottomActionsOn: html
	
	^(html form)
		id: 'bottomActions';
		style: 'padding-top: 10px';
		with:
			[(html button)
				id: 'dibujar_recorrido';
				class: 'button';
				attributeAt: 'type' put: 'button';
				onClick:
					((html scriptaculous updater)
						id: 'direccionesForm';
						callback:
							[:ajaxHtml | 
								destinationsListComponent sizeGreaterThanOne
								ifTrue:
									[self parent travelQueryProcessor
										process: self destinationsListComponent addressList
										withMode: self mode
										andOptimization: self optimization.
										self parent reorderValueObjects].
							ajaxHtml render: self];
				onCreate:
					'if (markersArray.length >= 2) showProcessDialog(); 
						else alert("Debe ingresar al menos dos direcciones.");';
				onComplete:
					'if (markersArray.length >= 2) $("drawTravelButton").click();');
				value: 'Calcular Recorrido'.
					
			(html button)
				id: 'drawTravelButton';
				attributeAt: 'type' put: 'button';
				style: 'display: none;';
				onClick:
						' deleteAllMarkers();deleteAllPolylines(); ' ,self parent getRouteLine 
					, self parent getMarkersScript ,
					' showDirections(); hideProcessDialog();']