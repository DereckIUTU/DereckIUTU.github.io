<%-- 
    Document   : IniciarSesion
    Created on : 6/09/2022, 11:33:50 AM
    Author     : LENOVO
--%>

<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;1,400;1,700" rel="stylesheet"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com"/>
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;700" rel="stylesheet"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="resourses/twocss/login-style.css"/>
        <link rel="stylesheet" href="resourses/twocss/login-style.css">
        <link rel="icon" href="resourses/img/logo.ico">
    </head>
    <header>
        <div class="navigation-menu margin">
            <div class="logo">
                <a href="index.jsp" class="icon-text"><i><img src="resourses/img/logo.jpg" alt="" class="logo-img"></img></i></a>
            </div>
            <div class="page-title">
                <h1>Gadol Uniforms</h1>
            </div>
            <a class="register-btn" href="index.jsp" type="button" id="boton2">Volver al inicio</a> 
            <a class="register-icon" href="Registrarse.jsp">
                <i class="fa-solid fa-user"></i>
            </a>       
        </div>
    </header>
    <body>
        <div class="login">
            <div class="login-div">
                <h4>El usuario ingresado no se encuentra en el sistema o la contraseña ingresada es incorrecta, intentelo nuevamente.</h4>
            </div>
        </div>
    <footer class="footer-page">
        <div class="redes">
            <nav>
                <a href="#" class="one">
                    <b>Más información</b>
                </a>
                <a href="#" class="two">
                    <b>¿Quiénes Somos?</b>
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="resourses/JQ/Jquery.js"></script>
    <script src="resourses/Validaciones/validacionLogin.js"></script>
</html>
<%!
    public String Encrypted(String text){
        try{
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] encBytes=md.digest(text.getBytes());
            BigInteger numero = new BigInteger(1, encBytes);
            String enString = numero.toString(16);
            while(enString.length()<32){
                enString = "0"+enString;
            }
        return enString;
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }
%>