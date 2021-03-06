<%@page import="java.io.OutputStream"%>
<%@ page contentType="application/pdf" %>

<%@ page trimDirectiveWhitespaces="true"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.design.JRDesignQuery"%>
<%@page import="net.sf.jasperreports.engine.xml.JRXmlLoader"%>
<%@page import="net.sf.jasperreports.engine.design.JasperDesign"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import="net.sf.jasperreports.engine.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<head>

<title>Stocks Rapport</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/g_stock", "root", "");
			
			String report = "C:/Users/hp/eclipse-workspace/gestionStock/src/main/resources/produits_approvisionnement.jrxml";
			
			JasperReport jasperreport = JasperCompileManager
					.compileReport(report);
			
			Map<String, Object> data = new HashMap<String, Object>();
			
			//data.put("Image", this.getServletContext().getRealPath("/")+"/images/asteroids.jpg");
			//data.put("Image", this.getServletContext().getRealPath("/")+"/images/green-goblin.png");
			
			JasperPrint jp = JasperFillManager.fillReport(jasperreport,
					data, conn);
			
			JasperExportManager.exportReportToPdfStream(jp, response.getOutputStream());
			response.getOutputStream().flush();
			response.getOutputStream().close();
			
		} catch (Exception e) {
			out.println(e);
		}
	%>
</body>
</html>