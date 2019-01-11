<template>

    
    <b-card>
      <b-row class="text-left">
        <b-col class="col-2"><h4>Valor</h4></b-col>
        <b-col>R$100.345,45</b-col>
      </b-row>
      <b-row class="text-left">
        <b-col class="col-2"><h4>Area</h4></b-col>
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




</template>







<script>


import { Carousel, Slide } from 'vue-carousel';
 
export default {
              
    /* */              
    components: {
      Carousel,
      Slide,        
    },   

    /* */
    props: {
    },    

    /* */
    data() {
            return {

                items: [ { 'Responsavel': 'Andrews Everton', 'Identificador': '00001/01', 'Visitante': "Mauro Porto", 'Inicio': '07/01/2018 14:03:00', 'Fim': '07/01/2018 15:03:00',                              },                              { 'Responsavel': 'Batman', 'Identificador': '00002/01', 'Visitante': "Mauro Porto", 'Inicio': '07/01/2018 14:03:00', 'Fim': '07/01/2018 15:03:00',                              },                              { 'Responsavel': 'Andrews Everton', 'Identificador': '00001/01', 'Visitante': "Mauro Porto", 'Inicio': '07/01/2018 14:03:00', 'Fim': '07/01/2018 15:03:00',                              }, ] ,                  
                agendaVisita: [   {     'Responsavel': 'Andrews Everton',     'Identificador': '00001/01',     'Visitante': "Mauro Porto",     'Inicio': '07/01/2018 14:03:00',     'Fim': '07/01/2018 15:03:00',   },   {     'Responsavel': 'Batman',     'Identificador': '00002/01',     'Visitante': "Mauro Porto",     'Inicio': '07/01/2018 14:03:00',     'Fim': '07/01/2018 15:03:00',   },   {     'Responsavel': 'Andrews Everton',     'Identificador': '00001/01',     'Visitante': "Mauro Porto",     'Inicio': '07/01/2018 14:03:00',     'Fim': '07/01/2018 15:03:00',   },     ] ,
              
        }
    },

    watch: {
    },        
        
    methods: {
    },
        
    computed: {
    },
    
    mounted() {
    }

     
}


</script>    
