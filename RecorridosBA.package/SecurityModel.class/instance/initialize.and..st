initialize-release
initialize: aPath and: aCode
	"Inicia un model con el path de caracteres que utilizara para rellenar la matriz y con el codigo haseado del usuari"
	
	super initialize.
	code := aCode.
	path := OrderedCollection new.
	resto := OrderedCollection new.
	'abcdefghijklmnopqrstuvwxyz' do: [:c| resto add: c].
	aPath do: [:c| path add: c. resto remove: c].
	^ self. 