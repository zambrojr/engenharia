<template>

<div>


<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gp Bootstrap Template</title>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link href="css/animate.min.css" rel="stylesheet">
  <link href="css/prettyPhoto.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: Gp
    Theme URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-templat/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->

</head>

<body class="homepage">

    
    
<div class="SM MD" data-observe-resizes>
  <div class="MyComponent">...</div>
</div>
    
    
     <vue-responsive-grid-layout
        @layout-update="onLayoutUpdate"
        @layout-change="onLayoutChange"
        @layout-init="onLayoutInit"
        @width-change="onWidthChange"
        @breakpoint-change="onBreakpointChange"
        :layouts="layouts"
        :compactType="'vertical'"
        :breakpoint="breakpoint"
        :cols="cols"
        ref="layout"
    >
    <template slot-scope="props">
    
    
    
      <vue-grid-item
              :i="props.layout[0].i"
              :w.sync="props.layout[0].w"
              :h.sync="props.layout[0].h"
              :x="props.layout[0].x"
              :y="props.layout[0].y"
              :immobile.sync="props.layout[0].immobile"
              :containerWidth="props.containerWidth"
              :rowHeight="props.rowHeight"
              :isDraggable="true"
              :isResizable="true"
              :className="'grid-item'"
              :cols="props.cols"
              :heightFromChildren="false"
              :maxRows="props.maxRows"
      >
          <div><b-table responsive stacked="md" :small=true  :striped=true :items="items"></b-table></div>
      </vue-grid-item>
      
      
      
      <vue-grid-item
              :i="props.layout[1].i"
              :w.sync="props.layout[1].w"
              :h.sync="props.layout[1].h"
              :x="props.layout[1].x"
              :y="props.layout[1].y"
              :immobile.sync="props.layout[1].immobile"
              :containerWidth="props.containerWidth"
              :rowHeight="props.rowHeight"
              :isDraggable="true"
              :isResizable="true"
              :className="'grid-item'"
              :cols="props.cols"
              :heightFromChildren="false"
              :maxRows="props.maxRows"
      >
          <div class="slider">
                <div class="container">
                  <div id="about-slider">
                    <div id="carousel-slider" class="carousel slide" data-ride="carousel">
                      <!-- Indicators -->
                      <ol class="carousel-indicators visible-xs">
                        <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-slider" data-slide-to="1"></li>
                        <li data-target="#carousel-slider" data-slide-to="2"></li>
                      </ol>
            
                      <div class="carousel-inner">
                        <div class="item active">
                          <img src="images/slider_one.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="item">
                          <img src="images/slider_one.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="item">
                          <img src="images/slider_one.jpg" class="img-responsive" alt="">
                        </div>
                      </div>
            
                      <a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
            						<i class="fa fa-angle-left"></i>
            					</a>
            
                      <a class=" right carousel-control hidden-xs" href="#carousel-slider" data-slide="next">
            						<i class="fa fa-angle-right"></i>
            					</a>
                    </div>
                    <!--/#carousel-slider-->
                  </div>
                  <!--/#about-slider-->
                </div>
              </div>
      </vue-grid-item>      
      
      
<vue-grid-item
              :i="props.layout[2].i"
              :w.sync="props.layout[2].w"
              :h.sync="props.layout[2].h"
              :x="props.layout[2].x"
              :y="props.layout[2].y"
              :immobile.sync="props.layout[2].immobile"
              :containerWidth="props.containerWidth"
              :rowHeight="props.rowHeight"
              :isDraggable="true"
              :isResizable="true"
              :className="'grid-item'"
              :cols="props.cols"
              :heightFromChildren="false"
              :maxRows="props.maxRows"
      >
      
