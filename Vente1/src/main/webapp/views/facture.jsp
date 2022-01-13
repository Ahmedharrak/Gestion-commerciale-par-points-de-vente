
<!------ Include the above in your HEAD tag ---------->
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="j" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8"/>
	<title>Camande</title>
	
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
	
</head>
<body>
<% 

String client=request.getParameter("commande.client"); 
String codeCmd=request.getParameter("commande.codeCmd"); 
String codePdt=request.getParameter("commande.codePdt"); 
String nomPdt=request.getParameter("commande.nomPdt"); 
String prixPdt=request.getParameter("commande.prixPdt"); 
String prixtt=request.getParameter("prixtotal"); 
String dateCmd=request.getParameter("commande.dateCmd");
String qteCmd=request.getParameter("commande.qteCmd"); 
%>

<div class="container">
<div id="HTMLtoPDF">
    <div class="row">
    
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Facture d'achat</h2><h3 class="pull-right">Ordre </h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Mode de paiement:</strong><br>
    					Fin du visa **** 4242<br>
    					<%=client %>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Date de commande:</strong><br>
    					<%=dateCmd %><br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Récapitulatif de la commande</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Article</strong></td>
        							<td class="text-center"><strong>Prix(DH)</strong></td>
        							<td class="text-center"><strong>Quantités</strong></td>
        							<td class="text-right"><strong>Totales(DH)</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr>
    								<td><%=codePdt %>-<%=nomPdt %></td>
    								<td class="text-center"><%=prixPdt %></td>
    								<td class="text-center"><%=qteCmd %></td>
    								<td class="text-right"><%=prixtt %></td>
    							</tr>                             
    							
    						</tbody>
    					</table>
    				</div>
    			</div>   			
    		</div>	
    	</div>
   
    </div>
		    		
</div>

<button onclick="hasa()" class="btn btn-info">Download PDF</button>
		  
				<s:url namespace="/" action="indexHome" var="lien8"></s:url>
				  <s:a href="%{lien8}" class="btn btn-success" >Return Home</s:a>	
	<!-- these js files are used for making PDF -->
	<script src="../js/jspdf.js"></script>
	<script src="../js/jquery-2.1.3.js"></script>
	<script src="../js/pdfFromHTML.js"></script>
	<script>
	function  hasa(){
	var h=document.getElementById("HTMLtoPDF");
	var doc=new jsPDF()
	doc.fromHTML(h,30,30)
	return doc.save("facture.pdf")
	}
	</script>
	
	 	
</div>
</body></html>