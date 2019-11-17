<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    

    <title>AGILearning : Inscription Form</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap1.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
	<!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" />
	
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	<div id="login-page">
	  	<div class="container">
	  	<c:url var="inscription" value="/inscription/try_ins" ></c:url>
		    <form:form class="form-login" action="${inscription}" commandName="inscrit">
		        <h2 class="form-login-heading">register now</h2>				
		        <div class="login-wrap">
				    <form:input type="text" class="form-control" placeholder="name" path="nom" id="name"/>
		            <br>
					<form:input type="text" class="form-control" placeholder="first name" path="prenom" id="pre"/>
		            <br>
		            <form:input type="text" class="form-control" placeholder="e-mail" path="mail" id="e-mail"/>
					<br>
		            <form:input type="text" class="form-control" placeholder="Username" path="username" id="user"/>
		            <br>
		            <form:input type="password" class="form-control" placeholder="Password" path="password" id="pwd"/>
					<br>
		            <form:input type="password" class="form-control" placeholder="repeat Password" path="confirm_password" id="confirm"/>
					<br>
					<div class="message" id="message">${message}</div>					
					<button class="btn btn-theme btn-block" type="submit" id="ajouter">inscription</button>
				</div>
			</form:form>		
		</div>
	</div>
	
	<script type="text/javascript">
   $("#ajouter").click(function(e){
	   var message ="";
	   var nb_erreurs=0;
      if ((document.getElementById("user").value=="")||(isNaN(document.getElementById("user").value) == false)){    	  
    	  message = message+" USERNAME,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if ((document.getElementById("pwd").value=="")||(document.getElementById("pwd").value.length<8)){
		  message = message+" PASSWORD,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if (document.getElementById("confirm").value!=document.getElementById("pwd").value){
		  message = message+" CONFIRMER LE PASSWORD,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if ((document.getElementById("name").value=="")||(isNaN(document.getElementById("name").value) == false)){
		  message = message+" NOM,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if ((document.getElementById("pre").value=="")||(isNaN(document.getElementById("pre").value) == false)){
		  message = message+" PRENOM,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if ((document.getElementById("e-mail").value=="")||(document.getElementById("e-mail").value.indexOf("@")==-1)){
		  message = message+" E-MAIL,";
    	  nb_erreurs=nb_erreurs+1;
		  }
	  if (nb_erreurs > 1){
		  e.preventDefault();
		  document.getElementById("message").textContent = "Vérifier les champs"+message;
		  }
	  if (nb_erreurs==1){
		  e.preventDefault();
		  document.getElementById("message").textContent = "Le champs"+message+" est erroné.";
		  }
	   });
  </script>
  
 <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("http://www.agil.com.tn/doc/images/large-background.jpg", {speed: 500});
    </script>


  </body>
</html>	
		                