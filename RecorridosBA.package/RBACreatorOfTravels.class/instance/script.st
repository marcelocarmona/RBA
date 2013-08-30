hooks
script
	^ super script , 
'
document.observe("dom:loaded", function() {
	initialize();
	$("directionsCheckbox").observe("click", function () { showDirections(); });
	' , ( self destinationsFormComponent destinationsListComponent loadMarkers ) , ';
});

var map;
var markersArray = [];
var markersInfoArray = [];
var lastMarker;
var geocoder;
// Global variable for array of lines
var points= [];

function showDirections() {
	if ($("directionsCheckbox").checked) {
		$("mapContainer").style.width = "60%";
		$("directions_panel").style.display = "block";
	} else {
		$("mapContainer").style.width = "100%";
		$("directions_panel").style.display = "none";
	}
}

function isNumberKey(evt)
{
  var charCode = (evt.which) ? evt.which : event.keyCode
  if (charCode > 31 && (charCode < 48 || charCode > 57)){
    return false;
  }
  return true;
}

function initialize() {
	geocoder = new google.maps.Geocoder();
	var bsAsPos = new google.maps.LatLng(-34.60, -58.42);
	var mapOptions = {
		zoom: 13,
		center: bsAsPos,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	
	map =  new google.maps.Map($("map_canvas"), mapOptions);
	
	google.maps.event.addListener(map, "click", function(event) {
		addMarker(event.latLng);
		setDirection(event.latLng);
	});
}

function calcRoute(polylinePath, mode) {
  var line = new google.maps.Polyline({
      path: google.maps.geometry.encoding.decodePath(polylinePath),
	strokeColor: (mode == "walking") ? "#00fcff" : "#000cff",
	strokeOpacity: 0.5,
	strokeWeight: 5
  });
  points.push(line);
  line.setMap(map);
}

function deleteOverlays() {
  if (markersArray.length > 0) {
    for (i=0; i < markersArray.length; i++) {
      markersArray[i].setMap(null);
    }
    markersArray.length = 0;
  }
}

function addMarker(location) {
	if (lastMarker != null) {
		lastMarker.setMap(null);
	}
	lastMarker = new google.maps.Marker({
    		position: location,
    		map: map,
		icon: "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=|2E2E2E|FFFFFF"
  	});
}

function addAddressMarker() {
	if ((lastMarker.map != null) && (document.getElementById("IdStreet").value != "")) {
		var location = lastMarker.position;
		lastMarker.setMap(null);
		var nextNumber = markersArray.length + 1;
		var newMarker = new google.maps.Marker({
    			position: location,
    			map: map,
			icon: "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=" + nextNumber + "|2E2E2E|FFFFFF",
			title: document.getElementById("IdStreet").value

  		});
		markersArray.push(newMarker);
	}
}

function addAddressMarkerWithLocationAndAddress(lat, lng, address) {
	var location = new google.maps.LatLng(lat, lng);
	var nextNumber = markersArray.length + 1;
	var color = (markersInfoArray[nextNumber - 1][0] == null || (markersInfoArray[nextNumber - 1][1] <= markersInfoArray[nextNumber - 1][0])) ? "04B404" : "B40404";
	var newMarker = new google.maps.Marker({
    		position: location,
    		map: map,
		icon: "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=" + nextNumber + "|2E2E2E|"+ color ,
		title: address
	});
	markersArray.push(newMarker);

	var contentString = "<div id=\"content\" style=\"width: 500px;\">"+
		"<div id=\"siteNotice\">"+
		"</div>"+
		"<h2 id=\"firstHeading\" class=\"firstHeading\">Destino " + nextNumber + "</h2>"+
		"<div id=\"bodyContent\">"+
		"<p><b>Calle: </b> " + address + "</p>" +
		((markersInfoArray[nextNumber - 1][0] == null) ? "" : "<p><b>Horario requerido:</b> " + markersInfoArray[nextNumber - 1][0]  + "</p>") +
		"<p><b>Llegada:</b> " + markersInfoArray[nextNumber - 1][1] + "</p>" +
		"</div>"+
		"</div>";

	var infowindow = new google.maps.InfoWindow({
		content: contentString
	});

	google.maps.event.addListener(newMarker, "click", function() {
		infowindow.open(map, newMarker);
	});
}

function deleteAllPolylines() {
      for(var i=0; i<points.length; i++){
        points[i].setMap(null);
      }
	markersInfoArray = [];
}

function deleteAllMarkers() {
      for(var i=0; i<markersArray.length; i++){
        markersArray[i].setMap(null);
      }
	markersArray  = [];
}

function removeMarkerAt(position) {
	var arrPosition = position - 1;
	markersArray[arrPosition].setMap(null);
	markersArray.splice(arrPosition, 1);
	for (i = 0; i < markersArray.length; i++) {
		markersArray[i].setIcon("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=" + (i + 1) + "|2E2E2E|FFFFFF")

	}
}

function setDirection(location) {
  if (geocoder) {
    geocoder.geocode({"latLng": location}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        if (results[1]) {
		directionName = results[0].address_components[1].long_name;
		directionNumber = results[0].address_components[0].long_name;
		$("IdStreet").value = directionName + ", " + directionNumber;
		$("IdLat").value = location.lat();
		$("IdLng").value = location.lng();
        }
      }
    });
  };
}	
' 