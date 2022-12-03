<%@page import="net.sf.jasperreports.engine.util.JRLoader"%>
<%@page import="net.sf.jasperreports.engine.JRException"%>
<%@page import="net.sf.jasperreports.engine.JRExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.JRExporter"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter"%>
<%@page import="net.sf.jasperreports.engine.export.JRXlsExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.export.JRXlsExporter"%>
<%@page import="javax.faces.context.FacesContext"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            File reportfile = new File(application.getRealPath("pedidos.jasper"));
            String ruta = application.getRealPath("pedidos.jasper");
            Map< String, Object> parameter = new HashMap<String, Object>();
            
            Conexion cn = new Conexion();
            Connection con = cn.Conexion();
            try {
                File file = new File(ruta);
                HttpServletResponse httpServletResponse;
                response.setHeader("Content-Disposition", "attachment; filename=\"reporte.XLSX\";");
                response.setHeader("Cache-Control", "no-cache");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);
                response.setContentType("application/XLSX");
                JasperReport jasperReport = (JasperReport) JRLoader.loadObjectFromFile(file.getPath());
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameter, con);
                JRExporter jrExporter = null;
                jrExporter = new JRXlsxExporter();
                jrExporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                jrExporter.setParameter(JRExporterParameter.OUTPUT_STREAM, response.getOutputStream());
                if (jrExporter != null) {
                    try {
                        jrExporter.exportReport();
                    } catch (JRException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (con != null) {
                    try {
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        %> 
    </body>
</html>
