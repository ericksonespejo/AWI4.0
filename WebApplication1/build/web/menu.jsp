<%-- 
    Document   : menu
    Created on : 16 set. 2021, 02:09:44
    Author     : erickson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession objsession = request.getSession(false);
    String usuario = (String)objsession.getAttribute("usuario");
    if(usuario.equals("")){
    response.sendRedirect("index.jsp");
    
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    </head>
    <body>
        <h1>Hola usuario <% out.print(usuario);             %>..................... acceso correcto</h1>
    </body>
</html>
