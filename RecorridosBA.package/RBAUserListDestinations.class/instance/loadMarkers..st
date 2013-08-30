map scripting
loadMarkers: anAddressValueObjectList

|aString|
aString:= ''.
anAddressValueObjectList addressList do: [:anAddressValueObject | aString := aString ,
								'var latLng = new google.maps.LatLng(', anAddressValueObject latitud asString ,', ', anAddressValueObject longitude asString ,');
								var nextNumber = markersArray.length + 1;
								newMarker = new google.maps.Marker({
									position: latLng,
									map: map,
									icon: "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=" + nextNumber + "|2E2E2E|FFFFFF",
									title: "' , anAddressValueObject street ,'"
								});
								markersArray.push(newMarker);'].
^aString