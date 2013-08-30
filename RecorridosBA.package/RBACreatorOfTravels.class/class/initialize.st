class initialization
initialize

	| application |
	application := WAAdmin register: self asApplicationAt: 'RBA'.
	application preferenceAt: #sessionClass put: RBASession;
				addLibrary: PTDeploymentLibrary;
				addLibrary: SUDeploymentLibrary