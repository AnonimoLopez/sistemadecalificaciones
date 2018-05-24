<?php 
/**
 *
 * Prueba de conexion a la BD
 *
 **/


require("class.config.php");
require("class.db.php");

$stmt1="SELECT %s";

$stmt1Prepared=sprintf($stmt1, "CURRENT_DATE");
$bd=DataBase::getInstance();

$result=$bd->ejecutar($stmt1Prepared);
if ($result) {
	while($fila =$result->fetch_array(MYSQLI_BOTH)){
		echo "Data: ".$fila["CURRENT_DATE"];
	}

	echo " DAta2: ".$bd->obtenerFila($result, 0);
}
$bd->cerrarConexion();
?> 
