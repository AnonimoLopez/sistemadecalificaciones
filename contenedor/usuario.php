<?php
    $user = $_POST['user'];
	$pass = $_POST['pass'];
	require("../database/class.config.php");
	require("../database/class.db.php");
	$stmt1="call pUSUARIO_G('".$user."','".$pass."')";
	$bd=DataBase::getInstance();
	$id=0;
	$result=$bd->ejecutar($stmt1);
	if ($result) {
		while($fila =$result->fetch_array(MYSQLI_BOTH)){
				$id = $fila[0];
       }
	}
	echo $id;
?>