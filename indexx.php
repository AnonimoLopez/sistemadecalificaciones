<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<script type="text/javascript" src="resources/bootstrap/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/pacejs/js/pace.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<link rel="stylesheet" href="resources/pacejs/css/pace-theme-flash.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/styles-login.css">
	<title>ITZO</title>
</head>

<body class="custom-body">

	<div class="container-fluid">
		<div class="header container">
			<nav class="navbar navbar-default custom-blue custom-navbar">
			  <div class="container-fluid">
			    
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed custom-blue-link" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar custom-blue-icon"></span>
			        <span class="icon-bar custom-blue-icon"></span>
			        <span class="icon-bar custom-blue-icon"></span>
			      </button>
			      <a class="navbar-brand custom-blue-link" href="#">ITZO</a>
			    </div>

			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <!-- <p class="navbar-text custom-blue">ITZO</p> -->
			      <ul class="nav navbar-nav navbar-right">
			        <li><a class="custom-blue-link" href="#">Acerca de</a></li>
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
		</div>
		
		<div class="container" style="padding-top: 50px; padding-bottom: 50px;">
			<div class="row">
				<div class="col-xs-10 col-md-6 col-xs-offset-1 col-md-offset-3 custom-box">
					<div class="custom-page-header">
						<h1>Inicio de Sesión</h1>
					</div>
					<form class="form-horizontal" method="POST">
						<div class="form-group">
					    	<label for="inputEmail3" class="col-sm-2 control-label">Usuario</label>
					    	<div class="col-sm-10">
					      		<input type="text" class="form-control" id="inputUser" name="user" placeholder="Usuario">
					    	</div>
					  	</div>
					  	<div class="form-group">
					    	<label for="inputPassword3" class="col-sm-2 control-label">Contraseña</label>
					    	<div class="col-sm-10">
					      		<input type="password" class="form-control" id="inputPassword" name="password" placeholder="Contraseña">
					    	</div>
					  	</div>
					  	<div id="alert-message" class="form-group">
					 		
					 	</div>
					  	<div class="form-group">
					    	<div class="col-sm-offset-2 col-sm-10">
					      		<button id="btn-login" type="submit" class="btn btn-default">Iniciar sesión</button>
					    	</div>
					  	</div>
					</form>
				</div>
			</div>
		</div>

		<div class="footer container-fluid">
			<!-- <div class="container-fluid custom-box navbar-fixed-bottom">
				<p class="navbar-text navbar-left">Copyright (c) 2017. Todos los derechos reservados.</p>
				<p class="navbar-text navbar-right">Versión 0.1.0</p>
			</div> -->
		</div>
	</div>

</body>
</html>