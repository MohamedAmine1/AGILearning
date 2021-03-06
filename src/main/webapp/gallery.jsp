<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>AGILearning : Gallery</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" />

    <!-- CSS
    ================================================== -->
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <!-- Font awesome css file-->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css"/>
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"/>
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'/>
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"/>
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.css" />
    <!-- Default Theme css file -->
    <link id="switcher" href="css/theme/lite-blue-theme.css" rel="stylesheet"/>
    <!-- Main structure css file -->
    <link href="userTemplate/style.css" rel="stylesheet"/>

    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'/>
</head>
<body>
     <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->
    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
        <!-- BEGIN MENU -->
        <div class="menu_area">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- LOGO -->
                       
                        <!-- TEXT BASED LOGO -->
                        <a class="navbar-brand" href="home"><img src="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" alt="logo" align="left" style="width:40px;"
                                                                       style="height:40px;"/> AGI<span>Learning</span></a>                         
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                            <li><a href="home">Home</a></li>
                            <li><a href="nos-formations">NOS FORMATION</a></li>
                            <li><a href="partenaires.jsp">nos partenaires</a></li>
                            <li><a href="events-archive.jsp">Events</a></li>
                            <li class="active"><a href="gallery.jsp">Gallery</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">NOS SERVICES<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="AVIATION.jsp">AVIATION</a></li>
                                    <li><a href="CARBURANT.jsp">CARBURANT</a></li>
                                    <li><a href="GAZ.jsp">GAZ</a></li>
                                    <li><a href="LUBRIFIANT.jsp">LUBRIFIANT</a></li>
                                </ul>
                            </li>
                            <li><a href="contact">Contact</a></li>
                            <li><a href="index">Logout</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
        </div>
        <!-- END MENU -->
    </header>
    <!--=========== END HEADER SECTION ================-->
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBanner">
        <h2>Gallery</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
    <!--=========== BEGIN GALLERY SECTION ================-->
    <section id="gallery">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div id="gallerySLide" class="gallery_area">
                        <a href="img/gallery/img-large1.jpg" title="This is Title">
                            <img class="gallery_img" src="img/gallery/img-small1.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large2.jpg" title="This is Title2">
                            <img class="gallery_img" src="img/gallery/img-small2.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large3.jpg" title="This is Title3">
                            <img class="gallery_img" src="img/gallery/img-small3.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large4.jpg" title="This is Title4">
                            <img class="gallery_img" src="img/gallery/img-small4.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large1.jpg" title="This is Title5">
                            <img class="gallery_img" src="img/gallery/img-small1.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large2.jpg">
                            <img class="gallery_img" src="img/gallery/img-small2.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large3.jpg">
                            <img class="gallery_img" src="img/gallery/img-small3.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large4.jpg">
                            <img class="gallery_img" src="img/gallery/img-small4.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large1.jpg" title="This is Title">
                            <img class="gallery_img" src="img/gallery/img-small1.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large2.jpg" title="This is Title2">
                            <img class="gallery_img" src="img/gallery/img-small2.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large3.jpg" title="This is Title3">
                            <img class="gallery_img" src="img/gallery/img-small3.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large4.jpg" title="This is Title4">
                            <img class="gallery_img" src="img/gallery/img-small4.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large1.jpg" title="This is Title5">
                            <img class="gallery_img" src="img/gallery/img-small1.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large2.jpg">
                            <img class="gallery_img" src="img/gallery/img-small2.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large3.jpg">
                            <img class="gallery_img" src="img/gallery/img-small3.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                        <a href="img/gallery/img-large4.jpg">
                            <img class="gallery_img" src="img/gallery/img-small4.jpg" alt="img" />
                            <span class="view_btn">View</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=========== END GALLERY SECTION ================-->
    <!--=========== BEGIN FOOTER SECTION ================-->
    <footer id="footer">
        <!-- Start footer top area -->
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-ld-3  col-md-3 col-sm-3">
                        <div class="single_footer_widget">
                            <h3>About Us</h3>
                            <p>La Société Nationale de Distribution des Pétroles AGIL S.A. est une entreprise publique ayant pour mission la commercialisation des produits pétroliers et de leurs dérivés sous le label AGIL. Elle fait partie des grandes entreprises publiques tunisiennes qui, par leur dynamisme et la diversité de leurs activités, soutiennent l’économie nationale et lui assurent une croissance continue.</p>
                        </div>
                    </div>
                    <div class="col-ld-3  col-md-3 col-sm-3">
                        <div class="single_footer_widget">
                            <h3>Community</h3>
                            <ul class="footer_widget_nav">
                                <li><a href="#">Our Tutors</a></li>
                                <li><a href="#">Our Students</a></li>
                                <li><a href="#">Our Team</a></li>
                                <li><a href="#">Forum</a></li>
                                <li><a href="#">News &amp; Media</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-ld-3  col-md-3 col-sm-3">
                        <div class="single_footer_widget">
                            <h3>Others</h3>
                            <ul class="footer_widget_nav">
                                <li><a href="#">Link 1</a></li>
                                <li><a href="#">Link 2</a></li>
                                <li><a href="#">Link 3</a></li>
                                <li><a href="#">Link 4</a></li>
                                <li><a href="#">Link 5</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-ld-3  col-md-3 col-sm-3">
              <div class="single_footer_widget">
                <h3>Social Links</h3>
                <ul class="footer_social">
                  <li><a data-toggle="tooltip" data-placement="top" title="Facebook" class="soc_tooltip" href="https://www.facebook.com/agil.com.tn/"><i class="fa fa-facebook"></i></a></li>
                  <li><a data-toggle="tooltip" data-placement="top" title="Twitter" class="soc_tooltip"  href="https://twitter.com/?lang=fr"><i class="fa fa-twitter"></i></a></li>
                  <li><a data-toggle="tooltip" data-placement="top" title="Google+" class="soc_tooltip"  href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li><a data-toggle="tooltip" data-placement="top" title="Linkedin" class="soc_tooltip"  href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li><a data-toggle="tooltip" data-placement="top" title="Youtube" class="soc_tooltip"  href="https://www.youtube.com/channel/UCO6jAXC96fUVA53yFsLqWOQ"><i class="fa fa-youtube"></i></a></li>
                </ul>
              </div>
            </div>
                </div>
            </div>
        </div>
        <!-- End footer top area -->
        <!-- Start footer bottom area -->
        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="footer_bootomLeft">
                            <p> Copyright &copy; All Rights Reserved</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="footer_bootomRight">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End footer bottom area -->
    </footer>
    <!--=========== END FOOTER SECTION ================-->
    <!-- Javascript Files
    ================================================== -->
    <!-- initialize jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Preloader js file -->
    <script src="js/queryloader.js" type="text/javascript"></script>
    <!-- For smooth animatin  -->
    <script src="js/wow.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.js"></script>
    <!-- slick slider -->
    <script src="js/slick.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery-easing.js"></script>
    <script src="js/jquery-animate-enhanced.js"></script>
    <script src="js/jquery-superslides.js" type="text/javascript" charset="utf-8"></script>
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="js/jquery-tosrus.js"></script>

    <!-- Custom js-->
    <script src="js/custom.js"></script>
</body>
</html>