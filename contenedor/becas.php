<?php
    $action = $_POST['action'];
    $nombre=$_POST['nombre'];
    $monto=$_POST['monto'];


    switch ($action) {
    	case 'REGISTRAR':
			require("../database/class.config.php");
			require("../database/class.db.php");
			
			if (!empty($nombre) & !empty($monto)) {
				
				
				$stmt1="CALL pBECAS_G(0, '$nombre', $monto, @id)";
				$bd=DataBase::getInstance();
				$result=$bd->ejecutar($stmt1);
				$result2=$bd->ejecutar("SELECT @id");
				$num_rows = $result2->num_rows;
				if ($num_rows > 0) {

				    while($row = $result2->fetch_array(MYSQLI_BOTH))
				    {
				    	echo $row["@id"];
				    }
				}
			
			}
    		break;
    	
    	case 'BUSCAR':
    		require("../database/class.config.php");
			require("../database/class.db.php");
			$stmt1="CALL pBECAS_B()";
			$bd=DataBase::getInstance();
			$rows='<div class="table-responsive"><table class="table table-hover"  id="usertable">
					<thead>
						<tr>
							<th>Clave Beca</th><th>Nombre</th><th>Monto</th>
						</tr>
					</thead>
				<tbody>';
			$result=$bd->ejecutar($stmt1);
			if ($result) {
				while($fila =$result->fetch_array(MYSQLI_BOTH)){
						$rows.=' <tr><td>'.$fila['ID_BECA'].'</td><td>'.$fila['NOMBRE'].'</td><td>'.$fila['MONTO_BECA'].'</td></tr>';
		       }
			}
			$rows.='</tbody></table>';
			echo $rows;
    		break;
    }
	
?>