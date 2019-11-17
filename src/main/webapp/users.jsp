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

    <title>AGILearning : CRUD Users </title>

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
                          <li class="active"><a href="users">Utilisateurs</a></li>
                          <li><a  href="admins">Administrateurs</a></li>
                          <li><a  href="formations">Formations</a></li>
                          <li><a  href="contacts">Contact</a></li>
                          <li><a  href="evaluation">Evaluation</a></li>
                          <li><a  href="avis">Avis</a></li>
                          <li><a  href="visits">Visites</a></li>
                      </ul>
                  </li>
				   <li class="mt">
                      <a href="Send_to_all">
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
          	<h3><i class="fa fa-angle-right"></i> Ajouter/Modifier Utilisateur</h3>
          	<c:url var="addUserAction" value="/personAdd" ></c:url>
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Ajout D'un Utilisateur </h4>
                      
                      
                      
                      <form:form class="form-horizontal style-form" action="${addUserAction}" commandName="person">
                          
                          <c:if test="${!empty person.nom}">
	                       <div class="form-group">
			                 <form:label class="col-sm-2 col-sm-2 control-label" path="id">
				              <spring:message text="ID"/>
			                 </form:label>
		                        <div class="col-sm-10">
			                      <form:input class="form-control" path="id" readonly="true" disabled="true" />
			                      <form:hidden path="id" />
			                    </div>
			               </div>       
	                      </c:if>                         
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="username"><spring:message text="Username"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="username" id="user"/>
                              </div>
                          </div>
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="password"><spring:message text="Password"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="password" id="pwd"/>
                              </div>
                          </div>
                           <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="nom"><spring:message text="Nom"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="nom" id="name"/>
                              </div>
                          </div>
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="prenom"><spring:message text="Prenom"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="prenom" id="pre"/>
                              </div>
                          </div>
                          <div class="form-group">
                              <form:label class="col-sm-2 col-sm-2 control-label" path="mail"><spring:message text="E-mail"/></form:label>
                              <div class="col-sm-10">
                                  <form:input type="text" class="form-control" path="mail" id="e-mail"/>
                              </div>
							  <br>
							  <div id="message" class="message">${message_user}</div>
							  <br>
                          <input type="submit" value="<spring:message text="Ajouter/Modifier Utilisateur"/>" class="btn btn-theme" style="margin-left: 800px;" id="ajouter"/>							  
                          </div>
                       
                      </form:form>
                      
                      
                 </div>
          	</div><!-- col-lg-12-->
			</div>
			          		 	        	
		</section>
		<!--/wrapper -->
      </section><!-- /MAIN CONTENT -->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Tables </h3>

              <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
	                  	  	  <h4><i class="fa fa-angle-right"></i> Users List</h4>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th>#ID</th>
                                  <th><i class="fa fa-bookmark"></i> Nom</th>
                                  <th><i class="fa fa-bookmark"></i> Prénom</th>
                                  <th><i class="fa fa-bookmark"></i> Username</th>
								  <th><i class="fa fa-bookmark"></i> Password</th>
								  <th><i class="fa fa-bookmark"></i> E-mail</th>
                                  <th></th>
                              </tr>
                              </thead>
                              <c:if test="${!empty listPersons}">
                              <c:forEach items="${listPersons}" var="person">
                              <tbody>
                              <tr>
                                  <td>${person.id}</td>
                                  <td>${person.nom}</td>
                                  <td>${person.prenom}</td>
								  <td>${person.username}</>
								  <td>${person.password}</td>
								  <td>${person.mail}</td>
                                  <td><span class="label label-info label-mini"></span></td>
                                  <td>
                                  <a class="logout" href="<c:url value="/modif${person.username}" ></c:url>"><i class="fa fa-pencil"></i></a>
                                  <a class="logout" href="<c:url value="/remove/${person.username}" ></c:url>"><i class="fa fa-trash-o "></i></a> 
                                  </td>
                              </tr>
                              </tbody>
                              </c:forEach>
                              </c:if>
                          </table>
                       </div>
                   </div>
                </div>
              </section>
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
