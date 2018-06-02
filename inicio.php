<?php
	$user = 'x';
	$pass = 'x';
	require("database/class.config.php");
	require("database/class.db.php");
	$stmt1="call pLOGIN_B('".$user."','".$pass."')";
    $cerrarpadre = false;
	$cerrarhijo = false;
 	$menu_padre = '';
	$bd=DataBase::getInstance();
	$result=$bd->ejecutar($stmt1);
	if ($result) {
		while($fila =$result->fetch_array(MYSQLI_BOTH)){

		 	if ($fila['TIPO'] == 'MODULO'){
				
				if ($cerrarpadre == true){
					$menu_padre.= '</ul> </li>';
					$cerrarpadre = false;
				} 

				if ($cerrarhijo == true){
					$menu_padre.= '</ul> </li>';
					$cerrarhijo=false;
				}

				if ($fila['HIJOS'] == '0'){
                   	$menu_padre.= ' <li><a href="#" value="'.$fila['URL'].'">'.$fila['DESCRIPCION'].'</a></li>' ;
				}else{
				    $menu_padre.= '  <li class="dropdown">
	        						  <a href="#" value="'.$fila['URL'].'" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">'.$fila['DESCRIPCION'].'<span class="caret"></span></a>
	       						   <ul class="dropdown-menu">
	         						   ';
	         		    $cerrarpadre = true;				   
				}		
			}elseif (strtoupper($fila['TIPO']) == 'SUBMODULO') {
					if ($fila['NIVEL'] == '1'){
						if ($cerrarhijo == true){
							$menu_padre.= '</ul> </li>';
						}

						if ($fila['HIJOS'] == '0'){
					 		$menu_padre.= ' <li><a  href="#" onclick="go(\''.$fila['URL'].'\');" value="'.$fila['URL'].'">'.$fila['DESCRIPCION'].'</a></li>'  ;	
						}else{
					 		$menu_padre.= '  
            						 <li class="dropdown-submenu">
      							  <a class="test" tabindex="-1" onsubmit="go("'.$fila['URL'].'"")">'.$fila['DESCRIPCION'].'<span class="caret"></span></a>
     							   <ul class="dropdown-menu">  
		          				 ';
		          		     $cerrarhijo=true;
						}
						
					}elseif ($fila['NIVEL'] == '2') {
						$menu_padre.= ' <li><a tabindex="-1" href="#">'.$fila['DESCRIPCION'].'</a></li>'  ;	
					}
				
						
			}
		}  
		if ($cerrarpadre == true){
			$menu_padre.= '</ul> </li>';
		} 
		if ($cerrarhijo == true){
			$menu_padre.= '</ul> </li>';
		}     
	}else{
		echo "No entro";
	}
    $bd->cerrarConexion();
?>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <script type="text/javascript" src="resources/bootstrap/js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/pacejs/js/pace.js"></script>
  <script type="text/javascript" src="contenedor/contenedor.js"></script>
  <script type="text/javascript" src="js/main.js"></script>
  <link href="resources/alertas/toastr.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="Resources/DataTables/datatables.min.css"/>
<script type="text/javascript" src="resources/DataTables/datatables.min.js"></script>

  <link rel="stylesheet" href="resources/pacejs/css/pace-theme-flash.css">
  <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/normalize.css">
  <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/styles-login.css">
  <title>ITZO</title>
</head>

<body class="custom-body">
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Brand</a>
	    </div>
  
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav" id='myid'>
	         <?php echo $menu_padre ?>
	      </ul>
	      <form class="navbar-form navbar-left">
	        <div class="form-group">
	          <input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-default">Submit</button>
	      </form>
	     
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
  <div class="footer container-fluid">
      <!-- <div class="container-fluid custom-box navbar-fixed-bottom">
        <p class="navbar-text navbar-left">Copyright (c) 2017. Todos los derechos reservados.</p>
        <p class="navbar-text navbar-right">Versión 0.1.0</p>
      </div> -->
    </div>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

  <!-- Modal -->
  <div class="modal fade" style=" word-wrap: break-word"  id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
            <div id='contenedor'>
    </div>
        </div>
        <div class="modal-footer style="width: 80%">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
    <div id='contenedor'>
    </div>
  </div>
  <div id='respuesta'>
  	
  </div>
    <script src="resources/alertas/toastr.js"></script>
</body>
</html>