<section id="feature">
    <div class="container">
      <div class="center wow fadeInDown">
        <h2>Features</h2>
        <p class="lead">Empresa do bolsonaro teste á Engenhraria multiplus çç <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
      </div>

      <div class="row">
        <div class="features">
          <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="feature-wrap">
              <i class="fa fa-laptop"></i>
              <h2>Fresh and Clean</h2>
              <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
            </div>
          </div>
          <!--/.col-md-4-->

          <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="feature-wrap">
              <i class="fa fa-comments"></i>
              <h2>Retina ready</h2>
              <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
            </div>
          </div>
          <!--/.col-md-4-->

          <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="feature-wrap">
              <i class="fa fa-cloud-download"></i>
              <h2>Easy to customize</h2>
              <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
            </div>
          </div>
          <!--/.col-md-4-->

          <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="feature-wrap">
              <i class="fa fa-leaf"></i>
              <h2>Adipisicing elit</h2>
              <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
            </div>
          </div>
          <!--/.col-md-4-->

          <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="feature-wrap">
              <i class="fa fa-cogs"></i>
              <h2>Sed do eiusmod</h2>
              <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
            </div>
          </div>
          <!--/.col-md-4-->

          <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="feature-wrap">
              <i class="fa fa-heart"></i>
              <h2>Labore et dolore</h2>
              <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
            </div>
          </div>
          <!--/.col-md-4-->
        </div>
        <!--/.services-->
      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>      
         
      </vue-grid-item>           
      
      
      
<vue-grid-item
              :i="props.layout[3].i"
              :w.sync="props.layout[3].w"
              :h.sync="props.layout[3].h"
              :x="props.layout[3].x"
              :y="props.layout[3].y"
              :immobile.sync="props.layout[3].immobile"
              :containerWidth="props.containerWidth"
              :rowHeight="props.rowHeight"
              :isDraggable="true"
              :isResizable="true"
              :className="'grid-item'"
              :cols="props.cols"
              :heightFromChildren="false"
              :maxRows="props.maxRows"
      >
      <div>
<header id="header">
    <nav class="navbar navbar-fixed-top" role="banner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <a class="navbar-brand" href="index.html">Gp.</a>
        </div>

        <div class="collapse navbar-collapse navbar-right">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">Home</a></li>
            <li><a href="about-us.html">Sobre</a></li>
            <li><a href="services.html">Serviços</a></li>
            <li><a href="portfolio.html">Portfólio</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact-us.html">Contato</a></li>
          </ul>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->

  </header>
               </div>
      </vue-grid-item>         
      
      
      
    </template>
    </vue-responsive-grid-layout>
    
    
    
</body>

 



</div>

</template>

<script>

import {VueResponsiveGridLayout, VueGridItem, VueGridLayout } from 'vue-responsive-grid-layout'



    
const items = [
        {
          'heading 1': 'table cell',
          'heading 2': 'table cell',
          'heading 3': 'table cell',
          'heading 4': 'table cell',
          'heading 5': 'table cell',
          'heading 6': 'table cell',
          'heading 7': 'table cell',
          'heading 8': 'table cell',
          'heading 9': 'table cell',
          'heading 10': 'table cell'
        },
        {
          'heading 1': 'table cell',
          'heading 2': 'table cell',
          'heading 3': 'table cell',
          'heading 4': 'table cell',
          'heading 5': 'table cell',
          'heading 6': 'table cell',
          'heading 7': 'table cell',
          'heading 8': 'table cell',
          'heading 9': 'table cell',
          'heading 10': 'table cell'
        },
        {
          'heading 1': 'table cell',
          'heading 2': 'table cell',
          'heading 3': 'table cell',
          'heading 4': 'table cell',
          'heading 5': 'table cell',
          'heading 6': 'table cell',
          'heading 7': 'table cell',
          'heading 8': 'table cell',
          'heading 9': 'table cell',
          'heading 10': 'table cell'
        }
      ] ;


