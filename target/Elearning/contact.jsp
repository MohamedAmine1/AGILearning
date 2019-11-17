<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
  <!-- Basic Page Needs
    ================================================== -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>AGILearning : Contact</title>

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
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.css" />
    <!-- Default Theme css file -->
    <link id="switcher" href="css/theme/lite-blue-theme.css" rel="stylesheet"/>
    <!-- Main structure css file -->
    <link href="userTemplate/style.css" rel="stylesheet"/>

    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'/>
    <script type="text/javascript" src="js/contact.js"></script>
    
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
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
                            <li><a href="gallery.jsp">Gallery</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">NOS SERVICES<span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="AVIATION.jsp">AVIATION</a></li>
                                    <li><a href="CARBURANT.jsp">CARBURANT</a></li>
                                    <li><a href="GAZ.jsp">GAZ</a></li>
                                    <li><a href="LUBRIFIANT.jsp">LUBRIFIANT</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="contact">Contact</a></li>
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
        <h2>Contact</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
    <!--=========== BEGIN CONTACT SECTION ================-->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">We are AGIL</h2>
                        <span></span>
                        <p>Vous Pouvez Nous Contacter Par ici</p>
                    </div>
                </div>
            </div>
            <c:url var="addContact" value="/contact/add" ></c:url>
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="contact_form wow fadeInLeft">
                        <form:form class="submitphoto_form" action="${addContact}" commandName="contact">
                            <form:input type="text" class="wp-form-control wpcf7-text" path="idContact" readonly="true" disabled="true" placeholder="Merci de remplir tous les champs vide du formulaire"/>
                            <form:input type="text" class="wp-form-control wpcf7-text" path="username" readonly="true" value="${username}"/>
                            <form:input type="text" class="wp-form-control wpcf7-email" path="mail" placeholder="Email address" id="mail"/>
                            <form:input type="text" class="wp-form-control wpcf7-text" path="subject" placeholder="Subject" id="subject"/>
                            <form:textarea class="wp-form-control wpcf7-textarea" path="text" cols="30" rows="10" placeholder="What would you like to tell us" id="msg"></form:textarea>
                            <input type="submit" value="Envoyer" class="wpcf7-submit" id="contacter" />
                        </form:form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="contact_address wow fadeInRight">
                        <h3>Address</h3>
                        <div class="address_group">
                            <p>BP 762، Ave Mohamed Ali Akid, Tunis 1003</p>
                            <p>Phone: +216 71 70 72 22 </p>
                            <p>Email: AGIL.Learning@gmail.com</p>
                        </div>
                        <div class="address_group">
              <ul class="footer_social">
                <li><a href="https://www.facebook.com/agil.com.tn/" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="https://twitter.com/?lang=fr" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Google+"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="https://www.youtube.com/channel/UCO6jAXC96fUVA53yFsLqWOQ" class="soc_tooltip" title="" data-placement="top" data-toggle="tooltip" data-original-title="Youtube"><i class="fa fa-youtube"></i></a></li>
                </ul>
             </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=========== END CONTACT SECTION ================-->
    <!--=========== BEGIN GOOGLE MAP SECTION ================-->
    <section id="googleMap">
        <iframe id="map" width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1596.55184418082!2d10.1949361!3d36.8399927!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12fd34c100541ec1%3A0x9adf9b6c18f0a32b!2sNational+Distribution+Company+Ajil+oil+H.kh.a.!5e0!3m2!1sen!2stn!4v1517387873623"></iframe>
    </section>
    <!--=========== END GOOGLE MAP SECTION ================-->
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
    <script type="text/javascript" src="js/jquery-tosrus.js"></script>
    
    <script type="text/javascript">
   $("#contacter").click(function(e){
	   var message ="";
	   var nb_erreurs=0;
	   if ((document.getElementById("mail").value=="")||(document.getElementById("mail").value.indexOf("@")==-1)){
			  message = message+" E-MAIL,";
	    	  nb_erreurs=nb_erreurs+1;
			  } 
      if ((document.getElementById("subject").value=="")||(isNaN(document.getElementById("subject").value) == false)){    	  
    	  message = message+" SUJET,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
      if (document.getElementById("msg").value==""){    	  
    	  message = message+" MESSAGE,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
      if (nb_erreurs > 1){
		  e.preventDefault();
		  alert("Vérifier les champs"+message);
		  }
	  if (nb_erreurs==1){
		  e.preventDefault();
		  alert("Le champs"+message+" est erroné.");
		  }
	   });
  </script>

    <!-- Custom js-->
    <script src="js/custom.js"></script>
    
    <script type="text/javascript">

    function initialize() {
    	  var pyrmont = new google.maps.LatLng(-33.8665, 151.1956);

    	  var map = new google.maps.Map(document.getElementById('map'), {
    	    center: pyrmont,
    	    zoom: 15,
    	    scrollwheel: false
    	  });

    	  // Specify location, radius and place types for your Places API search.
    	  var request = {
    	    location: pyrmont,
    	    radius: '500',
    	    types: ['store']
    	  };

    	  // Create the PlaceService and send the request.
    	  // Handle the callback with an anonymous function.
    	  var service = new google.maps.places.PlacesService(map);
    	  service.nearbySearch(request, function(results, status) {
    	    if (status == google.maps.places.PlacesServiceStatus.OK) {
    	      for (var i = 0; i < results.length; i++) {
    	        var place = results[i];
    	        // If the request succeeds, draw the place location on
    	        // the map as a marker, and register an event to handle a
    	        // click on the marker.
    	        var marker = new google.maps.Marker({
    	          map: map,
    	          position: place.geometry.location
    	        });
    	      }
    	    }
    	  });
    	}

    	// Run the initialize function when the window has finished loading.
    	//google.maps.event.addDomListener(window, 'load', initialize);

    </script>
 
    

</body>
</html>