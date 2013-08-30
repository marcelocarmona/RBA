rendering
renderMatrix: html

	"ver esto es controlador......"

	model := SecurityModel newPath: user securitypath  andCode: user securitycode.
	matrix := SecurityMatrix new.
	core := SecurityCore newMatrix: matrix model: model.
	core loadMatrix.

	"esto es vista"
	
	html paragraph: 'seleccione 4 grupos de caracteres'.

	1 to: 7 do: [:i | self renderItemMatrix: (core secmatrix atIndex: i) andIndex: (i asString) on:html]
				