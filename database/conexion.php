<?php 
/**
 *
 * Prueba de conexion a la BD
 *
 **/


require("class.config.php");
require("class.db.php");

$stmt1="call pMENU_ACEESO_B()";

$stmt1Prepared=sprintf($stmt1, "CURRENT_DATE");
$bd=DataBase::getInstance();
$result=$bd->ejecutar($stmt1);
if ($result) {
	while($fila =$result->fetch_array(MYSQLI_BOTH)){
		echo "Data: ".$fila[0];
	}

	echo " DAta2: ".$bd->obtenerFila($result, 0);
}
$bd->cerrarConexion();
?> 
