<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>AGILearning : Course Single</title>

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
	
	
	<style>	
	
input[type=radio] {
    background: #fff;
    border: 2px solid #ccc;
    border-radius: 50%;
    margin-top: -3px;
    margin-right: 6px;
    display: inline-block;
    vertical-align: middle;
    content: '';
    width: 17px;
    height: 17px;
}
input[type=radio]:checked {
    background: #fb8819;
    border-color: #fb8819;
    box-shadow: inset 0px 0px 0px 2px #fff;
}
.element{
    margin-bottom:14px;
}
</style>
	
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
                        <a class="navbar-brand" href="home.jsp"><img src="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" alt="logo" align="left" style="width:40px;"
                                                                       style="height:40px;"/> AGI<span>Learning</span></a>                         
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                            <li><a href="home">Home</a></li>
                            <li class="active"><a href="nos-formations">NOS FORMATION</a></li>
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
        <h2>Course Details</h2>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="courseArchive">
        <div class="container">
            <div class="row">
                <!-- start course content -->
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="courseArchive_content">
                        <div class="singlecourse_ferimg_area">
                            <div class="singlecourse_ferimg">
                                <img src="https://cdn.lynda.com/course/480123/480123-636374171407163841-16x9.jpg" alt="img">
                            </div>
                            <div class="singlecourse_bottom">
                                <h2>Les Fondements du Management</h2>
                                <span class="singlecourse_author">
                                    <img alt="img" src="https://static.wixstatic.com/media/5e1260_9509d563c4304cddba9debcd26e0758e.jpg/v1/fill/w_232,h_218,al_c,q_80,usm_0.66_1.00_0.01/5e1260_9509d563c4304cddba9debcd26e0758e.webp">
                                    François Normandin, Professionnel de recherche et chargé de cours (HEC Montréal)
                                </span>
                            </div>
                        </div>
                        <div >
                            <h2>About The Course</h2>
                            <p>certain d'entre vous seront peut être inconfortable a l'idée de ne pas avoir a l'avence le contenu complet de la journée.</p>
                            <p>laissez vos crainte de coté, et laissez-vous imprégner par les discussion et les echanges. </p>
                            <p>le veritable travail commencera a votre retour au bureau, et lors des jours suivants. il sera alors temps de faire le pont entre les contenus théoriques, les discussions avec vos collégues de formation, de meme qu'avec la realité du terrain. </p>
                            <p>cela dit les acétates, complétes de la formation vous seront transmisses sous peu.</p>
                            <P>la suite de la formation :</P>
                            <p><a href="formations/Acétates - 1- La nature de la gestion.pptx">Acétates-1-La nature de la gestion</a></p>
                            <p><a href="formations/Acétates - 2- La dimension symbolique.pptx">Acétates-2-La dimention symbolique</a></p>
                            <p><a href="formations/Acétates - 3- La dimension politique.pptx">Acétates-3-La dimention politique</a></p>
                            <p><a href="formations/Acétates - 4- La dimension psychologique.pptx">Acétates-4-La dimention psychologique</a></p>
							<div class="row">
							<div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two">Votre Avis Est Important Pour Nous</h2>
                        <span></span>
                    </div>
                </div>
            </div>	
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="contact_form wow fadeInLeft">
					<div class="element">
					<c:url var="addAvis" value="/avis/add"></c:url>
                        <form:form class="submitphoto_form" action="${addAvis}" commandName="avis">
						    <p>A l'issue de cette formation, vos objectifs ont-ils été atteints ?</p>
                            terrible <form:radiobutton name="q1" value="1" path="q1"/>
                            pauvre <form:radiobutton  name="q1" value="2" path="q1"/>
                            moyenne <form:radiobutton  name="q1" value="3" path="q1"/>
							bien <form:radiobutton  name="q1" value="4" path="q1"/>
                            excellent <form:radiobutton name="q1" value="5" path="q1" checked="true"/></br> </br>
							<p>Adéquation entre les thémes proposés et vos attente ?</p>
							terrible <form:radiobutton name="q2"  value="1" path="q2" />
                            pauvre <form:radiobutton name="q2" value="2" path="q2"/>
                            moyenne <form:radiobutton name="q2" value="3" path="q2"/>
							bien <form:radiobutton name="q2" value="4" path="q2"/>
                            excellent <form:radiobutton name="q2" value="5" path="q2" checked="true"/></br> </br>
							<p>Niveau d'utilité pour votre fonction ?</></br> </br>
							terrible <form:radiobutton name="q3"  value="1" path="q3" />
                            pauvre <form:radiobutton name="q3" value="2" path="q3" />
                            moyenne <form:radiobutton name="q3" value="3" path="q3" />
							bien <form:radiobutton name="q3" value="4" path="q3" />
                            excellent <form:radiobutton name="q3" value="5" path="q3" checked="true"/></br>
							<p>Votre appréciation générale de la formation ?</br> </br>
							terrible <form:radiobutton name="q4" value="1" path="q4" />
                            pauvre <form:radiobutton name="q4" value="2" path="q4"/>
                            moyenne <form:radiobutton name="q4" value="3" path="q4"/>
							bien <form:radiobutton name="q4" value="4" path="q4"/>
                            excellent <form:radiobutton name="q4" value="5" path="q4" checked="true"/></br> </br>
                            <input type="submit" value="Submit" class="wpcf7-submit">
                        </form:form>
					</div>	
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="title_area">
                        <h2 class="title_two"><a href="test_evaluation">Vous avez apprenez quoi ?</a></h2>
                        <span></span>
                    </div>
                </div>
                <br>
                <br>
                    </div>
                         <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="ourCourse_content">
                        <ul class="course_nav">
                        <c:if test="${!empty listFormations}">
                        <c:forEach items="${listFormations}" var="formation">
                            <li>
                                <div class="single_course">
                                    <div class="singCourse_imgarea">
                                        <img src="${formation.src}" />
                                        <div class="mask">
                                            <a href="${formation.titre}" class="course_more">View Course</a>
                                        </div>
                                    </div>
                                    <div class="singCourse_content">
                                        <h3 class="singCourse_title"><a href="${formation.titre}">${formation.titre}</a></h3>
                                        <p>${formation.description}</p>
                                    </div>
                                    <div class="singCourse_author">
                                        <p>${formation.author}</p>
                                    </div>
                                </div>
                            </li>
                         </c:forEach>
                         </c:if>      
                        </ul>
                    </div>
                </div>
            </div> 
                            
                            </div>
                        </div>
                        <!-- End related course -->
                    </div>
                </div>
                <!-- End course content -->
             </div>         
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
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

    <!-- Custom js-->
    <script src="js/custom.js"></script>
</body>
</html>