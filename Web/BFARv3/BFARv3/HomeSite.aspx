<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home-Site.aspx.cs" Inherits="BFARv3.Home_Site" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BFARv3</title>
    
    <!-- Bootstrap Core CSS  HERE-->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/HomeStyleSheet.css" rel="stylesheet" />
    <link href="css/LogInCss.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Landed Catch and Effort Monitoring</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#newssection">News</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#reports">Reports</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#maps">Maps</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                    <!-- Log in-->
                    <ul class="nav navbar-nav navbar-right">
                         <li class="dropdown">
                          <a href="" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			                <ul id="login-dp" class="dropdown-menu">
				                <li>
					                 <div class="row">
							                <div class="col-md-12">
								                 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										                <div class="form-group">
											                 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											                 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required/>
										                </div>
										                <div class="form-group">
											                 <label class="sr-only" for="exampleInputPassword2">Password</label>
											                 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required/>
                                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										                </div>
										                <div class="form-group">
											                 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										                </div>
										                <div class="checkbox">
											                 <label>
											                 <input type="checkbox"/> keep me logged-in
											                 </label>
										                </div>
								                 </form>
							                </div>
					                 </div>
				                </li>
                            </ul>
                         </li>
                </ul>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-heading">Landed Catch and Effort Monitoring</div>
                <a href="#newssection" class="page-scroll btn btn-xl">Go to site</a>
            </div>
        </div>
    </header>

    <!-- News Section -->
    <section id="newssection">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">News</h2>
                    <h3 class="section-subheading text-muted">Latest Updates from BFAR</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-institution fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Third Batch of DA-BFAR Personnel Completes Law Enforcement Training</h4>
                    <p class="text-muted">A total of 75 personnel have been added to the growing number of law enforcers who will manage and
                         protect the country’s fishing grounds, DA Undersecretary for Fisheries and concurrent Bureau of Fisheries and Aquatic
                         Resources national director Asis G. Perez said.</p>
                </br>
                    <a href="http://www.bfar.da.gov.ph/BFARnews?id=261" target="blank">Read More...</a>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-mortar-board fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">DA-BFAR Holds #legendstalkonphfisheries Forum</h4>
                    <p class="text-muted">The Bureau of Fisheries and Aquatic Resources of the Department of Agriculture (DA-BFAR) holds today a
                         rare one-day event dubbed as #LegendsTalkOnPHFisheries at the Bahay ng Alumni, UP Diliman in Quezon City.</p>
                                    </br>
                    <a href="http://www.bfar.da.gov.ph/BFARnews?id=262" target="blank">Read More...</a>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-gavel fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">DA-BFAR Welcomes Senate Probe on Unregulated Fishing</h4>
                    <p class="text-muted">The Bureau of Fisheries and Aquatic Resources of the Department of Agriculture (DA-BFAR)
                         welcomes the resolution filed by Senator Miriam Defensor-Santiago seeking investigation of a report by a researcher from University of the Philippines Diliman on
                         overfishing in 75 percent of the country’s fishing grounds.</p>
                                   </br>
                    <a href="http://www.bfar.da.gov.ph/BFARnews?id=263" target="blank">Read More...</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Reports Section -->
    <section id="reports" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Reports</h2>
                    <h3 class="section-subheading text-muted">Statiscal Reports</h3>
                    <div class="row">
                        <div class="col-md-4">
                            <img src="img/Report1.PNG" />
                            <p> Region 3 generated gross earnings amounting to 27.08 billion pesos at current prices.
                        The value of production for Central Luzon ranked first among other regions or a 12.24% share of the national production value of P 221.28 Billion.
                        This only shows that Central Luzon has been a consistent top producer of high value and food fish species for the country.</p>
                        </div>
                        <div class="col-md-4">
                            <img src="img/Report2.PNG" />
                            <p>The volume of aquaculture production in 2010 was estimated at 219,783.65 metric tons. It garnered a whopping 83% share to total fisheries production of Central Luzon.
                                 This was followed by the municipal sector with 40,559.61 metric tons and commercial with 4,335.78 MT.
                            </p>
                        </div>
                        <div class="col-md-4">
                            <img src="img/Report3.PNG" />
                            <p>The total volume of fisheries production in 2010 of Central Luzon was 264,679.04 metric tons or a slight drop of 
                                2.73% compared to 2009 production. The decrease in production was primarily due to the El Nino phenomenon that 
                                exhibited prolonged hot weather which extended during the 1st half of the year and affected the major fishponds 
                                in Pampanga and Bulacan.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div class="row">

            </div>
    </section>


    <!-- Maps Section -->
    <section id="maps" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Maps</h2>
                    <h3 class="section-subheading text-muted">Designed Maps Used for Landed Catch and Effort Monitoring</h3>
                </div>
                <div class="col-xs-6 col-sm-6 maps-item">
                    <a href="#MapModal1" class="maps-link" data-toggle="modal">
                        <div class="maps-hover">
                        </div>
                        <img src="img/logos/Map.png" class="img-responsive" alt=""/>
                    </a>
                    <div class="maps-caption">
                        <h4>Fish Tagging</h4>
                        <p class="text-muted">Fish Tag History</p>
                    </div>
                </div>
                
                <div class="col-xs-6 col-sm-6 maps-item">
                    <a href="#MapModal2" class="maps-link" data-toggle="modal">
                        <div class="maps-hover">
                        </div>
                        <img src="img/logos/Map2.png" class="img-responsive" alt=""/>
                    </a>
                    <div class="maps-caption">
                        <h4>Fishing Map</h4>
                        <p class="text-muted">Regional Fish Map</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section -->
    <section id="about" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <h3>Brief History and Development</h3>
                    <p>
                    The Bureau of Fisheries and Aquatic Resources started as a Division of Fisheries in the Bureau of Science on January 1, 1933.
                     It was made part of the Fish and Game Administration under the Ministry of Agriculture and Commerce.
                     It was organized  afterwards as the Bureau of Fisheries on July 1, 1947 under R.A. No. 177. 
                    </p>
                    </br>
                    <p>
                    On March 20, 1963, R.A. 3512 reorganized it into the Philippine Fisheries Commission. On September 21, 1972, it was reverted back
                     again to its original name as Bureau of Fisheries and this time, the first Fisheries Office in the Region was established.
                     On May 17, 1977 by virtue of R.A. No. 461, the office was renamed BFAR, a line agency under the Ministry of Natural Resources with different regional offices.
                     BFAR Region 3 then was holding office in San Fernando, Pampanga. Side by side, provincial offices were established in the six provinces of the region.
                     BFAR was integrated under one umbrella agency in the regions in 1987. 
                    </p>
                    </br>
                    <p>
                    However with the implementation of RA 7160 otherwise known as the Local Government Code of 1991, the provincial and municipal offices
                     of DA were devolved to the concerned local government units thus losing direct supervision over its manpower in the field including
                     fisheries. After almost 12 years of rallying, the long awaited RA 8550 (The Philippine Fisheries Code of 1998) was enacted, in which,
                     BFAR is no longer a staff bureau but changed once again as a line agency.
                    </p>
                </div>
                <div class="col-md-4">
                    <h3>Our Vision</h3>
                    <p>A modernized fisheries that is technologically advance and globally competitive.</p>
                    <p>Its transformation is guided by sound management practices of resources, sustainability, the principle of sound social justice and strong private sector participation.</p>
                    </br> </br>
                    <h3>Our Mission</h3>
                    <p>Conserve, protect and sustain the management of the country's fishery and aquatic resources.</p>
                    <p>Alleviate poverty and provide supplementary livelihood among fisherfolk.</p>
                    <p>improve aquaculture productivity within ecological limit.</p>
                    <p>Utilize optimally the offshore and deep-sea resources.</p>
                    <p>Upgrade post-harvest technology.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Government Agencies -->
    <aside class="clients">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-md-4" style="height=50px">
                    <a href="http://www.da.gov.ph" target="blank">
                        <img src="img/logos/DA.jpg" class="img-responsive img-centered" alt=""/>
                    </a>
                </div>
                <div class="col-xs-6 col-md-4">
                    <a href="http://www.bfar.da.gov.ph" target="blank">
                        <img src="img/logos/BFAR.jpg" class="img-responsive img-centered" alt=""/>
                    </a>
                </div>
                <div class="col-xs-6 col-md-4">
                    <a href="http://www.gov.ph" target="blank">
                        <img src="img/logos/PH.jpg" class="img-responsive img-centered" alt=""/>
                    </a>
                </div>
            </div>
        </div>
    </aside>
    
    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Leave a Comment or Suggestion</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name."/>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address."/>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number."/>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; LCEMS 2015</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="https://twitter.com/bfarph" target="blank"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="https://www.facebook.com/BFAR.Central" target="blank"><i class="fa fa-facebook"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

        <div class="maps-modal modal fade" id="MapModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <script src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBas-YmcsHKWzwTeAEtbbIlQNyhXtKdznc&signed_in=true&libraries=visualization&callback=initMap" async defer></script>
                            <script src="js/FishingMapJs.js"></script>
                            <!-- Project Details Go Here -->
                                <div id="floating-panel">
                                  <button type="button" onclick="toggleHeatmap()" class="btn btn-primary">Toggle Heatmap</button>
                                  <button type="button" onclick="changeGradient()" class="btn btn-primary">Change gradient</button>
                                  <button type="button" onclick="changeRadius()" class="btn btn-primary">Change radius</button>
                                  <button type="button" onclick="changeOpacity()" class="btn btn-primary">Change opacity</button>
                                </div>
                                <div id="sidebar">
                                    <select id="selectedfishid" onchange="toggleHeatmap()" class="form-control">
                                        <option value="Fish1">Nemipterus japonicus</option>
                                        <option value="Fish2">Sphyraena Putnamae</option>
                                        <option value="Fish3">Saurida elongata</option>
                                        <option value="Fish4">Secutor indicus</option>
                                    </select>
                                    <button type="button" onclick="PlotSelected()" class="btn btn-primary">Select Fish</button>
                                </div>
                                <div id="map"></div>

                            <button type="button" class="btn btn-primary" data-dismiss="modal" style="top:100%"><i class="fa fa-times"></i> Close Map</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="maps-modal modal fade" id="MapModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <script src="js/FishingMapJs.js"></script>
                         <div id="map2"></div>   
                         <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Map</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>
</body>
    </div>
    </form>
</body>
</html>
