actions
logout
	
	self user: nil.
	"expire session"
	self expire.
    	self redirectTo: '/seaside/RBA'