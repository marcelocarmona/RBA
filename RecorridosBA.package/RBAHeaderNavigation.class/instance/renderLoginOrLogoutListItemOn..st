rendering
renderLoginOrLogoutListItemOn: html

	"render item login or logout"
	
	html listItem 
		class:'dropdown'; 
		with:[	
			html anchor 
				callback: self entryLoginOrLogout value; 
				with: self entryLoginOrLogout key]
	

			