<template>


<section>
<b-container>
    <b-row>
        <b-col class="text-center rounded pointer">  
        <b-card >
            <div id="map" class="map"></div>
        </b-card>
        </b-col>
    </b-row>            
</b-container>


  <b-modal v-model="modalTerreno" ok-only size="lg" @hide="removeTerrenosSelecionados" centered title="Lote 63 - Lagoa Dos Cisnes - Macacos - mg" >
    <b-card>
      <b-row class="text-left">
        <b-col><h4>Valor</h4></b-col>
        <b-col>R$100.345,45</b-col>
      </b-row>
      <b-row class="text-left">
        <b-col><h4>Area</h4></b-col>
        <b-col>200M2</b-col>
      </b-row>
      <b-row>
          <b-col>
            <carousel :perPage=5 :paginationEnabled=false>
                <slide>
                  <b-img thumbnail  src="https://picsum.photos/250/250/?image=71" alt="Thumbnail" />
                </slide>
                <slide>
                  <b-img thumbnail  src="https://picsum.photos/250/250/?image=83" alt="Thumbnail" />
                </slide>
                <slide>
                  <b-img thumbnail  src="https://picsum.photos/250/250/?image=67" alt="Thumbnail" />
                </slide>
                <slide>
                  <b-img thumbnail  src="http://www.globalempreendimentos.com.br/fotos/negocio-lote-a-partir-de-1000m-no-condominio-estancia-do-cipo-72.jpg" alt="Thumbnail" />
                </slide>
                <slide>
                  <b-img thumbnail  src="http://www.globalempreendimentos.com.br/fotos/negocio-lote-a-partir-de-1000m-no-condominio-estancia-do-cipo-79.jpg" alt="Thumbnail" />
                </slide>
                <slide>
                  <b-img thumbnail src="https://picsum.photos/250/250/?image=62" alt="Thumbnail" />
                </slide>        
            </carousel>
          </b-col>
        </b-row>
    
        <div class="form-row">
            <div class="col border rounded" style="overflow-x:auto">    
              <b-table class="small text-left" responsive stacked="md" :small=true :striped=true :items="items"></b-table>
            </div>
        </div>
        <div class="form-row">
            <div class="col border rounded" style="overflow-x:auto">            
              <b-table class="small text-left" responsive stacked="md" :small=true :striped=true :items="agendaVisita"></b-table>
            </div>
        </div>      
</b-card>
  </b-modal>

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
      import { Carousel, Slide } from 'vue-carousel';
 
export default {
              
    /* */              
    components: {
      Carousel,
      Slide      
    },   

    /* */
    props: {
      extent: { type: Array, default:()=> [0, 0, 1024, 968] },      
    },    

    /* */
    data() {
            return {


                items: [ { 'Responsavel': 'Andrews Everton', 'Identificador': '00001/01', 'Visitante': "Mauro Porto", 'Inicio': '07/01/2018 14:03:00', 'Fim': '07/01/2018 15:03:00',                              },                              { 'Responsavel': 'Batman', 'Identificador': '00002/01', 'Visitante': "Mauro Porto", 'Inicio': '07/01/2018 14:03:00', 'Fim': '07/01/2018 15:03:00',                              },                              { 'Responsavel': 'Andrews Everton', 'Identificador': '00001/01', 'Visitante': "Mauro Porto", 'Inicio': '07/01/2018 14:03:00', 'Fim': '07/01/2018 15:03:00',                              }, ] ,                  
                agendaVisita: [   {     'Responsavel': 'Andrews Everton',     'Identificador': '00001/01',     'Visitante': "Mauro Porto",     'Inicio': '07/01/2018 14:03:00',     'Fim': '07/01/2018 15:03:00',   },   {     'Responsavel': 'Batman',     'Identificador': '00002/01',     'Visitante': "Mauro Porto",     'Inicio': '07/01/2018 14:03:00',     'Fim': '07/01/2018 15:03:00',   },   {     'Responsavel': 'Andrews Everton',     'Identificador': '00001/01',     'Visitante': "Mauro Porto",     'Inicio': '07/01/2018 14:03:00',     'Fim': '07/01/2018 15:03:00',   },     ] ,
                modalTerreno:false,
                selectIteracaoTerreno: {},

                /* */

                flagMod: '',

                map: {},
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
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[344.5,582],[347.5,390],[378.5,391],[371.5,584],[344.5,582]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[449.5,588],[451.5,396],[480.5,396],[477.5,592],[449.5,588]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[127.5,475],[128.5,511],[88.5,512],[80.5,470],[127.5,475]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[518.5,387],[525.5,193],[556.5,194],[550.5,391],[518.5,387]]]},"properties":null}
                    ]
                },
                listaTerrenosVendidos: {
                  "type":"FeatureCollection",
                  "features":[
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[380.5,585],[382.5,392],[411.5,393],[406.5,587],[380.5,585]]]},"properties":null},
                        {"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[413.5,586],[414.5,393],[446.5,394],[442.5,589],[413.5,586]]]},"properties":null},
                    ]
                },                
            }
        },

    watch: {

      flagMod() {

        if(this.flagMod == 'iteracao'){
          console.log('flagMod:iteracao')
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


          this.map = new Map({
                    layers: [
                              new ImageLayer({
                                source: new Static({
                                  attributions: '© <a href="http://xkcd.com/license.html">xkcd</a>',
                                  url: 'img/mapa.png',
                                  projection: this.projection,
                                  imageExtent: this.extent
                                })
                              }), 
                              this.TileLayer
                              //this.layerDisponiveis,
                              //this.layerVendidos
                    ],
                    target: 'map',
                    view: new View({
                            projection: this.projection,
                            center: getCenter(this.extent),
                            //resolution: 1,        // important for 100% image size!
                            //maxResolution: 2,
                            //minResolution:2
                            //maxZoom: 8
                            minZoom: this.initialZoom,
                            zoom: this.initialZoom          
                    }),
                    controls: defaultControls().extend([
                        new RotateNorthControl()
                      ]),
                  });
                  
      },

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
              features: (new GeoJSON()).readFeatures(this.listaTerrenos)
            });
          this.layerDisponiveis = new VectorLayer({
            source: this.sourceDisponiveis
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
            stroke: new Stroke({
              color: '#f00',
              width: 1
            }),
            fill: new Fill({
              color: 'rgba(255,0,0,0.1)'
            }),
            text: new Text({
              font: '12px Calibri,sans-serif',
              fill: new Fill({
                color: '#000'
              }),
              stroke: new Stroke({
                color: '#f00',
                width: 3
              })
            })
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
        var viewport = document.getElementById('map');
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
        width: 1024px;
        height: 800px;
      }
      .rotate-north {
        top: .5em;
        right: .5em;
      }
      .ol-touch .rotate-north {
        top: 80px;
      }
      
    </style>
</style>