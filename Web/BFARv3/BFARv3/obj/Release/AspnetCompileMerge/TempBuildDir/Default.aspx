<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BFARv3.Default" %>

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


    <style type="text/css">
        .maps-hover {
            height: 4px;
            width: 1044px;
        }
    </style>


</head>
<body id="page-top" class="index">
    <form id="form1" runat="server">
    <div>
    
        
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
            <div class="" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>

                    <li>
                        <a class="page-scroll" href="#newssection">News</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#trends">Trends</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#maps">Maps</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#imagesview">Fish Images</a>
                    </li>

                    <li>
                        <a class="page-scroll" href="#contact">Contact Us</a>
                    </li>
                    <li>
                        <a href="Login.aspx">LogIn</a>
                    </li>

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
                <a href="#about" class="page-scroll btn btn-xl">Go to site</a>
            </div>
        </div>
    </header>

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
                <br />
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
                                    <br />
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
                                   <br />
                    <a href="http://www.bfar.da.gov.ph/BFARnews?id=263" target="blank">Read More...</a>
                </div>
            </div>
        </div>
    </section>


    <!-- Trends Section -->
    <section id="trends" class="bg-light-gray" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center text-center">
                    <h2 class="section-heading">Data Trends</h2>
                    <h3 class="section-subheading text-muted">Data Trends Represented by Charts</h3>
                </div>
                <div class="col-xs-6 col-sm-6 maps-item text-center">
                    <a href="FGChart.aspx" class="maps-link" >
                        <div class="maps-hover">
                        </div>
                        <img src="img/logos/fish gear.png" class="img-responsive" alt=""/>
                    </a>
                    <div class="maps-caption">
                        <h4 class="text-center">Fishing Gear</h4>
                        <p class="text-muted text-center">Fishing Gear Trends</p>
                    </div>
                </div>
                
                <div class="col-xs-6 col-sm-6 maps-item text-center">
                    <a href="BoatsChart.aspx" class="maps-link">
                        <div class="maps-hover">
                        </div>
                        <img src="img/logos/Boat.png" class="img-responsive" alt=""/>
                    </a>
                    <div class="maps-caption">
                        <h4 class="text-center">Boat</h4>
                        <p class="text-muted text-center">Boat Trends</p>
                    </div>
                </div>
            </div>
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
                    <a href="FishTagging.aspx" class="maps-link" >
                        <div class="maps-hover">
                        </div>
                        <img src="img/logos/Map.png" class="img-responsive" alt="" />
                    </a>
                    <div class="maps-caption">
                        <h4>Fish Tagging</h4>
                        <p class="text-muted">Fish Tag History</p>
                    </div>
                </div>
                
                <div class="col-xs-6 col-sm-6 maps-item">
                    <a href="FishingMap.aspx" class="maps-link">
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


    <section id="imagesview" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <h2 class="section-heading">Fish Images</h2>
                    <h3 class="section-subheading text-muted">Fish Species List with Pictures</h3>

                <div class="col-md-6 col-md-offset-3 maps-item">
                    <a href="#MapModal3" class="maps-link" data-toggle="modal">
                        <div class="maps-hover">
                        </div>
                        <img src="img/logos/Fish.png" class="img-responsive" alt=""/>
                    </a>
                    <div class="maps-caption">
                        <h4>Fish List</h4>
                        <p class="text-muted">Fish Images List</p>
                </div>
                </div>
                </div>
            </div>
        </div>

    </section>



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
                                    <input type="number" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number."/>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message." maxlength="1000"></textarea>
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



         
    <div class="map-modal modal fade" id="MapModal3" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr"> X
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                     <div class="col-lg-8 col-lg-offset-2">
                         <div class="modal-body">
                           <div class="row">
                                <div class="col-lg-12 text-center pagination-centered">
                                    <h2 class="section-heading">Fish Images</h2>
                                    <h3 class="section-subheading text-muted">Fish Species List with Pictures</h3>

                        <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None" OnRowDataBound="OnRowDataBound" EmptyDataText="No Data Found">
                            <AlternatingRowStyle BackColor="White" />
                            <RowStyle Width="500px" />
                            <Columns>
                                <asp:TemplateField HeaderText="Fish Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="400" Width="500" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Species_ID" HeaderText="Species ID" />
                                <asp:BoundField DataField="Scientific_Name" HeaderText="Scientific Name" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>

                               </div>
                            </div>
                        <br/>
                        <br />
                        <button type="button" class="col-md-6 col-md-offset-3 btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
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

    </div>
    </form>
</body>
</html>
