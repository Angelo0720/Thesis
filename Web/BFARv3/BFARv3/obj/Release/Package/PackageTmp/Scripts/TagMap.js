//<![CDATA[

var customIcons = {
    restaurant: {
        icon: 'http://labs.google.com/ridefinder/images/mm_20_blue.png'
    },
    bar: {
        icon: 'http://labs.google.com/ridefinder/images/mm_20_red.png'
    }
};

function load() {
    var map = new google.maps.Map(document.getElementById("map"), {
        center: new google.maps.LatLng(15.2394644, 120.8069678),
        zoom: 9,
        mapTypeId: 'roadmap'
    });
    var infoWindow = new google.maps.InfoWindow;
    var counter = 0;
    // Change this depending on the name of your PHP file
    downloadUrl("phpsqlajax_genxml3.php", function (data) {
        var xml = data.responseXML;
        var markers = xml.documentElement.getElementsByTagName("marker");
        for (var i = 0; i < markers.length; i++) {
            var name = markers[i].getAttribute("gps_id");
            var time = markers[i].getAttribute("time_stamp");
            var point = new google.maps.LatLng(
                parseFloat(markers[i].getAttribute("lat")),
                parseFloat(markers[i].getAttribute("lng")));
            var latitude = markers[i].getAttribute("lat");
            var longitude = markers[i].getAttribute("lng");
            var html = "<b>" + name + "</b> <br/>" + time;
            var icon = customIcons.restaurant || {};
            counter = counter + 1;
            
            if (counter < markers.length) {
                var marker = new google.maps.Marker({
                    map: map,
                    position: point,
                    icon: icon.icon
                });
            }
            else {
                var marker = new google.maps.Marker({
                    map: map,
                    position: point
                });
                document.getElementById('lat_textbox').value = latitude;
                document.getElementById('lng_textbox').value = longitude;
                document.getElementById('time_textbox').value = time;
            }

            bindInfoWindow(marker, map, infoWindow, html);
        }
    });
}

function bindInfoWindow(marker, map, infoWindow, html) {
    google.maps.event.addListener(marker, 'click', function () {
        infoWindow.setContent(html);
        infoWindow.open(map, marker);
    });
}

function downloadUrl(url, callback) {
    var request = window.ActiveXObject ?
        new ActiveXObject('Microsoft.XMLHTTP') :
        new XMLHttpRequest;

    request.onreadystatechange = function () {
        if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
        }
    };

    request.open('GET', url, true);
    request.send(null);
}

function doNothing() { }

//]]>