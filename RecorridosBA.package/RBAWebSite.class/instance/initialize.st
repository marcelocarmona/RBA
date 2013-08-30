initialize-release
initialize
	super initialize.
	self messageComponent: RBAMessage new.
	self menuHeaderComponent: RBAHeaderNavigation new.
	self menuHeaderComponent addLoginEntry: 'Login' withAction: [self login].
	self menuHeaderComponent addLogoutEntry: 'Logout' withAction: [self logout].
	self menuHeaderComponent addLoginEntry