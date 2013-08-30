rendering
renderItemMatrix: item andIndex: indexString on:html
	
		html div 
			id: 'code_text_', indexString;
			class: 'code_text';
			with:[	html anchor
						onClick:  'nextInput(' , indexString , '); ' ;
						with: item]
