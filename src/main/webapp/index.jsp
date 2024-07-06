<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro de Proveedores</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
    crossorigin="anonymous">
<link
    href="//cdn.datatables.net/2.0.8/css/dataTables.dataTables.min.css"
    rel="stylesheet">
<link rel="stylesheet" type="text/css" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <div class="container mt-5">
        <h2 class="mb-4">Formulario de Proveedores</h2>
        <form action="ProveedorServlet" method="POST">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="rut" class="form-label">RUT:</label>
                <input type="text" id="rut" name="rut" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="direccion" class="form-label">Dirección:</label>
                <input type="text" id="direccion" name="direccion" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="correo" class="form-label">Correo:</label>
                <input type="email" id="correo" name="correo" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="telefono" class="form-label">Teléfono:</label>
                <input type="text" id="telefono" name="telefono" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="contacto" class="form-label">Contacto:</label>
                <input type="text" id="contacto" name="contacto" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="telefono_contacto" class="form-label">Teléfono de Contacto:</label>
                <input type="text" id="telefono_contacto" name="telefono_contacto" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
    
        <h2 class="mt-5">Lista de Proveedores</h2>
        <table class="table" id="tblProveedor">
            <thead class="tale-dark">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>RUT</th>
                    <th>Dirección</th>
                    <th>Correo</th>
                    <th>Teléfono</th>
                    <th>Contacto</th>
                    <th>Teléfono de Contacto</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="proveedor" items="${proveedores}">
                    <tr>
                        <td><c:out value="${proveedor.getId()}"></c:out></td>
                        <td><c:out value="${proveedor.getNombre()}"></c:out></td>
                        <td><c:out value="${proveedor.getRut()}"></c:out></td>
                        <td><c:out value="${proveedor.getDireccion()}"></c:out></td>
                        <td><c:out value="${proveedor.getCorreo()}"></c:out></td>
                        <td><c:out value="${proveedor.getTelefono()}"></c:out></td>
                        <td><c:out value="${proveedor.getContacto()}"></c:out></td>
                        <td><c:out value="${proveedor.getTelefonoContacto()}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>

    <script src="//cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>

    <script>
        $(document).ready(() => {
            $('#tblProveedor').DataTable();
        })
    </script>

</body>
</html>
