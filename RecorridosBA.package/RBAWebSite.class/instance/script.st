hooks
script

	"show and hide renderAjaxLoadingOn"
	^' 
function showProcessDialog()  {
	var elWidth = Element.getDimensions($("processInfo")).width;
	var elHeight = Element.getDimensions($("processInfo")).height;
	var wiWidth = document.viewport.getWidth();
	var wiHeight = document.viewport.getHeight();
	$("processInfo").style.top = ((wiHeight- elHeight ) / 2) + "px";
	$("processInfo").style.left = ((wiWidth - elWidth ) / 2) + "px";
	$("process").style.display = "block";
	$("processInfo").style.display = "block";
}

function hideProcessDialog()  {
	$("process").style.display = "none";
	$("processInfo").style.display = "none";
}
'