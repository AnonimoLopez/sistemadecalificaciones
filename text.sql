-- --------------------------------------------------------
-- Host:                         Jalejandrorr.me
-- Versión del servidor:         5.5.59 - MySQL Community Server (GPL)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para ITZO
CREATE DATABASE IF NOT EXISTS `ITZO` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ITZO`;

-- Volcando estructura para procedimiento ITZO.pBECAS_B
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pBECAS_B`()
BEGIN
	SELECT * FROM BECAS;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pBECAS_G
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pBECAS_G`(
	IN `id_beca` INT,
	IN `nombre` VARCHAR(50),
	IN `monto_beca` INT,
	OUT `parametro` INT
)
BEGIN
IF EXISTS( SELECT * FROM BECAS AS b WHERE b.ID_BECA = id_beca ) THEN
	
	UPDATE BECAS AS B SET b.NOMBRE=nombre, b.MONTO_BECA=monto_beca WHERE b.ID_BECA = id_beca
;
	IF @@error_count=0 THEN
		SET parametro=id_beca;
	END IF
;
ELSE
	SET @ID=NULL
;	SELECT MAX(b.ID_BECA) INTO @ID FROM BECAS AS b
;	SET @ID= IFNULL(@ID,0) + 1
;
	INSERT INTO BECAS VALUES(@ID, nombre, monto_beca)
;

IF @@error_count=0 THEN
	SET parametro=@ID;
END IF
;

END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pGRUPOS_INDIGENAS_B
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pGRUPOS_INDIGENAS_B`()
BEGIN
	SELECT * FROM GRUPOS_INDIGENAS;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pGRUPOS_INDIGENAS_G
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pGRUPOS_INDIGENAS_G`(
	IN `id_grupo_indigena` INT,
	IN `nombre` VARCHAR(50),
	OUT `parametro` INT


)
BEGIN

IF EXISTS( SELECT * FROM GRUPOS_INDIGENAS AS gi WHERE gi.ID_GRUPO_INDIGENA = id_grupo_indigena ) THEN
	
	UPDATE GRUPOS_INDIGENAS AS gi SET gi.NOMBRE_GRUPO_INDIGENA=nombre WHERE gi.ID_GRUPO_INDIGENA=id_grupo_indigena;
	IF @@error_count=0 THEN
		SET parametro=id_grupo_indigena;
	END IF;
ELSE
	SET @ID = 0
;	SELECT MAX(gi.ID_GRUPO_INDIGENA) INTO @ID FROM GRUPOS_INDIGENAS AS gi
;	SET @ID= IFNULL(@ID,0) + 1
;
	INSERT INTO GRUPOS_INDIGENAS VALUES(@ID, nombre)
;

IF @@error_count=0 THEN
	SET parametro=@ID;
END IF;
END IF;

END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pLogin_B
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pLogin_B`(`user` VARCHAR(50), `pass` VARCHAR(50))
BEGIN
  SELECT CVE_ACCESO, DESCRIPCION, TIPO, IMG, URL, NIVEL, GRUPO, HIJOS FROM MENU;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pMENU_ACEESO_B
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pMENU_ACEESO_B`()
BEGIN SET @row_number = 0;
	SELECT CVE_ACCESO, DESCRIPCION, TIPO, IMG, URL, NIVEL, GRUPO, HIJOS, (@row_number:=@row_number + 1) AS num FROM MENU;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pMODALIDADES_B
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pMODALIDADES_B`()
BEGIN
	SELECT * FROM MODALIDADES;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pMODALIDADES_G
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pMODALIDADES_G`(
	IN `id_modalidad` INT,
	IN `nombre` VARCHAR(50),
	OUT `parametro` INT
)
BEGIN
IF EXISTS( SELECT * FROM MODALIDADES AS m WHERE m.ID_MODALIDAD = id_modalidad ) THEN
	
	UPDATE MODALIDADES AS m SET m.NOMBRE=nombre WHERE m.ID_MODALIDAD = id_modalidad
;
	IF @@error_count=0 THEN
		SET parametro=id_modalidad;
	END IF
;
ELSE
	SET @ID=NULL
;	SELECT MAX(m.ID_MODALIDAD) INTO @ID FROM MODALIDADES AS m
;	SET @ID= IFNULL(@ID,0) + 1
;
	INSERT INTO MODALIDADES VALUES(@ID, nombre)
;

IF @@error_count=0 THEN
	SET parametro=@ID;
END IF
;

END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pUSUARIO_B
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pUSUARIO_B`()
BEGIN
 select * from USUARIOS; 
END//
DELIMITER ;

-- Volcando estructura para procedimiento ITZO.pUSUARIO_G
DELIMITER //
CREATE DEFINER=`JAlejandroRR`@`%` PROCEDURE `pUSUARIO_G`(
	IN `USER` VARCHAR(50),
	IN `PASS` VARCHAR(50)

)
BEGIN
INSERT INTO `ITZO`.`USUARIOS` (`ID_ROL`, `ID_ACTIVIDAD_DE_USUARIO`, `ID_PUESTO`, `NOMBRE_USUARIO`,`USUARIO_DE_ACCESO`, `CLAVE_DE_ACCESO`) VALUES ( '1', '1', '1', 'usuario2',USER,PASS);
select last_insert_id();
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
