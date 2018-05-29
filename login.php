<?php
	$user = $_POST['user'];
	$pass = $_POST['pass'];
	require("database/class.config.php");
	require("database/class.db.php");
   
	$stmt1="call pLOGIN_B('".$user."','".$pass."')";
    
    $html =  include 'php/Prueba.php';
	$bd=DataBase::getInstance();
	$result=$bd->ejecutar($stmt1);
	if ($result) {
		while($fila1 =$result->fetch_array(MYSQLI_BOTH)){
		  echo $html;
			#echo 'aqui';
		}      
	}else{
		echo "No entro";
	}


	$stmt2="call pMENU_ACEESO_B()";
	$menu_padre = '';
	$cerrarpadre = false;
	$cerrarhijo = false;

	$resultado=$bd->ejecutar($stmt2);
	if ($resultado) {
		while($fila =$resultado->fetch_array(MYSQLI_BOTH)){
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

}else{
    echo "*****no resultado";
}

    $bd->cerrarConexion();
?>


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
