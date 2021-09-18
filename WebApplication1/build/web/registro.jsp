<%-- 
    Document   : registro
    Created on : 16 set. 2021, 02:10:02
    Author     : erickson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de registro</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
        <script>
                   const formulario = document.getElementById('registro');
                   const inputs = document.querySelectorAll('#registro input');
                   const expresiones = {
                       
                       nombre = /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
                       ap_paterno = /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
                       ap_materno = /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
                       correo_electronico = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
                       usuario = /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
                       clave_usuario = /^.{4,12}$/ // 4 a 12 digitos.                    
                   }
                   const campos ={
                       correo_electronico = false
                   }
}
                </script>
    </head>
    <body>
        <div class="container">
            <h1>Formulario de registro</h1>
            <form action="nuevousuario" method="post" id="registro">
                <input  class="input" type="text" name="nombre" placeholder="Tu nombre"><br>
                <input  class="input" type="text" name="ap_paterno" placeholder="Tu apellido paterno"><br>
                <input  class="input" type="text" name="ap_materno" placeholder="Tu apellido materno"><br>
                <input  class="input" type="text" name="correo_electronico" placeholder="Tu correo" id="email"><br>
                <input  class="input" type="text" name="confirmar_correo_electronico" placeholder="Confirma tu correo" id="confirmaremail"><br>
                
                <input  class="input" type="text" name="usuario" placeholder="Nombre de usuario"><br>
                <input  class="input" type="password" name="clave_usuario" placeholder="Tu contraseña"><br>
                <input type="submit" value="Registrarme"><br>
            </form>
        </div>
    </body>
</html>
