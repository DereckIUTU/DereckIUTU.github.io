<%-- 
    Document   : Usuario
    Created on : 5/09/2022, 11:03:18 PM
    Author     : LENOVO
--%>

<%@page import="Modelo.Cliente_dao"%>
<%@page import="Modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
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
                    <a href="Administrador.jsp" class="icon-text"><i><img src="resourses/img/logo.jpg" alt="" class="logo-img"></img></i></a>
                </div>
                <div class="page-title">
                    <h1>Gadol Uniforms</h1>
                </div>
                <nav class="navbar navbar-expand-sm navbar-dark bg-blue margin" id="navbar">
                    <a class="register-btn" aria-current="page" href="index.jsp">Cerrar Sesión</a>
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
                            out.print("<a class='register-btn' aria-current='page' href='#'>Admin: " + user + "</a>");
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
                <p>Bienvenido a la seccion de administrador donde podra manejar todo lo referente a los inventarios y productos de la empresa.</p>
            </div>
        </div>

        <div class="container" style="background-color: #e9d837; width: 560px; height: 450px; margin-left: 30%;">
            <ul class="nav flex-column">
                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
                    <span>Prendas</span>
                </h6>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerInventario?menu=Inventario">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/></svg>
                        Registrar prendas
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerInventario?menu=Prendas&accion=listar_prendas">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-universal-access" viewBox="0 0 16 16"><path d="M9.5 1.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0ZM6 5.5l-4.535-.442A.531.531 0 0 1 1.531 4H14.47a.531.531 0 0 1 .066 1.058L10 5.5V9l.452 6.42a.535.535 0 0 1-1.053.174L8.243 9.97c-.064-.252-.422-.252-.486 0l-1.156 5.624a.535.535 0 0 1-1.053-.174L6 9V5.5Z"/></svg>
                        Ver prendas registradas
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerInventario?menu=Colores&accion=Colores_general">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-palette" viewBox="0 0 16 16"><path d="M8 5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zm4 3a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zM5.5 7a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm.5 6a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/><path d="M16 8c0 3.15-1.866 2.585-3.567 2.07C11.42 9.763 10.465 9.473 10 10c-.603.683-.475 1.819-.351 2.92C9.826 14.495 9.996 16 8 16a8 8 0 1 1 8-8zm-8 7c.611 0 .654-.171.655-.176.078-.146.124-.464.07-1.119-.014-.168-.037-.37-.061-.591-.052-.464-.112-1.005-.118-1.462-.01-.707.083-1.61.704-2.314.369-.417.845-.578 1.272-.618.404-.038.812.026 1.16.104.343.077.702.186 1.025.284l.028.008c.346.105.658.199.953.266.653.148.904.083.991.024C14.717 9.38 15 9.161 15 8a7 7 0 1 0-7 7z"/></svg>
                        Ver colores de la prenda
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerInventario?menu=Tallas&accion=Tallas_general">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-aspect-ratio" viewBox="0 0 16 16"><path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h13A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5v-9zM1.5 3a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/><path d="M2 4.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1H3v2.5a.5.5 0 0 1-1 0v-3zm12 7a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1 0-1H13V8.5a.5.5 0 0 1 1 0v3z"/></svg>
                        Ver Tallas de la prenda
                    </a>
                </li>
                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
                    <span>Pedidos</span>
                </h6>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerInventario?menu=Pedidos&accion=Listar_pedidos">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-clipboard-minus" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M5.5 9.5A.5.5 0 0 1 6 9h4a.5.5 0 0 1 0 1H6a.5.5 0 0 1-.5-.5z"/><path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/><path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/></svg>
                        Ver pedidos en fila
                    </a>
                </li>
                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
                    <span>Colores</span>
                </h6>
                <li class="nav-item">
                    <a class="nav-link" href="ControllerInventario?menu=Color&accion=Listar_colores">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-paint-bucket" viewBox="0 0 16 16"><path d="M6.192 2.78c-.458-.677-.927-1.248-1.35-1.643a2.972 2.972 0 0 0-.71-.515c-.217-.104-.56-.205-.882-.02-.367.213-.427.63-.43.896-.003.304.064.664.173 1.044.196.687.556 1.528 1.035 2.402L.752 8.22c-.277.277-.269.656-.218.918.055.283.187.593.36.903.348.627.92 1.361 1.626 2.068.707.707 1.441 1.278 2.068 1.626.31.173.62.305.903.36.262.05.64.059.918-.218l5.615-5.615c.118.257.092.512.05.939-.03.292-.068.665-.073 1.176v.123h.003a1 1 0 0 0 1.993 0H14v-.057a1.01 1.01 0 0 0-.004-.117c-.055-1.25-.7-2.738-1.86-3.494a4.322 4.322 0 0 0-.211-.434c-.349-.626-.92-1.36-1.627-2.067-.707-.707-1.441-1.279-2.068-1.627-.31-.172-.62-.304-.903-.36-.262-.05-.64-.058-.918.219l-.217.216zM4.16 1.867c.381.356.844.922 1.311 1.632l-.704.705c-.382-.727-.66-1.402-.813-1.938a3.283 3.283 0 0 1-.131-.673c.091.061.204.15.337.274zm.394 3.965c.54.852 1.107 1.567 1.607 2.033a.5.5 0 1 0 .682-.732c-.453-.422-1.017-1.136-1.564-2.027l1.088-1.088c.054.12.115.243.183.365.349.627.92 1.361 1.627 2.068.706.707 1.44 1.278 2.068 1.626.122.068.244.13.365.183l-4.861 4.862a.571.571 0 0 1-.068-.01c-.137-.027-.342-.104-.608-.252-.524-.292-1.186-.8-1.846-1.46-.66-.66-1.168-1.32-1.46-1.846-.147-.265-.225-.47-.251-.607a.573.573 0 0 1-.01-.068l3.048-3.047zm2.87-1.935a2.44 2.44 0 0 1-.241-.561c.135.033.324.11.562.241.524.292 1.186.8 1.846 1.46.45.45.83.901 1.118 1.31a3.497 3.497 0 0 0-1.066.091 11.27 11.27 0 0 1-.76-.694c-.66-.66-1.167-1.322-1.458-1.847z"/></svg>
                        Gama de colores
                    </a>
                </li>
                
               
            </ul>
        </div>
        <!--
        <div class="image-genders">
                    <a href="ControllerInventario?menu=Inventario">Registrar prendas</a>
                    <a href="ControllerInventario?menu=Prendas&accion=listar_prendas">Ver prendas registradas</a>
                    <a href="ControllerInventario?menu=Colores&accion=Colores_general">Ver colores de la prenda</a>
                    <a href="ControllerInventario?menu=Tallas&accion=Tallas_general">Ver Tallas de la prenda</a>
                    <a href="ControllerInventario?menu=Pedidos&accion=Listar_pedidos">Ver pedidos en fila</a>
                    <a href="ControllerInventario?menu=Color&accion=Listar_colores">Colores</a>
                </div>
        -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
</html>

