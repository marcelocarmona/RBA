hooks
style
	^ super style , '

#direccionesForm {
	width: 450px;
	float: left;
	padding: 0;
	margin: 0;
}

#googleMap {
	width: 52%;
	float: right;
	position: relative;
}

#mapContainer {
	width: 100%;
	border: 1px solid #AAA;
	float: left;
}	

#map_canvas {
	width: 100%; 
	height: 500px;
	border-radius: 10px;
}

#directionsToggler {
	position: absolute;
	top: 15px;
	right: 15px;
}


#directions_panel {
	float: right;
	width: 38%;
	overflow-y: scroll;
	height: 500px;
	display: none;
}

.iconSpan {
	margin-left: 3px;
	margin-right: 5px;
}		

.iconSpan img {
	margin-right: 2px;
}

#bottom {
	clear: both;
}'