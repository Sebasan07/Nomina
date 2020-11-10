<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>Mostrar Empleados</title>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #38C953">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"><h1>Listar
						Empleados</h1> Employees Management App </a>
			</div>
		</nav>
	</header>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/registro.jsp"
					class="btn btn-success">Registrar nuevo empleado</a> <a
					href="<%=request.getContextPath()%>/EmpleadoServlet?action=mostrar"
					class="btn btn-success">Mostrar listado de empleados</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<td>CODIGO</td>
						<td>CEDULA</td>
						<td>NOMBRE</td>
						<td>FECHA NACIMIENTO</td>
						<td>FECHA INGRESO</td>
						<td>FECHA RETIRO</td>
						<td>ACTION</td>

					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="empleado" items="${list}">
						<tr>
							<td><c:out value="${empleado.codigo}" /></td>
							<td><c:out value="${empleado.cedula}" /></td>
							<td><c:out value="${empleado.nombre}" /></td>
							<td><c:out value="${empleado.fecha_nacimiento}" /></td>
							<td><c:out value="${empleado.fecha_ingreso}" /></td>
							<td><c:out value="${empleado.fecha_retiro}" /></td>
							<td><a
								href="<%=request.getContextPath()%>/EmpleadoServlet?action=showedit&codigo=<c:out value="${empleado.codigo}" />">Editar</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="EmpleadoServlet?action=delete&codigo=<c:out value="${empleado.codigo}"/>">Eliminar</a>
							</td>

						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
