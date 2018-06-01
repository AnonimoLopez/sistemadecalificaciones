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
					 		$menu_padre.= ' <li><a href="#" data-toggle="modal" data-target="#exampleModal"> '.$fila['DESCRIPCION'].'</a></li>'  ;	
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
	      <link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	      <script src="../contenedor/contenedor.js"></script>
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

function go(url){
        // process the form
        $.ajax({
            type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
            url         :  url, // the url where we want to POST
            dataType    : 'html', // what type of data do we expect back from the server
            encode          : true
        })
            // using the done promise callback
            .done(function(data) {

                // log data to the console so we can see
              
                 $('#contenedor').html(data);
                // here we will handle errors and validation messages
            });

        // stop the form from submitting the normal way and refreshing the page
        event.preventDefault();
}

</script>
