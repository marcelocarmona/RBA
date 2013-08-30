rendering
renderItemsOn: html

	self session user listOfAddresses do:[:addressList | self renderItem: addressList on: html]
							