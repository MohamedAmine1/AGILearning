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

    <title>AGILearning : Send An E-mail </title>

    <!-- Bootstrap core CSS -->
    <!--   <link href="assets/css/bootstrap1.css" rel="stylesheet">   -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap1.css" rel="stylesheet" />
    
    
    <!--external css-->
   <!--  <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" /> -->
    <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <!--  <link href="assets/css/style.css" rel="stylesheet"> -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
    <!--  <link href="assets/css/style-responsive.css" rel="stylesheet"> -->
    <link href="${pageContext.request.contextPath}/assets/css/style-responsive.css" rel="stylesheet" />
	<!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" />
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>


   <style>
	 .wp-form-control {
  border: 1px solid #DCDCDC;
  border-radius: 5px;
  display: inline;
  float: left;
  margin-bottom: 20px;
  padding: 10px 12px;
  -webkit-transition: all 0.4s ease 0s;
  -o-transition: all 0.4s ease 0s;
  -ms-transition: all 0.4s ease 0s;
  transition: all 0.4s ease 0s;  
  width: 100%;  
}
	
	.wpcf7-textarea {
  height: 200px;
  padding: 15px;
}
	</style>
<style>
footer {
    position: bottom;
}
</style>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/mail.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="home_admin" class="logo"><img src="http://ftbb.org.tn/wp-content/uploads/2017/09/logo-agil.png" alt="logo" align="left" style="width:40px;"
                                                                       style="height:40px;"/><b>AGILearning Admin</b></a>
            <!--logo end-->
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="index">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="home_admin"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Welcome Admin</h5>
              	  	
                  <li class="mt">
                      <a href="home_admin">
                          <i class="fa fa-dashboard"></i>
                          <span>Home</span>
                      </a>
                  </li> 
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      </a>
                      <ul class="sub">
                          <li><a href="users">Utilisateurs</a></li>
                          <li><a  href="admins">Administrateurs</a></li>
                          <li><a  href="formations">Formations</a></li>
                          <li><a  href="contacts">Contact</a></li>
                          <li><a  href="evaluation">Evaluation</a></li>
                          <li><a  href="avis">Avis</a></li>
                          <li><a  href="visits">Visites</a></li>                          
                      </ul>					  
                  </li>
				  <li class="mt">
                      <a class="active" href="Send_to_all">
                          <i class="fa fa-book"></i>
                          <span>Send Mail To All</span>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
         	<h3><i class="fa fa-angle-right"></i> Envoyer un E-mail à tous les Utilisateurs</h3>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Contenue du Mail </h4>
                      <c:url var="envoyer" value="/send/mail/all" ></c:url>
                      <form:form class="form-horizontal style-form" action="${envoyer}" commandName="mail">      
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="from"><spring:message text="from"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" value="AGIL.Learning@gmail.com" path="from" disabled="true" readonly="true"/>
                              </div>
                          </div>
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="To"><spring:message text="To"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="To" value="ALL" disabled="true" readonly="true"/>
                              </div>
                          </div>
                           <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="Subject"><spring:message text="Sujet"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="subject" id="subject"/>
                              </div>
                          </div>
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="text"><spring:message text="Message"/></form:label>
                              <div class="col-sm-10">
                                  <form:textarea class="wp-form-control wpcf7-textarea" id="msg" cols="30" rows="30" path="text"></form:textarea>
                              </div>
                          </div>
                          <div class="form-group">
							  <br>
							  <div class="message" id="message"></div>
							  <br>
                          <input type="submit" value="<spring:message text="Envoyer"/>" class="btn btn-theme" style="margin-left: 800px;" id="envoyer"/>							  
                          </div>                       
                      </form:form>
                 </div>
          	</div><!-- col-lg-12-->
          	</div>
			</section>
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              Copyright &copy; All Rights Reserved
              <a href="#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>
  <script type="text/javascript">
   $("#envoyer").click(function(e){
	   var message ="";
	   var nb_erreurs=0;
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
		  document.getElementById("message").textContent = "Vérifier les champs"+message;
		  }
	  if (nb_erreurs==1){
		  e.preventDefault();
		  document.getElementById("message").textContent = "Le champs"+message+" est erroné.";
		  }
	   });
  </script>  

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="${pageContext.request.contextPath}/assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="${pageContext.request.contextPath}/assets/js/form-component.js"></script>    
    
  </body>
</html>