<template>


<section>
<b-container>
    <b-row>
        <b-col class="text-center rounded pointer">  
          <div :id="idMapa" class="map"></div>
        </b-col>
    </b-row>  
    <b-modal v-model="modalTerreno" ok-only size="lg" @hide="removeTerrenosSelecionados" centered title="Lote 63 - Lagoa Dos Cisnes - Macacos - mg" >
      <painel-layer></painel-layer>          
    </b-modal>
</b-container>


  

  </section>

</template>

<script>
import 'ol/ol.css';
    import Map from 'ol/Map.js';
      import View from 'ol/View.js';
      import {getCenter} from 'ol/extent.js';
      import ImageLayer from 'ol/layer/Image.js';
      import Projection from 'ol/proj/Projection.js';
      import Static from 'ol/source/ImageStatic.js';
      
      import Draw from 'ol/interaction/Draw.js';
      import {Tile as TileLayer, Vector as VectorLayer} from 'ol/layer.js';
      import {OSM, Vector as VectorSource} from 'ol/source.js';
      import GeoJSON from 'ol/format/GeoJSON.js';
      import Feature from 'ol/Feature.js';
      import {click, pointerMove, altKeyOnly, doubleClick} from 'ol/events/condition.js';
      import Select from 'ol/interaction/Select.js';
      import {Fill, Stroke, Style, Text, RegularShape} from 'ol/style.js';
      import {defaults as defaultControls, Control} from 'ol/control.js';      
      import {fromLonLat} from 'ol/proj.js';
      import painelTerreno from './painelTerreno.vue';
 
