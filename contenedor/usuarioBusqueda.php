<?php
	require("../database/class.config.php");
	require("../database/class.db.php");
	$stmt1="call pUSUARIO_B()";
	$bd=DataBase::getInstance();
	$rows='<div class="table-responsive">
<table class="table table-hover"  id="usertable">
    <thead>
        <tr>
        	<th>Clave usuario</th>
            <th>Usuario</th>
            <th>Contraseña</th>
        </tr>
    </thead>
    <tbody>
        ';
	$result=$bd->ejecutar($stmt1);
	if ($result) {
		while($fila =$result->fetch_array(MYSQLI_BOTH)){
				$rows.=' <tr><td>'.$fila['ID_USUARIO'].'</td><td>'.$fila['USUARIO_DE_ACCESO'].'</td><td>'.$fila['CLAVE_DE_ACCESO'].'</td></tr>';
       }
	}
	$rows.='</tbody></table>';
	echo $rows;
?>