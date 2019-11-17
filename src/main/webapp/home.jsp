<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AGILearning : Home Users</title>

<!-- Mobile Specific Metas
    ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Favicon -->
<link rel="shortcut icon" type="image/icon"
	href="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" />

<!-- CSS
    ================================================== -->
<!-- Bootstrap css file-->
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
<!-- Font awesome css file-->
<link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet" />
<!-- Superslide css file-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/superslides.css" />
<!-- Slick slider css file -->
<link href="${pageContext.request.contextPath}/css/slick.css" rel="stylesheet" />
<!-- Circle counter cdn css file -->
<link rel='stylesheet prefetch'
	href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css' />
<!-- smooth animate css file -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<!-- gallery slider css -->
<link type="text/css" media="all" rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.css" />
<!-- Default Theme css file -->
<link id="switcher" href="${pageContext.request.contextPath}/css/theme/lite-blue-theme.css"
	rel="stylesheet" />
<!-- Main structure css file -->
<link href="${pageContext.request.contextPath}/userTemplate/style.css" rel="stylesheet" />

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Merriweather'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Varela'
	rel='stylesheet' type='text/css' />
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
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!-- LOGO -->

						<!-- TEXT BASED LOGO -->
						<a class="navbar-brand" href="home"><img
							src="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png"
							alt="logo" align="left" style="width: 40px;" style="height:40px;" />
							AGI<span>Learning</span></a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
							<li class="active"><a href="home">Home</a></li>
							<li><a href="nos-formations">NOS FORMATION</a></li>
							<li><a href="partenaires.jsp">nos partenaires</a></li>
							<li><a href="events-archive.jsp">Events</a></li>
							<li><a href="gallery.jsp">Gallery</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false">NOS
									SERVICES<span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="AVIATION.jsp">AVIATION</a></li>
									<li><a href="CARBURANT.jsp">CARBURANT</a></li>
									<li><a href="GAZ.jsp">GAZ</a></li>
									<li><a href="LUBRIFIANT.jsp">LUBRIFIANT</a></li>
								</ul></li>
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
	<!--=========== BEGIN SLIDER SECTION ================-->
	<section id="slider">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="slider_area">
					<!-- Start super slider -->
					<div id="slides">
						<ul class="slides-container">
							<li><img src="img/slider/2.jpg" alt="img">
								<div class="slider_caption">
									<h2>LA PLUS GRANDE & BELLE UNIVERSITÉ</h2>
									<p>Dans ce site, agil vous offre une grande quantité de formations en ligne que vous ne le trouvé pas chez les autres, avec une maniére original.</p>
									<a class="slider_btn" href="#">Know More</a>
								</div></li>
							<!-- Start single slider-->
							<li><img src="img/slider/3.jpg" alt="img">
								<div class="slider_caption slider_right_caption">
									<h2>MEILLEUR ENVIRONNEMENT D'ÉDUCATION</h2>
									<p>Un environnement chic de travail qui ne dépend pas beaucoup d'éffort.</p>
									<a class="slider_btn" href="#">Know More</a>
								</div></li>
							<!-- Start single slider-->
							<li><img src="img/slider/4.jpg" alt="img">
								<div class="slider_caption">
									<h2>DÉCOUVREZ-VOUS D'UNE MEILLEURE FAÇON</h2>
									<p>Ne perdez plus votre temps à exercer un travail qui ne vous convient pas.</p>
									<a class="slider_btn" href="#">Know More</a>
								</div></li>
						</ul>
						<nav class="slides-navigation">
							<a href="#" class="next"></a> <a href="#" class="prev"></a>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--=========== END SLIDER SECTION ================-->
	<!--=========== BEGIN ABOUT US SECTION ================-->
	<section id="aboutUs">
		<div class="container">
			<div class="row">
				<!-- Start about us area -->
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="aboutus_area wow fadeInLeft">
						<h2 class="titile">About Us</h2>
						<p>La Société Nationale de Distribution des Pétroles AGIL S.A. est une entreprise publique ayant pour mission la commercialisation des produits pétroliers et de leurs dérivés sous le label AGIL. Elle fait partie des grandes entreprises publiques tunisiennes qui, par leur dynamisme et la diversité de leurs activités, soutiennent l’économie nationale et lui assurent une croissance continue. Avec un chiffre d’affaires HT de 1 647 millions de dinars en 2014, AGIL S.A. joue un rôle d’avant-garde sur la voie du progrès et de l’excellence dans laquelle s’est engagée la Tunisie de l’ère nouvelle.

