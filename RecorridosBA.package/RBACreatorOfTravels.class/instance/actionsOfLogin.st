actions
actionsOfLogin 
	super actionsOfLogin.

	"add the button 'guardar recorrido' in menu bar"
	self menuHeaderComponent addEntry: 'Boton de ejemplo' withAction: [self ]
	
	"example"
	"self menuHeaderComponent addEntry: 'Label' withAction: [self ]"