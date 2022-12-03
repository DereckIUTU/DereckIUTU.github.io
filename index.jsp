<%-- 
    Document   : index
    Created on : 5/09/2022, 11:00:10 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gadol Uniforms</title>
        <link href="resourses/css/css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="resourses/twocss/stylesheet.css">
        <link rel="icon" href="resourses/img/logo.ico">
    </head>
    <header>
        <div class="navigation-menu margin">
            <div class="logo">
                <a href="index.jsp" class="icon-text"><i><img src="resourses/img/logo.jpg" alt="" class="logo-img"></i></a>
            </div>
            <div class="page-title">
                <h1>Gadol Uniforms</h1>
            </div>
            <nav class="navbar navbar-expand-sm navbar-dark bg-blue margin" id="navbar">
                <a class="login-btn nav-link active" aria-current="page" href="IniciarSesion.jsp">Iniciar Sesión</a>
                <a class="login-icon" href="IniciarSesion.jsp">
                    <i class="fa-solid fa-right-to-bracket"></i>
                </a>
                <a class="register-btn" href="Registrarse.jsp" type="button" id="boton2">Registrarse</a> 
                <a class="register-icon" href="Registrarse.jsp">
                    <i class="fa-solid fa-user"></i>
                </a>       
            </nav>
        </div>
    </header>
    <body>      
        <div class="centro">
            <div class="img">
                <img src="resourses/img/6.jpeg" alt="" id="imagen2">
            </div>
        </div>
        <div class="info-about-us">
            <div class="title">
                <h2 class="about_us-title">
                    <b>
                        ¿Quienes Somos?     
                    </b>
                </h2>
                <div class="about-us">
                    <p class="about-us-p">Nuestra misión es ofrecer un servicio integral en la administración y confección de uniformes corporativos y
                        prendas promocionales.</p> 
                    <p class="about-us-p">
                        Nos centramos en el diseño de las prendas, el control de calidad, la programación, la
                        producción, la distribución y la administración de inventarios.  
                    </p>  
                    <p class="about-us-p">
                        Trabajando conjuntamente con nuestros clientes en
                        un esquema que permita atender facil y oportunamente sus necesidades de personal.
                    </p> 
                </div>
                <div class="info">
                    <a href="Registrarse.jsp" class="info-btn">
                        Mas informacion
                    </a>
                </div>
            </div>
        </div>
    </body>
    <footer class="footer-page">
        <div class="redes">
            <nav>
                <a href="Registrarse.jsp" class="one">
                    <b>Mas información</b>
                </a>
                <a href="#" class="two">
                    <b>¿Quienes Somos?</b>
                </a>
                <a href="#" class="three">
                    <b>Contacto</b>
                </a>
                <a href="#" class="four">
                    <b>Soporte</b>
                </a>
            </nav>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="resourses/JQ/Jquery.js"></script>
    <script src="resourses/js/pooper.min.js"></script>
    <script src="resourses/js/bootstrap.min.js"></script>
</html>
