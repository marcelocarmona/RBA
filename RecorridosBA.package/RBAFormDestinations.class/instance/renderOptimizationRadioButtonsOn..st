rendering
renderOptimizationRadioButtonsOn: html
|group|

group := html radioGroup.
(group radioButton)
	selected: (self optimization sameAs: 'none');
	onClick:
			((html scriptaculous request)
					callback: [self optimization: 'none']).
					
html text: 'Ninguna  '.
(group radioButton)
	selected: (self optimization sameAs: 'distance');
	onClick:
			((html scriptaculous request)
					callback: [self optimization: 'distance']).
					
html text: 'Distancia  '.
(group radioButton)
	selected: (self optimization sameAs: 'time');
	onClick:
			((html scriptaculous request)
					callback: [self optimization: 'time']).
html text: 'Horarios y Distancia  '.


