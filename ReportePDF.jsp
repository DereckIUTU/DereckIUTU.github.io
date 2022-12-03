<%-- 
    Document   : ReportePDF
    Created on : 26/09/2022, 02:44:15 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@page import="javax.servlet.ServletResponse"%>
<%@page import="Conexion.Conexion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte en PDF</title>
        <link rel="icon" href="resourses/img/logo.ico">
    </head>
    <body>
        <%
            Conexion cn= new Conexion();
            Connection con=cn.Conexion();
            File reportfile = new File(application.getRealPath("pedidos.jasper"));
            Map<String, Object> parameter = new HashMap<String, Object>();
            byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), parameter, con);
            response.setContentType("application/pdf");
            response.setContentLength(bytes.length);
            ServletOutputStream outputStream = response.getOutputStream();
            outputStream.write(bytes,0,bytes.length);
            
            outputStream.flush();
            outputStream.close();
        %>
    </body>
</html>
