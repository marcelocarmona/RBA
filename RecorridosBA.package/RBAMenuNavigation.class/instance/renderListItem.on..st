rendering
renderListItem: aEntry on: html
	
	html listItem 
		class:'dropdown'; 
		with:[	
			html anchor 
				callback: aEntry value; 
				with: aEntry key]

