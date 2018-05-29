	<?php
	require("../database/class.config.php");
	require("../database/class.db.php");
	$stmt1="call pMENU_ACEESO_B()";

	$bd=DataBase::getInstance();
	$menu_padre = '';
	$cerrarpadre = false;
	$cerrarhijo = false;
	
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
                   	$menu_padre.= ' <li><a href="#">'.$fila['DESCRIPCION'].'</a></li>' ;
				}else{
				    $menu_padre.= '  <li class="dropdown">
	        						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">'.$fila['DESCRIPCION'].'<span class="caret"></span></a>
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
					 		$menu_padre.= ' <li><a href="#">'.$fila['DESCRIPCION'].'</a></li>'  ;	
						}else{
					 		$menu_padre.= '  
            						 <li class="dropdown-submenu">
      							  <a class="test" tabindex="-1" href="#">'.$fila['DESCRIPCION'].'<span class="caret"></span></a>
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



	}
    

	$bd->cerrarConexion();
	?>
	  <html lang="en">
	    <head>
	      <meta charset="utf-8">
	      <meta http-equiv="X-UA-Compatible" content="IE=edge">
	      <meta name="viewport" content="width=device-width, initial-scale=1">
	      <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	      <title>Bootstrap 101 Template</title>

	      <!-- Bootstrap -->
	      <link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	      <!--[if lt IE 9]>
	        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	      <![endif]-->
	    </head>

	    <body>
	    	<style>
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}
</style>
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
	      <ul class="nav navbar-nav">
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

	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	      <!-- Include all compiled plugins (below), or include individual files as needed -->
	      <script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	    </body>
	  </html> 
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>
