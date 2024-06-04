<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : estudiantes
    Created on : 2 jun. 2024, 14:01:52
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
        <h1>Estudiantes</h1>
        <a href="MainController?action=nuevo" class="btn-nuv">Nuevo Estudiante</a>
        <br>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Email</th>
                <th>Fecha de Nacimiento</th>
                <th colspan="2">Acciones</th>
            </tr>
            
            <c:forEach var="estudiante" items="${estudiantes}">
                <tr>
                    <td>${estudiante.id}</td>
                    <td>${estudiante.nombre}</td>
                    <td>${estudiante.apellidos}</td>
                    <td>${estudiante.email}</td>
                    <td>
                        <!-- Formateamos la fecha 25-04-2000-->
                        <fmt:formatDate value="${estudiante.fechaNacimiento}" pattern="dd-MM-yyyy" var="fechaFormateada" />
                        ${fechaFormateada}
                    </td>
                    <td><a href="MainController?action=editar&id=${estudiante.id}">Editar</a></td>
                    <td><a href="MainController?action=eliminar&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?');" style="color: #CF726E">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
        <footer>
            <p>&copy;DimanMayta</p>
        </footer>
    </body>
</html>
