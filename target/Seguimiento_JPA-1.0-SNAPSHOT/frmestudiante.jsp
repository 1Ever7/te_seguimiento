<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- 
    Document   : frmestudiante
    Created on : 2 jun. 2024, 12:08:10
    Author     : Diman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seguimiento</title>
        <link rel="stylesheet" type="text/css" href="css/diman.css">
    </head>
    <body>
        <%-- Convertir la fecha de nacimiento del estudiante a un formato legible --%>
        <fmt:formatDate value="${estudiante.fechaNacimiento}" pattern="yyyy-MM-dd" var="fechaNacimientoFormateada" />
        <h1>Formulario de Estudiante</h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${estudiante.id == null ? 0 : estudiante.id}" />
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" value="${estudiante.nombre}" required /><br />
            <label for="apellidos">Apellidos:</label>
            <input type="text" name="apellidos" id="apellidos" value="${estudiante.apellidos}" required /><br />
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" value="${estudiante.email}" required /><br />
            <label for="fechaNacimiento">Fecha de Nacimiento:</label>
            <input type="date" name="fechaNacimiento" id="fechaNacimiento" value="${fechaNacimientoFormateada}" required /><br />
            <input type="submit" value="Guardar" style="margin: 0 auto; display: block; width: 110px;" />
        </form>
        <a href="MainController" class="btn cancel-btn">Cancelar</a>
        <footer>
            <p>&copy;DimanMayta</p>
        </footer>
    </body>
</html>