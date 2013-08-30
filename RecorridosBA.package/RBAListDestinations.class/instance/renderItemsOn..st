rendering
renderItemsOn: html
	
	self addressList do: [:aDirection | self renderItem: aDirection on: html]