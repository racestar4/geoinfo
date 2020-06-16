import {Component} from '@angular/core';
import 'zone.js';

declare var ol: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})


export class AppComponent {
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
        center: ol.proj.fromLonLat([53.549999, 8.583333]),
        zoom: 8
      })
    });
  }
}

