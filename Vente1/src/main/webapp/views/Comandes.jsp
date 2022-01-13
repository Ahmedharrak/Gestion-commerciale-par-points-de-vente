<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="j" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Camande</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
	<script>
    'use strict';
                
    document.addEventListener( "DOMContentLoaded", ev => {
                        
      // code du test
                        
                        
                        // fin code du test
      
    }, false );
    
    window.addEventListener( "load", ev => {
                        
                        // code du test
                        
                        const
                                elemForme = document.querySelector( "#forme" ),
                                elemQte = document.querySelector( "#qte" ),
                                elemAmount = document.querySelector( "#amount" ),
                                changeHandler = ev => {
                                        elemAmount.value = ( parseFloat( elemForme.value ) * parseFloat( elemQte.value ) ).toFixed( 2 );
                                };
                        
                        elemForme.addEventListener( "change", changeHandler, false );
                        elemQte.addEventListener( "change", changeHandler, false );
                        
                        elemQte.dispatchEvent( new Event( "change" ) );
                        
                        // fin code du test
                        
    }, false );
  </script>
	
</head>
<body>
<% 
String client=(String)session.getAttribute("sessname"); 

%>


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


<section class="container">
		<div class="row">
         	<div class="col-12">
         		<h3 class="text-center">Panier Ajouter</h3>
						<s:form action="ajax.action" >
						<s:iterator value="produit">
						<table>				
						<tr><td>code produit : </td><td><input class="form-control" type="text" value="${produit.codePdt}" name="commande.codePdt"  /></td></tr><br>
						<tr><td>Client : </td><td><input class="form-control" type="text" value="<%=client %>" name="commande.client"  /> </td></tr><br>
						<tr><td>nom produit : </td><td><input type="text" class="form-control" value="${produit.nomPdt}" name="commande.nomPdt" /></td></tr><br>
						<tr><td>prix produit(DH) : </td><td><input id="forme" class="form-control" value="${produit.prixPdt}" name="commande.prixPdt" /></td></tr><br>
						<tr><td><label for="qteCmd">Quantités (entre 1 and 5):</label></td><td>
						<input type="number" id="qte" class="form-control" name="commande.qteCmd" min="1" max="5"/></td></tr><br>												
  						<tr><td><label >Date</label>
  						
  						<%
						   Date date = new Date();						   
						%>									
						</td><td>
						<input type="text" value="<%=date %>" class="form-control" name="commande.dateCmd"  /></td></tr><br>
						<tr><td><label for="amount">Totale Prix (DH) : </label></td><td>
						<input type="number" class="form-control" id="amount" name="prixtotal"/></td></tr><br>
						<s:submit value="save" class="btn btn-warning"></s:submit><br>
						</table>											
						</s:iterator>
				</s:form>
			</div>
		</div>
</section>



 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script> 
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/locale/bootstrap-table-fr-FR.min.js"></script>
	
</body>
</html>