En développant ses activités, AGIL S.A. a fini par occuper la première place parmi les entreprises du secteur, tant par le volume de ses ventes que par l’importance de son chiffre d’affaires et le savoir faire de ses ressources humaines et s’emploie constamment à consolider cette position en offrant à ses clients la meilleure qualité de produit et de service.

AGIL S.A. est présente partout à travers ses 206 stations-service réparties sur tout le territoire tunisien, ses 54 stations portuaires et ses 6 dépôts aéroportuaires.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--=========== END ABOUT US SECTION ================-->
	<section id="whyUs">
		<!-- Start why us top -->
		<div class="row">
			<div class="col-lg-12 col-sm-12">
				<div class="whyus_top">
					<div class="container">
						<!-- Why us top titile -->
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="title_area">
									<h2 class="title_two">Why Us</h2>
									<span></span>
								</div>
							</div>
						</div>
						<!-- End Why us top titile -->
						<!-- Start Why us top content  -->
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="single_whyus_top wow fadeInUp">
									<div class="whyus_icon">
										<span class="fa fa-desktop"></span>
									</div>
									<h3>Technology</h3>
									<p>Les meilleurs et les premiers dans la technologie de
										e-learning dans la tunisie</p>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="single_whyus_top wow fadeInUp">
									<div class="whyus_icon">
										<span class="fa fa-users"></span>
									</div>
									<h3>Best Tutor</h3>
									<p>Vous trouver les meilleurs tutoriels chez nous</p>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="single_whyus_top wow fadeInUp">
									<div class="whyus_icon">
										<span class="fa fa-flask"></span>
									</div>
									<h3>Practical Training</h3>
									<p>Les meilleurs formations dans plusieurs domaine</p>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3">
								<div class="single_whyus_top wow fadeInUp">
									<div class="whyus_icon">
										<span class="fa fa-support"></span>
									</div>
									<h3>Support</h3>
									<p>Le meilleur moyen de vous aider aÂ  dÃ©velopper vos
										compÃ©tences</p>
								</div>
							</div>
						</div>
						<!-- End Why us top content  -->
					</div>
				</div>
			</div>
		</div>
	</section>
		<!-- End why us top -->

		<!--=========== BEGIN OUR COURSES SECTION ================-->
		<section id="ourCourses">
			<div class="container">
				<!-- Our courses titile -->
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="title_area">
							<h2 class="title_two">Our Courses</h2>
							<span></span>
						</div>
					</div>
				</div>
				<!-- End Our courses titile -->
				<!-- Start Our courses content -->
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
														<a href="${formation.titre}" class="course_more">View
															Course</a>
													</div>
												</div>
												<div class="singCourse_content">
													<h3 class="singCourse_title">
														<a href="${formation.titre}">${formation.titre}</a>
													</h3>
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
				<!-- End Our courses content -->
			</div>
		</section>
		<!--=========== END OUR COURSES SECTION ================-->

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
									<li><a data-toggle="tooltip" data-placement="top"
										title="Facebook" class="soc_tooltip"
										href="https://www.facebook.com/agil.com.tn/"><i
											class="fa fa-facebook"></i></a></li>
									<li><a data-toggle="tooltip" data-placement="top"
										title="Twitter" class="soc_tooltip"
										href="https://twitter.com/?lang=fr"><i
											class="fa fa-twitter"></i></a></li>
									<li><a data-toggle="tooltip" data-placement="top"
										title="Google+" class="soc_tooltip" href="#"><i
											class="fa fa-google-plus"></i></a></li>
									<li><a data-toggle="tooltip" data-placement="top"
										title="Linkedin" class="soc_tooltip" href="#"><i
											class="fa fa-linkedin"></i></a></li>
									<li><a data-toggle="tooltip" data-placement="top"
										title="Youtube" class="soc_tooltip"
										href="https://www.youtube.com/channel/UCO6jAXC96fUVA53yFsLqWOQ"><i
											class="fa fa-youtube"></i></a></li>
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
								<p>Copyright &copy; All Rights Reserved</p>
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
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
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
		<script src="js/jquery-superslides.js" type="text/javascript"
			charset="utf-8"></script>
		<!-- for circle counter -->
		<script
			src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
		<!-- Gallery slider -->
		<script type="text/javascript" src="js/jquery-tosrus.js"></script>

		<!-- Custom js-->
		<script src="js/custom.js"></script>
</body>
</html>
