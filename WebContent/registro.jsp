<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Registrar Empleado</title>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #38C953">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"><h1>Registrar
						Empleados</h1> Employees Management App </a>
			</div>
		</nav>
	</header>


	<hr>
	<div id="botones" class="container text-left">
		
		<a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-success">Ir al
			Inicio</a> <a href="<%=request.getContextPath()%>/buscar.jsp"
			class="btn btn-success">Buscar Empleado</a>
	</div>

	<div class="container">
		<div class="card">
			<div class="card-body">
				<form action="${pageContext.request.contextPath}/EmpleadoServlet?action=register" method="post">
					<div class="form-group">
						<label for="validation01">Código</label> <input type="text"
							class="form-control" placeholder="Codigo" name="codigo">
					</div>
					<div class="form-group">
						<label for="validation01">Cedula</label> <input type="text"
							class="form-control" placeholder="Cedula" name="cedula">
					</div>					
					<div class="form-group">
						<label for="validation01">Nombre</label> <input type="text"
							class="form-control" placeholder="Nombre" name="nombre">
					</div>
					<div class="form-group">
						<label for="validation01">Fecha de nacimiento</label> <input type="date"
							class="form-control" placeholder="dd/MM/yyyy" name="fecha_nacimiento">
					</div>
					<div class="form-group">
						<label for="validation01">Fecha de ingreso</label> <input type="date"
							class="form-control" placeholder="dd/MM/yyyy" name="fecha_ingreso">
					</div>
					<div class="form-group">
						<label for="validation01">Fecha de retiro</label> <input type="date"
							class="form-control" placeholder="dd/MM/yyyy" name="fecha_retiro">
					</div>								
						<input type="submit" class="btn btn-success" value="Agregar"
							name="agregar">
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