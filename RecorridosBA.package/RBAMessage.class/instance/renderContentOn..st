rendering
renderContentOn: html

	self wasShown ifTrue: [^ self].
 	html div
		id:'idmessage';
		class: 'message';
		class: 'error';
		with: [html paragraph: self messageString].
	self wasShown: true. 