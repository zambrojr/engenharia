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
  <!--/header-->
  
 
   <dnd-grid-container :layout.sync="layoutJson">
    <dnd-grid-box boxId="box3Id">
 
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
 </dnd-grid-box>
 

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
  <!--/#feature-->


  <section id="recent-works">
    <div class="container">
      <div class="center wow fadeInDown">
        <h2>Recent Works</h2>
        <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
      </div>

      <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item1.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme</a> </h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item2.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme</a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item3.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme </a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item3.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item4.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">MultiPurpose theme </a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item4.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item5.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme</a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item5.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item6.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme </a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item6.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item7.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme </a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item7.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xs-12 col-sm-4 col-md-3">
          <div class="recent-work-wrap">
            <img class="img-responsive" src="images/portfolio/recent/item8.png" alt="">
            <div class="overlay">
              <div class="recent-work-inner">
                <h3><a href="#">Business theme </a></h3>
                <p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
                <a class="preview" href="images/portfolio/full/item8.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>
  <!--/#recent-works-->


  <section id="middle">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 wow fadeInDown">
          <div class="skill">
            <h2>Our Skills</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

            <div class="progress-wrap">
              <h3>Graphic Design</h3>
              <div class="progress">
                <div class="progress-bar  color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                  <span class="bar-width">85%</span>
                </div>

              </div>
            </div>

            <div class="progress-wrap">
              <h3>HTML</h3>
              <div class="progress">
                <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                  <span class="bar-width">95%</span>
                </div>
              </div>
            </div>

            <div class="progress-wrap">
              <h3>CSS</h3>
              <div class="progress">
                <div class="progress-bar color3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                  <span class="bar-width">80%</span>
                </div>
              </div>
            </div>

            <div class="progress-wrap">
              <h3>Wordpress</h3>
              <div class="progress">
                <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                  <span class="bar-width">90%</span>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!--/.col-sm-6-->

        <div class="col-sm-6 wow fadeInDown">
          <div class="accordion">
            <h2>Why People like us?</h2>
            <div class="panel-group" id="accordion1">
              <div class="panel panel-default">
                <div class="panel-heading active">
                  <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                </div>

                <div id="collapseOne1" class="panel-collapse collapse in">
                  <div class="panel-body">
                    <div class="media accordion-inner">
                      <div class="pull-left">
                        <img class="img-responsive" src="images/accordion1.png">
                      </div>
                      <div class="media-body">
                        <h4>Adipisicing elit</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                </div>
                <div id="collapseTwo1" class="panel-collapse collapse">
                  <div class="panel-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseThree1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                </div>
                <div id="collapseThree1" class="panel-collapse collapse">
                  <div class="panel-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour1">
                                  Lorem ipsum dolor sit amet
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                </div>
                <div id="collapseFour1" class="panel-collapse collapse">
                  <div class="panel-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                  </div>
                </div>
              </div>
            </div>
            <!--/#accordion1-->
          </div>
        </div>

      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>
  <!--/#middle-->
  
  
  <section id="bottom">
    <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="widget">
            <h3>Company</h3>
            <ul>
              <li><a href="#">About us</a></li>
              <li><a href="#">We are hiring</a></li>
              <li><a href="#">Meet the team</a></li>
              <li><a href="#">Copyright</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-3-->

        <div class="col-md-3 col-sm-6">
          <div class="widget">
            <h3>Support</h3>
            <ul>
              <li><a href="#">Faq</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Forum</a></li>
              <li><a href="#">Documentation</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-3-->

        <div class="col-md-3 col-sm-6">
          <div class="widget">
            <h3>Developers</h3>
            <ul>
              <li><a href="#">Web Development</a></li>
              <li><a href="#">SEO Marketing</a></li>
              <li><a href="#">Theme</a></li>
              <li><a href="#">Development</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-3-->

        <div class="col-md-3 col-sm-6">
          <div class="widget">
            <h3>Our Partners</h3>
            <ul>
              <li><a href="#">Adipisicing Elit</a></li>
              <li><a href="#">Eiusmod</a></li>
              <li><a href="#">Tempor</a></li>
              <li><a href="#">Veniam</a></li>
            </ul>
          </div>
        </div>
        <!--/.col-md-3-->
      </div>
    </div>
  </section>
  <!--/#bottom-->
  
   

  <div class="top-bar">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="social">
            <ul class="social-share">
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a href="#"><i class="fa fa-skype"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!--/.container-->
  </div>
  <!--/.top-bar-->
  
    <dnd-grid-box boxId="box1Id">

  <footer id="footer" class="midnight-blue">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          &copy; Gp Theme. All Rights Reserved.
          <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Gp
            -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
        <div class="col-sm-6">
          <ul class="pull-right">
            <li><a href="#">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Faq</a></li>
            <li><a href="#">Contact Us</a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  
      </dnd-grid-box>
    <dnd-grid-box boxId="box2Id">
  
<b-table responsive stacked="md"             
                            :small=true
                            :striped=true :items="items"></b-table>
 
        </dnd-grid-box>

</dnd-grid-container>
    
<div class="SM MD" data-observe-resizes>
  <div class="MyComponent">...</div>
</div>
    


    
</body>

 



</div>

</template>

<script>
// import Container and Box components
import { Container, Box } from '@dattn/dnd-grid'
// minimal css for the components to work properly
import '@dattn/dnd-grid/dist/dnd-grid.css'
    
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
        DndGridContainer: Container,
        DndGridBox: Box
    },
    props: {
    },    
    data() {
            return {
                items: items,
                layoutJson:  [
                        {
                            id: 'box-a',
                            hidden: false,
                            pinned: false,
                            position: {
                                x: 0,
                                y: 0,
                                w: 4, // Multiplier for virtual grid width
                                h: 2 // Multiplier for virtual grid height
                           }
                        },
                        {
                            id: 'box-b',
                            hidden: false,
                            pinned: false,
                            position: {
                                x: 4,
                                y: 0,
                                w: 2,
                                h: 1
                            }
                        },
                        
                    ]
            }
        },
    watch: {
    },        
        
    methods: {
        
        
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
 
 
 .splitpanes__pane {
  justify-content: center;
  align-items: center;
  display: flex;
}

.splitpanes__pane span {
  font-family: Helvetica, Arial, sans-serif;
  color: #fff;
  font-size: 5em;
  opacity: 0.6;
}

</style>