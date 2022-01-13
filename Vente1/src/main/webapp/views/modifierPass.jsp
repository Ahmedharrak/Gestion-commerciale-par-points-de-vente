<%@ page contentType = "text/html; charset = UTF-8" %>
<%@ taglib prefix = "s" uri = "/struts-tags" %>

<html>
   <head>
      <title>Update Mot de Pass</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
   </head>
 
   
   <body>
   
   
   
   	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
   		<div class="container-fluid">
			  <ul class="navbar-nav">
			    <li class="nav-item active">
			      <s:url namespace="/" action="indexHome" var="lien5"></s:url>
				  <s:a href="%{lien5}" class="nav-link">Home</s:a>
				</li>
				<li class="nav-item">
				  <s:url namespace="/" action="produits" var="lien1"></s:url>
				  <s:a href="%{lien1}" class="nav-link">Produits</s:a>
			    </li>
			    <li class="nav-item">
			      <s:url namespace="/" action="updatePass" var="lien2"></s:url>
				  <s:a href="%{lien2}" class="nav-link">Profiles</s:a>
			    </li>
			    <li class="nav-item">
			      <s:url namespace="/" action="commandes" var="lien4"></s:url>
				  <s:a href="%{lien4}" class="nav-link">Commandes</s:a>
			    </li>
			    <li class="nav-item">
			      <s:url namespace="/" action="users" var="lien3"></s:url>
				  <s:a href="%{lien3}" class="nav-link">Users</s:a>
			    </li>			   
			  </ul>
			   <ul class="nav navbar-nav navbar-right">
     			 <li>
     			 <s:url namespace="/" action="index" var="lien10"></s:url>
				  <s:a href="%{lien10}" class="glyphicon glyphicon-log-in">
				  Logout
				  </s:a> 
				  </li>
 			    </ul>
 			    </div>
			</nav>
			
   <div class="container px-4 py-5 mx-auto">
    <div class="card card0">
      
       <s:form action="savePas" method="post">
       <div class="row justify-content-center my-auto">
          <div class="col-md-8 col-10 my-5">
		 	<h3 class="mb-5 text-center heading">New Mot de Passe</h3>
				<div class="form-group"> <label class="form-control-label text-muted">User:</label>
         		<input type = "text" name = "login" placeholder="Your username!!!" class="form-control"/></div>
         		<div class="form-group"> <label class="form-control-label text-muted">Password:</label>
         		<input type = "password" name = "pass" placeholder="Your password!!!" class="form-control"/></div>	
        		<input type = "submit" value = "Save" class="btn btn-danger"/></div></div>
       </s:form>
      </div>
     </div>
        
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>    
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
   </body>
</html>