updating
updateRoot: anHtmlRoot
	
	super updateRoot: anHtmlRoot.
	
	"Loading the Google Maps API"
	
	anHtmlRoot javascript 
		url: 'http://maps.google.com/maps/api/js?key=AIzaSyAyRFS5b0OOCZaAHTKgLl3QdH8TnFFjQso&sensor=false&libraries=geometry'

			