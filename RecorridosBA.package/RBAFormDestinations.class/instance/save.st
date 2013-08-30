seaside-flow
save
	
	self address latitud: self address latitud asNumber .
	self address longitude: self address longitude asNumber.
	self address delay: self address delay asNumber.
	self address limitHs: self address limitHs asNumber.
	self address limitMin: self address limitMin asNumber.
	
	self destinationsListComponent addressList add: self address.
	self address: AddressValueObject new