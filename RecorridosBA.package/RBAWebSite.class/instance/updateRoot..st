updating
updateRoot: anHtmlRoot

	super updateRoot: anHtmlRoot.
	anHtmlRoot title: self title.
	(anHtmlRoot link)
		relationship: 'shortcut icon';
		url: '../files/RoutesFileLibrary/sign.png'.