<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Personas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Personas Listadas</h2>
    <table border="1">
        <tbody>
            <tr>
                <th>ID</th>
                <th>NIF</th>
                <th>Nombre</th>
                <th>Apellido 1</th>
                <th>Apellido 2</th>
                <th>Ciudad</th>
                <th>Dirección</th>
                <th>Teléfono</th>
                <th>Fecha de Nacimiento</th>
                <th>Sexo</th>
                <th>Tipo</th>
            </tr>
            <c:forEach items="${Listapersonas}" var="persona">
                <tr>
                    <td><c:out value="${persona.id}" /></td>
                    <td><c:out value="${persona.nif}" /></td>
                    <td><c:out value="${persona.nombre}" /></td>
                    <td><c:out value="${persona.apellido1}" /></td>
                    <td><c:out value="${persona.apellido2}" /></td>
                    <td><c:out value="${persona.ciudad}" /></td>
                    <td><c:out value="${persona.direccion}" /></td>
                    <td><c:out value="${persona.telefono}" /></td>
                    <td><c:out value="${persona.fechaNacimiento}" /></td>
                    <td><c:out value="${persona.sexo}" /></td>
                    <td><c:out value="${persona.tipo}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>