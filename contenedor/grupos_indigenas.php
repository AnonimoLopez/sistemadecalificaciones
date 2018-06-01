<?php
    $action = $_POST['action'];
    $descripcion=$_POST['descripcion'];


    switch ($action) {
    	case 'REGISTRAR':
			require("../database/class.config.php");
			require("../database/class.db.php");
			
			if (!empty($descripcion)) {
				
				
				$stmt1="CALL pGRUPOS_INDIGENAS_G(0, '$descripcion', @id)";
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
			$stmt1="call pGRUPOS_INDIGENAS_B()";
			$bd=DataBase::getInstance();
			$rows='<div class="table-responsive"><table class="table table-hover"  id="usertable">
					<thead>
						<tr>
							<th>Clave Grupo Indigena</th><th>Nombre</th>
						</tr>
					</thead>
				<tbody>';
			$result=$bd->ejecutar($stmt1);
			if ($result) {
				while($fila =$result->fetch_array(MYSQLI_BOTH)){
						$rows.=' <tr><td>'.$fila['ID_GRUPO_INDIGENA'].'</td><td>'.$fila['NOMBRE_GRUPO_INDIGENA'].'</td></tr>';
		       }
			}
			$rows.='</tbody></table>';
			echo $rows;
    		break;
    }
	
?>