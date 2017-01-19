var map, heatmap;
var plotted = 1;

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 6,
        center: { lat: 15.2394644, lng: 120.8069678 },
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        streetViewControl: false,
        rotateControl: false,
        navigationControl: false,
        mapTypeControl: false,
        scaleControl: false,
        scrollwheel: false,
        draggable: false
    });

}

function toggleHeatmap() {
    if (plotted == 0) {
        plotted = 1;
        heatmap.setMap(heatmap.getMap() ? null : map);
    }

}

function changeGradient() {
    var gradient = [
      'rgba(0, 255, 255, 0)',
      'rgba(0, 255, 255, 1)',
      'rgba(0, 191, 255, 1)',
      'rgba(0, 127, 255, 1)',
      'rgba(0, 63, 255, 1)',
      'rgba(0, 0, 255, 1)',
      'rgba(0, 0, 223, 1)',
      'rgba(0, 0, 191, 1)',
      'rgba(0, 0, 159, 1)',
      'rgba(0, 0, 127, 1)',
      'rgba(63, 0, 91, 1)',
      'rgba(127, 0, 63, 1)',
      'rgba(191, 0, 31, 1)',
      'rgba(255, 0, 0, 1)'
    ]
    heatmap.set('gradient', heatmap.get('gradient') ? null : gradient);
}

function changeRadius() {
    heatmap.set('radius', heatmap.get('radius') ? null :100);
}

function changeOpacity() {
    heatmap.set('opacity', heatmap.get('opacity') ? null : 0.2);
}


function PlotSelected() {
    if (plotted == 1) {
        plotted = 0;

        if (document.getElementById('selectedfg').value == "FG1") {
            heatmap = new google.maps.visualization.HeatmapLayer({
                data: getPointsFG1(),
                radius: 100,
                map: map
            });
        }
        else if (document.getElementById('selectedfg').value == "FG2") {
            heatmap = new google.maps.visualization.HeatmapLayer({
                data: getPointsFG2(),
                radius:10,
                map: map
            });
        }
        else if (document.getElementById('selectedfg').value == "FG3") {
            heatmap = new google.maps.visualization.HeatmapLayer({
                data: getPointsFG3(),
                radius:100,
                map: map
            });
        }
        else if (document.getElementById('selectedfg').value == "FG4") {
            heatmap = new google.maps.visualization.HeatmapLayer({
                data: getPointsFG4(),
                radius:20,
                map: map
            });
        }
        else if (document.getElementById('selectedfg').value == "FG5") {
            heatmap = new google.maps.visualization.HeatmapLayer({
                data: getPointsFG5(),
                radius:20,
                map: map
            });
        }
        else if (document.getElementById('selectedfg').value == "FG6") {
            heatmap = new google.maps.visualization.HeatmapLayer({
                data: getPointsFG6(),
                radius:20,
                map: map
            });
        }

    }

    return true;
}
// Heatmap data: 500 Points
function getPointsFG1() {
    return [
        new google.maps.LatLng(17.098792, 117.026367),
        new google.maps.LatLng(15.496032, 117.114258),
        new google.maps.LatLng(15.68651, 117.751465),
        new google.maps.LatLng(16.151369, 117.509766),
        new google.maps.LatLng(16.88866, 117.905273),
        new google.maps.LatLng(15.496032, 118.037109),
        new google.maps.LatLng(14.477234, 118.125),
        new google.maps.LatLng(15.792254, 117.114258)
    ];
}
function getPointsFG2() {
    return [
        new google.maps.LatLng(14.595538, 120.645606),
        new google.maps.LatLng(14.586235, 120.644233),
        new google.maps.LatLng(14.591551, 120.657279),
        new google.maps.LatLng(14.590886, 120.640800)
    ];
}
function getPointsFG3() {
    return [
        new google.maps.LatLng(17.20377, 124.628906),
        new google.maps.LatLng(17.905569, 124.277344),
        new google.maps.LatLng(17.675428, 124.82666),
        new google.maps.LatLng(16.573023, 124.936523),
        new google.maps.LatLng(17.591667, 125.430908),
        new google.maps.LatLng(16.972741, 126.035156),
        new google.maps.LatLng(16.256867, 125.354004)

    ];
}
function getPointsFG4() {
    return [
        new google.maps.LatLng(15.85171, 121.719589)
    ];
}

function getPointsFG5() {
    return [
        new google.maps.LatLng(16.339578, 122.263412)
    ];
}

function getPointsFG6() {
    return [
        new google.maps.LatLng(15.301406, 121.565781)
    ];
}

google.maps.event.addDomListener(window, 'load', initMap);

