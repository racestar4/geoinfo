import {Component} from '@angular/core';
import 'zone.js';

declare var ol: any;

@Component({
  selector: 'app-root',
  templateUrl: './map.component.html',
  styleUrls: ['./map.component.css']
})

export class MapComponent {
  title = 'geoinfo';
  map: any;

  // tslint:disable-next-line:use-lifecycle-interface
  ngOnInit(){
    this.map = new ol.Map({
      target: 'map',
      layers: [
        new ol.layer.Tile({
          source: new ol.source.OSM()
        })
      ],
      view: new ol.View({
        center: ol.proj.fromLonLat([52.520008, 13.404954]),
        zoom: 2,
      })
    });
  }
}



