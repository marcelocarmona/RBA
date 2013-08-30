hooks
script 
	^'
document.observe("dom:loaded", function() { 
	if ($("idmessage")){
		setTimeout(function(){Effect.SlideUp("idmessage");}, 800);
	}
});
	'