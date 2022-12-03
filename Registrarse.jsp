<%-- 
    Document   : Registrarse
    Created on : 6/09/2022, 11:05:04 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de clientes</title>
        <link rel="stylesheet" href="resourses/twocss/register-style.css">
        <link rel="icon" href="resourses/img/logo.ico">
    </head>
    <header>
        <div class="navigation-menu margin">
            <div class="logo">
                <a href="index.jsp" class="icon-text"><i><img src="resourses/img/logo.jpg" alt="" class="logo-img"></img>
                    </i>
                </a>
            </div>
            <div class="page-title">
                <h1>Gadol Uniforms</h1>
            </div>
            <nav class="navbar navbar-expand-sm navbar-dark bg-blue margin" id="navbar"></nav>
            <a class="login-btn nav-link active" aria-current="page" href="IniciarSesion.jsp">Iniciar Sesión</a>
            <a class="login-icon" href="IniciarSesion.jsp">
                <i class="fa-solid fa-right-to-bracket"></i>
            </a>
            <a class="register-icon" href="IniciarSesion">
                <i class="fa-solid fa-user"></i>
            </a>       
        </div>
    </header>
    <body>
        <div class="register">
            <div class="register-div">
                <div class="register-title">
                    <h2>CLIENTES</h2>
                    <p>Bienvenido al registro de clientes, en este espacio por favor ingrese los datos para tener 
                        mejor seguimiento del producto.
                    </p>
                    <h3>Información de registro</h3>
                </div>          
                <div class="reg-form">
                    <form action="Usuarios?menu=Registrarse&accion=Registrar_usuario" method="POST" onsubmit="return ValidarRegistro()">
                        <label>Nombres:</label>
                        <input type="text" name="nombres" class="form-control" id="nombres" style="border-radius: 30px;">
                        <label>Apellidos:</label>
                        <input type="text" name="apellidos" class="form-control" id="apellidos" style="border-radius: 30px;">
                        <label>Identificacion:</label>
                        <input type="number" name="identificacion" class="form-control" id="identificacion" style="border-radius: 30px;">
                        <label>Telefono:</label>
                        <input type="number" name="telefono" class="form-control" id="telefono" style="border-radius: 30px;">
                        <label>Correo:</label>
                        <input type="text" name="correo" class="form-control" id="correo" style="border-radius: 30px;">
                        <label>Contraseña</label>
                        <input type="password" name="contra" class="form-control" id="contraseña" style="border-radius: 30px;">
                        <label>Confirmar contraseña</label>
                        <input type="password" name="" class="form-control" id="confirmar" style="border-radius: 30px;">
                        <input type="submit" name="accion" value="Registrarse" id="enviar" class="reg-btn" style="border-radius: 30px;">
                    </form>
                </div>
                <a href="IniciarSesion.jsp">Ya tengo una cuenta (Iniciar Sesión)</a>
            </div>
        </div>
    </body>
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
    <!--<script src="resourses/Validaciones/validacionRegistro.js"></script>-->
</html>
