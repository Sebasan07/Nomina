<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Buscar Empleado</title>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #38C953">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"><h1>Buscar
						Empleados</h1> Employees Management App </a>
			</div>
		</nav>
	</header>


	<hr>
	<div id="botones" class="container text-left">

		<a href="<%=request.getContextPath()%>/EmpleadoServlet?action=index"
			class="btn btn-success">Ir al Inicio</a> <a
			href="<%=request.getContextPath()%>/registro.jsp"
			class="btn btn-success">Registrar Empleado</a>
	</div>

	<div class="container">
		<div class="card">
			<div class="card-body">
				<form
					action="${pageContext.request.contextPath}/EmpleadoServlet?action=showedit"
					method="post">
					<div class="form-group">
						<label for="validation01">Código</label> <input type="text"
							class="form-control" placeholder="Codigo" name="codigo">
					</div>
					<input type="submit" class="btn btn-success" value="Buscar"
						name="buscar">
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
		<p>2020 © All Rights Reserved. Desarrollado por JUAN SEBASTIAN
			SANCHEZ PRADA</p>
	</footer>
</body>
</html>