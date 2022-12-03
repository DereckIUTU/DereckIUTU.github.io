<%-- 
    Document   : PrendasHombre
    Created on : 7/09/2022, 01:28:41 AM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <div class="navigation-menu margin">
                <div class="logo">
                    <a href="Usuario.jsp" class="icon-text"><i><img src="resourses/img/logo.jpg" alt="" class="logo-img"></i></a>
                </div>
                <div class="page-title">
                    <h1>Gadol Uniforms</h1>
                </div>
                <nav class="navbar navbar-expand-sm navbar-dark bg-blue margin" id="navbar">
                    <a class="login-btn nav-link active" aria-current="page" href="index.jsp">Cerrar Sesión</a>
                    <a class="login-icon" href="index.jsp">
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </a>
                    <a class="register-icon" href="Clientes.xhtml">
                        <i class="fa-solid fa-user"></i>
                    </a>       

                    <%
                        HttpSession sesiones = request.getSession();
                        String user;
                        String sesion;

                        if (sesiones.getAttribute("User") != null && sesiones.getAttribute("sesion") != null) {
                            user = sesiones.getAttribute("User").toString();
                            sesion = sesiones.getAttribute("sesion").toString();
                            out.print("<a class='login-btn nav-link active' aria-current='page' href='#'>Usuario: " + user + "</a>");
                        } else {
                            out.print("<script>location.replace('index.jsp');</script>");
                        }
                    %>
                </nav>
            </div>
        </header>


        <div class="container">
            <br>
            <h3>Mi perfil</h3>
            <br>
            <div class="row">
                
                <div class="text-center col">
                    <img src="ControllerPerfil?id=27" width="300" height="230"><br><br>
                    <div class="text-center col">
                        <label for="formFile" class="form-label">Foto de perfil</label>
                        <input class="form-control" type="file" id="formFile">
                    </div><br>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary">Actualizar foto</button>
                    </div>
                </div>
                <div class="col">
                    <c:forEach var="p" items="${perfil}">
                        <form class="row g-3" action="Usuarios?menu=Perfil&accion=Actualizar_datos&id=25" method="POST">
                            <div class="col-md-6">
                                <label for="nombres" class="form-label">Nombres del usuario</label>
                                <input type="text" class="form-control" name="nombres" id="nombres" value="${p.getNombres()}">
                            </div>
                            <div class="col-md-6">
                                <label for="apelllidos" class="form-label">Apellidos del usuario</label>
                                <input type="text" class="form-control" name="apellidos" id="apellidos" value="${p.getApellidos()}">
                            </div>
                            <div class="col-12">
                                <label for="identificacion" class="form-label">Identificación</label>
                                <input type="number" class="form-control" name="identificacion" id="identificacion" value="${p.getIdentificacion()}">
                            </div>
                            <div class="col-md-6">
                                <label for="telefono" class="form-label">Telefono</label>
                                <input type="number" class="form-control" name="telefono" id="telefono" value="${p.getTelefono()}">
                            </div>
                            <div class="col-md-6">
                                <label for="correo" class="form-label">Correo</label>
                                <input type="email" class="form-control" name="correo" id="correo" value="${p.getCorreo()}">
                            </div>
                            <div class="col-md-6">
                                <label for="contra" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" name="contra" id="contra" value="${p.getContraseña()}">
                            </div>
                            <div class="col-md-6">
                                <label for="contra" class="form-label">Confirmar Contraseña</label>
                                <input type="password" class="form-control" id="contra" value="">
                            </div>
                            <div class="col-md-6">
                                <label for="sesion" class="form-label">Sesion del usuario</label>
                                <input type="email" class="form-control" id="sesion" value="${p.getNombre_sesion()}" disabled="disabled">
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Actualizar Datos</button>
                            </div>
                        </form>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>
