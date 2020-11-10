<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Actualizar Empleado</title>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #38C953">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"><h1>Actualizar
						Empleado</h1> Employees Management App </a>
			</div>
		</nav>
	</header>

	<hr>
	<div id="botones" class="container text-left">
		
		<a href="<%=request.getContextPath()%>/EmpleadoServlet?action=index" class="btn btn-success">Ir al
			menú</a> 			
		<a href="<%=request.getContextPath()%>/registro.jsp"
					class="btn btn-success">Registrar nuevo empleado</a>
		<a href="<%=request.getContextPath()%>/mostrar.jsp"
			class="btn btn-success">Listar empleados</a>
	</div>

	<div class="container">
		<div class="card">
			<div class="card-body">
				<form action="${pageContext.request.contextPath}/EmpleadoServlet?action=editar" method="post">
					<div class="form-group">
						<label for="validation01">Codigo</label> <input type="text"
							class="form-control" value='<c:out value="${empleado.codigo}"></c:out>'
							placeholder="Id" name="codigo" >
					</div>
					<div class="form-group">
						<label for="validation01">Cedula</label> <input type="text"
							class="form-control" value='<c:out value="${empleado.cedula}"></c:out>'
							placeholder="Codigo" name="cedula">
					</div>
					<div class="form-group">
						<label for="validation01">Nombre</label> <input type="text"
							class="form-control" value='<c:out value="${empleado.nombre}"></c:out>'
							placeholder="Nombre" name="nombre">
					</div>
					<div class="form-group">
						<label for="validation01">Fecha nacimiento</label> <input type="date"
							class="form-control" value='<c:out value="${empleado.fecha_nacimiento}"></c:out>'
							placeholder="dd/MM/yyyy" name="fecha_nacimiento">
					</div>
					<div class="form-group">
						<label for="validation01">Fecha ingreso</label> <input type="date"
							class="form-control" value='<c:out value="${empleado.fecha_ingreso}"></c:out>'
							placeholder="dd/MM/yyyy" name="fecha_ingreso">
					</div>
					<div class="form-group">
						<label for="validation01">Fecha retiro</label> <input type="date"
							class="form-control" value='<c:out value="${empleado.fecha_retiro}"></c:out>'
							placeholder="dd/MM/yyyy" name="fecha_retiro">
					</div>					
						<input type="submit" class="btn btn-success" value="Guardar"
							name="guardar">
					
				</form>
			</div>
		</div>
	</div>

	<footer>
        <div class="row">
            <div class="col-md-3">
                <ul id="ul-con" type="none">
                    <b>Contacto</b>
                    <li>Email: juansebastiansp@ufps.edu.co</li>
                    <li>Cel: +57 3219810616</li>
                </ul>
            </div>
        </div>
        <hr>
        <p>2020 © All Rights Reserved. Desarrollado por JUAN SEBASTIAN SANCHEZ PRADA </p>
    </footer>
</body>
</html>