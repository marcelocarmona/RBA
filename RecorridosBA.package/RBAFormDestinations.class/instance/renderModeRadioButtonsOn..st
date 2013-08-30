rendering
renderModeRadioButtonsOn: html
|group|

group := html radioGroup.
(group radioButton)
	selected: (self mode sameAs: 'driving');
	onClick:
			((html scriptaculous request)
					callback: [self mode: 'driving']).
					
html text: 'En Auto  '.
(group radioButton)
	selected: (self mode sameAs: 'walking');
	onClick:
			((html scriptaculous request)
					callback: [self mode: 'walking']).
					
html text: 'Caminando  '.
(group radioButton)
	selected: (self mode sameAs: 'auto');
	onClick:
			((html scriptaculous request)
					callback: [self mode: 'auto']).
html text: 'Automático  '.
