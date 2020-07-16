import 'ol/ol.css';
import {Map, View} from 'ol';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import {fromLonLat} from 'ol/proj';
import TileWMS from 'ol/source/TileWMS';
import ImageWMS from 'ol/source/ImageWMS'
import XYZ from 'ol/source/XYZ';
import Source from 'ol/source/Source';
import WMSGetFeatureInfo from 'ol/format/WMSGetFeatureInfo';
import VectorSource from 'ol/source/Vector';
import {bbox as bboxStrategy} from 'ol/loadingstrategy';
import {Stroke, Style} from 'ol/style';
import LayerSwitcher from 'ol-layerswitcher/';

var sourceList = new Array();
var wmsSource = new TileWMS({
	url: 'http://localhost:8080/geoserver/wms',
	params:{'LAYERS': 'DeutscheBahn:Bahnnutzung','TILED': true},
	serverType: 'geoserver',
	crossOrigin: 'anonymous'
});
sourceList.push(wmsSource);
var noxSource = new TileWMS({
	url: 'http://localhost:8080/geoserver/wms',
	params:{'LAYERS': 'DeutscheBahn:Nox_Layer','TILED': true},
	serverType: 'geoserver',
	crossOrigin: 'anonymous'
});
sourceList.push(noxSource);

var co2Source = new TileWMS({
	url: 'http://localhost:8080/geoserver/wms',
	params:{'LAYERS': 'DeutscheBahn:CO2','TILED': true},
	serverType: 'geoserver',
	crossOrigin: 'anonymous'
});
sourceList.push(co2Source);


	
	
	var elekSource = new TileWMS({
	url: 'http://localhost:8080/geoserver/wms',
	params:{'LAYERS': 'DeutscheBahn:Elektrifizierung','TILED': true},
	serverType: 'geoserver',
	crossOrigin: 'anonymous'
});
sourceList.push(elekSource);
var geschwSource = new TileWMS({
	url: 'http://localhost:8080/geoserver/wms',
	params:{'LAYERS': 'DeutscheBahn:geschw_layer','TILED': true},
	serverType: 'geoserver',
	crossOrigin: 'anonymous'
});
sourceList.push(geschwSource);


//OpenRailWayMap
var openrailwaymap = new TileLayer({
	title: 'OpenRailwayMap',
	visible: false,
	source : new XYZ({
		url : 'http://{a-c}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png',
		crossOrigin: null, 
		tilePixelRatio: 2, 
		maxZoom: 19, 
		opaque: true
	})
})


//All TileLayer
var osm = new TileLayer({
	title: 'OpenStreetMap',
	source: new OSM()
});

var basicNutzung = new TileLayer({
	title: 'Bahnnutzungsarten (DB-Daten 2019)',
	source: wmsSource,
	minZoom: 5
});

var co2Rail = new TileLayer({
	title: 'CO2 Ausstoß Schienenverkehr (Stand 2014)',
	source: co2Source,
	minZoom: 5,
	opacity: 0.6,
	visible: false

})
var noxKGRail = new TileLayer({
	title: 'Nox Ausstoß dieselbetriebenen Schienenverkehr(Stand 2014)',
	source: noxSource,
	minZoom: 5,
	opacity: 0.6,
	visible: false
});

var elektrNutzung = new TileLayer({
	title:'Elektrifizierung (DB-Daten 2019)',
	source: elekSource,
	minZoom: 5,
	visible: false
});

var geschNutzung = new TileLayer({
	title: 'Geschwindigkeiten (DB-Daten 2019)',
	source: geschwSource,
	minZoom: 5,
	visible: false
});




//Start View
var view = new View({
	center: fromLonLat([13.06, 52.52]),
	zoom: 6

})

const map = new Map({
	target: 'map',
	layers: [osm,openrailwaymap,co2Rail,noxKGRail,basicNutzung,elektrNutzung,geschNutzung],
	view: view
});


//LayerSwitcher to change the visible Layer
var layerSwitcher = new LayerSwitcher({
	tipLabel: 'Légende',
	groupSelectStyle: 'none' 
});

layerSwitcher.useLegendGraphics = true;
map.addControl(layerSwitcher);

function createLegends(){
var resolution = map.getView().getResolution();
	 sourceList.forEach(a => {
		
		var x = document.createElement("IMG");
		x.src = a.getLegendUrl(resolution);
		
		 var layer = JSON.stringify(a.getParams());
		 x.title= JSON.stringify(a.getParams());
		 x.alt= JSON.stringify(a.getParams());
		 document.getElementById("legends").appendChild(x);
	});
}

createLegends();

