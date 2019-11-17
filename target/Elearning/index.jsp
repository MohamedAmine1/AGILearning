<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>AGILearninig : Login</title>

    <!-- Bootstrap core CSS -->
   <!--  <link href="assets/css/bootstrap1.css" rel="stylesheet">  -->
    
    
       <link href="<c:url value="/resources/assets/css/bootstrap1.css" />" rel="stylesheet">
   <!--   <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script> -->
    
    <!--external css-->
    <!--   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />  -->
     <link href="<c:url value="/resources/assets/font-awesome/css/font-awesome.css" />" rel="stylesheet">
           
    <!-- Custom styles for this template -->
    
    <link href="<c:url value="/resources/assets/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/assets/css/style-responsive.css" />" rel="stylesheet">
    
    <!--  
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    -->
    
    
    
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" />

</script>    
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	<c:url var="login" value="/try_log" ></c:url>
		      <form:form class="form-login" action="${login}" commandName="log">
		        <h2 class="form-login-heading">Sign In</h2>
		        <div class="login-wrap">
		            <form:input type="text" class="form-control" path="username" placeholder="Username" id="user"/>
		            <br>
		            <form:input type="password" class="form-control" path="password" placeholder="Password" id="pwd"/>
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="index.jsp#myModal"> Forgot Password?</a>
		
		                </span>
		            </label>
		            <div class="message" id="message_user">${message}</div>
		            <button class="btn btn-theme btn-block" type="submit" id="user_log"><i class="fa fa-lock"></i> SIGN IN</button>
		            <div class="registration">
		                Vous N'avez pas Encore un Compte ?<br/>
		                <a class="" href="inscription">
		                     Créer un Compte
		                </a>
		            </div>
		       </form:form>     
		            <hr>
		            <c:url var="AdminLogin" value="/admin_try_log" ></c:url>
		            <form:form action="${AdminLogin}" commandName="AdminLog">
		            <div class="login-social-link centered">
		            <p>Si Vous Ete Admin Connectez-Vous par Ici</p>		                				
		                    <div class="login-wrap">
		                      <form:input type="text" class="form-control" placeholder="Admin_Username" path="usernameAdmin" id="user_admin"/>
		                      <br>
		                      <form:input type="password" class="form-control" placeholder="Admin_Password" path="passwordAdmin" id="pwd_admin"/>
					          <br>
					          <div class="message" id="message_admin">${message_admin}</div>
					          <button class="btn btn-theme btn-block" type="submit" id="admin_log"><i class="fa fa-lock"></i> SIGN IN</button>
					        </div> 
		            </div>
		            </form:form>
		
		        </div>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <c:url var="ForgetPassword" value="/index/forget_password" ></c:url>
		                      <form:form action="${ForgetPassword}" commandName="forget">
		                      <div class="modal-body">
		                          <p>Entrez votre USERNAME & E-MAIL pour restorez votre mot de passe.</p>
		                          <form:input type="text" path="username" placeholder="Username" autocomplete="off" class="form-control placeholder-no-fix" id="forget_username"/>
		                          <br>
		                          <form:input type="text" path="mail" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix" id="mail"/>
		                          <br>
		                          <div class="message" id="forget_message"></div>
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="submit" id="forget_button">Submit</button>
		                      </div>
		                      </form:form>
		                  </div>
		              </div>
		          </div>
		          <!-- modal --> 	
	  	
	  	</div>
	  </div>
	  
	  
	 <!-- <script type="text/javascript" src="js/jquery-3.3.1.js"></script> -->
	  <script src="<c:url value="/resources/js/jquery-3.3.1.js" />"></script>
	  <script type="text/javascript">
   $("#user_log").click(function(e){
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
	  if (nb_erreurs > 1){
		  e.preventDefault();
		  document.getElementById("message_user").textContent = "Vérifier les champs"+message;
		  }
	  if (nb_erreurs==1){
		  e.preventDefault();
		  document.getElementById("message_user").textContent = "Le champs"+message+" est erroné.";
		  }
	   });
	  </script>
	  
	  <script type="text/javascript">
   $("#admin_log").click(function(e1){
	   var message ="";
	   var nb_erreurs=0;
      if ((document.getElementById("user_admin").value=="")||(isNaN(document.getElementById("user_admin").value) == false)){    	  
    	  message = message+" USERNAME,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if ((document.getElementById("pwd_admin").value=="")||(document.getElementById("pwd_admin").value.length<8)){
		  message = message+" PASSWORD,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
	  if (nb_erreurs > 1){
		  e1.preventDefault();
		  document.getElementById("message_admin").textContent = "Vérifier les champs"+message;
		  }
	  if (nb_erreurs==1){
		  e1.preventDefault();
		  document.getElementById("message_admin").textContent = "Le champs"+message+" est erroné.";
		  }
	   });
	  </script>
	  
	  <script type="text/javascript">
   $("#forget_button").click(function(e2){
	   var message ="";
	   var nb_erreurs=0;
      if ((document.getElementById("forget_username").value=="")||(isNaN(document.getElementById("forget_username").value) == false)){    	  
    	  message = message+" USERNAME,";
    	  nb_erreurs=nb_erreurs+1;
    	  }
      if ((document.getElementById("mail").value=="")||(document.getElementById("mail").value.indexOf("@")==-1)){
		  message = message+" E-MAIL,";
    	  nb_erreurs=nb_erreurs+1;
		  }
	  if (nb_erreurs > 1){
		  e2.preventDefault();
		  document.getElementById("forget_message").textContent = "Vérifier les champs"+message;
		  }
	  if (nb_erreurs==1){
		  e2.preventDefault();
		  document.getElementById("forget_message").textContent = "Le champs"+message+" est erroné.";
		  }
	   });
	  </script>

    <!-- js placed at the end of the document so the pages load faster -->
    
     <script src="<c:url value="/resources/assets/js/jquery.js" />"></script>
      <script src="<c:url value="/resources/assets/js/bootstrap.min.js" />"></script>
      
      <!--  
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
-->

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <!--  <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script> -->
    
     <script src="<c:url value="/resources/assets/js/jquery.backstretch.min.js" />"></script>
     
    
    
    <script>
        $.backstretch("http://www.agil.com.tn/doc/images/large-background.jpg", {speed: 500});
    </script>


  </body>
</html>