export default {
              
    /* */              
    components: {
      'painel-layer' :painelTerreno,      
    },   
    /* */
    props: {
      extent: { type: Array, default:()=> [0, 0, 586, 837] },  
      idMapa:  { type: String, default:'map' }    
    },    
    /* */
    data() {
            return {
                modalTerreno: false,
                selectIteracaoTerreno: {},
                /* */
                flagMod: '',
                map: {},
                view:{},
                projection: {},
                draw: {},
                initialZoom: null,
                sourceDisponiveis: {},
                layerDisponiveis: {},
                sourceVendidos:{},
                layerVendidos:{},
                listaTerrenos: {
                  "type":"FeatureCollection",
                  "features":[
                        {"type":"Feature", "geometry":{"type":"Polygon","coordinates":[[[518.5,387],[525.5,193],[556.5,194],[550.5,391],[518.5,387]]]},"properties":{"name":"Angola"}},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[344.5,582],[347.5,390],[378.5,391],[371.5,584],[344.5,582]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[449.5,588],[451.5,396],[480.5,396],[477.5,592],[449.5,588]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[127.5,475],[128.5,511],[88.5,512],[80.5,470],[127.5,475]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5005358.767233787,-2131267.3844470964],[-5005215.447805753,-2131558.8006174336],[-5005159.314363105,-2131532.5253889607],[-5005301.439462573,-2131239.9148900565],[-5005358.767233787,-2131267.3844470964]]]},"properties":{"name":"59"}},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5005293.974909029,-2131230.957425804],[-5005153.34272027,-2131528.9424032597],[-5005090.043306222,-2131495.501203385],[-5005232.168405689,-2131204.085033048],[-5005293.974909029,-2131230.957425804]]]},"properties":{"name":"60"}},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5005220.225120021,-2131200.502047347],[-5005079.29434912,-2131493.112546251],[-5005023.160906473,-2131466.8373177783],[-5005166.480334507,-2131171.83816174],[-5005220.225120021,-2131200.502047347]]]},"properties":{"name":"61"}},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5005154.537048838,-2131167.060847472],[-5005010.023292237,-2131459.671346376],[-5004952.695521023,-2131428.6188036352],[-5005092.431963357,-2131137.202633298],[-5005154.537048838,-2131167.060847472]]]},"properties":{"name":"62"}},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5005015.994935071,-2131098.9841191554],[-5004872.675507036,-2131393.9832751937],[-5004816.542064389,-2131366.513718154],[-5004958.667163857,-2131071.5145621155],[-5005015.994935071,-2131098.9841191554]]]},"properties":{"name":"64"}},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5004949.709699606,-2131064.3485907135],[-5004806.390271571,-2131362.9307324523],[-5004746.673843224,-2131336.6555039794],[-5004887.604614124,-2131038.0733622406],[-5004949.709699606,-2131064.3485907135]]]},"properties":{"name":"65"}}                    ]
                },
                listaTerrenosVendidos: {
                  "type":"FeatureCollection",
                  "features":[
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-5005083.474499105,-2131136.008304731],[-5004942.543728204,-2131427.424475068],[-5004882.827299857,-2131398.7605894613],[-5005023.758070757,-2131100.1784477225],[-5005083.474499105,-2131136.008304731]]]},"properties":{"name":"63"}},                    ]
                },                
            }
        },
    watch: {
      flagMod() {
        if(this.flagMod == 'iteracao'){
          this.flyto(function() {});
          this.terminaModoMarcacaoTerreno();
          this.iniciaModoNavegacao();
          this.iniciaModoIteracao();
        }
        else if(this.flagMod == 'marcacao'){
          console.log('flagMod:marcacao')
          this.iniciaModoNavegacao();
          this.iniciaModoMarcacaoTerreno();
          this.terminaModoIteracao();
        } else{
          console.log('flagMod:""')
          this.terminaModoIteracao();
          this.terminaModoNavegacao();
          this.terminaMarcacaoTerreno();
        }
      }
    } ,       
    /* */
    methods: {
      modoMarcacaoTerreno() {
        this.flagMod = 'marcacao';
        console.log('modoMarcacaoTerreno');
      },
      /* */
      modoNavegacao()
      {                   
          this.flagMod = this.flagMod == 'iteracao' ? '' : 'iteracao';
          console.log('flagModwww');
          console.log(this.flagMod);
      },      
      /*  -------------------------------------------------------------------- */
      /*  -------------------------------------------------------------------- */
      /* */
      iniciaModoMarcacaoTerreno() {
        var iteracoes = this.map.getInteractions();
        var existe = false;
        this.map.getInteractions().forEach(function (interaction) {
          if(interaction instanceof Draw) existe = true;
        });
        if(existe){ this.eventoFimMarcacaoTerreno(); this.terminaModoNavegacao(); return; }
          if(!(this.draw instanceof Draw)){
            
              this.draw = new Draw({
                source: this.sourceDisponiveis,
                type: 'Polygon',
                style: new Style({
                        image: 
                        //Start of the Icon style
                        /*new ol.style.Icon({
                            src: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Crosshairs_Red.svg/1024px-Crosshairs_Red.svg.png',
                            size: [10, 10],
                            opacity: 1
                        })*/
                        new RegularShape({  fill: new Fill({  color: 'black'  }), points: 4,  radius1: 15,  radius2: 1  }),
                        stroke: new Stroke({color: 'blue',  width: 1  }),
                        fill: new Fill({  color: 'rgba(255,255,0,0.5)'  })
                    })    
    
              });
          }
          //var
          this.draw.on('drawend', this.eventoFimMarcacaoTerreno);
          this.map.addInteraction(this.draw);
          console.log('modoMarcacaoTerreno');
      },
      /* */
      terminaMarcacaoTerreno(){
          this.map.removeInteraction(this.draw);
      },
      /* */
      terminaModoMarcacaoTerreno(){
          this.terminaMarcacaoTerreno();
          console.log('eventoFimMarcacaoTerreno');
          this.flagMod = 'iteracao';
      },
      /* */
      eventoFimMarcacaoTerreno(event)
      {
        this.terminaModoMarcacaoTerreno();
      },      
      /*  -------------------------------------------------------------------- */
      /*  -------------------------------------------------------------------- */
      /* */
      iniciaModoNavegacao()
      {          
          if (this.checkLayer(this.layerDisponiveis) === false){
            this.map.addLayer(this.layerDisponiveis);
            this.map.addLayer(this.layerVendidos);
            console.log('iniciaModoNavegacao');
          }
      },   
      
      /* */
      terminaModoNavegacao()
      {          
          if (this.checkLayer(this.layerDisponiveis) !== false){
            this.map.removeLayer(this.layerDisponiveis);
            this.map.removeLayer(this.layerVendidos); 
            console.log('terminaModoNavegacao');
          }           
      },
      /*  -------------------------------------------------------------------- */
      /*  -------------------------------------------------------------------- */      
      /* */
      iniciaModoIteracao(){
            this.selectIteracaoTerreno = new Select({ condition: click  });
            this.selectIteracaoTerreno.on('select', this.getFeaturesTerrenos);
            this.map.addInteraction(this.selectIteracaoTerreno);
            console.log('iniciaModoIteracao');
      },
      /* */
      terminaModoIteracao(){
            this.map.removeInteraction(this.selectIteracaoTerreno);
             console.log('terminaModoIteracao');
      },
      /*  -------------------------------------------------------------------- */
      /*  -------------------------------------------------------------------- */     
      /* */ 
      iniciaMapa()
      {
          this.initialZoom = this.getMinZoom();
          this.initProjection();
          this.initTileLayer();
          this.initDisponiveisLayer();
          this.initVendidosLayer();
      /**
       * @constructor
       * @extends {module:ol/control/Control~Control}
       * @param {Object=} opt_options Control options.
       */
      var RotateNorthControl = (function (Control, objVue) {
        function RotateNorthControl(opt_options) {
          var options = opt_options || {};
          var button = document.createElement('button'); button.innerHTML = 'N';
          var buttonD = document.createElement('button'); buttonD.innerHTML = 'D';
          var element = document.createElement('div'); element.className = 'rotate-north ol-unselectable ol-control'; 
          element.appendChild(button);
          element.appendChild(buttonD);
          Control.call(this, {
            element: element,
            target: options.target
          });
          button.addEventListener('click', objVue.modoNavegacao, false);
          buttonD.addEventListener('click', objVue.modoMarcacaoTerreno, false);
        }
        if ( Control ) RotateNorthControl.__proto__ = Control;
        RotateNorthControl.prototype = Object.create( Control && Control.prototype );
        RotateNorthControl.prototype.constructor = RotateNorthControl;
        return RotateNorthControl;
      }(Control, this));
          this.view = new View({
                            center: fromLonLat([ -44.962855, -18.797930]),
                            zoom: 14         
                    })
          this.map = new Map({
                    layers: [
                              /*new ImageLayer({
                                source: new Static({
                                  attributions: '© <a href="http://xkcd.com/license.html">xkcd</a>',
                                  url: 'img/mapa.png',
                                  projection: this.projection,
                                  imageExtent: this.extent
                                })
                              }), */
                              this.TileLayer
                    ],
                    target: this.idMapa,
                    view: this.view,
                    controls: defaultControls().extend([
                        new RotateNorthControl()
                      ]),
                  });
                  
      },
      flyto(done)                    
      {
       var parts = 4;
        var called = false;
        function callback(complete) {
          --parts;
          if (called) {
            return;
          }
          if (parts === 0 || !complete) {
            called = true;
            done(complete);
          }
        }
          var LAGOA = fromLonLat([ -44.962855, -18.797930]);
            this.view.animate({
            center: LAGOA,
            duration: 1000
            }, callback);    
            this.view.animate({
            zoom: 14 - 1,
            duration: 1000 / 2
            }, {
            zoom: 14,
            duration: 1000 / 2
            }, callback);         
      }     ,
      /* */
      checkLayer(layer) {
          var res = false;
          for (var i=0;i<this.map.getLayers().getLength();i++) {
              if (this.map.getLayers().getArray()[i] === layer) { //check if layer exists
                  res = true; //if exists, return true
              }
          }
          return res;
      },
      /* */ 
      initProjection()
      {
        this.projection = new Projection({
            code: 'xkcd-image',
            units: 'pixels',
            extent: this.extent
        });
      },
      /* */
      initTileLayer()
      {
        this.TileLayer = new TileLayer({
            source: new OSM()
        });      
      },
      /* */
      initDisponiveisLayer()
      {
          this.sourceDisponiveis = new VectorSource({
              wrapX: false,
              features: (new GeoJSON()).readFeatures(this.listaTerrenos),
          });
          var style = new Style({
            stroke: new Stroke({  color: 'rgba(40,142,53,0.4)',  width: 1  }),
            fill: new Fill({  color: 'rgba(0,255,0,0.1)' }),            
            text: new Text({  font: '20px Calibri,sans-serif',  })
          });  
          this.layerDisponiveis = new VectorLayer({
            source: this.sourceDisponiveis,
            style: function(feature) {
              style.getText().setText(feature.get('name'));
              return style;
            }
          });      
          this.layerDisponiveis.set('name', 'layerDisponiveis');
      },
      /* */
      initVendidosLayer()
      {
          this.sourceVendidos = new VectorSource({
              wrapX: false,
              features: (new GeoJSON()).readFeatures(this.listaTerrenosVendidos)
            });
          var style = new Style({
            stroke: new Stroke({  color: '#f00',  width: 1  }),
            fill: new Fill({  color: 'rgba(255,0,0,0.1)'  }),
            text: new Text({  font: '20px Calibri,sans-serif',  })
          });          
          this.layerVendidos =new VectorLayer({
            source: this.sourceVendidos,
            style: function(feature) {
              style.getText().setText(feature.get('name'));
              return style;
            }
          });  
          this.layerVendidos.set('name', 'layerVendidos');
          return this.layerVendidos;
      },
      
      /* */
      getMinZoom() {
        var viewport = document.getElementById(this.idMapa);
        var width = viewport.clientWidth;
        return Math.ceil(Math.LOG2E * Math.log(width / 256));
      },
      /* */
      getFeaturesTerrenos(e)
      {
            //tis.modalTerreno = true;
            var writer = new GeoJSON();
            //var geojsonStrDisponiveis = writer.writeFeatures(this.sourceDisponiveis.getFeatures());
            //var geojsonStrVendidos = writer.writeFeatures(this.sourceVendidos.getFeatures());
            //console.log(geojsonStrDisponiveis);
            //console.log(geojsonStrVendidos);
            console.log(e);
            this.openModalTerreno();
      },
      /* */
      removeTerrenosSelecionados(){
        this.selectIteracaoTerreno.getFeatures().clear();
      },
      /* */
      openModalTerreno(){
          this.modalTerreno = true;
      }
    },
        
    /* */        
    computed: {
    },
    
    /* */ 
    mounted() {
      this.iniciaMapa();
      //this.modoMarcacaoTerreno();
      //this.modoNavegacao();
    }
     
}
</script>    

<style>
      #map {
        width: 586px;
        height: 840px;
      }
      .rotate-north {
        top: .5em;
        right: .5em;
      }
      .ol-touch .rotate-north {
        top: 80px;
      }

      .ol-control button {
        background-color: 'rgba(f, f, f, 0.5)'
      }
      

</style>