export default {
              

    components: {
                'vue-responsive-grid-layout': VueResponsiveGridLayout, 
                 'vue-grid-item': VueGridItem, 
                 'vue-grid-layout': VueGridLayout, 
    },     
    props: {
    },    
    data() {
            return {
                items: items,
                layouts: {
          "md": [
            { x: 0, y: 0, w: 2, h: 3, i: "1"},
            { x: 2, y: 0, w: 2, h: 3, i: "2"},
            { x: 4, y: 0, w: 2, h: 3, i: "3"},
            { x: 0, y: 3, w: 2, h: 3, i: "4"}
          ]
        },
          breakpoint: "md",
            components: {
              "1": { i: "1", component: "example-component", defaultSize: 2},
                "2": { i: "2", component: "example-component", defaultSize: 2},
                  "3": { i: "3", component: "example-component", defaultSize: 2},
                    "4": { i: "4", component: "example-component", defaultSize: 2},
            },
              cols: 10,
                breakpoints: { lg: 1200, md: 996, sm: 768, xs: 480, xxs: 0 },
                  colsAll: { lg: 10, md: 8, sm: 6, xs: 4, xxs: 2 },
                    isDraggable: true,
                      isResizable: true,
            }
        },
    watch: {
    },        
        
    methods: {
        
        
 onLayoutUpdate(layout, layouts, last) {
						this.$set(this.layouts, this.breakpoint, layout);
        },

        onLayoutChange(layout, layouts, breakpoint) {
						this.$set(this.layouts, breakpoint, layout);
        },

        onLayoutInit(layout, layouts, cols, breakpoint) {
            this.cols = cols;
            this.breakpoint = breakpoint;
						this.$set(this.layouts, breakpoint, layout);
        },

        onBreakpointChange(breakpoint) {
            this.breakpoint = breakpoint;
        },

        onWidthChange(width, cols) {
            this.cols = cols;
        },
        gridMode() {
            this.$refs.layout.resizeAllItems(2, 'vertical');
        },
        listMode() {
            this.$refs.layout.resizeAllItems(this.cols, 'horizontal');
        },     
        
        
        
        initWatcher(){
            
            // Only run if ResizeObserver is supported.
            if ('ResizeObserver' in self) {
              // Create a single ResizeObserver instance to handle all
              // container elements. The instance is created with a callback,
              // which is invoked as soon as an element is observed as well
              // as any time that element's size changes.
              var ro = new ResizeObserver(function(entries) {
                // Default breakpoints that should apply to all observed
                // elements that don't define their own custom breakpoints.
                var defaultBreakpoints = {SM: 384, MD: 576, LG: 768, XL: 960};
                        
                entries.forEach(function(entry) {
                    console.log(111)
                  // If breakpoints are defined on the observed element,
                  // use them. Otherwise use the defaults.
                  var breakpoints = entry.target.dataset.breakpoints ?
                      JSON.parse(entry.target.dataset.breakpoints) :
                      defaultBreakpoints;
            
                  // Update the matching breakpoints on the observed element.
                  Object.keys(breakpoints).forEach(function(breakpoint) {
                    var minWidth = breakpoints[breakpoint];
                    if (entry.contentRect.width >= minWidth) {
                      entry.target.classList.add(breakpoint);
                    } else {
                      entry.target.classList.remove(breakpoint);
                    }
                  });
                });
              });
            
              // Find all elements with the `data-observe-resizes` attribute
              // and start observing them.
              var elements = document.querySelectorAll('[data-observe-resizes]');
              for (var element, i = 0; element = elements[i]; i++) {
                  console.log('222');
                ro.observe(element);
              }
            }            
            
        }
        
    },
        
    computed: {
    },
    
    mounted() {
        
        
        
       this.initWatcher(); 
        
        
        
    }

     
}



</script>    

<style>

.SM > table { background-color:red }
.SM > table { background-color:blue }
.LG > table {
    background-color:green;
    
@media (max-width: 480px) { 
    table.table tr.none {
        display: none;
    }

}
    

 }
 
 
#app {
  background: #fff;
  border-radius: 4px;
  transition: all 0.2s;
}

html {
  height: 100%;
}

body {
  height: 100%;
}

#content {
  padding: 0px 20px;
  min-height: 100vh;
  transition: all 0.3s;
  width: 100%;
}

.resizable-handle {
  position:absolute;
  width:20px;
  height:20px;
  bottom:0;
  right:0px;
  text-align:right;
}
.resizable-handle::after {
  content: "";
  position: absolute;
  right: 3px;
  bottom: 3px;
  width: 5px;
  height: 5px;
  border-right: 2px solid #000000;
  border-bottom: 2px solid #000000;
}
.vue-grid-draggable-container {
  width: 100%;
  height: 100%;
}
.grid-item {
  border: 1px dotted #000;
}
.vue-grid-placeholder {
  background: #ddd; border: 2px dashed #aaa;
}

.vue-grid-layout {
  width: 100%;
  display:block;
  position:relative;
  height: 100%;
} 

</style>