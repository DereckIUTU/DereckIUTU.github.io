<%-- 
    Document   : Usuario
    Created on : 5/09/2022, 11:03:18 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Conexion.Conexion"%>
<%@page import="Modelo.Cliente_dao"%>
<%@page import="Modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" >
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;1,400;1,700&display;=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" >
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;700&display;=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" href="resourses/img/logo.ico">
        <link rel="stylesheet" href="resourses/twocss/stylesheetS.css">
        <link rel="stylesheet" href="resourses/twocss/indextwo-stylesheet.css">
        <link href="resourses/css/css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div class="navigation-menu margin">
                <div class="logo">
                    <a href="Usuario.jsp" class="icon-text"><i><img src="resourses/img/logo.jpg" alt="" class="logo-img"></img></i></a>
                </div>
                <div class="page-title">
                    <h1>Gadol Uniforms</h1>
                </div>
                <nav class="navbar navbar-expand-sm navbar-dark bg-blue margin" id="navbar">
                    <a class="login-btn nav-link active" aria-current="page" href="index.jsp">Cerrar Sesión</a>
                    <a class="login-icon" href="index.jsp">
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </a>

                    <%
                        HttpSession sesiones = request.getSession();
                        String user;
                        String sesion;

                        if (sesiones.getAttribute("User") != null && sesiones.getAttribute("sesion") != null) {
                            user = sesiones.getAttribute("User").toString();

                            String sql = "Select id_usuario from usuario where correo='" + user + "'";
                            Conexion cn = new Conexion();
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs;
                            con = cn.Conexion();
                            ps = con.prepareStatement(sql);
                            rs = ps.executeQuery();
                            while (rs.next() == true) {
                    %> 
                    <!--Input del id del usuario-->
                    <a class="login-btn nav-link active" aria-current="page" href="ControllerPrendas?menu=Prendas&accion=Listar_prendas&id=<%=rs.getString("id_usuario")%>">Mis pedidos</a>
                    <a class="inventory-icon" href="index.jsp">
                        <i class="fa-solid fa-box"></i>
                    </a>
                    <input type="hidden" value="" name="id_usuario">
                    <%
                            }
                        }
                    %>                   
                    <a class="register-icon" href="Clientes.xhtml">
                        <i class="fa-solid fa-user"></i>
                    </a>       

                    <%
                        if (sesiones.getAttribute("User") != null && sesiones.getAttribute("sesion") != null) {
                            user = sesiones.getAttribute("User").toString();
                            sesion = sesiones.getAttribute("sesion").toString();
                            String sql = "Select id_usuario, correo from usuario where correo='" + user + "'";
                            Conexion cn = new Conexion();
                            Connection con;
                            PreparedStatement ps;
                            ResultSet rs;
                            con = cn.Conexion();
                            ps = con.prepareStatement(sql);
                            rs = ps.executeQuery();
                            while (rs.next() == true) {
                                %>
                                    <a class="login-btn nav-link active" aria-current="page" href="Usuarios?menu=Perfil&accion=Mi_perfil&id=<%=rs.getString("id_usuario")%>">Usuario: <%=rs.getString("Correo")%></a>
                                <%
                            }                        
                        } else {
                            out.print("<script>location.replace('index.jsp');</script>");
                        }
                    %>
                </nav>
            </div>
        </header>

        <div class="inventory">
            <h2 class="title-page">Productos</h2>
            <div class="inventory-p">
                <p>Bienvenido a los productos de la empresa, en esta sección encontraras los inventarios
                    disponibles para cada genero.
                </p>
            </div>

            <div class="genders">
                <div class="image-genders">
                    <div class="hombre">
                        <h3>Hombre</h3>
                        <a href="ControllerPrendas?menu=Masculino">
                            <div class="man-image">
                                <ul>
                                    <li><img src="resourses/img/unifosds.jpg" alt="" id="img1"></li>
                                    <li><img src="resourses/img/unifosds.jpg" alt="" id="img1"></li>
                                    <li><img src="resourses/img/unifosds.jpg" alt="" id="img1"></li>
                                    <li><img src="resourses/img/unifosds.jpg" alt="" id="img1"></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                    <div class="mujer">
                        <h3>mujer</h3>
                        <a href="ControllerPrendas?menu=Femenino">
                            <div class="women-image">
                                <ul>
                                    <li><img src="resourses/img/unformes.png" alt="" id="img2"></li>
                                    <li><img src="resourses/img/unformes.png" alt="" id="img2"></li>
                                    <li><img src="resourses/img/unformes.png" alt="" id="img2"></li>
                                    <li><img src="resourses/img/unformes.png" alt="" id="img2"></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </body>
</html>
