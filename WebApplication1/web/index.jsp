<%-- 
    Document   : index
    Created on : 16 set. 2021, 02:09:28
    Author     : erickson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
        <script src="js/main.js"></script>
    </head>
    <body>
        <h1>Iniciar Sesión</h1>
        <form action="Inicio" method="post" id="forminicio">
            <input type="text" name="usuarios" placeholder="Usuario" id="textusuario"><br>
            <input type="password" name="pass" placeholder="Contraseña" id="textpass"><br>
            <input type="button" value="Iniciar Sesión" id="btniniciar">
        </form>
        <p>¿No tienes cuenta? <a href="registro.jsp">Registrarme</a></p>
    </body>
</html>
