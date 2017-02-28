<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>AsistenteEscolar</title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="static/css/side.nav.css" />
	</head>
	<body ng-app>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<span class="navbar-brand">${schoolName}</span>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span> User Settings</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</nav>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3">
					<div class="sidebar-nav">
						<div class="navbar navbar-inverse" role="navigation">							
							<ul class="nav navbar-nav">
								<li><a href="#">Inscripciones</a></li>
								<li><a href="#">Pagos</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Administración de Alumnos <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Editar información</a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Header</li>
										<li><a href="#">Separated link</a></li>
									</ul>
								</li>
								<li><a href="#">Reviews <span class="badge">1,118</span></a></li>
							</ul>							
						</div>
					</div>
				</div>
			</div>
		</div>
				
		<script src="<c:url value='/static/js/3rdParty/angular.min.js' />"></script>
		<script src="<c:url value='/static/js/3rdParty/jquery.min.js' />"></script>
		<script src="<c:url value='/static/js/3rdParty/bootstrap.min.js' />"></script>		
		<script src="<c:url value='/static/js/application.js' />"></script>
	</body>
</html>