<%@ page language = "java" contentType = "text/html; charset = ISO-8859-1"
   pageEncoding = "ISO-8859-1"%>
<%@ taglib prefix = "s" uri = "/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
      <title>Login</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	 <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
 	 <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
   </head>
   
   <body>
   
   <div class="container px-4 py-5 mx-auto">
    <div class="card card0">
        
            
            <form action = "loginaction" method = "post">
                <div class="row justify-content-center my-auto">
                    <div class="col-md-8 col-10 my-5">
                   		 <h3 class="mb-5 text-center heading">Gestion des Ventes</h3>
                   		 
      
         <div class="form-group"> <label class="form-control-label text-muted">User:</label>
         <input type = "text" name = "login" placeholder="Your username!!!" class="form-control"/></div>
         <div class="form-group"> <label class="form-control-label text-muted">Password:</label>
         <input type = "password" name = "pass" placeholder="Your password!!!" class="form-control"/></div>
         <div class="row justify-content-center my-3 px-3">
         <input type = "submit" value = "Login" class="btn-block btn-color"/></div></div></div>
         		
      </form>
      <form action = "New" method = "post">
      <div class="bottom text-center mb-5">
      
      <p class="sm-text mx-auto mb-3">Don't have an account?
      <input type = "submit" value = "s'incrire" class="forgot text-muted" /></p>
      
      </div>
      </form>
      </div></div>
      
    
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> 
  
   </body>
</html>