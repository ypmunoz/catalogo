CREATE DATABASE  IF NOT EXISTS `ics_instalador_v19` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ics_instalador_v19`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ics_instalador_v19
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `errores`
--

DROP TABLE IF EXISTS `errores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errores` (
  `id_errorescol` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del error',
  `mens_error` varchar(200) DEFAULT NULL COMMENT 'Mensaje que arroja en el error',
  PRIMARY KEY (`id_errorescol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se registran los errores en las inserciones en la base de datos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errores`
--

LOCK TABLES `errores` WRITE;
/*!40000 ALTER TABLE `errores` DISABLE KEYS */;
/*!40000 ALTER TABLE `errores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_aplicacion`
--

DROP TABLE IF EXISTS `ics_aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_aplicacion` (
  `idics_aplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `apl_tipo` varchar(85) DEFAULT NULL,
  `apl_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_aplicacion`
--

LOCK TABLES `ics_aplicacion` WRITE;
/*!40000 ALTER TABLE `ics_aplicacion` DISABLE KEYS */;
INSERT INTO `ics_aplicacion` VALUES (1,'NA','2014-02-21 15:49:32'),(2,'Intramuscular ','2014-02-21 15:49:32'),(3,'Topica','2014-02-21 15:49:32'),(4,'Intravenosa','2014-02-21 15:49:32'),(5,'Oral','2014-02-21 15:49:32'),(6,'Sublingual','2014-02-21 15:49:32'),(7,'Intradermica','2014-02-21 15:49:32'),(8,'Subcutanea','2014-02-21 15:49:32'),(9,'Oftalmica','2014-02-21 15:49:32'),(10,'Nasal','2014-02-21 15:49:32'),(11,'Rectal','2014-02-21 15:49:32'),(12,'Vaginal','2014-02-21 15:49:32');
/*!40000 ALTER TABLE `ics_aplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_area_disp`
--

DROP TABLE IF EXISTS `ics_area_disp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_area_disp` (
  `idics_area_disp` int(11) NOT NULL AUTO_INCREMENT,
  `area_disp_nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'DESCONOCIDO',
  PRIMARY KEY (`idics_area_disp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_area_disp`
--

LOCK TABLES `ics_area_disp` WRITE;
/*!40000 ALTER TABLE `ics_area_disp` DISABLE KEYS */;
INSERT INTO `ics_area_disp` VALUES (1,'DESCONOCIDO');
/*!40000 ALTER TABLE `ics_area_disp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_auth`
--

DROP TABLE IF EXISTS `ics_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_auth` (
  `idtlm_auth` int(11) NOT NULL AUTO_INCREMENT,
  `ics_naut` varchar(45) NOT NULL COMMENT 'NUMERO DE AUTORIZACION',
  `ics_sts` varchar(45) DEFAULT '0',
  `ics_nvmc` varchar(45) DEFAULT NULL,
  `ics_nsel` varchar(45) DEFAULT NULL COMMENT 'SELECCION SOLICITADA',
  `ics_vsel` varchar(45) DEFAULT NULL COMMENT 'PRECIO DE LA SELECCION SOLICITADA EN LA VMC',
  `ics_vaut` varchar(45) DEFAULT NULL COMMENT 'VALOR AUTORIZADO POR CRDIBANCO',
  `ics_fcb` varchar(45) DEFAULT NULL,
  `ics_nrec` varchar(45) DEFAULT NULL,
  `ics_nter` varchar(45) DEFAULT NULL COMMENT 'NUMERO DE LA TERMINAL',
  `ics_nfra` varchar(45) DEFAULT NULL,
  `ics_ncuo` varchar(45) DEFAULT NULL,
  `ics_ftmp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ics_ttar` varchar(45) DEFAULT NULL,
  `ics_rrn` varchar(45) DEFAULT NULL,
  `ics_tar` varchar(45) DEFAULT NULL,
  `ics_iva` varchar(45) DEFAULT NULL,
  `ics_biva` varchar(45) DEFAULT NULL,
  `ics_stsdisp` varchar(45) DEFAULT '0',
  `ics_cl` varchar(45) DEFAULT NULL,
  `ics_nomprod` varchar(200) DEFAULT NULL,
  `ics_costo` int(11) DEFAULT '0',
  PRIMARY KEY (`idtlm_auth`,`ics_naut`),
  KEY `index2` (`ics_naut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_auth`
--

LOCK TABLES `ics_auth` WRITE;
/*!40000 ALTER TABLE `ics_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_auth_all`
--

DROP TABLE IF EXISTS `ics_auth_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_auth_all` (
  `idtlm_auth` int(11) NOT NULL AUTO_INCREMENT,
  `ics_naut` varchar(45) NOT NULL COMMENT 'NUMERO DE AUTORIZACION',
  `ics_nvmc` varchar(45) DEFAULT NULL,
  `ics_nsel` varchar(45) DEFAULT NULL COMMENT 'SELECCION SOLICITADA',
  `ics_vsel` varchar(45) DEFAULT NULL COMMENT 'PRECIO DE LA SELECCION SOLICITADA EN LA VMC',
  `ics_vaut` varchar(45) DEFAULT NULL COMMENT 'VALOR AUTORIZADO POR CRDIBANCO',
  `ics_fcb` varchar(45) DEFAULT NULL,
  `ics_nter` varchar(45) DEFAULT NULL COMMENT 'NUMERO DE LA TERMINAL',
  `ics_nfra` varchar(45) DEFAULT NULL,
  `ics_ncuo` varchar(45) DEFAULT NULL,
  `ics_ftmp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ics_ttar` varchar(45) DEFAULT NULL,
  `ics_rrn` varchar(45) DEFAULT NULL,
  `ics_tar` varchar(45) DEFAULT NULL,
  `ics_iva` varchar(45) DEFAULT NULL,
  `ics_biva` varchar(45) DEFAULT NULL,
  `ics_ncaj` varchar(145) DEFAULT NULL,
  `ics_nrec` varchar(145) DEFAULT NULL,
  `ics_hor` varchar(145) DEFAULT NULL,
  `ics_cod_rta` varchar(145) DEFAULT NULL,
  `ics_bin` varchar(145) DEFAULT NULL,
  `ics_fvtar` varchar(145) DEFAULT NULL,
  `ics_cuc` varchar(145) DEFAULT NULL,
  `ics_dest` varchar(145) DEFAULT NULL,
  `ics_label` varchar(145) DEFAULT NULL,
  `ics_filler` varchar(145) DEFAULT NULL,
  `ics_filler2` varchar(145) DEFAULT NULL,
  `ics_PAN` varchar(145) DEFAULT NULL,
  `ics_est_tran` varchar(45) DEFAULT NULL COMMENT 'EStado de la compra dentro de la maquina , informa si el producto cae o no 1 -> producto cae , 0 -> producto atascado ',
  `ics_cl` varchar(45) DEFAULT NULL,
  `ics_nomprod` varchar(200) DEFAULT NULL,
  `ics_costo` int(11) DEFAULT '0',
  PRIMARY KEY (`idtlm_auth`,`ics_naut`),
  KEY `index2` (`ics_naut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_auth_all`
--

LOCK TABLES `ics_auth_all` WRITE;
/*!40000 ALTER TABLE `ics_auth_all` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_auth_all` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Userics`@`%`*/ /*!50003 TRIGGER `ics_auth_all_AFTER_INSERT` AFTER INSERT ON `ics_auth_all` FOR EACH ROW
    begin 
    declare ics_stsdisp varchar(100);
    
    if new.ics_est_tran = 1 then 
		set ics_stsdisp = 'Dispensado';
    else
		set ics_stsdisp = 'No Dispensado';
    end if;
    
    
    
    INSERT INTO ics_auth
		set ics_naut = new.ics_naut, -- n autorizacion 
			ics_nvmc = new.ics_nvmc,-- serial de dispensadora (222 caracteres)
			ics_nsel = new.ics_nsel, -- seleccion
			ics_vsel = new.ics_vsel, -- valor seleccion	
			ics_vaut = new.ics_vaut,-- valor autorizado
			ics_fcb	 = new.ics_fcb,-- fecha que envia credibanco (tamaño 6 AAMMDD)
			ics_nrec = new.ics_nrec,-- numero de recibo (tamaño 6 )  
			ics_nter = new.ics_nter,	-- numero terminal(tamaño 8)
			ics_nfra = new.ics_nfra,-- numero de franquicia (tamaño 10)
			ics_ncuo = new.ics_ncuo, -- numero de cuotas
			ics_ttar = new.ics_ttar, -- tipo de cuenta (tamaño 2)	
			ics_rrn  = new.ics_rrn, -- codigo rrn(tamaño6)
			ics_tar	 = new.ics_tar, -- 4 ultimos dig de las tarjetas
			ics_iva	 = new.ics_iva,		-- iva
			ics_biva = new.ics_biva, -- base dev de iva
			ics_stsdisp = ics_stsdisp, -- estado de transaccion 
			ics_sts  = ics_stsdisp,
            ics_cl   = new.ics_cl,
            ics_nomprod= new.ics_nomprod,
           ics_costo = new.ics_costo;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_billetero`
--

DROP TABLE IF EXISTS `ics_billetero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_billetero` (
  `idics_bill` int(11) NOT NULL AUTO_INCREMENT,
  `bill_serial` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bill_manufactura` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bill_modelo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bill_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_bill`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_billetero`
--

LOCK TABLES `ics_billetero` WRITE;
/*!40000 ALTER TABLE `ics_billetero` DISABLE KEYS */;
INSERT INTO `ics_billetero` VALUES (1,'NA','000','b','2018-06-22 20:03:59');
/*!40000 ALTER TABLE `ics_billetero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_borrados`
--

DROP TABLE IF EXISTS `ics_borrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_borrados` (
  `id_borrados` int(11) NOT NULL AUTO_INCREMENT,
  `bor_nombreusuario` varchar(145) NOT NULL COMMENT 'Nombre del usuario eliminado',
  `bor_identificaciousuario` varchar(15) NOT NULL COMMENT 'Numero de identificación del usuario eliminado.',
  `bor_id_huella` varchar(15) NOT NULL COMMENT 'Número de Huella',
  `bor_saldo` varchar(45) DEFAULT NULL,
  `bor_cargo` varchar(45) DEFAULT NULL,
  `bor_ip` varchar(45) DEFAULT NULL COMMENT 'Dirección ip del equipo donde se hizo la eliminación de la información.',
  `bor_mac` varchar(45) DEFAULT NULL COMMENT 'Dirección Mac del equipo donde se elimino la información.',
  `bor_usuarioadmin` varchar(45) DEFAULT NULL COMMENT 'Usuario que realizo la eliminación de la información.',
  `bor_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de eliminación del usuario',
  `bor_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`id_borrados`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Guarda el Historico de usuarios borrados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_borrados`
--

LOCK TABLES `ics_borrados` WRITE;
/*!40000 ALTER TABLE `ics_borrados` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_borrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_borradosnoc`
--

DROP TABLE IF EXISTS `ics_borradosnoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_borradosnoc` (
  `id_borrados` int(11) NOT NULL AUTO_INCREMENT,
  `bor_nombre` varchar(145) NOT NULL COMMENT 'Nombre del usuario eliminado',
  `bor_identificacioserial` varchar(15) NOT NULL COMMENT 'Numero de identificación del usuario eliminado.',
  `bor_id_huella` varchar(15) NOT NULL COMMENT 'Número de Huella',
  `bor_saldo` varchar(45) DEFAULT NULL,
  `bor_ip` varchar(45) DEFAULT NULL COMMENT 'Dirección ip del equipo donde se hizo la eliminación de la información.',
  `bor_mac` varchar(45) DEFAULT NULL COMMENT 'Dirección Mac del equipo donde se elimino la información.',
  `bor_usuarioadmin` varchar(45) DEFAULT NULL COMMENT 'Usuario que realizo la eliminación de la información.',
  `bor_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de eliminación del usuario',
  `bor_cliente` varchar(45) NOT NULL,
  `bor_tipoborrado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_borrados`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Guarda el Historico de usuarios borrados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_borradosnoc`
--

LOCK TABLES `ics_borradosnoc` WRITE;
/*!40000 ALTER TABLE `ics_borradosnoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_borradosnoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_cargos`
--

DROP TABLE IF EXISTS `ics_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_cargos` (
  `id_cargos` int(11) NOT NULL AUTO_INCREMENT,
  `car_nombre` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Nombre del cargo.',
  `car_cliente` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `car_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cargos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Tabla en la que se almacenan los cargos que pueden existir en una compañia.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_cargos`
--

LOCK TABLES `ics_cargos` WRITE;
/*!40000 ALTER TABLE `ics_cargos` DISABLE KEYS */;
INSERT INTO `ics_cargos` VALUES (1,'Desconocido','1','2018-04-25 18:31:26');
/*!40000 ALTER TABLE `ics_cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_categoria_mensaje`
--

DROP TABLE IF EXISTS `ics_categoria_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_categoria_mensaje` (
  `idics_cate_mens` int(11) NOT NULL AUTO_INCREMENT,
  `Cat_Nombre_Categoria` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cat_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_cate_mens`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_categoria_mensaje`
--

LOCK TABLES `ics_categoria_mensaje` WRITE;
/*!40000 ALTER TABLE `ics_categoria_mensaje` DISABLE KEYS */;
INSERT INTO `ics_categoria_mensaje` VALUES (1,'Dispensadora','2014-07-10 23:11:55'),(2,'Venta','2014-07-10 23:11:55'),(3,'Orden de Recarga','2014-07-10 23:11:55'),(4,'Monedero','2014-10-06 19:18:06'),(5,'Billetero','2014-10-06 19:18:06');
/*!40000 ALTER TABLE `ics_categoria_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_centro_costos`
--

DROP TABLE IF EXISTS `ics_centro_costos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_centro_costos` (
  `idics_centro_costos` int(11) NOT NULL AUTO_INCREMENT,
  `cc_nombre` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cc_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cc_cl` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idics_centro_costos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_centro_costos`
--

LOCK TABLES `ics_centro_costos` WRITE;
/*!40000 ALTER TABLE `ics_centro_costos` DISABLE KEYS */;
INSERT INTO `ics_centro_costos` VALUES (1,'Desconocido','2018-04-25 18:31:32','1');
/*!40000 ALTER TABLE `ics_centro_costos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_clientes`
--

DROP TABLE IF EXISTS `ics_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_clientes` (
  `cli_id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cli_razon_social` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Razon social del cliente',
  `cli_nombre` varchar(160) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombre del cliente',
  `cli_documento` varchar(13) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Documento de identificación del cliente',
  `cli_celular` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Número de celular del clientes',
  `cli_direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cli_correo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Correo electronico del cliente',
  `cli_persona_contacto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cli_estado` int(11) DEFAULT '1',
  `cli_cod_verificacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `cli_telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `cli_ciudad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cli_departamento` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cli_numbodegas` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cli_numtrabajadores` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cli_pais` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`cli_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla donde se registran los clientes  del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_clientes`
--

LOCK TABLES `ics_clientes` WRITE;
/*!40000 ALTER TABLE `ics_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_conf_label`
--

DROP TABLE IF EXISTS `ics_conf_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_conf_label` (
  `cnf_id` int(11) NOT NULL,
  `cnf_identificador` varchar(45) DEFAULT NULL COMMENT 'Identificador del div o elemento contenedor del objeto.',
  `cnf_alias` varchar(100) DEFAULT NULL,
  `cnf_img` varchar(100) DEFAULT NULL COMMENT 'Ruta de la imagen.',
  `cnf_Administrador` int(11) DEFAULT NULL COMMENT 'Id proveniente de la variable de session del usuario administrador que crea un usuario operativo.',
  PRIMARY KEY (`cnf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Tabla en la que se almacena todos los cambios que un usuario administrador lleve a cabo en cuanto a la personalización de títulos dentro del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_conf_label`
--

LOCK TABLES `ics_conf_label` WRITE;
/*!40000 ALTER TABLE `ics_conf_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_conf_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_config_recarga`
--

DROP TABLE IF EXISTS `ics_config_recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_config_recarga` (
  `idics_config_Backup` int(11) NOT NULL AUTO_INCREMENT,
  `rec_tipo` int(11) DEFAULT NULL,
  `rec_estado` int(11) DEFAULT '1' COMMENT '0 -> mensual        [fecha de intalacion]\n1 -> Menual          [Todos los primeros] (1)\n2 -> Mensual        [ X al gusto del cliente] [2 - 31]\n3 -> Quincenal     [Fecha de instalacion]\n4 -> Quincenal     [Cda 15 dias] (15)\n5 -> Quincenal     [Gusto] \n6 -> Semanal       [Fecha de Instalacion]\n7 -> Semanal       [Lunes]  (1)\n8 -> Semanal       [X dia se la semna] (2-7)\n9 ->Diario            [1]',
  `rec_fecha` varchar(45) DEFAULT NULL COMMENT '      [fecha de intalacion]                  Mensual  \n      [Todos los primeros] (1)             Mensual   \n      [ X al gusto del cliente] [2 - 31]  Mensual     \n      [Fecha de instalacion]                 Quincenal\n      [Cda 15 dias] (15)                       Quincenal     \n      [Gusto]                                        Quincenal  \n      [Fecha de Instalacion]                 Semanal   \n      [Lunes]  (1)                                  Semanal \n      [X dia se la semna] (2-7)             Semanal  \n      [1]                                                Diario',
  `rec_estado_recarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`idics_config_Backup`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_config_recarga`
--

LOCK TABLES `ics_config_recarga` WRITE;
/*!40000 ALTER TABLE `ics_config_recarga` DISABLE KEYS */;
INSERT INTO `ics_config_recarga` VALUES (1,1,1,'1',1);
/*!40000 ALTER TABLE `ics_config_recarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_config_temp`
--

DROP TABLE IF EXISTS `ics_config_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_config_temp` (
  `idics_config_temp` int(11) NOT NULL AUTO_INCREMENT,
  `ctem_grados_tm` varchar(45) DEFAULT NULL,
  `ctem_disp` varchar(45) DEFAULT NULL,
  `ctem_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_config_temp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_config_temp`
--

LOCK TABLES `ics_config_temp` WRITE;
/*!40000 ALTER TABLE `ics_config_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_config_temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ics_config_temp_AINS` AFTER INSERT ON `ics_config_temp` FOR EACH ROW
begin
	
DECLARE dispensadora varchar(12);
	
DECLARE max_temp varchar(3);
	
Declare min_temp varchar(3);
	
DECLARE temp_act varchar(45);
	
Set dispensadora=new.ctem_disp;
	
set temp_act=new.ctem_grados_tm;
	
set max_temp=(select mmt_max_temp from ics_maxmin_temp where fk_mmt_id_disp=dispensadora and mmt_estado=1);
	
set min_temp=(select mmt_min_temp from ics_maxmin_temp where fk_mmt_id_disp=dispensadora and mmt_estado=1);
	
if temp_act<min_temp
		
then 
			
	Insert into ics_mensaje set fk_men_error='0004',fk_men_serial_maq=dispensadora,men_estado='1',men_detalle=Concat('C=',temp_act);
	
else if temp_act>=max_temp 
		
then
			
	Insert into ics_mensaje set fk_men_error='0004',fk_men_serial_maq=dispensadora,men_estado='1',men_detalle=Concat('C=',temp_act);
	
end if;

end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_config_transac`
--

DROP TABLE IF EXISTS `ics_config_transac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_config_transac` (
  `idct` int(11) NOT NULL AUTO_INCREMENT,
  `config_ntransacciones` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0',
  `config_valormax` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `config_maquina` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0',
  `config_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `config_est` int(11) DEFAULT '1',
  PRIMARY KEY (`idct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_config_transac`
--

LOCK TABLES `ics_config_transac` WRITE;
/*!40000 ALTER TABLE `ics_config_transac` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_config_transac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_config_tubos_monedero`
--

DROP TABLE IF EXISTS `ics_config_tubos_monedero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_config_tubos_monedero` (
  `id_conf_tub` int(11) NOT NULL AUTO_INCREMENT,
  `conf_denominacion` varchar(45) DEFAULT NULL,
  `conf_cantidad_min` varchar(45) DEFAULT '10' COMMENT 'Numero de monedas mínimas de esa denominación \npor defecto \n10 monedas por denominación\n',
  `conf_numero_de_tubos` varchar(45) DEFAULT NULL COMMENT 'Cantidad de tubos designados para almacenar x denominación de monedas\npor defecto\n 3 tubos de 500\n 1 tubo de 200\n 1 tubo de 100',
  `conf_dispensadora` varchar(45) DEFAULT NULL COMMENT 'SErial de la maqina',
  `conf_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_conf_tub`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_config_tubos_monedero`
--

LOCK TABLES `ics_config_tubos_monedero` WRITE;
/*!40000 ALTER TABLE `ics_config_tubos_monedero` DISABLE KEYS */;
INSERT INTO `ics_config_tubos_monedero` VALUES (1,'50','10','0','0000000022','2015-09-04 20:09:42'),(2,'100','10','1','0000000022','2015-09-04 20:09:42'),(3,'200','10','1','0000000022','2015-09-04 20:11:03'),(4,'500','10','3','0000000022','2015-09-04 20:11:03');
/*!40000 ALTER TABLE `ics_config_tubos_monedero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_configuracion_if`
--

DROP TABLE IF EXISTS `ics_configuracion_if`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_configuracion_if` (
  `cif_id_configuracion_if` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla',
  `cif_hora` varchar(4) NOT NULL COMMENT 'Hora que se envia a la interfaz',
  `cif_fecha` varchar(4) NOT NULL COMMENT 'Fecha que se envia a la interfaz',
  `cif_rev_firmware` varchar(45) NOT NULL COMMENT 'Revision del firmware que tiene la interfaz',
  `cif_primer_dia_semana` varchar(10) NOT NULL COMMENT 'Configuracion del primer día de la semana en la interfaz',
  `cif_fecha_sis` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en la cual se almacena el registro',
  `fk_cif_id_tinterfaz` varchar(10) NOT NULL COMMENT 'Llave foranea que identifica la interfaz',
  `cif_estado` int(1) DEFAULT '1',
  PRIMARY KEY (`cif_id_configuracion_if`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ics_configuracion_if = tabla donde se almacena la  configuracion de 1 ... n  interfaz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_configuracion_if`
--

LOCK TABLES `ics_configuracion_if` WRITE;
/*!40000 ALTER TABLE `ics_configuracion_if` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_configuracion_if` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_configuracion_maq`
--

DROP TABLE IF EXISTS `ics_configuracion_maq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_configuracion_maq` (
  `idics_configuracion_maq` int(11) NOT NULL AUTO_INCREMENT,
  `cmaq_fe` varchar(45) DEFAULT NULL,
  `cmaq_dec` varchar(45) DEFAULT NULL,
  `cmaq_serial` varchar(45) DEFAULT NULL,
  `cmaq_estado` varchar(45) DEFAULT NULL,
  `cmaq_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_configuracion_maq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_configuracion_maq`
--

LOCK TABLES `ics_configuracion_maq` WRITE;
/*!40000 ALTER TABLE `ics_configuracion_maq` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_configuracion_maq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_control_items`
--

DROP TABLE IF EXISTS `ics_control_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_control_items` (
  `cit_idcontrol` int(11) NOT NULL AUTO_INCREMENT COMMENT 'LLave primaria de la tabla en la cual se identifica el registro.',
  `cit_seleccion` varchar(4) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Seleccion de la cual se hace el control del item',
  `cit_itemrestante` varchar(2) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Cantidad de items restantes en la máquina de esa seleccion',
  `fk_cit_idplanometria` int(11) NOT NULL COMMENT 'Llave foranera que me permite realizar una relacion con la planometria',
  `fk_cit_iditem` int(11) NOT NULL COMMENT 'LLave foranea de item.',
  `fk_cit_idmaq` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Id (Serial de la máquina)',
  `cit_estado` int(11) DEFAULT '1',
  `cit_timestmp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cit_idcontrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Es la tabla donde se hace un control de inventarios (espejos de detalles de planimetrías)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_control_items`
--

LOCK TABLES `ics_control_items` WRITE;
/*!40000 ALTER TABLE `ics_control_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_control_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ics_instalador_v19`.`ics_control_items_AFTER_UPDATE` AFTER UPDATE ON `ics_control_items` FOR EACH ROW
BEGIN

DECLARE MIN varchar(45); -- minimo de espiral

DECLARE NPLAN VARCHAR(45);

SET NPLAN =(SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = new.fk_cit_idmaq AND pla_estado = 1 LIMIT 1);


SET MIN = (SELECT det_minimo_item FROM ics_detalle_plano WHERE det_pln_numero_seleccion = new.cit_seleccion AND fk_id_plano_det  = NPLAN);

IF NEW.cit_itemrestante = MIN THEN

	INSERT INTO ics_mensaje
	set 
	fk_men_error 		= '0016',
	fk_men_serial_maq 	= new.fk_cit_idmaq,
	men_detalle			= concat('espiral ', new.cit_seleccion ,' ', (SELECT i.ite_nom_item FROM ics_instalador_v19.ics_detalle_plano dp
join ics_item i on i.ite_id_item = dp.fk_id_item_det where dp.fk_id_plano_det =NPLAN and dp.det_pln_numero_seleccion =  new.cit_seleccion limit 1));

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_controlventas`
--

DROP TABLE IF EXISTS `ics_controlventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_controlventas` (
  `Cve_idControl` int(11) NOT NULL AUTO_INCREMENT,
  `Cve_IdUsuario` varchar(15) DEFAULT NULL COMMENT 'Identificación del usuario dentro de la operación',
  `Cve_Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo que  denota  la hora y fecha  en la cual ocurrió la inserción de un registro.',
  `Cve_Credito` varchar(45) DEFAULT NULL,
  `Cve_cl` varchar(45) DEFAULT NULL,
  `Cve_fecharec` datetime DEFAULT NULL,
  PRIMARY KEY (`Cve_idControl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla en la que se registra y  actualiza el  saldo del credito de un usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_controlventas`
--

LOCK TABLES `ics_controlventas` WRITE;
/*!40000 ALTER TABLE `ics_controlventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_controlventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_costo_inventario`
--

DROP TABLE IF EXISTS `ics_costo_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_costo_inventario` (
  `idics_costo_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `ics_costo` int(11) NOT NULL,
  `ics_nombre_creador` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ics_fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ics_maquina` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idics_costo_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_costo_inventario`
--

LOCK TABLES `ics_costo_inventario` WRITE;
/*!40000 ALTER TABLE `ics_costo_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_costo_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_departamentos`
--

DROP TABLE IF EXISTS `ics_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_departamentos` (
  `idics_departamentos` int(11) NOT NULL AUTO_INCREMENT,
  `de_nombre` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `de_cl` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `de_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_centro_costo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idics_departamentos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_departamentos`
--

LOCK TABLES `ics_departamentos` WRITE;
/*!40000 ALTER TABLE `ics_departamentos` DISABLE KEYS */;
INSERT INTO `ics_departamentos` VALUES (1,'Desconocido','1','2018-04-25 18:31:33','1');
/*!40000 ALTER TABLE `ics_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_det_mensaje`
--

DROP TABLE IF EXISTS `ics_det_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_det_mensaje` (
  `dme_id_det_mensaje` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica el registro',
  `dme_estado` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1' COMMENT 'El estado de activación del mensaje.\n\n1---> Activo\n0---> Inactivo',
  `fk_dme_serial_dispens` varchar(15) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Id del cliente que tiene activa el mensaje',
  `fk_dme_id_m_mensaje` int(11) NOT NULL COMMENT 'Llave foranea, se almacena el identificador del mensaje',
  PRIMARY KEY (`dme_id_det_mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla donde se almacena el detalle de cada mensaje y/o alerta , es decir cuáles son los mensajes que tiene configurados cada cliente.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_det_mensaje`
--

LOCK TABLES `ics_det_mensaje` WRITE;
/*!40000 ALTER TABLE `ics_det_mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_det_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_det_orden_kiosko`
--

DROP TABLE IF EXISTS `ics_det_orden_kiosko`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_det_orden_kiosko` (
  `idics_det_orden_kiosko` int(11) NOT NULL AUTO_INCREMENT,
  `dok_idorden` int(11) DEFAULT NULL,
  `dok_idproducto` varchar(45) DEFAULT NULL,
  `dok_estado` int(11) DEFAULT '0' COMMENT 'Estado de devolución',
  `dok_cl` int(11) DEFAULT NULL,
  `dok_idusuario` varchar(45) DEFAULT NULL,
  `dok_fecha_devolcion` datetime DEFAULT NULL,
  `dok_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_det_orden_kiosko`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_det_orden_kiosko`
--

LOCK TABLES `ics_det_orden_kiosko` WRITE;
/*!40000 ALTER TABLE `ics_det_orden_kiosko` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_det_orden_kiosko` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_det_orden_recarga`
--

DROP TABLE IF EXISTS `ics_det_orden_recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_det_orden_recarga` (
  `dor_id_det_ordn_recarga` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria de la tabla con la que se identifica el registro',
  `dor_cant_recargada` int(4) NOT NULL COMMENT 'Cantidad que fue recargada en la máquina.',
  `dor_difetencia_recarga` varchar(200) NOT NULL COMMENT 'Diferencia entre el ideal de recarga y la cantidad recargada\n`ics_det_ordencompra`.`doc_cantirecargar`- `ics_det_orden_recarga`.`dor_cant_recargada`\nMensaje () desde la interfaz',
  `fk_dor_orden_recarga` int(11) NOT NULL COMMENT 'Llave foranea que permite identificar la orgen de recarga a la que pertenece este detalle',
  `fk_dor_det_orden_compra` int(11) NOT NULL COMMENT 'LLave foranea que permite identificar a que detalle de orden de compra pertenece este detalle',
  PRIMARY KEY (`dor_id_det_ordn_recarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Detalle de la orden de recarga, donde se listan los ítems y el número de estos recargados  en cada espiral.	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_det_orden_recarga`
--

LOCK TABLES `ics_det_orden_recarga` WRITE;
/*!40000 ALTER TABLE `ics_det_orden_recarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_det_orden_recarga` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_det_or_recarga_contl_item_in` AFTER INSERT ON `ics_det_orden_recarga` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin

		declare cant_recargada int(4) ;
		declare seleccion int(2);
		declare id_item int(11);
		declare id_maq varchar(10);
		declare orden_compra int(11);
		declare idcontrol int;
		declare itac int;
		declare cant_recargadaf int;
	
		set cant_recargada=new.dor_cant_recargada;
		set orden_compra = new.fk_dor_det_orden_compra;
-- selecciona el numero de seleccion 
		set seleccion = (select sele from vis_ics_oco_doc
							where id_detalle_oc=orden_compra);
-- selecciona el id del item 	
		set id_item=  (select iditem from vis_ics_oco_doc
							where id_detalle_oc=orden_compra);
-- selecciona el id de la maquina 
		set id_maq=(select serialmaq from vis_ics_oco_doc
							where id_detalle_oc=orden_compra);
-- Llave primaria id control de items		
		set idcontrol= (select idcontro from vis_ics_item_restante 
				where maq=id_maq and selec= seleccion);
-- selecciona los items actuales dependiendo de un id de  control de item		
		set itac= (select cit_itemrestante from ics_control_items 
				where cit_idcontrol= idcontrol);
-- suma la cantidad de items recargados y los items actuales
		set cant_recargadaf = (cant_recargada+itac);
-- Después de insertar los datos de una orden de recarga,
-- (inmediatamente después de recargar una dispensadora), 
-- se dispara el trigger que actualiza la tabla control de ítems por medio del sp->.
		call sp_ics_control_up(idcontrol,cant_recargadaf);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_det_ordencompra`
--

DROP TABLE IF EXISTS `ics_det_ordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_det_ordencompra` (
  `doc_iddetalleoc` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica el registro',
  `doc_numseleccion` int(2) NOT NULL COMMENT 'Numero de la seleccion que se debe recargar',
  `doc_cantirecargar` int(11) NOT NULL COMMENT 'Cantidad de productos que hay que recargar',
  `fk_doc_iditem` varchar(45) NOT NULL COMMENT 'Llave foranea de los items',
  `fk_doc_orden_compra` int(11) DEFAULT NULL,
  PRIMARY KEY (`doc_iddetalleoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Aquí se registran los detalles de las ordenes de compra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_det_ordencompra`
--

LOCK TABLES `ics_det_ordencompra` WRITE;
/*!40000 ALTER TABLE `ics_det_ordencompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_det_ordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_deta_perfil`
--

DROP TABLE IF EXISTS `ics_deta_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_deta_perfil` (
  `det_id_deta_perfil` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que permite identificar el registro',
  `fk_det_id_item` int(11) NOT NULL COMMENT 'Seleccion a la cual tiene permiso ese usuario',
  `det_cantidades` varchar(45) NOT NULL COMMENT 'Cantidades que puede sacar ese usuario de esa máquina\ne ilm para selecciones ilimitadas ',
  `fk_det_id_perf` int(11) NOT NULL COMMENT 'Llave forenea que me identifica el perfil que estoy asignando',
  `det_tiempodispen` int(4) NOT NULL COMMENT 'Campo donde se almacena el tiempo que debe pasar entre dispensacion y dispensacion',
  PRIMARY KEY (`det_id_deta_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Tabla que almacena el detalle de cada uno de los perfiles registrados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_deta_perfil`
--

LOCK TABLES `ics_deta_perfil` WRITE;
/*!40000 ALTER TABLE `ics_deta_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_deta_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_detalle_firmware`
--

DROP TABLE IF EXISTS `ics_detalle_firmware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_detalle_firmware` (
  `dfi_id_detalle_firmware` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica el registro',
  `dfi_tipo_detalle` varchar(45) DEFAULT NULL COMMENT 'Definicion del tipo de detalle de firmaware\n\nActualización\nNuevo',
  `dfi_descripcion` varchar(260) DEFAULT NULL COMMENT 'Descripcion del detalle',
  `dfi_realizado_por` varchar(45) DEFAULT NULL COMMENT 'Quien realizo este cambio en la tarjeta',
  `fk_dfi_id_firmware` int(11) NOT NULL COMMENT 'Llave foranea que me identifica el firmware ala que pertenece este detalle',
  PRIMARY KEY (`dfi_id_detalle_firmware`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Tabla donde se almacena el detalle y la descripción detallada  del firmware de una tarjeta.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_detalle_firmware`
--

LOCK TABLES `ics_detalle_firmware` WRITE;
/*!40000 ALTER TABLE `ics_detalle_firmware` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_detalle_firmware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_detalle_plano`
--

DROP TABLE IF EXISTS `ics_detalle_plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_detalle_plano` (
  `det_pln_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave principal donde se identifica cada registro',
  `det_pln_id_seleccion` int(3) DEFAULT NULL COMMENT 'Identificador consecutivo  del espiral. ',
  `det_pln_numero_seleccion` int(3) NOT NULL COMMENT 'Numero de la seleccion.',
  `det_maximo_item` int(4) NOT NULL COMMENT 'Maximo de items que se puede ingresar en esta seleccion',
  `det_minimo_item` int(2) NOT NULL COMMENT 'Minimo o cantidad critica de items que puede tener esta seleccion antes de que se agoten',
  `fk_id_item_det` int(11) NOT NULL COMMENT 'Llave foranea que me permite identicar el item que tengo en ese espiral de planometira',
  `fk_id_plano_det` int(11) NOT NULL COMMENT 'llave foranea que me permite saber a que perfil se le asigna el usuairo',
  `det_pln_precio` varchar(245) DEFAULT '0',
  PRIMARY KEY (`det_pln_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='\n1.	Tabla donde se almacenan los detalles de  las planimetrías registradas. Es decir el número de selecciones, ítems, capacidades de almacenamiento en espirales.\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_detalle_plano`
--

LOCK TABLES `ics_detalle_plano` WRITE;
/*!40000 ALTER TABLE `ics_detalle_plano` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_detalle_plano` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Userics`@`%`*/ /*!50003 TRIGGER `ics_instalador_v19`.`ics_detalle_plano_AFTER_UPDATE` AFTER UPDATE ON `ics_detalle_plano` FOR EACH ROW
BEGIN

DECLARE DISPENSADORA VARCHAR(15);
SET DISPENSADORA = (SELECT Fk_pla_id_maq FROM ics_maq_planometria ORDER BY id_us_pl DESC LIMIT 1);

if new.det_maximo_item<(select cit_itemrestante from ics_control_items where cit_seleccion = new.det_pln_numero_seleccion  
and fk_cit_idplanometria = new.fk_id_plano_det  and cit_estado =1 AND fk_cit_idmaq = DISPENSADORA)
then

	UPDATE ics_control_items SET cit_itemrestante = new.det_maximo_item WHERE cit_seleccion = new.det_pln_numero_seleccion  
and fk_cit_idplanometria = new.fk_id_plano_det  and cit_estado =1 AND fk_cit_idmaq = DISPENSADORA;

end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_dispositivos`
--

DROP TABLE IF EXISTS `ics_dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_dispositivos` (
  `idics_dispositivos` int(11) NOT NULL AUTO_INCREMENT,
  `dis_nombre` varchar(45) DEFAULT NULL COMMENT '1	Billetero \n2	Monedero\n3	Puerta',
  PRIMARY KEY (`idics_dispositivos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_dispositivos`
--

LOCK TABLES `ics_dispositivos` WRITE;
/*!40000 ALTER TABLE `ics_dispositivos` DISABLE KEYS */;
INSERT INTO `ics_dispositivos` VALUES (1,'Billetero '),(2,'Monedero'),(3,'Puerta'),(4,'Dispensadora');
/*!40000 ALTER TABLE `ics_dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_estado_autorizacion`
--

DROP TABLE IF EXISTS `ics_estado_autorizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_estado_autorizacion` (
  `idics_estado_autorizacion` int(11) NOT NULL AUTO_INCREMENT,
  `aut_usr` varchar(45) DEFAULT NULL,
  `aut_estado` varchar(65) DEFAULT '1' COMMENT '1 autorizado ',
  `aut_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aut_cl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_estado_autorizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_estado_autorizacion`
--

LOCK TABLES `ics_estado_autorizacion` WRITE;
/*!40000 ALTER TABLE `ics_estado_autorizacion` DISABLE KEYS */;
INSERT INTO `ics_estado_autorizacion` VALUES (1,'002601','Updating2015-02-2512:22:15','2015-02-25 17:22:15','1'),(2,'003601','Updating2015-02-2622:34:36','2015-02-27 03:34:36','1'),(3,'004601','Updating2015-02-2708:43:04','2015-02-27 13:43:04','1'),(4,'005601','Updating2015-02-2623:41:17','2015-02-27 04:41:17','1'),(5,'006601','Updating2015-02-2414:48:16','2015-02-24 19:48:16','1'),(6,'007901','Updating2015-02-2616:39:25','2015-02-26 21:39:25','1'),(7,'008601','Updating2015-02-2521:56:58','2015-02-26 02:56:58','1'),(8,'009301','Updating2015-02-2616:13:13','2015-02-26 21:13:13','1'),(9,'010601','1','2015-02-10 20:02:38','1'),(10,'011601','Updating2015-02-2616:12:57','2015-02-26 21:12:57','1'),(11,'012601','1','2015-02-10 20:02:38','1'),(12,'013601','Updating2015-02-2616:05:07','2015-02-26 21:05:07','1'),(13,'014601','Updating2015-02-2618:19:39','2015-02-26 23:19:39','1'),(14,'015601','Updating2015-02-2611:14:55','2015-02-26 16:14:55','1'),(15,'016601','Updating2015-02-2613:53:17','2015-02-26 18:53:17','1'),(16,'017601','Updating2015-02-2615:50:44','2015-02-26 20:50:44','1'),(17,'018601','Updating2015-02-2618:36:35','2015-02-26 23:36:35','1'),(18,'019601','Updating2015-02-2615:06:34','2015-02-26 20:06:34','1'),(19,'020601','1','2015-02-10 20:02:38','1'),(20,'021601','Updating2015-02-2616:06:35','2015-02-26 21:06:35','1'),(21,'022601','Updating2015-02-2611:10:11','2015-02-26 16:10:11','1'),(22,'023601','Updating2015-02-2611:02:57','2015-02-26 16:02:57','1'),(23,'024601','1','2015-02-10 20:02:38','1'),(24,'025601','Updating2015-02-2613:56:24','2015-02-26 18:56:24','1'),(25,'026601','Updating2015-02-2611:02:43','2015-02-26 16:02:43','1'),(26,'027601','Updating2015-02-2614:04:10','2015-02-26 19:04:10','1'),(27,'028601','Updating2015-02-2611:04:02','2015-02-26 16:04:02','1'),(28,'029601','1','2015-02-10 20:02:38','1'),(29,'030601','Updating2015-07-2711:13:14','2015-07-27 16:13:14','1'),(30,'031601','Updating2015-02-2611:04:21','2015-02-26 16:04:21','1'),(31,'032601','Updating2015-02-2514:47:20','2015-02-25 19:47:20','1'),(32,'033601','Updating2015-02-2616:38:25','2015-02-26 21:38:25','1'),(33,'034601','1','2015-02-10 20:02:38','1'),(34,'035601','Updating2015-02-2617:17:43','2015-02-26 22:17:43','1'),(35,'036601','Updating2015-02-2616:05:41','2015-02-26 21:05:41','1'),(36,'037601','Updating2015-02-2523:25:11','2015-02-26 04:25:11','1'),(37,'038601','Updating2015-02-2622:09:47','2015-02-27 03:09:47','1'),(38,'039601','1','2015-02-10 20:02:38','1'),(39,'040601','Updating2015-02-2617:18:01','2015-02-26 22:18:01','1'),(40,'041601','Updating2015-02-2611:10:33','2015-02-26 16:10:33','1'),(41,'042601','Updating2015-02-2611:04:36','2015-02-26 16:04:36','1'),(42,'043601','Updating2015-02-2615:47:45','2015-02-26 20:47:45','1'),(43,'044601','Updating2015-02-2616:12:42','2015-02-26 21:12:42','1'),(44,'045601','Updating2015-02-2611:05:14','2015-02-26 16:05:14','1'),(45,'046601','Updating2015-02-2611:09:41','2015-02-26 16:09:41','1'),(46,'047601','1','2015-02-10 20:02:38','1'),(47,'048601','Updating2015-02-2613:56:43','2015-02-26 18:56:43','1'),(48,'049601','Updating2015-02-2611:16:02','2015-02-26 16:16:02','1'),(49,'050601','Updating2015-02-2611:19:30','2015-02-26 16:19:30','1'),(50,'051301','Updating2015-02-2611:15:46','2015-02-26 16:15:46','1'),(51,'052601','Updating2015-02-2622:03:00','2015-02-27 03:03:00','1'),(52,'053601','Updating2015-02-2320:42:05','2015-02-24 01:42:05','1'),(53,'054601','Updating2015-02-2621:41:27','2015-02-27 02:41:27','1'),(54,'055601','Updating2015-02-2616:57:42','2015-02-26 21:57:42','1'),(55,'056601','Updating2015-02-2615:56:46','2015-02-26 20:56:46','1'),(56,'057301','Updating2015-02-2615:33:34','2015-02-26 20:33:34','1'),(57,'058601','Updating2015-02-2612:13:53','2015-02-26 17:13:53','1'),(58,'059601','1','2015-02-10 20:02:38','1'),(59,'060601','Updating2015-02-2706:53:28','2015-02-27 11:53:28','1'),(60,'061601','Updating2015-02-2614:06:49','2015-02-26 19:06:49','1'),(61,'062601','Updating2015-02-2612:18:27','2015-02-26 17:18:27','1'),(62,'063601','Updating2015-02-2614:06:06','2015-02-26 19:06:06','1'),(63,'064601','Updating2015-02-2617:01:28','2015-02-26 22:01:28','1'),(64,'065601','Updating2015-02-2615:10:34','2015-02-26 20:10:34','1'),(65,'066601','Updating2015-02-2121:06:30','2015-02-22 02:06:30','1'),(66,'067601','Updating2015-02-2615:07:36','2015-02-26 20:07:36','1'),(67,'068601','1','2015-02-10 20:02:38','1'),(68,'069601','1','2015-02-10 20:02:38','1'),(69,'070601','Updating2015-02-2612:21:46','2015-02-26 17:21:46','1'),(70,'071601','Updating2015-02-2611:23:24','2015-02-26 16:23:24','1'),(71,'072601','Updating2015-02-2614:02:30','2015-02-26 19:02:30','1'),(72,'073601','Updating2015-02-2708:42:43','2015-02-27 13:42:43','1'),(73,'074601','Updating2015-02-2706:08:08','2015-02-27 11:08:08','1'),(74,'075601','Updating2015-02-2611:55:35','2015-02-26 16:55:35','1'),(75,'076601','Updating2015-02-2612:42:58','2015-02-26 17:42:58','1'),(76,'077601','Updating2015-02-2414:09:47','2015-02-24 19:09:47','1'),(77,'078601','Updating2015-02-2623:18:52','2015-02-27 04:18:52','1'),(78,'079601','1','2015-02-10 20:02:38','1'),(79,'080601','Updating2015-02-2612:18:08','2015-02-26 17:18:08','1'),(80,'081601','1','2015-02-10 20:02:38','1'),(81,'082601','Updating2015-02-2614:08:53','2015-02-26 19:08:53','1'),(82,'083601','Updating2015-02-1405:58:39','2015-02-14 10:58:39','1'),(83,'084601','1','2015-02-10 20:02:38','1'),(84,'085601','Updating2015-02-2610:33:07','2015-02-26 15:33:07','1'),(85,'086601','Updating2015-02-1815:14:36','2015-02-18 20:14:36','1'),(86,'087601','1','2015-02-10 20:02:38','1'),(87,'088601','Updating2015-02-2613:57:55','2015-02-26 18:57:55','1'),(88,'089601','Updating2015-02-2614:07:10','2015-02-26 19:07:10','1'),(89,'090601','1','2015-02-10 20:02:38','1'),(90,'091601','Updating2015-02-2611:03:48','2015-02-26 16:03:48','1'),(91,'092601','Updating2015-02-2614:06:26','2015-02-26 19:06:26','1'),(92,'093601','Updating2015-02-1812:20:39','2015-02-18 17:20:39','1'),(93,'094601','Updating2015-02-2622:34:58','2015-02-27 03:34:58','1'),(94,'095601','Updating2015-02-2615:58:28','2015-02-26 20:58:28','1'),(95,'096601','Updating2015-02-2617:03:10','2015-02-26 22:03:10','1'),(96,'097601','Updating2015-02-2614:00:18','2015-02-26 19:00:18','1'),(97,'098601','Updating2015-02-1715:49:21','2015-02-17 20:49:21','1'),(98,'099601','Updating2015-02-1715:50:10','2015-02-17 20:50:10','1'),(99,'100601','Updating2015-08-0309:57:37','2015-08-03 14:57:37','1'),(100,'101601','Updating2015-02-2621:59:09','2015-02-27 02:59:09','1'),(101,'102601','Updating2015-02-2614:16:28','2015-02-26 19:16:28','1'),(102,'103601','Updating2015-02-2611:56:12','2015-02-26 16:56:12','1'),(103,'104601','Updating2015-02-2623:20:14','2015-02-27 04:20:14','1'),(104,'105601','Updating2015-02-2611:03:28','2015-02-26 16:03:28','1'),(105,'106601','Updating2015-02-2616:04:14','2015-02-26 21:04:14','1'),(106,'107601','Updating2015-02-2612:50:30','2015-02-26 17:50:30','1'),(107,'108601','Updating2015-02-2616:07:43','2015-02-26 21:07:43','1'),(108,'109601','1','2015-02-10 20:02:38','1'),(109,'110601','Updating2015-02-2700:41:53','2015-02-27 05:41:53','1'),(110,'111601','Updating2015-02-2621:33:37','2015-02-27 02:33:37','1'),(111,'112601','Updating2015-02-2706:06:24','2015-02-27 11:06:24','1'),(112,'113601','Updating2015-02-2621:58:16','2015-02-27 02:58:16','1'),(113,'114601','Updating2015-02-2706:06:42','2015-02-27 11:06:42','1'),(114,'115601','Updating2015-02-2623:22:49','2015-02-27 04:22:49','1'),(115,'116601','Updating2015-02-2615:16:59','2015-02-26 20:16:59','1'),(116,'117601','Updating2015-02-2410:43:19','2015-02-24 15:43:19','1'),(117,'118601','Updating2015-02-2623:39:34','2015-02-27 04:39:34','1'),(118,'119601','Updating2015-02-1811:06:59','2015-02-18 16:06:59','1'),(119,'120601','Updating2015-02-2611:11:17','2015-02-26 16:11:17','1'),(120,'121601','Updating2015-02-2611:06:45','2015-02-26 16:06:45','1'),(121,'122601','Updating2015-02-2611:46:04','2015-02-26 16:46:04','1'),(122,'123601','Updating2015-02-1816:15:00','2015-02-18 21:15:00','1'),(123,'124601','1','2015-02-10 20:02:38','1'),(124,'125601','Updating2015-02-2513:06:07','2015-02-25 18:06:07','1'),(125,'126601','Updating2015-02-1817:46:38','2015-02-18 22:46:38','1'),(126,'127601','Updating2015-02-2609:32:30','2015-02-26 14:32:30','1'),(127,'128601','Updating2015-02-2616:02:44','2015-02-26 21:02:44','1'),(128,'129601','Updating2015-02-2611:53:45','2015-02-26 16:53:45','1'),(129,'130601','Updating2015-02-1015:59:18','2015-02-10 20:59:18','1'),(130,'131601','Updating2015-02-2611:07:02','2015-02-26 16:07:02','1'),(131,'132601','Updating2015-02-2610:30:48','2015-02-26 15:30:48','1'),(132,'133001','Updating2015-02-2615:10:01','2015-02-26 20:10:01','1'),(133,'143501','Updating2015-02-2509:22:13','2015-02-25 14:22:13','1'),(134,'142601','Updating2015-02-2621:53:32','2015-02-27 02:53:32','1'),(135,'134601','Updating2015-02-2611:09:55','2015-02-26 16:09:55','1'),(136,'141601','Updating2015-02-2620:03:02','2015-02-27 01:03:02','1'),(137,'135601','Updating2015-02-2616:06:08','2015-02-26 21:06:08','1'),(138,'136601','Updating2015-02-2615:45:10','2015-02-26 20:45:10','1'),(139,'140601','Updating2015-02-2622:47:46','2015-02-27 03:47:46','1'),(140,'137601','Updating2015-02-2615:44:17','2015-02-26 20:44:17','1'),(141,'139601','Updating2015-02-2616:36:59','2015-02-26 21:36:59','1'),(142,'138601','Updating2015-02-2617:38:50','2015-02-26 22:38:50','1'),(143,'888601','1','2015-02-10 20:02:38','1'),(144,'144601','1','2015-02-10 20:02:38','1'),(145,'145601','Updating2015-02-2609:35:46','2015-02-26 14:35:46','1'),(146,'146601','Updating2015-02-2609:49:49','2015-02-26 14:49:49','1'),(147,'147601','Updating2015-02-2612:38:15','2015-02-26 17:38:15','1'),(148,'148601','Updating2015-02-2614:07:55','2015-02-26 19:07:55','1'),(149,'149601','Updating2015-02-1810:33:58','2015-02-18 15:33:58','1'),(150,'150601','Updating2015-02-2612:55:24','2015-02-26 17:55:24','1'),(151,'151601','Updating2015-02-2612:55:35','2015-02-26 17:55:35','1'),(152,'152601','Updating2015-02-2512:28:36','2015-02-25 17:28:36','1'),(153,'153601','Updating2015-02-2613:54:00','2015-02-26 18:54:00','1'),(154,'154601','Updating2015-02-2612:22:15','2015-02-26 17:22:15','1'),(155,'155601','Updating2015-02-2622:21:24','2015-02-27 03:21:24','1'),(156,'156601','Updating2015-02-2618:23:21','2015-02-26 23:23:21','1'),(157,'157601','Updating2015-02-2612:50:52','2015-02-26 17:50:52','1'),(158,'158601','Updating2015-02-2612:51:42','2015-02-26 17:51:42','1'),(159,'159601','Updating2015-02-2612:52:02','2015-02-26 17:52:02','1'),(160,'160601','Updating2015-02-2411:08:32','2015-02-24 16:08:32','1'),(161,'161601','1','2015-02-10 20:02:38','1'),(162,'162601','Updating2015-02-2614:19:44','2015-02-26 19:19:44','1'),(163,'163601','Updating2015-02-2616:32:02','2015-02-26 21:32:02','1'),(164,'164601','1','2015-02-10 20:02:38','1'),(165,'165601','1','2015-02-10 20:02:38','1'),(166,'171601','Updating2015-02-2522:28:07','2015-02-26 03:28:07','1'),(167,'170601','1','2015-02-10 20:02:38','1'),(168,'169601','Updating2015-02-2614:02:11','2015-02-26 19:02:11','1'),(169,'168601','Updating2015-02-2308:12:28','2015-02-23 13:12:28','1'),(170,'167601','Updating2015-02-2613:38:05','2015-02-26 18:38:05','1'),(171,'166601','Updating2015-02-2012:59:19','2015-02-20 17:59:19','1'),(172,'172601','Updating2015-02-2616:19:16','2015-02-26 21:19:16','1'),(173,'173601','1','2015-02-10 20:02:38','1'),(174,'174301','Updating2015-02-1713:09:14','2015-02-17 18:09:14','1'),(175,'175601','1','2015-02-10 20:02:38','1'),(176,'176601','Updating2015-02-2315:26:37','2015-02-23 20:26:37','1'),(177,'177601','Updating2015-02-2616:27:00','2015-02-26 21:27:00','1'),(178,'178601','1','2015-02-10 20:02:38','1'),(179,'889601','1','2015-02-10 20:02:38','1'),(180,'180601','1','2015-02-10 20:02:38','1'),(181,'001602','Updating2015-02-2611:56:01','2015-02-26 16:56:01','1'),(182,'002602','Updating2015-02-2515:48:12','2015-02-25 20:48:12','1'),(183,'003602','Updating2015-02-2702:50:03','2015-02-27 07:50:03','1'),(184,'004602','1','2015-02-10 20:02:38','1'),(185,'005602','1','2015-02-10 20:02:38','1'),(186,'006602','Updating2015-02-2615:56:10','2015-02-26 20:56:10','1'),(187,'007602','Updating2015-02-2611:47:01','2015-02-26 16:47:01','1'),(188,'008602','Updating2015-02-2708:24:40','2015-02-27 13:24:40','1'),(189,'009602','1','2015-02-10 20:02:38','1'),(190,'010602','Updating2015-02-2707:10:01','2015-02-27 12:10:01','1'),(191,'011602','Updating2015-02-2709:09:13','2015-02-27 14:09:13','1'),(192,'012602','Updating2015-02-2707:19:05','2015-02-27 12:19:05','1'),(193,'013602','1','2015-02-10 20:02:38','1'),(194,'014602','Updating2015-02-1715:40:14','2015-02-17 20:40:14','1'),(195,'015602','1','2015-02-10 20:02:38','1'),(196,'016602','Updating2015-02-2606:04:07','2015-02-26 11:04:07','1'),(197,'017602','Updating2015-02-2411:58:04','2015-02-24 16:58:04','1'),(198,'018602','Updating2015-02-2616:03:39','2015-02-26 21:03:39','1'),(199,'019602','Updating2015-02-2613:15:06','2015-02-26 18:15:06','1'),(200,'020602','Updating2015-02-2513:48:04','2015-02-25 18:48:04','1'),(201,'021602','Updating2015-02-2616:03:16','2015-02-26 21:03:16','1'),(202,'022602','Updating2015-02-2703:08:01','2015-02-27 08:08:01','1'),(203,'023602','1','2015-02-10 20:02:38','1'),(204,'024602','Updating2015-02-2621:05:59','2015-02-27 02:05:59','1'),(205,'025602','Updating2015-02-2706:15:51','2015-02-27 11:15:51','1'),(206,'026602','1','2015-02-10 20:02:38','1'),(207,'027602','Updating2015-02-2501:38:15','2015-02-25 06:38:15','1'),(208,'028602','Updating2015-02-2616:26:30','2015-02-26 21:26:30','1'),(209,'029602','Updating2015-02-2621:46:14','2015-02-27 02:46:14','1'),(210,'030602','Updating2015-02-2706:02:37','2015-02-27 11:02:37','1'),(211,'031602','Updating2015-02-2615:08:20','2015-02-26 20:08:20','1'),(212,'032602','Updating2015-02-2623:16:05','2015-02-27 04:16:05','1'),(213,'033602','Updating2015-02-2621:10:56','2015-02-27 02:10:56','1'),(214,'034602','Updating2015-02-2621:50:51','2015-02-27 02:50:51','1'),(215,'035602','Updating2015-02-2617:02:52','2015-02-26 22:02:52','1'),(216,'036602','Updating2015-02-2706:13:17','2015-02-27 11:13:17','1'),(217,'037602','Updating2015-02-2612:52:22','2015-02-26 17:52:22','1'),(218,'038602','Updating2015-02-2621:39:28','2015-02-27 02:39:28','1'),(219,'039602','Updating2015-02-2613:58:43','2015-02-26 18:58:43','1'),(220,'040602','Updating2015-02-2611:33:00','2015-02-26 16:33:00','1'),(221,'041602','Updating2015-02-2513:51:58','2015-02-25 18:51:58','1'),(222,'042602','Updating2015-02-2705:53:34','2015-02-27 10:53:34','1'),(223,'043602','Updating2015-02-2623:47:12','2015-02-27 04:47:12','1'),(224,'044602','Updating2015-02-2706:55:01','2015-02-27 11:55:01','1'),(225,'045602','Updating2015-02-2610:10:59','2015-02-26 15:10:59','1'),(226,'046602','Updating2015-02-2613:37:27','2015-02-26 18:37:27','1'),(227,'047602','Updating2015-02-2615:49:07','2015-02-26 20:49:07','1'),(228,'048602','Updating2015-02-2612:53:57','2015-02-26 17:53:57','1'),(229,'049602','Updating2015-02-2616:52:04','2015-02-26 21:52:04','1'),(230,'050602','1','2015-02-10 20:02:38','1'),(231,'051602','Updating2015-02-2611:03:52','2015-02-26 16:03:52','1'),(232,'052602','Updating2015-02-2611:01:16','2015-02-26 16:01:16','1'),(233,'053602','Updating2015-02-2708:31:32','2015-02-27 13:31:32','1'),(234,'054302','1','2015-02-10 20:02:38','1'),(235,'055602','Updating2015-02-2611:27:38','2015-02-26 16:27:38','1'),(236,'056602','Updating2015-02-2609:28:20','2015-02-26 14:28:20','1'),(237,'057602','Updating2015-02-2512:42:09','2015-02-25 17:42:09','1'),(238,'058602','Updating2015-02-2616:01:50','2015-02-26 21:01:50','1'),(239,'059602','Updating2015-02-2708:30:03','2015-02-27 13:30:03','1'),(240,'060602','1','2015-02-10 20:02:38','1'),(241,'061602','Updating2015-02-2616:17:20','2015-02-26 21:17:20','1'),(242,'062602','Updating2015-02-2317:59:59','2015-02-23 22:59:59','1'),(243,'063602','1','2015-02-10 20:02:38','1'),(244,'064602','1','2015-02-10 20:02:38','1'),(245,'065602','1','2015-02-10 20:02:38','1'),(246,'066602','Updating2015-02-2623:17:00','2015-02-27 04:17:00','1'),(247,'067602','Updating2015-02-2611:45:00','2015-02-26 16:45:00','1'),(248,'068602','Updating2015-02-2707:18:18','2015-02-27 12:18:18','1'),(249,'069602','Updating2015-02-2707:56:16','2015-02-27 12:56:16','1'),(250,'070602','Updating2015-02-2615:56:43','2015-02-26 20:56:43','1'),(251,'071602','1','2015-02-10 20:02:38','1'),(252,'072602','Updating2015-02-2622:35:21','2015-02-27 03:35:21','1'),(253,'073602','Updating2015-02-2709:00:30','2015-02-27 14:00:30','1'),(254,'074602','1','2015-02-10 20:02:38','1'),(255,'075602','Updating2015-02-2616:04:45','2015-02-26 21:04:45','1'),(256,'076602','Updating2015-02-2708:59:01','2015-02-27 13:59:01','1'),(257,'077602','Updating2015-02-2615:47:21','2015-02-26 20:47:21','1'),(258,'078602','Updating2015-02-2615:03:50','2015-02-26 20:03:50','1'),(259,'079602','Updating2015-02-2613:57:26','2015-02-26 18:57:26','1'),(260,'080602','Updating2015-02-2615:55:15','2015-02-26 20:55:15','1'),(261,'081602','Updating2015-02-2623:31:59','2015-02-27 04:31:59','1'),(262,'082602','Updating2015-02-1409:52:07','2015-02-14 14:52:07','1'),(263,'083602','Updating2015-02-2614:00:34','2015-02-26 19:00:34','1'),(264,'084602','Updating2015-02-2613:26:01','2015-02-26 18:26:01','1'),(265,'085302','1','2015-02-10 20:02:38','1'),(266,'086602','Updating2015-02-2621:52:10','2015-02-27 02:52:10','1'),(267,'087602','Updating2015-02-2705:50:25','2015-02-27 10:50:25','1'),(268,'088602','Updating2015-02-2621:53:22','2015-02-27 02:53:22','1'),(269,'089602','Updating2015-02-2411:34:50','2015-02-24 16:34:50','1'),(270,'090602','Updating2015-02-2609:47:50','2015-02-26 14:47:50','1'),(271,'091602','Updating2015-02-2423:52:18','2015-02-25 04:52:18','1'),(272,'092602','1','2015-02-10 20:02:38','1'),(273,'093602','1','2015-02-10 20:02:38','1'),(274,'094602','Updating2015-02-2611:10:40','2015-02-26 16:10:40','1'),(275,'095602','Updating2015-02-2611:29:36','2015-02-26 16:29:36','1'),(276,'096602','Updating2015-02-2708:02:23','2015-02-27 13:02:23','1'),(277,'097602','1','2015-02-10 20:02:38','1'),(278,'098602','Updating2015-02-2512:12:22','2015-02-25 17:12:22','1'),(279,'099602','Updating2015-02-2613:38:29','2015-02-26 18:38:29','1'),(280,'100602','Updating2015-02-2620:52:52','2015-02-27 01:52:52','1'),(281,'101602','Updating2015-02-2706:48:49','2015-02-27 11:48:49','1'),(282,'102602','Updating2015-02-2708:55:48','2015-02-27 13:55:48','1'),(283,'103602','Updating2015-02-2613:36:51','2015-02-26 18:36:51','1'),(284,'104602','1','2015-02-10 20:02:38','1'),(285,'105602','Updating2015-02-2708:57:24','2015-02-27 13:57:24','1'),(286,'106602','Updating2015-02-2616:47:41','2015-02-26 21:47:41','1'),(287,'107602','Updating2015-02-2613:54:21','2015-02-26 18:54:21','1'),(288,'108602','1','2015-02-10 20:02:38','1'),(289,'109602','Updating2015-02-2623:31:48','2015-02-27 04:31:48','1'),(290,'110602','Updating2015-02-2618:38:31','2015-02-26 23:38:31','1'),(291,'111602','Updating2015-02-2612:00:40','2015-02-26 17:00:40','1'),(292,'112602','Updating2015-02-2609:32:51','2015-02-26 14:32:51','1'),(293,'113602','Updating2015-02-2616:47:17','2015-02-26 21:47:17','1'),(294,'114602','Updating2015-02-2621:57:04','2015-02-27 02:57:04','1'),(295,'115602','Updating2015-02-2612:07:20','2015-02-26 17:07:20','1'),(296,'116602','Updating2015-02-2708:40:40','2015-02-27 13:40:40','1'),(297,'117602','Updating2015-02-2618:14:40','2015-02-26 23:14:40','1'),(298,'118602','Updating2015-02-2611:04:44','2015-02-26 16:04:44','1'),(299,'119602','Updating2015-02-2614:11:18','2015-02-26 19:11:18','1'),(300,'120602','Updating2015-02-2612:57:14','2015-02-26 17:57:14','1'),(301,'121602','Updating2015-02-2616:01:50','2015-02-26 21:01:50','1'),(302,'122602','Updating2015-02-2509:04:43','2015-02-25 14:04:43','1'),(303,'123602','1','2015-02-10 20:02:38','1'),(304,'124602','Updating2015-02-2608:52:21','2015-02-26 13:52:21','1'),(305,'125602','1','2015-02-10 20:02:38','1'),(306,'126302','1','2015-02-10 20:02:38','1'),(307,'127602','Updating2015-02-2623:37:07','2015-02-27 04:37:07','1'),(308,'128602','Updating2015-02-2523:48:31','2015-02-26 04:48:31','1'),(309,'129602','Updating2015-02-1615:25:55','2015-02-16 20:25:55','1'),(310,'130602','Updating2015-02-2614:48:38','2015-02-26 19:48:38','1'),(311,'131602','Updating2015-02-2613:58:02','2015-02-26 18:58:02','1'),(312,'132602','Updating2015-02-2611:57:07','2015-02-26 16:57:07','1'),(313,'133602','Updating2015-02-2704:00:04','2015-02-27 09:00:04','1'),(314,'134602','Updating2015-02-2311:46:14','2015-02-23 16:46:14','1'),(315,'135602','Updating2015-02-1620:54:37','2015-02-17 01:54:37','1'),(316,'136602','Updating2015-02-2513:44:49','2015-02-25 18:44:49','1'),(317,'137602','Updating2015-02-2602:09:47','2015-02-26 07:09:47','1'),(318,'138602','Updating2015-02-2614:38:23','2015-02-26 19:38:23','1'),(319,'139602','Updating2015-02-2612:19:38','2015-02-26 17:19:38','1'),(320,'140602','Updating2015-02-2704:13:10','2015-02-27 09:13:10','1'),(321,'141602','Updating2015-02-2707:16:54','2015-02-27 12:16:54','1'),(322,'142602','Updating2015-02-2708:08:16','2015-02-27 13:08:16','1'),(323,'143602','Updating2015-02-2416:51:46','2015-02-24 21:51:46','1'),(324,'144602','Updating2015-02-2622:10:54','2015-02-27 03:10:54','1'),(325,'145602','Updating2015-02-2611:12:16','2015-02-26 16:12:16','1'),(326,'146602','Updating2015-02-1513:37:06','2015-02-15 18:37:06','1'),(327,'147602','Updating2015-02-2613:55:54','2015-02-26 18:55:54','1'),(328,'148602','Updating2015-02-2520:39:33','2015-02-26 01:39:33','1'),(329,'149602','Updating2015-02-2610:53:13','2015-02-26 15:53:13','1'),(330,'150602','Updating2015-02-2512:25:37','2015-02-25 17:25:37','1'),(331,'151602','Updating2015-02-2613:45:36','2015-02-26 18:45:36','1'),(332,'152602','Updating2015-02-2705:32:28','2015-02-27 10:32:28','1'),(333,'153602','Updating2015-02-2613:40:26','2015-02-26 18:40:26','1'),(334,'154602','Updating2015-02-2309:08:10','2015-02-23 14:08:10','1'),(335,'155602','Updating2015-02-2708:56:40','2015-02-27 13:56:40','1'),(336,'156602','Updating2015-02-2611:48:56','2015-02-26 16:48:56','1'),(337,'157602','Updating2015-02-2609:09:40','2015-02-26 14:09:40','1'),(338,'158602','Updating2015-02-2707:11:11','2015-02-27 12:11:11','1'),(339,'159602','Updating2015-02-2612:53:30','2015-02-26 17:53:30','1'),(340,'160602','Updating2015-02-2613:54:20','2015-02-26 18:54:20','1'),(341,'161602','Updating2015-02-2615:26:14','2015-02-26 20:26:14','1'),(342,'162602','Updating2015-02-2518:37:14','2015-02-25 23:37:14','1'),(343,'163602','1','2015-02-10 20:02:38','1'),(344,'164602','Updating2015-02-2511:55:08','2015-02-25 16:55:08','1'),(345,'165602','1','2015-02-10 20:02:38','1'),(346,'166602','Updating2015-02-2513:42:14','2015-02-25 18:42:14','1'),(347,'167602','Updating2015-02-2513:06:10','2015-02-25 18:06:10','1'),(348,'168602','Updating2015-02-2609:27:18','2015-02-26 14:27:18','1'),(349,'169602','Updating2015-02-2605:55:41','2015-02-26 10:55:41','1'),(350,'170602','1','2015-02-10 20:02:38','1'),(351,'171602','Updating2015-02-2613:32:11','2015-02-26 18:32:11','1'),(352,'172602','Updating2015-02-2513:30:05','2015-02-25 18:30:05','1'),(353,'173602','Updating2015-02-2615:20:03','2015-02-26 20:20:03','1'),(354,'174602','Updating2015-02-2700:17:12','2015-02-27 05:17:12','1'),(355,'175602','Updating2015-02-2613:30:23','2015-02-26 18:30:23','1'),(356,'176602','Updating2015-02-2610:59:37','2015-02-26 15:59:37','1'),(357,'177602','Updating2015-02-2612:08:26','2015-02-26 17:08:26','1'),(358,'178602','Updating2015-02-2709:05:48','2015-02-27 14:05:48','1'),(359,'179602','Updating2015-02-2707:08:14','2015-02-27 12:08:14','1'),(360,'180602','Updating2015-02-2709:00:44','2015-02-27 14:00:44','1'),(361,'181602','1','2015-02-10 20:02:38','1'),(362,'182602','1','2015-02-10 20:02:38','1'),(363,'183602','Updating2015-02-2315:39:06','2015-02-23 20:39:06','1'),(364,'184602','Updating2015-02-2611:56:07','2015-02-26 16:56:07','1'),(365,'185602','Updating2015-02-2613:55:17','2015-02-26 18:55:17','1'),(366,'186602','Updating2015-02-2211:56:05','2015-02-22 16:56:05','1'),(367,'187602','1','2015-02-10 20:02:38','1'),(368,'188602','Updating2015-02-2615:11:39','2015-02-26 20:11:39','1'),(369,'189602','Updating2015-02-2614:12:58','2015-02-26 19:12:58','1'),(370,'190602','Updating2015-02-2610:07:52','2015-02-26 15:07:52','1'),(371,'191602','Updating2015-02-2615:27:07','2015-02-26 20:27:07','1'),(372,'192602','Updating2015-02-2621:40:08','2015-02-27 02:40:08','1'),(373,'193602','Updating2015-02-2611:29:09','2015-02-26 16:29:09','1'),(374,'194602','Updating2015-02-2708:16:07','2015-02-27 13:16:07','1'),(375,'195602','Updating2015-02-2611:39:15','2015-02-26 16:39:15','1'),(376,'196602','Updating2015-02-2708:03:07','2015-02-27 13:03:07','1'),(377,'197602','Updating2015-02-2617:14:40','2015-02-26 22:14:40','1'),(378,'198602','Updating2015-02-2615:28:17','2015-02-26 20:28:17','1'),(379,'199602','Updating2015-02-2613:43:10','2015-02-26 18:43:10','1'),(380,'200602','Updating2015-02-2623:40:11','2015-02-27 04:40:11','1'),(381,'201602','Updating2015-02-2615:22:43','2015-02-26 20:22:43','1'),(382,'202602','Updating2015-02-2517:59:28','2015-02-25 22:59:28','1'),(383,'203602','Updating2015-02-2611:47:32','2015-02-26 16:47:32','1'),(384,'204602','Updating2015-02-2611:07:35','2015-02-26 16:07:35','1'),(385,'205602','Updating2015-02-2417:19:38','2015-02-24 22:19:38','1'),(386,'206602','Updating2015-02-2511:13:45','2015-02-25 16:13:45','1'),(387,'207602','Updating2015-02-1916:08:02','2015-02-19 21:08:02','1'),(388,'208602','Updating2015-02-2411:53:02','2015-02-24 16:53:02','1'),(389,'209602','Updating2015-02-2709:01:40','2015-02-27 14:01:40','1'),(390,'210602','Updating2015-02-2521:09:32','2015-02-26 02:09:32','1'),(391,'211602','Updating2015-02-2707:31:27','2015-02-27 12:31:27','1'),(392,'212602','Updating2015-02-2615:48:32','2015-02-26 20:48:32','1'),(393,'213602','Updating2015-02-2618:52:02','2015-02-26 23:52:02','1'),(394,'214602','Updating2015-02-2607:17:20','2015-02-26 12:17:20','1'),(395,'215602','Updating2015-02-2707:13:36','2015-02-27 12:13:36','1'),(396,'216602','Updating2015-02-2615:16:05','2015-02-26 20:16:05','1'),(397,'217602','Updating2015-02-2610:55:57','2015-02-26 15:55:57','1'),(398,'218602','Updating2015-02-2322:00:06','2015-02-24 03:00:06','1'),(399,'219602','Updating2015-02-2413:22:21','2015-02-24 18:22:21','1'),(400,'220602','1','2015-02-10 20:02:38','1'),(401,'221602','Updating2015-02-2616:51:24','2015-02-26 21:51:24','1'),(402,'222602','Updating2015-02-2700:10:49','2015-02-27 05:10:49','1'),(403,'223602','Updating2015-02-2615:19:08','2015-02-26 20:19:08','1'),(404,'224602','Updating2015-02-2623:55:51','2015-02-27 04:55:51','1'),(405,'225602','Updating2015-02-2613:33:33','2015-02-26 18:33:33','1'),(406,'226602','1','2015-02-10 20:02:38','1'),(407,'227602','1','2015-02-10 20:02:38','1'),(408,'228602','Updating2015-02-2613:52:09','2015-02-26 18:52:09','1'),(409,'229602','Updating2015-02-2622:34:14','2015-02-27 03:34:14','1'),(410,'230602','Updating2015-02-2611:09:58','2015-02-26 16:09:58','1'),(411,'231602','Updating2015-02-2618:02:00','2015-02-26 23:02:00','1'),(412,'232602','Updating2015-02-2706:50:05','2015-02-27 11:50:05','1'),(413,'233602','Updating2015-02-2622:52:45','2015-02-27 03:52:45','1'),(414,'234602','Updating2015-02-2521:52:42','2015-02-26 02:52:42','1'),(415,'235602','Updating2015-02-1915:46:28','2015-02-19 20:46:28','1'),(416,'236602','1','2015-02-10 20:02:38','1'),(417,'237602','Updating2015-02-2523:47:33','2015-02-26 04:47:33','1'),(418,'238602','Updating2015-02-2707:24:19','2015-02-27 12:24:19','1'),(419,'239602','Updating2015-02-1815:56:23','2015-02-18 20:56:23','1'),(420,'240602','Updating2015-02-2709:09:55','2015-02-27 14:09:55','1'),(421,'241602','Updating2015-02-2621:44:02','2015-02-27 02:44:02','1'),(422,'242302','Updating2015-02-2614:42:47','2015-02-26 19:42:47','1'),(423,'243602','Updating2015-02-2213:33:45','2015-02-22 18:33:45','1'),(424,'244602','Updating2015-02-2516:09:11','2015-02-25 21:09:11','1'),(425,'245602','Updating2015-02-2611:19:50','2015-02-26 16:19:50','1'),(426,'246602','Updating2015-02-2618:17:05','2015-02-26 23:17:05','1'),(427,'247602','Updating2015-02-2609:17:14','2015-02-26 14:17:14','1'),(428,'248602','Updating2015-02-2615:00:08','2015-02-26 20:00:08','1'),(429,'249602','Updating2015-02-2623:36:02','2015-02-27 04:36:02','1'),(430,'250602','1','2015-02-10 20:02:38','1'),(431,'251602','Updating2015-02-2615:31:01','2015-02-26 20:31:01','1'),(432,'252602','Updating2015-02-2621:44:30','2015-02-27 02:44:30','1'),(433,'253602','Updating2015-02-2609:55:31','2015-02-26 14:55:31','1'),(434,'254602','Updating2015-02-2419:40:14','2015-02-25 00:40:14','1'),(435,'255602','Updating2015-02-2613:46:05','2015-02-26 18:46:05','1'),(436,'256602','Updating2015-02-2709:06:26','2015-02-27 14:06:26','1'),(437,'257602','1','2015-02-10 20:02:38','1'),(438,'258602','Updating2015-02-2612:05:33','2015-02-26 17:05:33','1'),(439,'259602','Updating2015-02-1410:40:38','2015-02-14 15:40:38','1'),(440,'260602','Updating2015-02-2707:45:08','2015-02-27 12:45:08','1'),(441,'261602','Updating2015-02-2611:14:11','2015-02-26 16:14:11','1'),(442,'262602','Updating2015-02-2622:02:27','2015-02-27 03:02:27','1'),(443,'263602','Updating2015-02-2612:10:50','2015-02-26 17:10:50','1'),(444,'264602','Updating2015-02-2613:06:15','2015-02-26 18:06:15','1'),(445,'265602','Updating2015-02-2619:29:37','2015-02-27 00:29:37','1'),(446,'266602','Updating2015-02-2614:54:47','2015-02-26 19:54:47','1'),(447,'267602','Updating2015-02-2605:53:11','2015-02-26 10:53:11','1'),(448,'268602','Updating2015-02-2611:38:19','2015-02-26 16:38:19','1'),(449,'269602','Updating2015-02-2704:28:52','2015-02-27 09:28:52','1'),(450,'270602','Updating2015-02-2616:05:27','2015-02-26 21:05:27','1'),(451,'271602','Updating2015-02-2611:35:31','2015-02-26 16:35:31','1'),(452,'272602','Updating2015-02-2702:59:09','2015-02-27 07:59:09','1'),(453,'273602','Updating2015-02-2706:25:46','2015-02-27 11:25:46','1'),(454,'274602','Updating2015-02-2613:28:39','2015-02-26 18:28:39','1'),(455,'275602','Updating2015-02-2611:47:53','2015-02-26 16:47:53','1'),(456,'276602','Updating2015-02-2609:32:07','2015-02-26 14:32:07','1'),(457,'277602','Updating2015-02-2622:01:59','2015-02-27 03:01:59','1'),(458,'278602','Updating2015-02-2607:56:27','2015-02-26 12:56:27','1'),(459,'279602','Updating2015-02-2707:12:25','2015-02-27 12:12:25','1'),(460,'280602','Updating2015-02-2622:11:50','2015-02-27 03:11:50','1'),(461,'281602','Updating2015-02-2605:42:30','2015-02-26 10:42:30','1'),(462,'282602','Updating2015-02-2709:11:21','2015-02-27 14:11:21','1'),(463,'283602','Updating2015-02-2614:00:01','2015-02-26 19:00:01','1'),(464,'284602','Updating2015-02-2702:23:50','2015-02-27 07:23:50','1'),(465,'285602','1','2015-02-10 20:02:38','1'),(466,'286602','Updating2015-02-2700:30:18','2015-02-27 05:30:18','1'),(467,'287602','Updating2015-02-2609:16:17','2015-02-26 14:16:17','1'),(468,'288602','Updating2015-02-2614:47:12','2015-02-26 19:47:12','1'),(469,'289602','Updating2015-02-2708:06:32','2015-02-27 13:06:32','1'),(470,'290602','1','2015-02-10 20:02:38','1'),(471,'291602','Updating2015-02-2612:57:36','2015-02-26 17:57:36','1'),(472,'292602','Updating2015-02-2615:47:02','2015-02-26 20:47:02','1'),(473,'293602','Updating2015-02-2708:37:57','2015-02-27 13:37:57','1'),(474,'294602','Updating2015-02-2615:49:59','2015-02-26 20:49:59','1'),(475,'295602','Updating2015-02-2612:46:24','2015-02-26 17:46:24','1'),(476,'296602','Updating2015-02-2702:53:12','2015-02-27 07:53:12','1'),(477,'297602','Updating2015-02-2314:58:35','2015-02-23 19:58:35','1'),(478,'298602','Updating2015-02-2517:58:55','2015-02-25 22:58:55','1'),(479,'299602','Updating2015-02-1015:38:14','2015-02-10 20:38:14','1'),(480,'300602','Updating2015-02-2307:07:31','2015-02-23 12:07:31','1'),(481,'301602','Updating2015-02-2612:09:07','2015-02-26 17:09:07','1'),(482,'302602','Updating2015-02-2708:07:09','2015-02-27 13:07:09','1'),(483,'303602','Updating2015-02-2613:38:31','2015-02-26 18:38:31','1'),(484,'304602','1','2015-02-10 20:02:38','1'),(485,'305602','Updating2015-02-2703:33:09','2015-02-27 08:33:09','1'),(486,'306602','Updating2015-02-2617:25:17','2015-02-26 22:25:17','1'),(487,'307602','Updating2015-02-2616:04:20','2015-02-26 21:04:20','1'),(488,'308602','Updating2015-02-2515:24:48','2015-02-25 20:24:48','1'),(489,'309602','Updating2015-02-2709:10:46','2015-02-27 14:10:46','1'),(490,'310602','Updating2015-02-2623:34:11','2015-02-27 04:34:11','1'),(491,'311602','Updating2015-02-2622:59:50','2015-02-27 03:59:50','1'),(492,'312602','Updating2015-02-2623:43:56','2015-02-27 04:43:56','1'),(493,'313602','Updating2015-02-2621:59:59','2015-02-27 02:59:59','1'),(494,'314602','Updating2015-02-2614:11:45','2015-02-26 19:11:45','1'),(495,'315602','Updating2015-02-2611:39:15','2015-02-26 16:39:15','1'),(496,'316602','Updating2015-02-2616:11:19','2015-02-26 21:11:19','1'),(497,'317602','Updating2015-02-2610:20:51','2015-02-26 15:20:51','1'),(498,'318602','Updating2015-02-2705:45:24','2015-02-27 10:45:24','1'),(499,'319602','Updating2015-02-2609:21:47','2015-02-26 14:21:47','1'),(500,'320602','Updating2015-02-2616:49:41','2015-02-26 21:49:41','1'),(501,'321602','Updating2015-02-2618:26:05','2015-02-26 23:26:05','1'),(502,'322602','Updating2015-02-2706:00:16','2015-02-27 11:00:16','1'),(503,'323602','Updating2015-02-2621:50:40','2015-02-27 02:50:40','1'),(504,'324602','Updating2015-02-2609:26:42','2015-02-26 14:26:42','1'),(505,'325602','Updating2015-02-2512:39:03','2015-02-25 17:39:03','1'),(506,'326602','Updating2015-02-2414:20:36','2015-02-24 19:20:36','1'),(507,'327602','Updating2015-02-2611:08:35','2015-02-26 16:08:35','1'),(508,'328602','Updating2015-02-2612:17:47','2015-02-26 17:17:47','1'),(509,'329602','Updating2015-02-2616:28:57','2015-02-26 21:28:57','1'),(510,'330602','Updating2015-02-2613:29:21','2015-02-26 18:29:21','1'),(511,'331602','Updating2015-02-2615:39:11','2015-02-26 20:39:11','1'),(512,'332602','Updating2015-02-2513:50:58','2015-02-25 18:50:58','1'),(513,'333602','Updating2015-02-2616:50:13','2015-02-26 21:50:13','1'),(514,'334602','Updating2015-02-2611:48:38','2015-02-26 16:48:38','1'),(515,'335602','Updating2015-02-2610:58:10','2015-02-26 15:58:10','1'),(516,'336602','Updating2015-02-2615:12:46','2015-02-26 20:12:46','1'),(517,'337602','Updating2015-02-2623:38:59','2015-02-27 04:38:59','1'),(518,'338602','Updating2015-02-2706:07:53','2015-02-27 11:07:53','1'),(519,'339602','Updating2015-02-2707:02:39','2015-02-27 12:02:39','1'),(520,'340602','Updating2015-02-2621:36:04','2015-02-27 02:36:04','1'),(521,'341602','Updating2015-02-2622:01:40','2015-02-27 03:01:40','1'),(522,'342602','Updating2015-02-2600:24:14','2015-02-26 05:24:14','1'),(523,'343602','Updating2015-02-2616:46:30','2015-02-26 21:46:30','1'),(524,'344602','Updating2015-02-2609:15:17','2015-02-26 14:15:17','1'),(525,'345602','Updating2015-02-2707:16:19','2015-02-27 12:16:19','1'),(526,'346602','1','2015-02-10 20:02:38','1'),(527,'347602','Updating2015-02-2413:04:19','2015-02-24 18:04:19','1'),(528,'348602','Updating2015-02-2707:27:30','2015-02-27 12:27:30','1'),(529,'349602','Updating2015-02-2615:46:49','2015-02-26 20:46:49','1'),(530,'350602','Updating2015-02-2612:09:22','2015-02-26 17:09:22','1'),(531,'351602','Updating2015-02-2607:32:01','2015-02-26 12:32:01','1'),(532,'352602','Updating2015-02-2611:00:09','2015-02-26 16:00:09','1'),(533,'353602','Updating2015-02-2623:27:48','2015-02-27 04:27:48','1'),(534,'354602','Updating2015-02-2512:53:09','2015-02-25 17:53:09','1'),(535,'355602','Updating2015-02-2613:42:57','2015-02-26 18:42:57','1'),(536,'356602','Updating2015-02-2513:42:42','2015-02-25 18:42:42','1'),(537,'357602','Updating2015-02-2609:21:12','2015-02-26 14:21:12','1'),(538,'358602','Updating2015-02-2615:53:20','2015-02-26 20:53:20','1'),(539,'359602','Updating2015-02-2614:53:15','2015-02-26 19:53:15','1'),(540,'360602','Updating2015-02-2620:23:05','2015-02-27 01:23:05','1'),(541,'361602','Updating2015-02-2623:33:57','2015-02-27 04:33:57','1'),(542,'362602','Updating2015-02-2612:44:09','2015-02-26 17:44:09','1'),(543,'363602','Updating2015-02-2614:01:05','2015-02-26 19:01:05','1'),(544,'364602','Updating2015-02-2623:14:22','2015-02-27 04:14:22','1'),(545,'365602','Updating2015-02-2623:41:18','2015-02-27 04:41:18','1'),(546,'366602','Updating2015-02-2706:03:53','2015-02-27 11:03:53','1'),(547,'367602','Updating2015-02-2613:40:48','2015-02-26 18:40:48','1'),(548,'368602','Updating2015-02-2622:55:16','2015-02-27 03:55:16','1'),(549,'369602','Updating2015-02-2614:36:58','2015-02-26 19:36:58','1'),(550,'370602','Updating2015-02-2622:36:34','2015-02-27 03:36:34','1'),(551,'371602','Updating2015-02-2622:55:52','2015-02-27 03:55:52','1'),(552,'372602','Updating2015-02-2223:01:36','2015-02-23 04:01:36','1'),(553,'373602','Updating2015-02-2613:48:54','2015-02-26 18:48:54','1'),(554,'374602','Updating2015-02-2612:10:01','2015-02-26 17:10:01','1'),(555,'375602','Updating2015-02-2621:55:47','2015-02-27 02:55:47','1'),(556,'376602','Updating2015-02-2623:45:53','2015-02-27 04:45:53','1'),(557,'377602','Updating2015-02-2514:05:15','2015-02-25 19:05:15','1'),(558,'378602','Updating2015-02-2422:08:37','2015-02-25 03:08:37','1'),(559,'379602','Updating2015-02-2413:55:17','2015-02-24 18:55:17','1'),(560,'380602','Updating2015-02-2613:23:33','2015-02-26 18:23:33','1'),(561,'381602','Updating2015-02-2614:04:48','2015-02-26 19:04:48','1'),(562,'382602','Updating2015-02-2622:42:32','2015-02-27 03:42:32','1'),(563,'383602','Updating2015-02-2708:10:31','2015-02-27 13:10:31','1'),(564,'384602','Updating2015-02-2419:56:28','2015-02-25 00:56:28','1'),(565,'385602','Updating2015-02-2514:20:47','2015-02-25 19:20:47','1'),(566,'386602','Updating2015-02-2612:18:38','2015-02-26 17:18:38','1'),(567,'387602','Updating2015-02-2621:09:49','2015-02-27 02:09:49','1'),(568,'388602','Updating2015-02-2613:11:34','2015-02-26 18:11:34','1'),(569,'389602','Updating2015-02-2622:45:53','2015-02-27 03:45:53','1'),(570,'390602','Updating2015-02-2613:18:05','2015-02-26 18:18:05','1'),(571,'391602','Updating2015-02-2621:54:18','2015-02-27 02:54:18','1'),(572,'392602','Updating2015-02-2318:22:53','2015-02-23 23:22:53','1'),(573,'393602','Updating2015-02-2621:15:52','2015-02-27 02:15:52','1'),(574,'394602','Updating2015-02-2705:59:41','2015-02-27 10:59:41','1'),(575,'395602','Updating2015-02-2619:17:44','2015-02-27 00:17:44','1'),(576,'396602','Updating2015-02-2612:55:34','2015-02-26 17:55:34','1'),(577,'397602','Updating2015-02-2623:35:02','2015-02-27 04:35:02','1'),(578,'398602','Updating2015-02-2705:47:54','2015-02-27 10:47:54','1'),(579,'399602','Updating2015-02-2606:52:52','2015-02-26 11:52:52','1'),(580,'400602','Updating2015-02-2621:29:16','2015-02-27 02:29:16','1'),(581,'401602','Updating2015-02-2615:14:18','2015-02-26 20:14:18','1'),(582,'402602','Updating2015-02-2515:15:25','2015-02-25 20:15:25','1'),(583,'403602','Updating2015-02-2705:50:02','2015-02-27 10:50:02','1'),(584,'404602','Updating2015-02-2622:37:35','2015-02-27 03:37:35','1'),(585,'405602','Updating2015-02-1715:48:31','2015-02-17 20:48:31','1'),(586,'406602','Updating2015-02-2512:21:58','2015-02-25 17:21:58','1'),(587,'407602','Updating2015-02-2613:53:09','2015-02-26 18:53:09','1'),(588,'408602','Updating2015-02-2705:01:37','2015-02-27 10:01:37','1'),(589,'409602','Updating2015-02-2709:08:20','2015-02-27 14:08:20','1'),(590,'410602','Updating2015-02-2621:51:23','2015-02-27 02:51:23','1'),(591,'411602','Updating2015-02-2613:48:49','2015-02-26 18:48:49','1'),(592,'412602','Updating2015-02-2615:43:00','2015-02-26 20:43:00','1'),(593,'413602','Updating2015-02-2617:58:30','2015-02-26 22:58:30','1'),(594,'414602','Updating2015-02-2605:46:23','2015-02-26 10:46:23','1'),(595,'415602','Updating2015-02-2405:47:52','2015-02-24 10:47:52','1'),(596,'416602','Updating2015-02-2613:09:41','2015-02-26 18:09:41','1'),(597,'417602','Updating2015-02-2507:33:28','2015-02-25 12:33:28','1'),(598,'418602','Updating2015-02-2611:58:11','2015-02-26 16:58:11','1'),(599,'419602','Updating2015-02-2612:09:28','2015-02-26 17:09:28','1'),(600,'420602','Updating2015-02-2607:39:16','2015-02-26 12:39:16','1'),(601,'421602','Updating2015-02-2706:49:24','2015-02-27 11:49:24','1'),(602,'422602','Updating2015-02-2613:17:15','2015-02-26 18:17:15','1'),(603,'423602','Updating2015-02-2612:49:01','2015-02-26 17:49:01','1'),(604,'424602','Updating2015-02-2612:27:11','2015-02-26 17:27:11','1'),(605,'425602','Updating2015-02-2623:13:05','2015-02-27 04:13:05','1'),(606,'426602','Updating2015-02-2616:29:19','2015-02-26 21:29:19','1'),(607,'427602','Updating2015-02-2616:02:56','2015-02-26 21:02:56','1'),(608,'428602','Updating2015-02-2309:17:40','2015-02-23 14:17:40','1'),(609,'429602','Updating2015-02-2615:30:20','2015-02-26 20:30:20','1'),(610,'430602','Updating2015-02-2621:23:13','2015-02-27 02:23:13','1'),(611,'431602','Updating2015-02-2620:37:58','2015-02-27 01:37:58','1'),(612,'432302','Updating2015-02-2516:40:56','2015-02-25 21:40:56','1'),(613,'433602','1','2015-02-10 20:02:38','1'),(614,'434602','Updating2015-02-2615:24:43','2015-02-26 20:24:43','1'),(615,'435602','Updating2015-02-2614:12:34','2015-02-26 19:12:34','1'),(616,'436602','Updating2015-02-2708:54:42','2015-02-27 13:54:42','1'),(617,'437602','Updating2015-02-2613:52:26','2015-02-26 18:52:26','1'),(618,'438602','1','2015-02-10 20:02:38','1'),(619,'439602','Updating2015-02-2708:08:55','2015-02-27 13:08:55','1'),(620,'440602','Updating2015-02-2707:17:02','2015-02-27 12:17:02','1'),(621,'441602','Updating2015-02-2515:32:11','2015-02-25 20:32:11','1'),(622,'442602','1','2015-02-10 20:02:38','1'),(623,'443602','1','2015-02-10 20:02:38','1'),(624,'444602','Updating2015-02-2709:12:51','2015-02-27 14:12:51','1'),(625,'445602','Updating2015-02-2613:41:32','2015-02-26 18:41:32','1'),(626,'446602','1','2015-02-10 20:02:38','1'),(627,'447602','1','2015-02-10 20:02:38','1'),(628,'448602','1','2015-02-10 20:02:38','1'),(629,'449602','Updating2015-02-2705:59:07','2015-02-27 10:59:07','1'),(630,'450602','Updating2015-02-2610:12:24','2015-02-26 15:12:24','1'),(631,'451602','Updating2015-02-2618:03:21','2015-02-26 23:03:21','1'),(632,'452602','Updating2015-02-2619:28:49','2015-02-27 00:28:49','1'),(633,'453602','Updating2015-02-2611:18:55','2015-02-26 16:18:55','1'),(634,'454602','Updating2015-02-2607:30:43','2015-02-26 12:30:43','1'),(635,'455602','Updating2015-02-2708:37:03','2015-02-27 13:37:03','1'),(636,'456602','Updating2015-02-2412:25:09','2015-02-24 17:25:09','1'),(637,'457602','Updating2015-02-2612:23:58','2015-02-26 17:23:58','1'),(638,'458602','Updating2015-02-2517:16:20','2015-02-25 22:16:20','1'),(639,'459602','Updating2015-02-2707:25:15','2015-02-27 12:25:15','1'),(640,'460602','Updating2015-02-2613:32:50','2015-02-26 18:32:50','1'),(641,'461602','Updating2015-02-2705:50:56','2015-02-27 10:50:56','1'),(642,'462602','Updating2015-02-2701:04:59','2015-02-27 06:04:59','1'),(643,'463602','Updating2015-02-2611:07:05','2015-02-26 16:07:05','1'),(644,'464602','Updating2015-02-2612:02:54','2015-02-26 17:02:54','1'),(645,'465602','Updating2015-02-2615:29:34','2015-02-26 20:29:34','1'),(646,'466602','Updating2015-02-2404:19:27','2015-02-24 09:19:27','1'),(647,'467602','Updating2015-02-2612:41:38','2015-02-26 17:41:38','1'),(648,'468602','Updating2015-02-2614:04:18','2015-02-26 19:04:18','1'),(649,'469602','1','2015-02-10 20:02:38','1'),(650,'470602','Updating2015-02-2615:01:06','2015-02-26 20:01:06','1'),(651,'471602','Updating2015-02-2612:16:51','2015-02-26 17:16:51','1'),(652,'472602','Updating2015-02-2615:48:41','2015-02-26 20:48:41','1'),(653,'473602','Updating2015-02-2611:30:18','2015-02-26 16:30:18','1'),(654,'474602','Updating2015-02-2614:37:36','2015-02-26 19:37:36','1'),(655,'475602','Updating2015-02-2612:41:00','2015-02-26 17:41:00','1'),(656,'476602','Updating2015-02-2605:43:02','2015-02-26 10:43:02','1'),(657,'477602','Updating2015-02-2515:40:15','2015-02-25 20:40:15','1'),(658,'478602','Updating2015-02-2613:11:00','2015-02-26 18:11:00','1'),(659,'479602','Updating2015-02-2623:33:11','2015-02-27 04:33:11','1'),(660,'480602','Updating2015-02-2513:34:51','2015-02-25 18:34:51','1'),(661,'481602','Updating2015-02-2613:56:53','2015-02-26 18:56:53','1'),(662,'482602','Updating2015-02-2516:19:06','2015-02-25 21:19:06','1'),(663,'483602','Updating2015-02-2704:11:02','2015-02-27 09:11:02','1'),(664,'484602','Updating2015-02-2709:05:34','2015-02-27 14:05:34','1'),(665,'485602','Updating2015-02-2612:39:51','2015-02-26 17:39:51','1'),(666,'486602','Updating2015-02-2623:41:45','2015-02-27 04:41:45','1'),(667,'487602','Updating2015-02-2623:45:01','2015-02-27 04:45:01','1'),(668,'488602','Updating2015-02-2707:07:34','2015-02-27 12:07:34','1'),(669,'489602','Updating2015-02-2521:45:24','2015-02-26 02:45:24','1'),(670,'490602','Updating2015-02-2700:31:25','2015-02-27 05:31:25','1'),(671,'491602','Updating2015-02-2706:13:51','2015-02-27 11:13:51','1'),(672,'492602','Updating2015-02-2515:41:26','2015-02-25 20:41:26','1'),(673,'493602','Updating2015-02-2611:15:23','2015-02-26 16:15:23','1'),(674,'494602','Updating2015-02-2606:25:51','2015-02-26 11:25:51','1'),(675,'495602','Updating2015-02-2623:43:28','2015-02-27 04:43:28','1'),(676,'496602','Updating2015-02-2608:19:33','2015-02-26 13:19:33','1'),(677,'497602','Updating2015-02-2622:07:32','2015-02-27 03:07:32','1'),(678,'498602','1','2015-02-10 20:02:38','1'),(679,'499602','Updating2015-02-2521:56:21','2015-02-26 02:56:21','1'),(680,'500602','1','2015-02-10 20:02:38','1'),(681,'501602','Updating2015-02-2511:20:50','2015-02-25 16:20:50','1'),(682,'502602','Updating2015-02-2616:39:23','2015-02-26 21:39:23','1'),(683,'503602','Updating2015-02-2623:44:06','2015-02-27 04:44:06','1'),(684,'504302','Updating2015-02-2616:52:03','2015-02-26 21:52:03','1'),(685,'505602','Updating2015-02-2705:55:17','2015-02-27 10:55:17','1'),(686,'506602','Updating2015-02-2700:44:51','2015-02-27 05:44:51','1'),(687,'507602','Updating2015-02-2613:55:52','2015-02-26 18:55:52','1'),(688,'508602','Updating2015-02-2612:45:26','2015-02-26 17:45:26','1'),(689,'509602','Updating2015-02-2612:59:29','2015-02-26 17:59:29','1'),(690,'510602','Updating2015-02-2618:54:57','2015-02-26 23:54:57','1'),(691,'511602','Updating2015-02-2621:45:51','2015-02-27 02:45:51','1'),(692,'512602','Updating2015-02-2621:55:03','2015-02-27 02:55:03','1'),(693,'513602','Updating2015-02-2613:51:17','2015-02-26 18:51:17','1'),(694,'514602','1','2015-02-10 20:02:38','1'),(695,'515602','Updating2015-02-2614:07:40','2015-02-26 19:07:40','1'),(696,'516602','Updating2015-02-2705:58:18','2015-02-27 10:58:18','1'),(697,'517602','Updating2015-02-2605:55:12','2015-02-26 10:55:12','1'),(698,'518602','Updating2015-02-2707:32:09','2015-02-27 12:32:09','1'),(699,'519602','Updating2015-02-2605:50:47','2015-02-26 10:50:47','1'),(700,'520602','Updating2015-02-2611:59:27','2015-02-26 16:59:27','1'),(701,'521602','Updating2015-02-2622:39:45','2015-02-27 03:39:45','1'),(702,'522602','Updating2015-02-2611:37:32','2015-02-26 16:37:32','1'),(703,'523602','Updating2015-02-2623:49:33','2015-02-27 04:49:33','1'),(704,'524602','Updating2015-02-2616:27:41','2015-02-26 21:27:41','1'),(705,'525602','Updating2015-02-2617:04:53','2015-02-26 22:04:53','1'),(706,'526602','Updating2015-02-2622:41:42','2015-02-27 03:41:42','1'),(707,'527602','Updating2015-02-2707:08:54','2015-02-27 12:08:54','1'),(708,'528602','Updating2015-02-2623:38:04','2015-02-27 04:38:04','1'),(709,'529602','Updating2015-02-2608:18:57','2015-02-26 13:18:57','1'),(710,'530602','Updating2015-02-2618:06:32','2015-02-26 23:06:32','1'),(711,'531602','Updating2015-02-2521:48:32','2015-02-26 02:48:32','1'),(712,'532602','Updating2015-02-2704:57:43','2015-02-27 09:57:43','1'),(713,'533602','Updating2015-02-2621:34:02','2015-02-27 02:34:02','1'),(714,'534602','Updating2015-02-2611:13:18','2015-02-26 16:13:18','1'),(715,'535602','Updating2015-02-2614:57:54','2015-02-26 19:57:54','1'),(716,'536602','Updating2015-02-2616:25:10','2015-02-26 21:25:10','1'),(717,'537602','Updating2015-02-2621:04:10','2015-02-27 02:04:10','1'),(718,'538602','Updating2015-02-2706:03:21','2015-02-27 11:03:21','1'),(719,'539602','Updating2015-02-2621:57:40','2015-02-27 02:57:40','1'),(720,'540602','Updating2015-02-2604:27:14','2015-02-26 09:27:14','1'),(721,'541602','Updating2015-02-2623:42:22','2015-02-27 04:42:22','1'),(722,'542602','Updating2015-02-2705:56:01','2015-02-27 10:56:01','1'),(723,'543602','Updating2015-02-2515:43:23','2015-02-25 20:43:23','1'),(724,'544602','Updating2015-02-2622:59:25','2015-02-27 03:59:25','1'),(725,'545602','Updating2015-02-2621:06:26','2015-02-27 02:06:26','1'),(726,'546602','Updating2015-02-2605:49:18','2015-02-26 10:49:18','1'),(727,'547602','Updating2015-02-2514:04:58','2015-02-25 19:04:58','1'),(728,'548602','Updating2015-02-2615:19:44','2015-02-26 20:19:44','1'),(729,'549602','Updating2015-02-2615:41:16','2015-02-26 20:41:16','1'),(730,'550602','1','2015-02-10 20:02:38','1'),(731,'551602','Updating2015-02-2615:40:34','2015-02-26 20:40:34','1'),(732,'552602','Updating2015-02-2605:56:23','2015-02-26 10:56:23','1'),(733,'553602','Updating2015-02-2622:15:47','2015-02-27 03:15:47','1'),(734,'554602','Updating2015-02-2611:45:44','2015-02-26 16:45:44','1'),(735,'555602','Updating2015-02-2605:59:04','2015-02-26 10:59:04','1'),(736,'556602','Updating2015-02-2616:19:21','2015-02-26 21:19:21','1'),(737,'557602','Updating2015-02-2614:07:41','2015-02-26 19:07:41','1'),(738,'558602','Updating2015-02-2521:41:17','2015-02-26 02:41:17','1'),(739,'559602','Updating2015-02-2707:07:31','2015-02-27 12:07:31','1'),(740,'560602','Updating2015-02-2607:03:30','2015-02-26 12:03:30','1'),(741,'561602','Updating2015-02-2705:14:03','2015-02-27 10:14:03','1'),(742,'562602','Updating2015-02-2622:34:33','2015-02-27 03:34:33','1'),(743,'563602','Updating2015-02-2621:58:18','2015-02-27 02:58:18','1'),(744,'564602','Updating2015-02-2621:35:06','2015-02-27 02:35:06','1'),(745,'565602','Updating2015-02-2521:08:56','2015-02-26 02:08:56','1'),(746,'566602','Updating2015-02-2314:18:18','2015-02-23 19:18:18','1'),(747,'567602','1','2015-02-10 20:02:38','1'),(748,'568602','Updating2015-02-2511:16:03','2015-02-25 16:16:03','1'),(749,'569602','Updating2015-02-2705:29:18','2015-02-27 10:29:18','1'),(750,'570602','Updating2015-02-2603:08:48','2015-02-26 08:08:48','1'),(751,'571602','Updating2015-02-2608:39:43','2015-02-26 13:39:43','1'),(752,'572602','Updating2015-02-2621:37:08','2015-02-27 02:37:08','1'),(753,'573602','Updating2015-02-2523:40:59','2015-02-26 04:40:59','1'),(754,'574602','Updating2015-02-2512:10:11','2015-02-25 17:10:11','1'),(755,'575602','Updating2015-02-2706:07:31','2015-02-27 11:07:31','1'),(756,'576602','1','2015-02-10 20:02:38','1'),(757,'594602','Updating2015-02-2619:03:22','2015-02-27 00:03:22','1'),(758,'593602','1','2015-02-10 20:02:38','1'),(759,'577602','Updating2015-02-2621:36:36','2015-02-27 02:36:36','1'),(760,'578602','1','2015-02-10 20:02:38','1'),(761,'579602','Updating2015-02-2621:43:45','2015-02-27 02:43:45','1'),(762,'580602','Updating2015-02-2623:35:43','2015-02-27 04:35:43','1'),(763,'581602','Updating2015-02-2515:38:18','2015-02-25 20:38:18','1'),(764,'582602','1','2015-02-10 20:02:38','1'),(765,'583602','Updating2015-02-2621:39:00','2015-02-27 02:39:00','1'),(766,'585602','Updating2015-02-2616:42:00','2015-02-26 21:42:00','1'),(767,'588602','Updating2015-02-2614:39:23','2015-02-26 19:39:23','1'),(768,'590602','Updating2015-02-2708:45:13','2015-02-27 13:45:13','1'),(769,'591602','Updating2015-02-2618:51:09','2015-02-26 23:51:09','1'),(770,'592602','Updating2015-02-2514:30:02','2015-02-25 19:30:02','1'),(771,'597602','Updating2015-02-2618:15:27','2015-02-26 23:15:27','1'),(772,'598602','Updating2015-02-2516:26:00','2015-02-25 21:26:00','1'),(773,'599602','1','2015-02-10 20:02:38','1'),(774,'600602','Updating2015-02-2613:59:50','2015-02-26 18:59:50','1'),(775,'602602','Updating2015-02-2615:13:47','2015-02-26 20:13:47','1'),(776,'603602','Updating2015-02-2621:38:40','2015-02-27 02:38:40','1'),(777,'604602','Updating2015-02-2621:49:17','2015-02-27 02:49:17','1'),(778,'605602','Updating2015-02-2708:16:51','2015-02-27 13:16:51','1'),(779,'606602','1','2015-02-10 20:02:38','1'),(780,'607602','Updating2015-02-2611:46:15','2015-02-26 16:46:15','1'),(781,'608602','Updating2015-02-2620:34:43','2015-02-27 01:34:43','1'),(782,'609602','1','2015-02-10 20:02:38','1'),(783,'610602','1','2015-02-10 20:02:38','1'),(784,'611602','1','2015-02-10 20:02:38','1'),(785,'612602','Updating2015-02-2623:38:29','2015-02-27 04:38:29','1'),(786,'613602','Updating2015-02-2523:55:16','2015-02-26 04:55:16','1'),(787,'614602','Updating2015-02-2705:54:57','2015-02-27 10:54:57','1'),(788,'615602','1','2015-02-10 20:02:38','1'),(789,'616602','Updating2015-02-2706:06:47','2015-02-27 11:06:47','1'),(790,'617602','Updating2015-02-2614:56:34','2015-02-26 19:56:34','1'),(791,'618602','Updating2015-02-2615:50:42','2015-02-26 20:50:42','1'),(792,'619602','1','2015-02-10 20:02:38','1'),(793,'620602','Updating2015-02-2606:02:08','2015-02-26 11:02:08','1'),(794,'622602','Updating2015-02-2611:11:28','2015-02-26 16:11:28','1'),(795,'623602','1','2015-02-10 20:02:38','1'),(796,'624602','1','2015-02-10 20:02:38','1'),(797,'625602','Updating2015-02-2621:27:45','2015-02-27 02:27:45','1'),(798,'626602','Updating2015-02-2607:01:16','2015-02-26 12:01:16','1'),(799,'627602','1','2015-02-10 20:02:38','1'),(800,'628602','Updating2015-02-2621:39:17','2015-02-27 02:39:17','1'),(801,'629602','Updating2015-02-2615:45:12','2015-02-26 20:45:12','1'),(802,'630602','1','2015-02-10 20:02:38','1'),(803,'631602','Updating2015-02-2514:00:00','2015-02-25 19:00:00','1'),(804,'632602','1','2015-02-10 20:02:38','1'),(805,'633602','1','2015-02-10 20:02:38','1'),(806,'634602','Updating2015-02-2706:23:22','2015-02-27 11:23:22','1'),(807,'635602','1','2015-02-10 20:02:38','1'),(808,'636602','Updating2015-02-2016:05:15','2015-02-20 21:05:15','1'),(809,'088301','1','2015-02-10 20:02:38','1'),(810,'144701','1','2015-02-10 20:02:38','1'),(811,'638602','Updating2015-02-1110:58:05','2015-02-11 15:58:05','1'),(812,'637601','1','2015-02-10 20:02:38','1'),(813,'622002','1','2015-02-10 20:02:38','1'),(814,'595601','Updating2015-02-1800:34:26','2015-02-18 05:34:26','1'),(815,'584002','1','2015-02-10 20:02:38','1'),(816,'644602','Updating2015-02-2615:17:32','2015-02-26 20:17:32','1'),(817,'646601','1','2015-02-10 20:02:38','1'),(818,'645602','1','2015-02-10 20:02:38','1'),(819,'584602','Updating2015-02-2410:45:10','2015-02-24 15:45:10','1'),(820,'647602','Updating2015-02-2704:45:43','2015-02-27 09:45:43','1'),(821,'648602','Updating2015-02-2707:37:40','2015-02-27 12:37:40','1'),(822,'637602','Updating2015-02-2615:41:38','2015-02-26 20:41:38','1'),(823,'642602','1','2015-02-10 20:02:38','1'),(824,'650602','1','2015-02-10 20:02:38','1'),(825,'181601','1','2015-02-10 20:02:38','1'),(826,'649601','1','2015-02-10 20:02:38','1'),(827,'649602','1','2015-02-10 20:02:38','1'),(828,'641602','Updating2015-02-2616:24:05','2015-02-26 21:24:05','1'),(829,'644601','1','2015-02-10 20:02:38','1'),(830,'615601','1','2015-02-10 20:02:38','1'),(831,'634601','1','2015-02-10 20:02:38','1'),(832,'640602','Updating2015-02-2615:42:04','2015-02-26 20:42:04','1'),(833,'639602','Updating2015-02-2706:23:42','2015-02-27 11:23:42','1'),(834,'589602','1','2015-02-10 20:02:38','1'),(835,'587602','1','2015-02-10 20:02:38','1'),(836,'643602','Updating2015-02-2608:47:26','2015-02-26 13:47:26','1'),(837,'889602','1','2015-02-10 20:02:38','1'),(838,'184601','Updating2015-02-2611:02:23','2015-02-26 16:02:23','1'),(839,'185601','Updating2015-02-2613:52:25','2015-02-26 18:52:25','1'),(840,'186601','Updating2015-02-2616:38:41','2015-02-26 21:38:41','1'),(841,'701602','Updating2015-02-2516:45:28','2015-02-25 21:45:28','1'),(842,'704602','1','2015-02-10 20:02:38','1'),(843,'126602','Updating2015-02-2708:53:59','2015-02-27 13:53:59','1'),(844,'706602','Updating2015-02-2704:45:19','2015-02-27 09:45:19','1'),(845,'702602','Updating2015-02-2611:54:38','2015-02-26 16:54:38','1'),(846,'707002','1','2015-02-10 20:02:38','1'),(847,'708602','1','2015-02-10 20:02:38','1'),(848,'707602','Updating2015-02-2706:49:28','2015-02-27 11:49:28','1'),(849,'710602','Updating2015-02-1817:51:05','2015-02-18 22:51:05','1'),(850,'085602','1','2015-02-10 20:02:38','1'),(851,'711602','1','2015-02-10 20:02:38','1'),(852,'712602','1','2015-02-10 20:02:38','1'),(853,'709602','Updating2015-02-2616:24:22','2015-02-26 21:24:22','1'),(854,'713602','Updating2015-02-2015:23:24','2015-02-20 20:23:24','1'),(855,'714602','Updating2015-02-1816:05:18','2015-02-18 21:05:18','1'),(856,'715602','Updating2015-02-2609:36:33','2015-02-26 14:36:33','1'),(857,'716602','Updating2015-02-1621:23:31','2015-02-17 02:23:31','1'),(858,'717002','1','2015-02-10 20:02:38','1'),(859,'717602','Updating2015-02-1721:42:45','2015-02-18 02:42:45','1'),(860,'718602','Updating2015-02-2611:25:38','2015-02-26 16:25:38','1'),(861,'723602','1','2015-02-10 20:02:38','1'),(862,'719602','Updating2015-02-2619:27:45','2015-02-27 00:27:45','1'),(863,'720602','Updating2015-02-2612:47:27','2015-02-26 17:47:27','1'),(864,'721602','Updating2015-02-2613:31:27','2015-02-26 18:31:27','1'),(865,'722602','Updating2015-02-2621:55:24','2015-02-27 02:55:24','1'),(866,'724602','1','2015-02-10 20:02:38','1'),(867,'187601','Updating2015-02-2616:05:22','2015-02-26 21:05:22','1'),(868,'188601','Updating2015-02-2412:51:13','2015-02-24 17:51:13','1'),(869,'189601','Updating2015-02-2114:10:51','2015-02-21 19:10:51','1'),(870,'725602','Updating2015-02-2615:48:01','2015-02-26 20:48:01','1'),(871,'727602','Updating2015-02-2511:29:06','2015-02-25 16:29:06','1'),(872,'726602','Updating2015-02-2705:56:37','2015-02-27 10:56:37','1'),(873,'728602','Updating2015-02-2612:55:35','2015-02-26 17:55:35','1'),(874,'729602','Updating2015-02-2607:28:50','2015-02-26 12:28:50','1'),(875,'730602','1','2015-02-10 20:02:38','1'),(876,'731602','1','2015-02-10 20:02:38','1'),(877,'732602','Updating2015-02-2613:07:36','2015-02-26 18:07:36','1'),(878,'733602','Updating2015-02-2706:54:27','2015-02-27 11:54:27','1'),(879,'734602','Updating2015-02-2511:38:16','2015-02-25 16:38:16','1'),(880,'735602','Updating2015-02-2612:04:48','2015-02-26 17:04:48','1'),(881,'736602','Updating2015-02-2615:53:27','2015-02-26 20:53:27','1'),(882,'737602','Updating2015-02-2421:04:25','2015-02-25 02:04:25','1'),(883,'738602','Updating2015-02-2700:44:11','2015-02-27 05:44:11','1'),(884,'739602','Updating2015-02-2615:27:50','2015-02-26 20:27:50','1'),(885,'740602','Updating2015-02-2605:14:57','2015-02-26 10:14:57','1'),(886,'741602','Updating2015-02-2614:06:36','2015-02-26 19:06:36','1'),(887,'742602','Updating2015-02-2616:30:28','2015-02-26 21:30:28','1'),(888,'743602','Updating2015-02-2615:42:00','2015-02-26 20:42:00','1'),(889,'187301','1','2015-02-10 20:02:38','1'),(890,'197601','Updating2015-02-2609:27:50','2015-02-26 14:27:50','1'),(891,'192601','Updating2015-02-2623:38:06','2015-02-27 04:38:06','1'),(892,'182001','1','2015-02-10 20:02:38','1'),(893,'190601','Updating2015-02-2611:08:58','2015-02-26 16:08:58','1'),(894,'191001','1','2015-02-16 15:28:40','1'),(895,'193601','1','2015-02-16 15:31:56','1'),(896,'194601','1','2015-02-16 15:33:06','1'),(897,'195601','Updating2015-02-2623:22:28','2015-02-27 04:22:28','1'),(898,'196601','Updating2015-02-2611:05:28','2015-02-26 16:05:28','1'),(899,'198601','1','2015-02-16 15:40:05','1'),(900,'000601','Updating2015-02-2714:11:08','2015-02-27 19:11:08','1'),(901,'500601','Updating2015-09-1715:44:58','2015-09-17 20:44:58','1'),(902,'101601','Updating2015-04-0601:31:39','2015-04-06 06:31:39','2'),(903,'102601','Updating2015-04-0703:39:56','2015-04-07 08:39:56','2'),(904,'103601','Updating2015-03-0923:11:58','2015-03-10 04:11:58','2'),(905,'104601','Updating2015-04-0523:39:30','2015-04-06 04:39:30','2'),(906,'105601','Updating2015-03-0721:18:02','2015-03-08 02:18:02','2'),(907,'106601','Updating2015-04-0601:17:26','2015-04-06 06:17:26','2'),(908,'107601','Updating2015-04-0622:47:16','2015-04-07 03:47:16','2'),(909,'108601','Updating2015-04-0523:15:22','2015-04-06 04:15:22','2'),(910,'109601','Updating2015-04-0621:43:58','2015-04-07 02:43:58','2'),(911,'110601','Updating2015-03-3023:55:43','2015-03-31 04:55:43','2'),(912,'501301','Updating2015-03-0414:37:48','2015-03-04 19:37:48','2'),(913,'111601','Updating2015-04-0622:51:04','2015-04-07 03:51:04','2'),(914,'502301','Updating2015-04-0421:57:22','2015-04-05 02:57:22','2'),(915,'112601','Updating2015-04-0621:44:52','2015-04-07 02:44:52','2'),(916,'503301','Updating2015-04-0701:27:12','2015-04-07 06:27:12','2'),(917,'113601','Updating2015-04-0718:17:38','2015-04-07 23:17:38','2'),(918,'504301','Updating2015-03-0414:47:09','2015-03-04 19:47:09','2'),(919,'201601','Updating2015-03-0414:54:00','2015-03-04 19:54:00','2'),(920,'202601','1','2015-03-01 23:51:01','2'),(921,'203601','1','2015-03-01 23:52:06','2'),(922,'204601','Updating2015-03-0508:17:57','2015-03-05 13:17:57','2'),(923,'205601','1','2015-03-01 23:54:49','2'),(924,'206601','1','2015-03-01 23:55:50','2'),(925,'207601','Updating2015-03-0508:18:59','2015-03-05 13:18:59','2'),(926,'208601','Updating2015-03-0508:19:18','2015-03-05 13:19:18','2'),(927,'500601','Updating2015-06-2010:39:21','2015-06-20 15:39:21','2'),(928,'799601','Updating2015-03-0508:21:39','2015-03-05 13:21:39','2'),(929,'599601','Updating2015-03-0508:21:22','2015-03-05 13:21:22','2'),(930,'799307','Updating2015-04-0522:44:38','2015-04-06 03:44:38','2'),(931,'699601','Updating2015-04-0700:10:47','2015-04-07 05:10:47','2'),(932,'207602','Updating2015-04-0622:13:43','2015-04-07 03:13:43','2'),(933,'204002','Updating2015-03-0508:15:43','2015-03-05 13:15:43','2'),(934,'204602','Updating2015-04-0700:30:24','2015-04-07 05:30:24','2'),(935,'502301','Updating2015-04-0421:57:22','2015-04-05 02:57:22','2'),(936,'302603','Updating2015-04-0419:55:54','2015-04-05 00:55:54','2'),(937,'114601','Updating2015-04-0700:51:45','2015-04-07 05:51:45','2'),(938,'116601','Updating2015-03-3022:02:55','2015-03-31 03:02:55','2'),(939,'301603','Updating2015-03-0923:12:21','2015-03-10 04:12:21','2'),(940,'209602','Updating2015-04-0620:45:54','2015-04-07 01:45:54','2'),(941,'503301','Updating2015-04-0701:27:12','2015-04-07 06:27:12','2'),(942,'118601','Updating2015-03-2714:01:11','2015-03-27 19:01:11','2'),(943,'119601','Updating2015-04-0521:59:34','2015-04-06 02:59:34','2'),(944,'115601','Updating2015-04-0321:10:41','2015-04-04 02:10:41','2'),(945,'504705','Updating2015-04-0322:28:10','2015-04-04 03:28:10','2'),(946,'120701','Updating2015-03-2323:51:22','2015-03-24 04:51:22','2'),(947,'121601','Updating2015-04-0400:40:11','2015-04-04 05:40:11','2'),(948,'105701','Updating2015-04-0622:23:22','2015-04-07 03:23:22','2'),(949,'103301','Updating2015-03-1422:17:29','2015-03-15 03:17:29','2'),(950,'301303','Updating2015-04-0223:35:16','2015-04-03 04:35:16','2'),(951,'122601','Updating2015-03-2800:35:55','2015-03-28 05:35:55','2'),(952,'206302','Updating2015-04-0601:32:45','2015-04-06 06:32:45','2'),(953,'117301','Updating2015-04-0523:05:57','2015-04-06 04:05:57','2'),(954,'205302','Updating2015-04-0122:44:21','2015-04-02 03:44:21','2'),(955,'123601','Updating2015-04-0703:55:44','2015-04-07 08:55:44','2'),(956,'999001','1','2015-04-27 15:34:00','2'),(957,'999002','1','2015-04-27 15:35:46','2'),(958,'900301','1','2015-05-13 19:07:52','2'),(959,'500601','Updating2015-09-1715:44:58','2015-09-17 20:44:58','1'),(960,'001601','Updating2015-09-1715:39:55','2015-09-17 20:39:55','1'),(961,'827601','1','2015-06-12 00:19:53','1'),(962,'027601','1','2015-06-12 00:21:46','1'),(963,'500601','Updating2015-06-2010:39:21','2015-06-20 15:39:21','2'),(964,'001601','Updating2015-06-2008:22:34','2015-06-20 13:22:34','2'),(965,'002301','Updating2015-06-2009:15:32','2015-06-20 14:15:32','2'),(966,'002601','1','2015-06-20 13:36:13','2'),(967,'129901','1','2015-07-03 12:11:38','1'),(968,'188099','1','2015-07-03 12:13:09','1'),(969,'999101','1','2015-07-03 12:21:00','1'),(970,'998101','1','2015-07-03 12:22:22','1'),(971,'213101','1','2015-07-04 13:52:31','1'),(972,'132101','1','2015-07-04 13:56:12','1'),(973,'345155','1','2015-07-04 13:58:18','1'),(974,'234202','1','2015-07-04 14:01:59','1'),(975,'213301','1','2015-07-04 14:03:16','1'),(976,'123302','1','2015-07-04 14:36:25','2'),(977,'006000','1','2015-07-07 15:45:08','1'),(978,'434005','1','2015-07-07 15:47:20','1'),(979,'008000','1','2015-07-07 15:54:16','1'),(980,'009000','1','2015-07-07 15:55:41','1'),(981,'001101','1','2015-07-08 12:53:16','1'),(982,'003101','1','2015-07-08 13:38:40','2'),(983,'099302','1','2015-07-08 21:36:09','1'),(984,'200101','1','2015-07-16 20:02:02','1'),(985,'201101','1','2015-07-16 20:02:19','1'),(986,'202101','1','2015-07-16 20:02:35','1'),(987,'203101','1','2015-07-16 20:03:04','1'),(988,'204101','1','2015-07-16 20:03:15','1'),(989,'205101','1','2015-07-16 20:03:26','1'),(990,'206101','1','2015-07-16 20:03:37','1'),(991,'207101','1','2015-07-16 20:03:49','1'),(992,'010101','1','2015-07-16 21:14:37','1'),(993,'011101','1','2015-07-16 21:20:11','1'),(994,'012101','1','2015-07-16 21:48:51','1'),(995,'013101','1','2015-07-16 21:50:23','1'),(996,'016101','1','2015-07-16 22:07:56','1'),(997,'017101','1','2015-07-16 22:08:50','1'),(998,'018101','1','2015-07-17 15:51:01','1'),(999,'019101','1','2015-07-17 15:52:26','1'),(1000,'02001101','1','2015-07-17 16:00:51','2'),(1001,'0200109601','1','2015-07-17 16:03:15','2'),(1002,'005601','1','2015-07-17 16:20:40','1'),(1003,'025601','1','2015-07-17 16:21:05','1'),(1004,'004604','1','2015-07-17 16:22:51','1'),(1005,'002305','1','2015-07-17 16:23:48','1'),(1006,'029101','1','2015-07-17 16:27:49','1'),(1007,'030401','1','2015-07-17 16:28:43','1'),(1008,'031601','1','2015-07-17 16:43:51','1'),(1009,'000000','1','2015-07-17 18:43:03','1'),(1010,'030601','Updating2015-07-2711:13:14','2015-07-27 16:13:14','1'),(1011,'100601','Updating2015-08-0309:57:37','2015-08-03 14:57:37','1'),(1012,'101601','1','2015-08-04 15:33:58','1'),(1013,'567601','Updating2015-09-1209:24:31','2015-09-12 14:24:31','1'),(1014,'789601','1','2015-09-11 15:26:07','1'),(1015,'765601','Updating2015-09-1209:25:18','2015-09-12 14:25:18','1'),(1016,'765902','Updating2015-09-1209:56:15','2015-09-12 14:56:15','1'),(1017,'002601','1','2016-04-11 16:05:01','1'),(1018,'001601','1','2016-04-11 20:19:53','1'),(1019,'555601','1','2016-04-27 15:39:50','1'),(1020,'500601','1','2016-05-03 12:08:43','1'),(1021,'180401','1','2016-07-18 13:36:09','1'),(1022,'800601','1','2016-07-18 21:12:19','1'),(1023,'100601','1','2016-07-23 14:28:59','1'),(1024,'566001','1','2016-07-29 12:55:29','1'),(1025,'1455667895','1','2016-07-29 19:40:37','1'),(1026,'8888888888','1','2016-07-29 19:49:33','1'),(1027,'8787878787','1','2016-08-01 14:48:27','1'),(1028,'5565656565','1','2016-08-01 15:48:23','1'),(1029,'5465446545','1','2016-08-01 15:53:33','1'),(1030,'7878998878','1','2016-08-01 16:01:09','1'),(1031,'899701','1','2016-08-01 16:01:45','1'),(1032,'1552245666','1','2016-08-02 16:21:12','1'),(1033,'5262626059','1','2016-08-02 16:37:54','1'),(1034,'656756','1','2016-08-02 16:42:33','1'),(1035,'1232154687','1','2016-08-02 16:56:46','1'),(1036,'5455456','1','2016-08-02 19:24:33','1'),(1037,'2186484616','1','2016-08-02 20:15:39','1'),(1038,'1024565656','1','2016-08-02 21:33:49','1'),(1039,'12','1','2016-08-02 22:01:28','1'),(1040,'123','1','2016-08-03 13:43:15',''),(1041,'12','1','2016-08-03 14:08:25','1'),(1042,'4562333','1','2016-08-03 14:45:36','1'),(1043,'4666666666','1','2016-08-03 14:50:57','1'),(1044,'4852136255','1','2016-08-03 15:06:52','1'),(1045,'4852136256','1','2016-08-03 15:08:53','1'),(1046,'66','1','2016-08-03 18:47:45','1'),(1047,'5487946456','1','2016-08-03 19:23:14','1'),(1048,'000566','1','2016-08-03 19:25:39','1'),(1049,'5556633','1','2016-08-03 19:30:36','1'),(1050,'0055','1','2016-08-03 19:31:08','1'),(1051,'5555','1','2016-08-03 19:33:13','1'),(1052,'5468412135','1','2016-08-09 15:53:41','1'),(1053,'001601','1','2016-08-11 16:35:26','1'),(1054,'920622','1','2016-08-11 16:36:27','1'),(1055,'002601','1','2016-08-11 16:37:15','1'),(1056,'931027','1','2016-08-11 16:37:38','1'),(1057,'1234567890','1','2016-08-11 16:43:24','1'),(1058,'931026','1','2016-08-11 21:03:51','1'),(1059,'901501','1','2016-08-11 21:08:25','1'),(1060,'55642','1','2016-08-11 21:08:36','1'),(1061,'902601','1','2016-08-11 21:23:10','1'),(1062,'54654','1','2016-08-11 21:23:29','1'),(1063,'003601','1','2016-08-12 13:34:34','1'),(1064,'903601','1','2016-08-12 14:10:17','1'),(1065,'521354','1','2016-08-12 14:11:30','1'),(1066,'904602','1','2016-08-12 14:20:42','1'),(1067,'5625455555','1','2016-08-12 14:20:54','1'),(1068,'1609','1','2016-08-12 14:26:06','1'),(1069,'1601','1','2016-08-12 14:44:24','1'),(1070,'904602','1','2016-08-12 14:45:47','1'),(1071,'931028','1','2016-08-12 15:14:11','1'),(1072,'931029','1','2016-08-12 15:18:09','1'),(1073,'931031','1','2016-08-12 15:19:28','1'),(1074,'546201','1','2016-08-12 15:20:32','1'),(1075,'1254','1','2016-08-12 19:22:05','1'),(1076,'35453','1','2016-08-12 19:22:48','1'),(1077,'931027','1','2016-08-23 16:23:59','1'),(1078,'1234','1','2016-08-23 16:35:26','1'),(1079,'002601','1','2016-08-23 16:36:34','1'),(1080,'001601','1','2016-08-23 16:37:31','1'),(1081,'1','1','2016-08-24 12:04:01','1'),(1082,'22','1','2016-08-24 12:04:23','1'),(1083,'333','1','2016-08-24 12:04:39','1'),(1084,'4444','1','2016-08-24 12:04:58','1'),(1085,'55555','1','2016-08-24 12:05:17','1'),(1086,'666666','1','2016-08-24 12:05:35','1'),(1087,'777777777','1','2016-08-24 12:07:22','1'),(1088,'88888888','1','2016-08-24 12:07:41','1'),(1089,'999999999','1','2016-08-24 12:08:03','1'),(1090,'1024545515','1','2016-08-24 12:08:36','1'),(1091,'8000','1','2016-08-24 12:08:52','1'),(1092,'1234567890','1','2016-08-24 16:20:23','1'),(1093,'504601','1','2016-08-29 21:10:32','1'),(1094,'800601','1','2016-09-19 22:43:59','1'),(1095,'505601','1','2016-09-21 15:18:58','1'),(1096,'600601','1','2016-09-21 20:32:40','1'),(1097,'003601','1','2016-09-22 19:20:35','1'),(1098,'010601','1','2016-09-28 14:54:02','1'),(1099,'750601','1','2016-09-29 19:33:17','1'),(1100,'001601','1','2016-12-16 22:08:44','1'),(1101,'600601','1','2016-12-16 22:22:03','1'),(1102,'001601','1','2017-02-07 19:32:53','1'),(1103,'002601','1','2017-02-14 21:28:09','1'),(1104,'001601','1','2017-03-31 21:02:14','2');
/*!40000 ALTER TABLE `ics_estado_autorizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_estado_billetes`
--

DROP TABLE IF EXISTS `ics_estado_billetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_estado_billetes` (
  `idics_estado_billetes` int(11) NOT NULL AUTO_INCREMENT,
  `bll_cantidad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bll_serial` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bll_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_estado_billetes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_estado_billetes`
--

LOCK TABLES `ics_estado_billetes` WRITE;
/*!40000 ALTER TABLE `ics_estado_billetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_estado_billetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_estado_senal`
--

DROP TABLE IF EXISTS `ics_estado_senal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_estado_senal` (
  `id_estado_senal` int(11) NOT NULL AUTO_INCREMENT,
  `ess_calidad` int(1) NOT NULL,
  `ess_intencidad` int(2) NOT NULL,
  `ess_dispensadora` varchar(15) NOT NULL,
  `ess_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_estado_senal`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_estado_senal`
--

LOCK TABLES `ics_estado_senal` WRITE;
/*!40000 ALTER TABLE `ics_estado_senal` DISABLE KEYS */;
INSERT INTO `ics_estado_senal` VALUES (1,55,9,'0000000024','2017-02-01 12:13:14'),(2,55,9,'0000000024','2017-02-01 12:16:04'),(3,55,9,'0000000024','2017-02-01 12:43:11'),(4,55,9,'0000000024','2017-02-01 21:22:38'),(5,55,9,'0000000024','2017-02-02 14:48:33'),(6,55,9,'0000000024','2017-02-02 15:14:41'),(7,55,9,'0000000024','2017-02-02 15:20:17'),(8,55,9,'0000000024','2017-02-02 16:13:14'),(9,55,9,'0000000024','2017-02-03 13:59:15'),(10,55,9,'0000000024','2017-02-03 16:10:39'),(11,55,9,'0000000024','2017-02-03 16:47:58'),(12,55,9,'0000000024','2017-02-03 17:29:28'),(13,55,9,'0000000024','2017-02-03 18:17:30'),(14,55,9,'0000000024','2017-02-03 18:53:35'),(15,55,9,'0000000024','2017-02-07 19:43:47'),(16,55,9,'0000000024','2017-02-07 19:49:03'),(17,55,9,'0000000024','2017-02-07 19:53:57'),(18,55,9,'0000000024','2017-02-07 20:42:13'),(19,55,9,'0000000024','2017-02-07 20:55:01'),(20,55,9,'0000000024','2017-02-07 20:57:56'),(21,55,9,'0000000024','2017-02-07 21:11:16'),(22,55,9,'0000000024','2017-02-07 21:17:30'),(23,55,9,'0000000024','2017-02-07 21:27:44'),(24,55,9,'0000000024','2017-02-07 21:28:41'),(25,55,9,'0000000024','2017-02-07 21:38:31'),(26,55,9,'0000000024','2017-02-07 21:40:59'),(27,55,9,'0000000024','2017-02-07 21:59:03'),(28,55,9,'0000000024','2017-02-07 22:08:40'),(29,55,9,'0000000024','2017-02-08 14:53:21'),(30,55,9,'0000000024','2017-02-08 19:27:55'),(31,55,9,'0000000024','2017-02-08 19:37:03'),(32,55,9,'0000000024','2017-02-08 19:56:22'),(33,55,9,'0000000024','2017-02-08 20:21:43'),(34,55,9,'0000000024','2017-02-14 20:12:44'),(35,55,9,'0000000024','2017-02-14 20:30:01'),(36,55,9,'0000000024','2017-02-14 20:46:25'),(37,55,9,'0000000024','2017-02-14 21:22:31'),(38,55,9,'0000000024','2017-02-14 21:53:17'),(39,55,9,'0000000024','2017-02-14 22:01:12'),(40,55,9,'0000000024','2017-02-14 22:07:17'),(41,55,9,'0000000024','2017-02-15 14:11:13'),(42,55,9,'0000000024','2017-02-15 14:29:31'),(43,55,9,'0000000024','2017-02-16 12:14:08'),(44,55,9,'0000000024','2017-02-17 16:56:56'),(45,55,9,'0000000024','2017-02-20 12:04:16'),(46,55,9,'0000000024','2017-02-20 12:17:01'),(47,55,9,'0000000024','2017-02-20 16:40:44'),(48,55,9,'0000000024','2017-02-21 19:15:03'),(49,55,9,'0000000024','2017-02-21 19:48:02'),(50,55,9,'0000000024','2017-02-21 20:20:06'),(51,55,9,'0000000024','2017-02-22 13:43:24'),(52,55,9,'0000000024','2017-02-22 13:45:59'),(53,55,9,'0000000024','2017-02-22 21:19:33'),(54,55,9,'0000000024','2017-03-02 16:23:27'),(55,55,9,'0000000024','2017-03-02 18:17:58'),(56,55,9,'0000000024','2017-03-02 18:19:24'),(57,55,9,'0000000024','2017-03-02 18:20:40'),(58,55,9,'0000000024','2017-03-02 18:24:49'),(59,55,9,'0000000024','2017-03-02 18:27:56'),(60,55,9,'0000000024','2017-03-02 18:57:33'),(61,55,9,'0000000024','2017-03-02 19:28:24'),(62,55,9,'0000000024','2017-03-03 12:26:13'),(63,55,9,'0000000024','2017-03-10 13:36:41'),(64,55,9,'0000000024','2017-03-10 14:20:41'),(65,55,9,'0000000024','2017-03-14 13:06:34'),(66,55,9,'0000000024','2017-03-15 17:02:13'),(67,55,9,'0000000024','2017-03-16 21:53:17'),(68,55,9,'0000000024','2017-03-16 21:59:16'),(69,55,9,'0000000024','2017-03-17 14:37:54'),(70,55,9,'0000000024','2017-03-17 15:14:37'),(71,55,9,'0000000024','2017-03-17 16:16:52'),(72,55,9,'0000000024','2017-03-18 13:41:03'),(73,55,9,'0000000024','2017-03-18 13:58:41'),(74,55,9,'0000000024','2017-03-18 14:13:14'),(75,55,9,'0000000024','2017-03-18 14:15:47'),(76,55,9,'0000000024','2017-03-18 14:22:17'),(77,55,9,'0000000024','2017-03-18 14:27:16'),(78,55,9,'0000000024','2017-03-18 14:36:51'),(79,55,9,'0000000024','2017-03-21 15:02:52'),(80,55,9,'0000000024','2017-03-21 15:02:59'),(81,55,9,'0000000024','2017-03-21 15:03:03'),(82,55,9,'0000000024','2017-03-21 21:53:53'),(83,55,9,'0000000024','2017-03-21 21:53:57'),(84,55,9,'0000000024','2017-03-21 21:54:02'),(85,55,9,'0000000024','2017-03-21 21:54:07'),(86,55,9,'0000000024','2017-03-21 21:54:11'),(87,55,9,'0000000024','2017-03-21 21:54:16'),(88,55,9,'0000000024','2017-03-21 21:54:21'),(89,55,9,'0000000024','2017-03-21 21:54:25'),(90,55,9,'0000000024','2017-03-21 21:54:30'),(91,55,9,'0000000024','2017-03-21 21:54:34'),(92,55,9,'0000000024','2017-03-21 21:54:39'),(93,55,9,'0000000024','2017-03-21 21:54:44'),(94,55,9,'0000000024','2017-03-21 21:54:48'),(95,55,9,'0000000024','2017-03-21 21:54:53'),(96,55,9,'0000000024','2017-03-21 21:54:57'),(97,55,9,'0000000024','2017-03-21 21:55:02'),(98,55,9,'0000000024','2017-03-21 21:55:07'),(99,55,9,'0000000024','2017-03-21 21:55:11'),(100,55,9,'0000000024','2017-03-21 21:55:16'),(101,55,9,'0000000024','2017-03-21 21:55:21'),(102,55,9,'0000000024','2017-03-21 21:55:25'),(103,55,9,'0000000024','2017-03-21 21:55:30'),(104,55,9,'0000000024','2017-03-21 21:55:34'),(105,55,9,'0000000024','2017-03-21 21:55:39'),(106,55,9,'0000000024','2017-03-21 21:55:44'),(107,55,9,'0000000024','2017-03-21 21:55:48'),(108,55,9,'0000000024','2017-03-21 21:55:53'),(109,55,9,'0000000024','2017-03-21 21:55:58'),(110,55,9,'0000000024','2017-03-21 21:56:02'),(111,55,9,'0000000024','2017-03-21 21:56:07'),(112,55,9,'0000000024','2017-03-21 21:56:41'),(113,55,9,'0000000024','2017-03-21 21:56:46'),(114,55,9,'0000000024','2017-03-21 21:56:51'),(115,55,9,'0000000024','2017-03-21 21:56:55'),(116,55,9,'0000000024','2017-03-21 21:57:00'),(117,55,9,'0000000024','2017-03-21 21:57:05'),(118,55,9,'0000000024','2017-03-21 21:57:09'),(119,55,9,'0000000024','2017-03-21 21:57:14'),(120,55,9,'0000000024','2017-03-21 21:57:18'),(121,55,9,'0000000024','2017-03-21 21:57:23'),(122,55,9,'0000000024','2017-03-21 21:57:28'),(123,55,9,'0000000024','2017-03-21 21:57:32'),(124,55,9,'0000000024','2017-03-21 21:57:37'),(125,55,9,'0000000024','2017-03-21 21:57:42'),(126,55,9,'0000000024','2017-03-21 21:57:46'),(127,55,9,'0000000024','2017-03-21 21:57:51'),(128,55,9,'0000000024','2017-03-21 21:57:55'),(129,55,9,'0000000024','2017-03-21 21:58:00'),(130,55,9,'0000000024','2017-03-21 21:58:05'),(131,55,9,'0000000024','2017-03-21 21:58:09'),(132,55,9,'0000000024','2017-03-21 21:58:14'),(133,55,9,'0000000024','2017-03-21 21:58:18'),(134,55,9,'0000000024','2017-03-21 21:58:23'),(135,55,9,'0000000024','2017-03-21 21:58:28'),(136,55,9,'0000000024','2017-03-21 21:58:32'),(137,55,9,'0000000024','2017-03-21 21:58:37'),(138,55,9,'0000000024','2017-03-21 21:58:42'),(139,55,9,'0000000024','2017-03-21 21:58:46'),(140,55,9,'0000000024','2017-03-21 21:58:51'),(141,55,9,'0000000024','2017-03-21 21:58:55'),(142,55,9,'0000000024','2017-03-21 21:59:00'),(143,55,9,'0000000024','2017-03-21 21:59:05'),(144,55,9,'0000000024','2017-03-21 21:59:09'),(145,55,9,'0000000024','2017-03-21 21:59:14'),(146,55,9,'0000000024','2017-03-21 21:59:19'),(147,55,9,'0000000024','2017-03-21 21:59:23'),(148,55,9,'0000000024','2017-03-21 21:59:28'),(149,55,9,'0000000024','2017-03-21 21:59:32'),(150,55,9,'0000000024','2017-03-21 21:59:37'),(151,55,9,'0000000024','2017-03-21 21:59:42'),(152,55,9,'0000000024','2017-03-21 21:59:46'),(153,55,9,'0000000024','2017-03-21 21:59:50'),(154,55,9,'0000000024','2017-03-21 21:59:51'),(155,55,9,'0000000024','2017-03-21 21:59:56'),(156,55,9,'0000000024','2017-03-21 22:00:00'),(157,55,9,'0000000024','2017-03-21 22:00:05'),(158,55,9,'0000000024','2017-03-21 22:00:09'),(159,55,9,'0000000024','2017-03-21 22:00:14'),(160,55,9,'0000000024','2017-03-21 22:00:19'),(161,55,9,'0000000024','2017-03-21 22:00:23'),(162,55,9,'0000000024','2017-03-21 22:00:28'),(163,55,9,'0000000024','2017-03-21 22:00:33'),(164,55,9,'0000000024','2017-03-21 22:00:37'),(165,55,9,'0000000024','2017-03-21 22:00:42'),(166,55,9,'0000000024','2017-03-21 22:00:46'),(167,55,9,'0000000024','2017-03-21 22:00:51'),(168,55,9,'0000000024','2017-03-21 22:00:56'),(169,55,9,'0000000024','2017-03-21 22:01:00'),(170,55,9,'0000000024','2017-03-21 22:01:05'),(171,55,9,'0000000024','2017-03-21 22:01:10'),(172,55,9,'0000000024','2017-03-21 22:01:14'),(173,55,9,'0000000024','2017-03-21 22:01:19'),(174,55,9,'0000000024','2017-03-21 22:01:23'),(175,55,9,'0000000024','2017-03-21 22:01:28'),(176,55,9,'0000000024','2017-03-21 22:01:33'),(177,55,9,'0000000024','2017-03-21 22:01:37'),(178,55,9,'0000000024','2017-03-21 22:01:42'),(179,55,9,'0000000024','2017-03-21 22:01:47'),(180,55,9,'0000000024','2017-03-21 22:01:51'),(181,55,9,'0000000024','2017-03-21 22:01:56'),(182,55,9,'0000000024','2017-03-21 22:02:00'),(183,55,9,'0000000024','2017-03-21 22:02:05'),(184,55,9,'0000000024','2017-03-21 22:02:10'),(185,55,9,'0000000024','2017-03-21 22:02:14'),(186,55,9,'0000000024','2017-03-21 22:02:19'),(187,55,9,'0000000024','2017-03-21 22:02:24'),(188,55,9,'0000000024','2017-03-21 22:02:28'),(189,55,9,'0000000024','2017-03-21 22:02:33'),(190,55,9,'0000000024','2017-03-21 22:02:37'),(191,55,9,'0000000024','2017-03-21 22:02:42'),(192,55,9,'0000000024','2017-03-21 22:02:47'),(193,55,9,'0000000024','2017-03-21 22:02:51'),(194,55,9,'0000000024','2017-03-21 22:02:56'),(195,55,9,'0000000024','2017-03-21 22:03:00'),(196,55,9,'0000000024','2017-03-21 22:03:05'),(197,55,9,'0000000024','2017-03-21 22:03:10'),(198,55,9,'0000000024','2017-03-21 22:03:14'),(199,55,9,'0000000024','2017-03-21 22:03:19'),(200,55,9,'0000000024','2017-03-21 22:03:24'),(201,55,9,'0000000024','2017-03-21 22:03:28'),(202,55,9,'0000000024','2017-03-21 22:03:33'),(203,55,9,'0000000024','2017-03-21 22:03:37'),(204,55,9,'0000000024','2017-03-21 22:03:42'),(205,55,9,'0000000024','2017-03-21 22:03:47'),(206,55,9,'0000000024','2017-03-21 22:03:51'),(207,55,9,'0000000024','2017-03-21 22:03:56'),(208,55,9,'0000000024','2017-03-21 22:04:01'),(209,55,9,'0000000024','2017-03-21 22:04:06'),(210,55,9,'0000000024','2017-03-21 22:04:10'),(211,55,9,'0000000024','2017-03-21 22:04:14'),(212,55,9,'0000000024','2017-03-21 22:04:19'),(213,55,9,'0000000024','2017-03-21 22:04:24'),(214,55,9,'0000000024','2017-03-21 22:04:28'),(215,55,9,'0000000024','2017-03-21 22:04:33'),(216,55,9,'0000000024','2017-03-21 22:04:38'),(217,55,9,'0000000024','2017-03-21 22:04:42'),(218,55,9,'0000000024','2017-03-21 22:04:47'),(219,55,9,'0000000024','2017-03-21 22:04:51'),(220,55,9,'0000000024','2017-03-23 20:59:26'),(221,55,9,'0000000024','2017-03-23 21:36:17'),(222,55,9,'0000000024','2017-03-23 21:40:46'),(223,55,9,'0000000024','2017-03-23 21:48:20'),(224,55,9,'0000000024','2017-03-24 18:45:00'),(225,55,9,'0000000024','2017-03-24 19:00:38'),(226,55,9,'0000000024','2017-03-24 21:43:21'),(227,55,9,'0000000024','2017-03-25 12:14:55'),(228,55,9,'0000000024','2017-03-25 12:23:08'),(229,55,9,'0000000024','2017-03-25 13:43:49'),(230,55,9,'0000000024','2017-03-25 13:50:11'),(231,55,9,'0000000015','2017-03-29 21:56:52'),(232,55,9,'0000000015','2017-03-29 22:17:01'),(233,55,9,'0000000024','2017-03-30 13:07:04'),(234,55,9,'0000000024','2017-03-30 13:19:19'),(235,55,9,'0000000024','2017-03-30 13:52:39'),(236,55,9,'0000000024','2017-03-30 14:09:59'),(237,55,9,'0000000024','2017-03-30 14:25:09'),(238,55,9,'0000000024','2017-03-30 14:39:26'),(239,55,9,'0000000024','2017-03-30 15:46:42'),(240,55,9,'0000000024','2017-03-30 18:19:59'),(241,55,9,'0000000024','2017-03-30 18:29:21'),(242,55,9,'0000000024','2017-03-30 22:05:49'),(243,55,9,'0000000024','2017-03-31 14:30:34'),(244,55,9,'0000000024','2017-03-31 21:00:40'),(245,55,9,'0000000015','2017-03-31 21:08:45'),(246,55,9,'0000000015','2017-03-31 21:15:30'),(247,55,9,'0000000015','2017-03-31 21:24:22'),(248,55,9,'0000000015','2017-03-31 21:25:40'),(249,55,9,'0000000015','2017-03-31 21:32:06'),(250,55,9,'0000000015','2017-03-31 21:37:23'),(251,55,9,'0000000015','2017-03-31 21:42:21'),(252,55,9,'0000000015','2017-03-31 21:55:45'),(253,55,9,'0000000015','2017-04-01 12:45:32'),(254,55,9,'0000000015','2017-04-01 12:57:02'),(255,55,9,'0000000015','2017-04-01 13:06:10'),(256,55,9,'0000000015','2017-04-01 13:20:39'),(257,55,9,'0000000015','2017-04-01 13:45:54'),(258,55,9,'0000000015','2017-04-01 13:56:55'),(259,55,9,'0000000015','2017-04-01 14:15:13'),(260,55,9,'0000000015','2017-04-01 14:24:22'),(261,55,9,'0000000015','2017-04-01 14:57:02'),(262,55,9,'0000000024','2017-04-03 12:51:28'),(263,55,9,'0000000024','2017-04-03 18:21:58'),(264,55,9,'0000000024','2017-04-04 13:18:14'),(265,55,9,'0000000024','2017-04-05 18:47:54'),(266,55,9,'0000000024','2017-04-05 18:51:59'),(267,55,9,'0000000024','2017-04-05 18:56:49'),(268,55,9,'0000000024','2017-04-05 19:14:11'),(269,55,9,'0000000024','2017-04-05 19:17:56'),(270,55,9,'0000000024','2017-04-05 19:19:30'),(271,55,9,'0000000015','2017-04-05 20:50:18'),(272,55,9,'0000000015','2017-04-05 20:54:39'),(273,55,9,'0000000024','2017-04-05 22:18:18'),(274,55,9,'0000000024','2017-04-05 22:49:04'),(275,55,9,'0000000024','2017-04-05 23:02:36'),(276,55,9,'0000000024','2017-04-05 23:04:45'),(277,55,9,'0000000024','2017-04-06 12:38:05'),(278,55,9,'0000000024','2017-04-06 12:38:09'),(279,55,9,'0000000024','2017-04-06 12:38:14'),(280,55,9,'0000000024','2017-04-06 12:38:18'),(281,55,9,'0000000024','2017-04-06 12:38:23'),(282,55,9,'0000000024','2017-04-06 12:38:28'),(283,55,9,'0000000024','2017-04-06 12:58:04'),(284,55,9,'0000000024','2017-04-06 12:58:31'),(285,55,9,'0000000024','2017-04-06 12:58:58'),(286,55,9,'0000000024','2017-04-06 12:59:26'),(287,55,9,'0000000024','2017-04-06 13:00:54'),(288,55,9,'0000000024','2017-04-06 13:07:13'),(289,55,9,'0000000024','2017-04-06 13:08:18'),(290,55,9,'0000000024','2017-04-06 19:20:55'),(291,55,9,'0000000024','2017-04-06 20:35:44'),(292,55,9,'0000000024','2017-04-06 20:49:53'),(293,55,9,'0000000024','2017-04-08 14:55:39'),(294,55,9,'0000000024','2017-04-08 14:58:07'),(295,55,9,'0000000024','2017-04-08 15:02:38'),(296,55,9,'0000000024','2017-04-10 14:05:14'),(297,55,9,'0000000024','2017-04-10 14:07:00'),(298,55,9,'0000000024','2017-04-10 14:12:45'),(299,55,9,'0000000024','2017-04-10 14:13:35'),(300,55,9,'0000000024','2017-04-10 14:21:05'),(301,55,9,'0000000024','2017-04-10 14:22:22'),(302,55,9,'0000000024','2017-04-10 19:59:04'),(303,55,9,'0000000024','2017-04-10 20:02:12'),(304,55,9,'0000000024','2017-04-10 22:03:55'),(305,55,9,'0000000024','2017-04-11 12:15:58'),(306,55,9,'0000000024','2017-04-11 20:08:22'),(307,55,9,'0000000024','2017-04-11 20:09:32'),(308,55,9,'0000000024','2017-04-11 21:46:11'),(309,55,9,'0000000024','2017-04-18 15:20:54'),(310,55,9,'0000000024','2017-04-18 15:27:43'),(311,55,9,'0000000024','2017-04-18 18:55:53'),(312,55,9,'0000000024','2017-04-18 18:59:10'),(313,55,9,'0000000024','2017-04-18 19:11:39'),(314,55,9,'0000000024','2017-04-18 19:25:15'),(315,55,9,'0000000024','2017-04-18 19:34:38'),(316,55,9,'0000000024','2017-04-18 19:43:45'),(317,55,9,'0000000024','2017-04-18 19:58:09'),(318,55,9,'0000000024','2017-04-18 20:25:00'),(319,55,9,'0000000024','2017-04-19 13:33:42'),(320,55,9,'0000000024','2017-04-19 13:34:08'),(321,55,9,'0000000024','2017-04-19 14:02:57'),(322,55,9,'0000000024','2017-04-19 14:06:29'),(323,55,9,'0000000024','2017-04-19 14:07:02'),(324,55,9,'0000000024','2017-04-20 18:01:40'),(325,55,9,'0000000024','2017-04-20 18:18:45'),(326,55,9,'0000000024','2017-04-21 14:13:26'),(327,55,9,'0000000024','2017-04-21 14:28:11'),(328,55,9,'0000000024','2017-04-21 14:51:43'),(329,55,9,'0000000024','2017-04-24 12:27:38'),(330,55,9,'0000000024','2017-04-24 12:34:14'),(331,55,9,'0000000024','2017-04-24 12:35:51'),(332,55,9,'0000000024','2017-04-24 12:38:29'),(333,55,9,'0000000024','2017-04-24 13:52:46'),(334,55,9,'0000000024','2017-04-24 20:10:52'),(335,55,9,'0000000024','2017-04-24 20:12:37'),(336,55,9,'0000000024','2017-04-24 20:21:51'),(337,55,9,'0000000024','2017-04-24 20:23:43'),(338,55,9,'0000000024','2017-04-24 20:26:11'),(339,55,9,'0000000024','2017-04-25 14:49:26'),(340,55,9,'0000000024','2017-04-25 15:16:47'),(341,55,9,'0000000024','2017-04-25 15:17:36'),(342,55,9,'0000000024','2017-04-25 15:28:39'),(343,55,9,'0000000024','2017-04-25 15:38:57'),(344,55,9,'0000000024','2017-04-25 16:13:08'),(345,55,9,'0000000024','2017-04-25 18:33:25'),(346,55,9,'0000000024','2017-04-25 18:36:12'),(347,55,9,'0000000024','2017-04-26 13:31:30'),(348,55,9,'0000000024','2017-04-26 14:10:31'),(349,55,9,'0000000024','2017-04-26 15:56:03'),(350,55,9,'0000000024','2017-04-27 14:53:51'),(351,55,9,'0000000024','2017-04-27 14:58:33'),(352,55,9,'0000000024','2017-04-27 16:29:30'),(353,55,9,'0000000024','2017-04-27 16:42:18'),(354,31,0,'0017773962','2018-02-24 12:41:57'),(355,31,0,'0017773962','2018-02-26 12:26:46'),(356,22,0,'0017773962','2018-04-04 13:24:27'),(357,27,0,'0017773962','2018-04-04 13:55:54'),(358,28,0,'0017773962','2018-04-06 20:12:18'),(359,28,0,'0017773962','2018-04-06 20:21:06'),(360,28,0,'0017773962','2018-04-06 20:29:29'),(361,28,0,'0017773962','2018-04-06 20:34:26'),(362,28,0,'0017773962','2018-04-06 20:59:06'),(363,27,0,'0017773962','2018-04-06 21:38:53'),(364,28,0,'0017773962','2018-04-06 22:52:24'),(365,26,0,'0017773962','2018-04-09 11:33:15'),(366,25,0,'0017773962','2018-04-09 13:18:52'),(367,24,0,'0017773962','2018-04-09 13:26:04'),(368,24,0,'0017773962','2018-04-09 14:27:36'),(369,25,0,'0017773962','2018-04-09 14:40:35'),(370,26,0,'0017773962','2018-04-09 14:46:22'),(371,27,0,'0017773962','2018-04-09 15:03:33'),(372,27,0,'0017773962','2018-04-09 15:08:21'),(373,27,0,'0017773962','2018-04-09 15:15:06'),(374,24,0,'0017773962','2018-04-09 15:23:22');
/*!40000 ALTER TABLE `ics_estado_senal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_estado_venta`
--

DROP TABLE IF EXISTS `ics_estado_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_estado_venta` (
  `idics_estado_autorizacion` int(11) NOT NULL AUTO_INCREMENT,
  `aut_usr` varchar(45) DEFAULT NULL,
  `aut_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `flag_venta` varchar(45) DEFAULT '0' COMMENT '1 venta realizada ',
  `aut_cl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_estado_autorizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_estado_venta`
--

LOCK TABLES `ics_estado_venta` WRITE;
/*!40000 ALTER TABLE `ics_estado_venta` DISABLE KEYS */;
INSERT INTO `ics_estado_venta` VALUES (1,'002601','2015-02-10 20:03:28','1','1'),(2,'003601','2015-02-10 20:03:28','1','1'),(3,'004601','2015-02-10 20:03:28','1','1'),(4,'005601','2015-02-10 20:03:28','1','1'),(5,'006601','2015-02-10 20:03:28','1','1'),(6,'007901','2015-02-10 20:03:28','1','1'),(7,'008601','2015-02-10 20:03:28','1','1'),(8,'009301','2015-02-10 20:03:28','1','1'),(9,'010601','2015-02-10 20:03:28','0','1'),(10,'011601','2015-02-10 20:03:28','1','1'),(11,'012601','2015-02-10 20:03:28','0','1'),(12,'013601','2015-02-10 20:03:28','1','1'),(13,'014601','2015-02-10 20:03:28','1','1'),(14,'015601','2015-02-10 20:03:28','1','1'),(15,'016601','2015-02-10 20:03:28','1','1'),(16,'017601','2015-02-10 20:03:28','1','1'),(17,'018601','2015-02-10 20:03:28','1','1'),(18,'019601','2015-02-10 20:03:28','1','1'),(19,'020601','2015-02-10 20:03:28','0','1'),(20,'021601','2015-02-10 20:03:28','1','1'),(21,'022601','2015-02-10 20:03:28','1','1'),(22,'023601','2015-02-10 20:03:28','1','1'),(23,'024601','2015-02-10 20:03:28','0','1'),(24,'025601','2015-02-10 20:03:28','1','1'),(25,'026601','2015-02-10 20:03:28','1','1'),(26,'027601','2015-02-10 20:03:28','1','1'),(27,'028601','2015-02-10 20:03:28','1','1'),(28,'029601','2015-02-10 20:03:28','0','1'),(29,'030601','2015-02-10 20:03:28','0','1'),(30,'031601','2015-02-10 20:03:28','1','1'),(31,'032601','2015-02-10 20:03:28','1','1'),(32,'033601','2015-02-10 20:03:28','1','1'),(33,'034601','2015-02-10 20:03:28','0','1'),(34,'035601','2015-02-10 20:03:28','1','1'),(35,'036601','2015-02-10 20:03:28','1','1'),(36,'037601','2015-02-10 20:03:28','1','1'),(37,'038601','2015-02-10 20:03:28','1','1'),(38,'039601','2015-02-10 20:03:28','0','1'),(39,'040601','2015-02-10 20:03:28','1','1'),(40,'041601','2015-02-10 20:03:28','1','1'),(41,'042601','2015-02-10 20:03:28','1','1'),(42,'043601','2015-02-10 20:03:28','1','1'),(43,'044601','2015-02-10 20:03:28','1','1'),(44,'045601','2015-02-10 20:03:28','1','1'),(45,'046601','2015-02-10 20:03:28','1','1'),(46,'047601','2015-02-10 20:03:28','0','1'),(47,'048601','2015-02-10 20:03:28','1','1'),(48,'049601','2015-02-10 20:03:28','1','1'),(49,'050601','2015-02-10 20:03:28','1','1'),(50,'051301','2015-02-10 20:03:28','1','1'),(51,'052601','2015-02-10 20:03:28','1','1'),(52,'053601','2015-02-10 20:03:28','1','1'),(53,'054601','2015-02-10 20:03:28','1','1'),(54,'055601','2015-02-10 20:03:28','1','1'),(55,'056601','2015-02-10 20:03:28','1','1'),(56,'057301','2015-02-10 20:03:28','1','1'),(57,'058601','2015-02-10 20:03:28','1','1'),(58,'059601','2015-02-10 20:03:28','0','1'),(59,'060601','2015-02-10 20:03:28','1','1'),(60,'061601','2015-02-10 20:03:28','1','1'),(61,'062601','2015-02-10 20:03:28','1','1'),(62,'063601','2015-02-10 20:03:28','1','1'),(63,'064601','2015-02-10 20:03:28','1','1'),(64,'065601','2015-02-10 20:03:28','1','1'),(65,'066601','2015-02-10 20:03:28','0','1'),(66,'067601','2015-02-10 20:03:28','1','1'),(67,'068601','2015-02-10 20:03:28','0','1'),(68,'069601','2015-02-10 20:03:28','0','1'),(69,'070601','2015-02-10 20:03:28','1','1'),(70,'071601','2015-02-10 20:03:28','1','1'),(71,'072601','2015-02-10 20:03:28','1','1'),(72,'073601','2015-02-10 20:03:28','1','1'),(73,'074601','2015-02-10 20:03:28','1','1'),(74,'075601','2015-02-10 20:03:28','1','1'),(75,'076601','2015-02-10 20:03:28','1','1'),(76,'077601','2015-02-10 20:03:28','1','1'),(77,'078601','2015-02-10 20:03:28','1','1'),(78,'079601','2015-02-10 20:03:28','0','1'),(79,'080601','2015-02-10 20:03:28','1','1'),(80,'081601','2015-02-10 20:03:28','0','1'),(81,'082601','2015-02-10 20:03:28','1','1'),(82,'083601','2015-02-10 20:03:28','1','1'),(83,'084601','2015-02-10 20:03:28','0','1'),(84,'085601','2015-02-10 20:03:28','1','1'),(85,'086601','2015-02-10 20:03:28','0','1'),(86,'087601','2015-02-10 20:03:28','0','1'),(87,'088601','2015-02-10 20:03:28','1','1'),(88,'089601','2015-02-10 20:03:28','1','1'),(89,'090601','2015-02-10 20:03:28','0','1'),(90,'091601','2015-02-10 20:03:28','1','1'),(91,'092601','2015-02-10 20:03:28','1','1'),(92,'093601','2015-02-10 20:03:28','1','1'),(93,'094601','2015-02-10 20:03:28','1','1'),(94,'095601','2015-02-10 20:03:28','1','1'),(95,'096601','2015-02-10 20:03:28','1','1'),(96,'097601','2015-02-10 20:03:28','1','1'),(97,'098601','2015-02-10 20:03:28','1','1'),(98,'099601','2015-02-10 20:03:28','1','1'),(99,'100601','2015-02-10 20:03:28','1','1'),(100,'101601','2015-02-10 20:03:28','1','1'),(101,'102601','2015-02-10 20:03:28','1','1'),(102,'103601','2015-02-10 20:03:28','1','1'),(103,'104601','2015-02-10 20:03:28','1','1'),(104,'105601','2015-02-10 20:03:28','1','1'),(105,'106601','2015-02-10 20:03:28','1','1'),(106,'107601','2015-02-10 20:03:28','1','1'),(107,'108601','2015-02-10 20:03:28','1','1'),(108,'109601','2015-02-10 20:03:28','1','1'),(109,'110601','2015-02-10 20:03:28','1','1'),(110,'111601','2015-02-10 20:03:28','1','1'),(111,'112601','2015-02-10 20:03:28','1','1'),(112,'113601','2015-02-10 20:03:28','1','1'),(113,'114601','2015-02-10 20:03:28','1','1'),(114,'115601','2015-02-10 20:03:28','1','1'),(115,'116601','2015-02-10 20:03:28','1','1'),(116,'117601','2015-02-10 20:03:28','1','1'),(117,'118601','2015-02-10 20:03:28','1','1'),(118,'119601','2015-02-10 20:03:28','1','1'),(119,'120601','2015-02-10 20:03:28','1','1'),(120,'121601','2015-02-10 20:03:28','1','1'),(121,'122601','2015-02-10 20:03:28','1','1'),(122,'123601','2015-02-10 20:03:28','1','1'),(123,'124601','2015-02-10 20:03:28','0','1'),(124,'125601','2015-02-10 20:03:28','1','1'),(125,'126601','2015-02-10 20:03:28','1','1'),(126,'127601','2015-02-10 20:03:28','1','1'),(127,'128601','2015-02-10 20:03:28','1','1'),(128,'129601','2015-02-10 20:03:28','1','1'),(129,'130601','2015-02-10 20:03:28','1','1'),(130,'131601','2015-02-10 20:03:28','1','1'),(131,'132601','2015-02-10 20:03:28','1','1'),(132,'133001','2015-02-10 20:03:28','1','1'),(133,'143501','2015-02-10 20:03:28','0','1'),(134,'142601','2015-02-10 20:03:28','0','1'),(135,'134601','2015-02-10 20:03:28','1','1'),(136,'141601','2015-02-10 20:03:28','1','1'),(137,'135601','2015-02-10 20:03:28','1','1'),(138,'136601','2015-02-10 20:03:28','1','1'),(139,'140601','2015-02-10 20:03:28','1','1'),(140,'137601','2015-02-10 20:03:28','1','1'),(141,'139601','2015-02-10 20:03:28','1','1'),(142,'138601','2015-02-10 20:03:28','1','1'),(143,'888601','2015-02-10 20:03:28','0','1'),(144,'144601','2015-02-10 20:03:28','0','1'),(145,'145601','2015-02-10 20:03:28','1','1'),(146,'146601','2015-02-10 20:03:28','1','1'),(147,'147601','2015-02-10 20:03:28','1','1'),(148,'148601','2015-02-10 20:03:28','1','1'),(149,'149601','2015-02-10 20:03:28','1','1'),(150,'150601','2015-02-10 20:03:28','1','1'),(151,'151601','2015-02-10 20:03:28','1','1'),(152,'152601','2015-02-10 20:03:28','1','1'),(153,'153601','2015-02-10 20:03:28','1','1'),(154,'154601','2015-02-10 20:03:28','1','1'),(155,'155601','2015-02-10 20:03:28','1','1'),(156,'156601','2015-02-10 20:03:28','0','1'),(157,'157601','2015-02-10 20:03:28','1','1'),(158,'158601','2015-02-10 20:03:28','1','1'),(159,'159601','2015-02-10 20:03:28','1','1'),(160,'160601','2015-02-10 20:03:28','1','1'),(161,'161601','2015-02-10 20:03:28','0','1'),(162,'162601','2015-02-10 20:03:28','1','1'),(163,'163601','2015-02-10 20:03:28','1','1'),(164,'164601','2015-02-10 20:03:28','0','1'),(165,'165601','2015-02-10 20:03:28','0','1'),(166,'171601','2015-02-10 20:03:28','1','1'),(167,'170601','2015-02-10 20:03:28','0','1'),(168,'169601','2015-02-10 20:03:28','1','1'),(169,'168601','2015-02-10 20:03:28','1','1'),(170,'167601','2015-02-10 20:03:28','1','1'),(171,'166601','2015-02-10 20:03:28','1','1'),(172,'172601','2015-02-10 20:03:28','1','1'),(173,'173601','2015-02-10 20:03:28','0','1'),(174,'174301','2015-02-10 20:03:28','1','1'),(175,'175601','2015-02-10 20:03:28','0','1'),(176,'176601','2015-02-10 20:03:28','1','1'),(177,'177601','2015-02-10 20:03:28','1','1'),(178,'178601','2015-02-10 20:03:28','0','1'),(179,'889601','2015-02-10 20:03:28','0','1'),(180,'180601','2015-02-10 20:03:28','0','1'),(181,'001602','2015-02-10 20:03:28','1','1'),(182,'002602','2015-02-10 20:03:28','1','1'),(183,'003602','2015-02-10 20:03:28','1','1'),(184,'004602','2015-02-10 20:03:28','0','1'),(185,'005602','2015-02-10 20:03:28','0','1'),(186,'006602','2015-02-10 20:03:28','1','1'),(187,'007602','2015-02-10 20:03:28','1','1'),(188,'008602','2015-02-10 20:03:28','1','1'),(189,'009602','2015-02-10 20:03:28','0','1'),(190,'010602','2015-02-10 20:03:28','1','1'),(191,'011602','2015-02-10 20:03:28','1','1'),(192,'012602','2015-02-10 20:03:28','1','1'),(193,'013602','2015-02-10 20:03:28','0','1'),(194,'014602','2015-02-10 20:03:28','1','1'),(195,'015602','2015-02-10 20:03:28','0','1'),(196,'016602','2015-02-10 20:03:28','1','1'),(197,'017602','2015-02-10 20:03:28','1','1'),(198,'018602','2015-02-10 20:03:28','1','1'),(199,'019602','2015-02-10 20:03:28','1','1'),(200,'020602','2015-02-10 20:03:28','1','1'),(201,'021602','2015-02-10 20:03:28','1','1'),(202,'022602','2015-02-10 20:03:28','1','1'),(203,'023602','2015-02-10 20:03:28','0','1'),(204,'024602','2015-02-10 20:03:28','1','1'),(205,'025602','2015-02-10 20:03:28','1','1'),(206,'026602','2015-02-10 20:03:28','0','1'),(207,'027602','2015-02-10 20:03:28','1','1'),(208,'028602','2015-02-10 20:03:28','1','1'),(209,'029602','2015-02-10 20:03:28','1','1'),(210,'030602','2015-02-10 20:03:28','1','1'),(211,'031602','2015-02-10 20:03:28','1','1'),(212,'032602','2015-02-10 20:03:28','1','1'),(213,'033602','2015-02-10 20:03:28','1','1'),(214,'034602','2015-02-10 20:03:28','1','1'),(215,'035602','2015-02-10 20:03:28','1','1'),(216,'036602','2015-02-10 20:03:28','1','1'),(217,'037602','2015-02-10 20:03:28','1','1'),(218,'038602','2015-02-10 20:03:28','1','1'),(219,'039602','2015-02-10 20:03:28','1','1'),(220,'040602','2015-02-10 20:03:28','1','1'),(221,'041602','2015-02-10 20:03:28','1','1'),(222,'042602','2015-02-10 20:03:28','1','1'),(223,'043602','2015-02-10 20:03:28','1','1'),(224,'044602','2015-02-10 20:03:28','1','1'),(225,'045602','2015-02-10 20:03:28','1','1'),(226,'046602','2015-02-10 20:03:28','1','1'),(227,'047602','2015-02-10 20:03:28','1','1'),(228,'048602','2015-02-10 20:03:28','1','1'),(229,'049602','2015-02-10 20:03:28','0','1'),(230,'050602','2015-02-10 20:03:28','0','1'),(231,'051602','2015-02-10 20:03:28','1','1'),(232,'052602','2015-02-10 20:03:28','1','1'),(233,'053602','2015-02-10 20:03:28','1','1'),(234,'054302','2015-02-10 20:03:28','0','1'),(235,'055602','2015-02-10 20:03:28','1','1'),(236,'056602','2015-02-10 20:03:28','1','1'),(237,'057602','2015-02-10 20:03:28','1','1'),(238,'058602','2015-02-10 20:03:28','1','1'),(239,'059602','2015-02-10 20:03:28','1','1'),(240,'060602','2015-02-10 20:03:28','0','1'),(241,'061602','2015-02-10 20:03:28','1','1'),(242,'062602','2015-02-10 20:03:28','1','1'),(243,'063602','2015-02-10 20:03:28','0','1'),(244,'064602','2015-02-10 20:03:28','0','1'),(245,'065602','2015-02-10 20:03:28','0','1'),(246,'066602','2015-02-10 20:03:28','1','1'),(247,'067602','2015-02-10 20:03:28','1','1'),(248,'068602','2015-02-10 20:03:28','1','1'),(249,'069602','2015-02-10 20:03:28','1','1'),(250,'070602','2015-02-10 20:03:28','1','1'),(251,'071602','2015-02-10 20:03:28','0','1'),(252,'072602','2015-02-10 20:03:28','1','1'),(253,'073602','2015-02-10 20:03:28','1','1'),(254,'074602','2015-02-10 20:03:28','0','1'),(255,'075602','2015-02-10 20:03:28','1','1'),(256,'076602','2015-02-10 20:03:28','1','1'),(257,'077602','2015-02-10 20:03:28','1','1'),(258,'078602','2015-02-10 20:03:28','1','1'),(259,'079602','2015-02-10 20:03:28','1','1'),(260,'080602','2015-02-10 20:03:28','1','1'),(261,'081602','2015-02-10 20:03:28','1','1'),(262,'082602','2015-02-10 20:03:28','1','1'),(263,'083602','2015-02-10 20:03:28','1','1'),(264,'084602','2015-02-10 20:03:28','1','1'),(265,'085302','2015-02-10 20:03:28','0','1'),(266,'086602','2015-02-10 20:03:28','1','1'),(267,'087602','2015-02-10 20:03:28','1','1'),(268,'088602','2015-02-10 20:03:28','1','1'),(269,'089602','2015-02-10 20:03:28','1','1'),(270,'090602','2015-02-10 20:03:28','1','1'),(271,'091602','2015-02-10 20:03:28','0','1'),(272,'092602','2015-02-10 20:03:28','0','1'),(273,'093602','2015-02-10 20:03:28','0','1'),(274,'094602','2015-02-10 20:03:28','1','1'),(275,'095602','2015-02-10 20:03:28','1','1'),(276,'096602','2015-02-10 20:03:28','1','1'),(277,'097602','2015-02-10 20:03:28','0','1'),(278,'098602','2015-02-10 20:03:28','1','1'),(279,'099602','2015-02-10 20:03:28','1','1'),(280,'100602','2015-02-10 20:03:28','1','1'),(281,'101602','2015-02-10 20:03:28','1','1'),(282,'102602','2015-02-10 20:03:28','1','1'),(283,'103602','2015-02-10 20:03:28','1','1'),(284,'104602','2015-02-10 20:03:28','0','1'),(285,'105602','2015-02-10 20:03:28','1','1'),(286,'106602','2015-02-10 20:03:28','1','1'),(287,'107602','2015-02-10 20:03:28','1','1'),(288,'108602','2015-02-10 20:03:28','0','1'),(289,'109602','2015-02-10 20:03:28','1','1'),(290,'110602','2015-02-10 20:03:28','1','1'),(291,'111602','2015-02-10 20:03:28','1','1'),(292,'112602','2015-02-10 20:03:28','1','1'),(293,'113602','2015-02-10 20:03:28','1','1'),(294,'114602','2015-02-10 20:03:28','1','1'),(295,'115602','2015-02-10 20:03:28','1','1'),(296,'116602','2015-02-10 20:03:28','1','1'),(297,'117602','2015-02-10 20:03:28','1','1'),(298,'118602','2015-02-10 20:03:28','1','1'),(299,'119602','2015-02-10 20:03:28','1','1'),(300,'120602','2015-02-10 20:03:28','1','1'),(301,'121602','2015-02-10 20:03:28','1','1'),(302,'122602','2015-02-10 20:03:28','1','1'),(303,'123602','2015-02-10 20:03:28','0','1'),(304,'124602','2015-02-10 20:03:28','1','1'),(305,'125602','2015-02-10 20:03:28','0','1'),(306,'126302','2015-02-10 20:03:28','0','1'),(307,'127602','2015-02-10 20:03:28','1','1'),(308,'128602','2015-02-10 20:03:28','1','1'),(309,'129602','2015-02-10 20:03:28','0','1'),(310,'130602','2015-02-10 20:03:28','1','1'),(311,'131602','2015-02-10 20:03:28','1','1'),(312,'132602','2015-02-10 20:03:28','1','1'),(313,'133602','2015-02-10 20:03:28','1','1'),(314,'134602','2015-02-10 20:03:28','1','1'),(315,'135602','2015-02-10 20:03:28','1','1'),(316,'136602','2015-02-10 20:03:28','1','1'),(317,'137602','2015-02-10 20:03:28','1','1'),(318,'138602','2015-02-10 20:03:28','1','1'),(319,'139602','2015-02-10 20:03:28','1','1'),(320,'140602','2015-02-10 20:03:28','1','1'),(321,'141602','2015-02-10 20:03:28','0','1'),(322,'142602','2015-02-10 20:03:28','1','1'),(323,'143602','2015-02-10 20:03:28','1','1'),(324,'144602','2015-02-10 20:03:28','1','1'),(325,'145602','2015-02-10 20:03:28','1','1'),(326,'146602','2015-02-10 20:03:28','1','1'),(327,'147602','2015-02-10 20:03:28','1','1'),(328,'148602','2015-02-10 20:03:28','1','1'),(329,'149602','2015-02-10 20:03:28','1','1'),(330,'150602','2015-02-10 20:03:28','1','1'),(331,'151602','2015-02-10 20:03:28','1','1'),(332,'152602','2015-02-10 20:03:28','1','1'),(333,'153602','2015-02-10 20:03:28','1','1'),(334,'154602','2015-02-10 20:03:28','1','1'),(335,'155602','2015-02-10 20:03:28','1','1'),(336,'156602','2015-02-10 20:03:28','1','1'),(337,'157602','2015-02-10 20:03:28','0','1'),(338,'158602','2015-02-10 20:03:28','1','1'),(339,'159602','2015-02-10 20:03:28','1','1'),(340,'160602','2015-02-10 20:03:28','1','1'),(341,'161602','2015-02-10 20:03:28','1','1'),(342,'162602','2015-02-10 20:03:28','1','1'),(343,'163602','2015-02-10 20:03:28','0','1'),(344,'164602','2015-02-10 20:03:28','1','1'),(345,'165602','2015-02-10 20:03:28','0','1'),(346,'166602','2015-02-10 20:03:28','1','1'),(347,'167602','2015-02-10 20:03:28','1','1'),(348,'168602','2015-02-10 20:03:28','1','1'),(349,'169602','2015-02-10 20:03:28','1','1'),(350,'170602','2015-02-10 20:03:28','0','1'),(351,'171602','2015-02-10 20:03:28','1','1'),(352,'172602','2015-02-10 20:03:28','1','1'),(353,'173602','2015-02-10 20:03:28','1','1'),(354,'174602','2015-02-10 20:03:28','1','1'),(355,'175602','2015-02-10 20:03:28','1','1'),(356,'176602','2015-02-10 20:03:28','1','1'),(357,'177602','2015-02-10 20:03:28','1','1'),(358,'178602','2015-02-10 20:03:28','1','1'),(359,'179602','2015-02-10 20:03:28','1','1'),(360,'180602','2015-02-10 20:03:28','1','1'),(361,'181602','2015-02-10 20:03:28','0','1'),(362,'182602','2015-02-10 20:03:28','0','1'),(363,'183602','2015-02-10 20:03:28','1','1'),(364,'184602','2015-02-10 20:03:28','1','1'),(365,'185602','2015-02-10 20:03:28','1','1'),(366,'186602','2015-02-10 20:03:28','1','1'),(367,'187602','2015-02-10 20:03:28','0','1'),(368,'188602','2015-02-10 20:03:28','1','1'),(369,'189602','2015-02-10 20:03:28','1','1'),(370,'190602','2015-02-10 20:03:28','1','1'),(371,'191602','2015-02-10 20:03:28','1','1'),(372,'192602','2015-02-10 20:03:28','1','1'),(373,'193602','2015-02-10 20:03:28','1','1'),(374,'194602','2015-02-10 20:03:28','1','1'),(375,'195602','2015-02-10 20:03:28','1','1'),(376,'196602','2015-02-10 20:03:28','1','1'),(377,'197602','2015-02-10 20:03:28','1','1'),(378,'198602','2015-02-10 20:03:28','1','1'),(379,'199602','2015-02-10 20:03:28','1','1'),(380,'200602','2015-02-10 20:03:28','1','1'),(381,'201602','2015-02-10 20:03:28','1','1'),(382,'202602','2015-02-10 20:03:28','1','1'),(383,'203602','2015-02-10 20:03:28','1','1'),(384,'204602','2015-02-10 20:03:28','1','1'),(385,'205602','2015-02-10 20:03:28','1','1'),(386,'206602','2015-02-10 20:03:28','1','1'),(387,'207602','2015-02-10 20:03:28','1','1'),(388,'208602','2015-02-10 20:03:28','1','1'),(389,'209602','2015-02-10 20:03:28','1','1'),(390,'210602','2015-02-10 20:03:28','1','1'),(391,'211602','2015-02-10 20:03:28','1','1'),(392,'212602','2015-02-10 20:03:28','1','1'),(393,'213602','2015-02-10 20:03:28','1','1'),(394,'214602','2015-02-10 20:03:28','1','1'),(395,'215602','2015-02-10 20:03:28','1','1'),(396,'216602','2015-02-10 20:03:28','1','1'),(397,'217602','2015-02-10 20:03:28','1','1'),(398,'218602','2015-02-10 20:03:28','1','1'),(399,'219602','2015-02-10 20:03:28','1','1'),(400,'220602','2015-02-10 20:03:28','0','1'),(401,'221602','2015-02-10 20:03:28','1','1'),(402,'222602','2015-02-10 20:03:28','1','1'),(403,'223602','2015-02-10 20:03:28','1','1'),(404,'224602','2015-02-10 20:03:28','1','1'),(405,'225602','2015-02-10 20:03:28','1','1'),(406,'226602','2015-02-10 20:03:28','0','1'),(407,'227602','2015-02-10 20:03:28','0','1'),(408,'228602','2015-02-10 20:03:28','1','1'),(409,'229602','2015-02-10 20:03:28','1','1'),(410,'230602','2015-02-10 20:03:28','1','1'),(411,'231602','2015-02-10 20:03:28','1','1'),(412,'232602','2015-02-10 20:03:28','1','1'),(413,'233602','2015-02-10 20:03:28','1','1'),(414,'234602','2015-02-10 20:03:28','1','1'),(415,'235602','2015-02-10 20:03:28','1','1'),(416,'236602','2015-02-10 20:03:28','0','1'),(417,'237602','2015-02-10 20:03:28','1','1'),(418,'238602','2015-02-10 20:03:28','1','1'),(419,'239602','2015-02-10 20:03:28','1','1'),(420,'240602','2015-02-10 20:03:28','1','1'),(421,'241602','2015-02-10 20:03:28','1','1'),(422,'242302','2015-02-10 20:03:28','1','1'),(423,'243602','2015-02-10 20:03:28','1','1'),(424,'244602','2015-02-10 20:03:28','1','1'),(425,'245602','2015-02-10 20:03:28','1','1'),(426,'246602','2015-02-10 20:03:28','1','1'),(427,'247602','2015-02-10 20:03:28','0','1'),(428,'248602','2015-02-10 20:03:28','1','1'),(429,'249602','2015-02-10 20:03:28','1','1'),(430,'250602','2015-02-10 20:03:28','0','1'),(431,'251602','2015-02-10 20:03:28','1','1'),(432,'252602','2015-02-10 20:03:28','1','1'),(433,'253602','2015-02-10 20:03:28','1','1'),(434,'254602','2015-02-10 20:03:28','1','1'),(435,'255602','2015-02-10 20:03:28','1','1'),(436,'256602','2015-02-10 20:03:28','1','1'),(437,'257602','2015-02-10 20:03:28','0','1'),(438,'258602','2015-02-10 20:03:28','1','1'),(439,'259602','2015-02-10 20:03:28','1','1'),(440,'260602','2015-02-10 20:03:28','1','1'),(441,'261602','2015-02-10 20:03:28','1','1'),(442,'262602','2015-02-10 20:03:28','1','1'),(443,'263602','2015-02-10 20:03:28','1','1'),(444,'264602','2015-02-10 20:03:28','1','1'),(445,'265602','2015-02-10 20:03:28','1','1'),(446,'266602','2015-02-10 20:03:28','1','1'),(447,'267602','2015-02-10 20:03:28','1','1'),(448,'268602','2015-02-10 20:03:28','1','1'),(449,'269602','2015-02-10 20:03:28','1','1'),(450,'270602','2015-02-10 20:03:28','1','1'),(451,'271602','2015-02-10 20:03:28','1','1'),(452,'272602','2015-02-10 20:03:28','1','1'),(453,'273602','2015-02-10 20:03:28','1','1'),(454,'274602','2015-02-10 20:03:28','1','1'),(455,'275602','2015-02-10 20:03:28','1','1'),(456,'276602','2015-02-10 20:03:28','1','1'),(457,'277602','2015-02-10 20:03:28','1','1'),(458,'278602','2015-02-10 20:03:28','1','1'),(459,'279602','2015-02-10 20:03:28','1','1'),(460,'280602','2015-02-10 20:03:28','1','1'),(461,'281602','2015-02-10 20:03:28','1','1'),(462,'282602','2015-02-10 20:03:28','1','1'),(463,'283602','2015-02-10 20:03:28','1','1'),(464,'284602','2015-02-10 20:03:28','1','1'),(465,'285602','2015-02-10 20:03:28','0','1'),(466,'286602','2015-02-10 20:03:28','1','1'),(467,'287602','2015-02-10 20:03:28','1','1'),(468,'288602','2015-02-10 20:03:28','1','1'),(469,'289602','2015-02-10 20:03:28','1','1'),(470,'290602','2015-02-10 20:03:28','0','1'),(471,'291602','2015-02-10 20:03:28','1','1'),(472,'292602','2015-02-10 20:03:28','1','1'),(473,'293602','2015-02-10 20:03:28','1','1'),(474,'294602','2015-02-10 20:03:28','1','1'),(475,'295602','2015-02-10 20:03:28','1','1'),(476,'296602','2015-02-10 20:03:28','1','1'),(477,'297602','2015-02-10 20:03:28','1','1'),(478,'298602','2015-02-10 20:03:28','1','1'),(479,'299602','2015-02-10 20:03:28','0','1'),(480,'300602','2015-02-10 20:03:28','1','1'),(481,'301602','2015-02-10 20:03:28','1','1'),(482,'302602','2015-02-10 20:03:28','1','1'),(483,'303602','2015-02-10 20:03:28','1','1'),(484,'304602','2015-02-10 20:03:28','0','1'),(485,'305602','2015-02-10 20:03:28','1','1'),(486,'306602','2015-02-10 20:03:28','1','1'),(487,'307602','2015-02-10 20:03:28','1','1'),(488,'308602','2015-02-10 20:03:28','1','1'),(489,'309602','2015-02-10 20:03:28','1','1'),(490,'310602','2015-02-10 20:03:28','1','1'),(491,'311602','2015-02-10 20:03:28','1','1'),(492,'312602','2015-02-10 20:03:28','1','1'),(493,'313602','2015-02-10 20:03:28','1','1'),(494,'314602','2015-02-10 20:03:28','1','1'),(495,'315602','2015-02-10 20:03:28','1','1'),(496,'316602','2015-02-10 20:03:28','1','1'),(497,'317602','2015-02-10 20:03:28','1','1'),(498,'318602','2015-02-10 20:03:28','1','1'),(499,'319602','2015-02-10 20:03:28','1','1'),(500,'320602','2015-02-10 20:03:28','1','1'),(501,'321602','2015-02-10 20:03:28','1','1'),(502,'322602','2015-02-10 20:03:28','1','1'),(503,'323602','2015-02-10 20:03:28','1','1'),(504,'324602','2015-02-10 20:03:28','1','1'),(505,'325602','2015-02-10 20:03:28','1','1'),(506,'326602','2015-02-10 20:03:28','1','1'),(507,'327602','2015-02-10 20:03:28','1','1'),(508,'328602','2015-02-10 20:03:28','1','1'),(509,'329602','2015-02-10 20:03:28','1','1'),(510,'330602','2015-02-10 20:03:28','1','1'),(511,'331602','2015-02-10 20:03:28','1','1'),(512,'332602','2015-02-10 20:03:28','1','1'),(513,'333602','2015-02-10 20:03:28','1','1'),(514,'334602','2015-02-10 20:03:28','1','1'),(515,'335602','2015-02-10 20:03:28','1','1'),(516,'336602','2015-02-10 20:03:28','1','1'),(517,'337602','2015-02-10 20:03:28','1','1'),(518,'338602','2015-02-10 20:03:28','1','1'),(519,'339602','2015-02-10 20:03:28','1','1'),(520,'340602','2015-02-10 20:03:28','1','1'),(521,'341602','2015-02-10 20:03:28','1','1'),(522,'342602','2015-02-10 20:03:28','1','1'),(523,'343602','2015-02-10 20:03:28','1','1'),(524,'344602','2015-02-10 20:03:28','1','1'),(525,'345602','2015-02-10 20:03:28','1','1'),(526,'346602','2015-02-10 20:03:28','0','1'),(527,'347602','2015-02-10 20:03:28','1','1'),(528,'348602','2015-02-10 20:03:28','1','1'),(529,'349602','2015-02-10 20:03:28','1','1'),(530,'350602','2015-02-10 20:03:28','1','1'),(531,'351602','2015-02-10 20:03:28','1','1'),(532,'352602','2015-02-10 20:03:28','1','1'),(533,'353602','2015-02-10 20:03:28','1','1'),(534,'354602','2015-02-10 20:03:28','1','1'),(535,'355602','2015-02-10 20:03:28','1','1'),(536,'356602','2015-02-10 20:03:28','1','1'),(537,'357602','2015-02-10 20:03:28','1','1'),(538,'358602','2015-02-10 20:03:28','0','1'),(539,'359602','2015-02-10 20:03:28','1','1'),(540,'360602','2015-02-10 20:03:28','1','1'),(541,'361602','2015-02-10 20:03:28','1','1'),(542,'362602','2015-02-10 20:03:28','1','1'),(543,'363602','2015-02-10 20:03:28','1','1'),(544,'364602','2015-02-10 20:03:28','1','1'),(545,'365602','2015-02-10 20:03:28','1','1'),(546,'366602','2015-02-10 20:03:28','1','1'),(547,'367602','2015-02-10 20:03:28','1','1'),(548,'368602','2015-02-10 20:03:28','1','1'),(549,'369602','2015-02-10 20:03:28','0','1'),(550,'370602','2015-02-10 20:03:28','1','1'),(551,'371602','2015-02-10 20:03:28','1','1'),(552,'372602','2015-02-10 20:03:28','0','1'),(553,'373602','2015-02-10 20:03:28','1','1'),(554,'374602','2015-02-10 20:03:28','1','1'),(555,'375602','2015-02-10 20:03:28','1','1'),(556,'376602','2015-02-10 20:03:28','1','1'),(557,'377602','2015-02-10 20:03:28','1','1'),(558,'378602','2015-02-10 20:03:28','1','1'),(559,'379602','2015-02-10 20:03:28','1','1'),(560,'380602','2015-02-10 20:03:28','0','1'),(561,'381602','2015-02-10 20:03:28','1','1'),(562,'382602','2015-02-10 20:03:28','1','1'),(563,'383602','2015-02-10 20:03:28','1','1'),(564,'384602','2015-02-10 20:03:28','1','1'),(565,'385602','2015-02-10 20:03:28','1','1'),(566,'386602','2015-02-10 20:03:28','1','1'),(567,'387602','2015-02-10 20:03:28','1','1'),(568,'388602','2015-02-10 20:03:28','1','1'),(569,'389602','2015-02-10 20:03:28','1','1'),(570,'390602','2015-02-10 20:03:28','1','1'),(571,'391602','2015-02-10 20:03:28','0','1'),(572,'392602','2015-02-10 20:03:28','1','1'),(573,'393602','2015-02-10 20:03:28','1','1'),(574,'394602','2015-02-10 20:03:28','1','1'),(575,'395602','2015-02-10 20:03:28','1','1'),(576,'396602','2015-02-10 20:03:28','1','1'),(577,'397602','2015-02-10 20:03:28','1','1'),(578,'398602','2015-02-10 20:03:28','1','1'),(579,'399602','2015-02-10 20:03:28','1','1'),(580,'400602','2015-02-10 20:03:28','1','1'),(581,'401602','2015-02-10 20:03:28','1','1'),(582,'402602','2015-02-10 20:03:28','1','1'),(583,'403602','2015-02-10 20:03:28','1','1'),(584,'404602','2015-02-10 20:03:28','1','1'),(585,'405602','2015-02-10 20:03:28','1','1'),(586,'406602','2015-02-10 20:03:28','1','1'),(587,'407602','2015-02-10 20:03:28','1','1'),(588,'408602','2015-02-10 20:03:28','1','1'),(589,'409602','2015-02-10 20:03:28','1','1'),(590,'410602','2015-02-10 20:03:28','1','1'),(591,'411602','2015-02-10 20:03:28','1','1'),(592,'412602','2015-02-10 20:03:28','1','1'),(593,'413602','2015-02-10 20:03:28','1','1'),(594,'414602','2015-02-10 20:03:28','1','1'),(595,'415602','2015-02-10 20:03:28','1','1'),(596,'416602','2015-02-10 20:03:28','1','1'),(597,'417602','2015-02-10 20:03:28','0','1'),(598,'418602','2015-02-10 20:03:28','1','1'),(599,'419602','2015-02-10 20:03:28','1','1'),(600,'420602','2015-02-10 20:03:28','1','1'),(601,'421602','2015-02-10 20:03:28','1','1'),(602,'422602','2015-02-10 20:03:28','1','1'),(603,'423602','2015-02-10 20:03:28','1','1'),(604,'424602','2015-02-10 20:03:28','1','1'),(605,'425602','2015-02-10 20:03:28','1','1'),(606,'426602','2015-02-10 20:03:28','1','1'),(607,'427602','2015-02-10 20:03:28','1','1'),(608,'428602','2015-02-10 20:03:28','1','1'),(609,'429602','2015-02-10 20:03:28','1','1'),(610,'430602','2015-02-10 20:03:28','1','1'),(611,'431602','2015-02-10 20:03:28','1','1'),(612,'432302','2015-02-10 20:03:28','1','1'),(613,'433602','2015-02-10 20:03:28','0','1'),(614,'434602','2015-02-10 20:03:28','1','1'),(615,'435602','2015-02-10 20:03:28','1','1'),(616,'436602','2015-02-10 20:03:28','1','1'),(617,'437602','2015-02-10 20:03:28','1','1'),(618,'438602','2015-02-10 20:03:28','0','1'),(619,'439602','2015-02-10 20:03:28','1','1'),(620,'440602','2015-02-10 20:03:28','1','1'),(621,'441602','2015-02-10 20:03:28','1','1'),(622,'442602','2015-02-10 20:03:28','0','1'),(623,'443602','2015-02-10 20:03:28','0','1'),(624,'444602','2015-02-10 20:03:28','1','1'),(625,'445602','2015-02-10 20:03:28','1','1'),(626,'446602','2015-02-10 20:03:28','0','1'),(627,'447602','2015-02-10 20:03:28','0','1'),(628,'448602','2015-02-10 20:03:28','0','1'),(629,'449602','2015-02-10 20:03:28','1','1'),(630,'450602','2015-02-10 20:03:28','1','1'),(631,'451602','2015-02-10 20:03:28','0','1'),(632,'452602','2015-02-10 20:03:28','0','1'),(633,'453602','2015-02-10 20:03:28','1','1'),(634,'454602','2015-02-10 20:03:28','1','1'),(635,'455602','2015-02-10 20:03:28','1','1'),(636,'456602','2015-02-10 20:03:28','1','1'),(637,'457602','2015-02-10 20:03:28','1','1'),(638,'458602','2015-02-10 20:03:28','1','1'),(639,'459602','2015-02-10 20:03:28','1','1'),(640,'460602','2015-02-10 20:03:28','1','1'),(641,'461602','2015-02-10 20:03:28','1','1'),(642,'462602','2015-02-10 20:03:28','1','1'),(643,'463602','2015-02-10 20:03:28','1','1'),(644,'464602','2015-02-10 20:03:28','1','1'),(645,'465602','2015-02-10 20:03:28','1','1'),(646,'466602','2015-02-10 20:03:28','1','1'),(647,'467602','2015-02-10 20:03:28','1','1'),(648,'468602','2015-02-10 20:03:28','1','1'),(649,'469602','2015-02-10 20:03:28','0','1'),(650,'470602','2015-02-10 20:03:28','1','1'),(651,'471602','2015-02-10 20:03:28','1','1'),(652,'472602','2015-02-10 20:03:28','1','1'),(653,'473602','2015-02-10 20:03:28','1','1'),(654,'474602','2015-02-10 20:03:28','1','1'),(655,'475602','2015-02-10 20:03:28','1','1'),(656,'476602','2015-02-10 20:03:28','1','1'),(657,'477602','2015-02-10 20:03:28','1','1'),(658,'478602','2015-02-10 20:03:28','1','1'),(659,'479602','2015-02-10 20:03:28','1','1'),(660,'480602','2015-02-10 20:03:28','1','1'),(661,'481602','2015-02-10 20:03:28','1','1'),(662,'482602','2015-02-10 20:03:28','1','1'),(663,'483602','2015-02-10 20:03:28','1','1'),(664,'484602','2015-02-10 20:03:28','0','1'),(665,'485602','2015-02-10 20:03:28','1','1'),(666,'486602','2015-02-10 20:03:28','1','1'),(667,'487602','2015-02-10 20:03:28','1','1'),(668,'488602','2015-02-10 20:03:28','1','1'),(669,'489602','2015-02-10 20:03:28','1','1'),(670,'490602','2015-02-10 20:03:28','1','1'),(671,'491602','2015-02-10 20:03:28','0','1'),(672,'492602','2015-02-10 20:03:28','1','1'),(673,'493602','2015-02-10 20:03:28','1','1'),(674,'494602','2015-02-10 20:03:28','1','1'),(675,'495602','2015-02-10 20:03:28','1','1'),(676,'496602','2015-02-10 20:03:28','1','1'),(677,'497602','2015-02-10 20:03:28','1','1'),(678,'498602','2015-02-10 20:03:28','0','1'),(679,'499602','2015-02-10 20:03:28','1','1'),(680,'500602','2015-02-10 20:03:28','0','1'),(681,'501602','2015-02-10 20:03:28','1','1'),(682,'502602','2015-02-10 20:03:28','1','1'),(683,'503602','2015-02-10 20:03:28','1','1'),(684,'504302','2015-02-10 20:03:28','1','1'),(685,'505602','2015-02-10 20:03:28','1','1'),(686,'506602','2015-02-10 20:03:28','1','1'),(687,'507602','2015-02-10 20:03:28','1','1'),(688,'508602','2015-02-10 20:03:28','1','1'),(689,'509602','2015-02-10 20:03:28','1','1'),(690,'510602','2015-02-10 20:03:28','1','1'),(691,'511602','2015-02-10 20:03:28','1','1'),(692,'512602','2015-02-10 20:03:28','1','1'),(693,'513602','2015-02-10 20:03:28','1','1'),(694,'514602','2015-02-10 20:03:28','0','1'),(695,'515602','2015-02-10 20:03:28','1','1'),(696,'516602','2015-02-10 20:03:28','1','1'),(697,'517602','2015-02-10 20:03:28','0','1'),(698,'518602','2015-02-10 20:03:28','1','1'),(699,'519602','2015-02-10 20:03:28','1','1'),(700,'520602','2015-02-10 20:03:28','1','1'),(701,'521602','2015-02-10 20:03:28','1','1'),(702,'522602','2015-02-10 20:03:28','1','1'),(703,'523602','2015-02-10 20:03:28','1','1'),(704,'524602','2015-02-10 20:03:28','1','1'),(705,'525602','2015-02-10 20:03:28','1','1'),(706,'526602','2015-02-10 20:03:28','1','1'),(707,'527602','2015-02-10 20:03:28','1','1'),(708,'528602','2015-02-10 20:03:28','1','1'),(709,'529602','2015-02-10 20:03:28','1','1'),(710,'530602','2015-02-10 20:03:28','1','1'),(711,'531602','2015-02-10 20:03:28','1','1'),(712,'532602','2015-02-10 20:03:28','1','1'),(713,'533602','2015-02-10 20:03:28','1','1'),(714,'534602','2015-02-10 20:03:28','1','1'),(715,'535602','2015-02-10 20:03:28','1','1'),(716,'536602','2015-02-10 20:03:28','1','1'),(717,'537602','2015-02-10 20:03:28','1','1'),(718,'538602','2015-02-10 20:03:28','1','1'),(719,'539602','2015-02-10 20:03:28','1','1'),(720,'540602','2015-02-10 20:03:28','0','1'),(721,'541602','2015-02-10 20:03:28','1','1'),(722,'542602','2015-02-10 20:03:28','1','1'),(723,'543602','2015-02-10 20:03:28','1','1'),(724,'544602','2015-02-10 20:03:28','1','1'),(725,'545602','2015-02-10 20:03:28','1','1'),(726,'546602','2015-02-10 20:03:28','1','1'),(727,'547602','2015-02-10 20:03:28','1','1'),(728,'548602','2015-02-10 20:03:28','1','1'),(729,'549602','2015-02-10 20:03:28','1','1'),(730,'550602','2015-02-10 20:03:28','0','1'),(731,'551602','2015-02-10 20:03:28','1','1'),(732,'552602','2015-02-10 20:03:28','1','1'),(733,'553602','2015-02-10 20:03:28','1','1'),(734,'554602','2015-02-10 20:03:28','1','1'),(735,'555602','2015-02-10 20:03:28','1','1'),(736,'556602','2015-02-10 20:03:28','1','1'),(737,'557602','2015-02-10 20:03:28','1','1'),(738,'558602','2015-02-10 20:03:28','1','1'),(739,'559602','2015-02-10 20:03:28','1','1'),(740,'560602','2015-02-10 20:03:28','0','1'),(741,'561602','2015-02-10 20:03:28','1','1'),(742,'562602','2015-02-10 20:03:28','1','1'),(743,'563602','2015-02-10 20:03:28','1','1'),(744,'564602','2015-02-10 20:03:28','1','1'),(745,'565602','2015-02-10 20:03:28','1','1'),(746,'566602','2015-02-10 20:03:28','1','1'),(747,'567602','2015-02-10 20:03:28','0','1'),(748,'568602','2015-02-10 20:03:28','1','1'),(749,'569602','2015-02-10 20:03:28','1','1'),(750,'570602','2015-02-10 20:03:28','1','1'),(751,'571602','2015-02-10 20:03:28','1','1'),(752,'572602','2015-02-10 20:03:28','1','1'),(753,'573602','2015-02-10 20:03:28','1','1'),(754,'574602','2015-02-10 20:03:28','1','1'),(755,'575602','2015-02-10 20:03:28','1','1'),(756,'576602','2015-02-10 20:03:28','0','1'),(757,'594602','2015-02-10 20:03:28','1','1'),(758,'593602','2015-02-10 20:03:28','0','1'),(759,'577602','2015-02-10 20:03:28','1','1'),(760,'578602','2015-02-10 20:03:28','0','1'),(761,'579602','2015-02-10 20:03:28','1','1'),(762,'580602','2015-02-10 20:03:28','1','1'),(763,'581602','2015-02-10 20:03:28','1','1'),(764,'582602','2015-02-10 20:03:28','0','1'),(765,'583602','2015-02-10 20:03:28','1','1'),(766,'585602','2015-02-10 20:03:28','1','1'),(767,'588602','2015-02-10 20:03:28','1','1'),(768,'590602','2015-02-10 20:03:28','1','1'),(769,'591602','2015-02-10 20:03:28','1','1'),(770,'592602','2015-02-10 20:03:28','1','1'),(771,'597602','2015-02-10 20:03:28','1','1'),(772,'598602','2015-02-10 20:03:28','1','1'),(773,'599602','2015-02-10 20:03:28','0','1'),(774,'600602','2015-02-10 20:03:28','1','1'),(775,'602602','2015-02-10 20:03:28','1','1'),(776,'603602','2015-02-10 20:03:28','1','1'),(777,'604602','2015-02-10 20:03:28','0','1'),(778,'605602','2015-02-10 20:03:28','1','1'),(779,'606602','2015-02-10 20:03:28','0','1'),(780,'607602','2015-02-10 20:03:28','1','1'),(781,'608602','2015-02-10 20:03:28','1','1'),(782,'609602','2015-02-10 20:03:28','0','1'),(783,'610602','2015-02-10 20:03:28','0','1'),(784,'611602','2015-02-10 20:03:28','0','1'),(785,'612602','2015-02-10 20:03:28','1','1'),(786,'613602','2015-02-10 20:03:28','1','1'),(787,'614602','2015-02-10 20:03:28','1','1'),(788,'615602','2015-02-10 20:03:28','0','1'),(789,'616602','2015-02-10 20:03:28','1','1'),(790,'617602','2015-02-10 20:03:28','1','1'),(791,'618602','2015-02-10 20:03:28','1','1'),(792,'619602','2015-02-10 20:03:28','0','1'),(793,'620602','2015-02-10 20:03:28','1','1'),(794,'622602','2015-02-10 20:03:28','1','1'),(795,'623602','2015-02-10 20:03:28','0','1'),(796,'624602','2015-02-10 20:03:28','0','1'),(797,'625602','2015-02-10 20:03:28','1','1'),(798,'626602','2015-02-10 20:03:28','1','1'),(799,'627602','2015-02-10 20:03:28','0','1'),(800,'628602','2015-02-10 20:03:28','1','1'),(801,'629602','2015-02-10 20:03:28','1','1'),(802,'630602','2015-02-10 20:03:28','0','1'),(803,'631602','2015-02-10 20:03:28','1','1'),(804,'632602','2015-02-10 20:03:28','0','1'),(805,'633602','2015-02-10 20:03:28','0','1'),(806,'634602','2015-02-10 20:03:28','1','1'),(807,'635602','2015-02-10 20:03:28','0','1'),(808,'636602','2015-02-10 20:03:28','1','1'),(809,'088301','2015-02-10 20:03:28','0','1'),(810,'144701','2015-02-10 20:03:28','0','1'),(811,'638602','2015-02-10 20:03:28','1','1'),(812,'637601','2015-02-10 20:03:28','0','1'),(813,'622002','2015-02-10 20:03:28','0','1'),(814,'595601','2015-02-10 20:03:28','1','1'),(815,'584002','2015-02-10 20:03:28','0','1'),(816,'644602','2015-02-10 20:03:28','1','1'),(817,'646601','2015-02-10 20:03:28','0','1'),(818,'645602','2015-02-10 20:03:28','0','1'),(819,'584602','2015-02-10 20:03:28','0','1'),(820,'647602','2015-02-10 20:03:28','1','1'),(821,'648602','2015-02-10 20:03:28','0','1'),(822,'637602','2015-02-10 20:03:28','1','1'),(823,'642602','2015-02-10 20:03:28','0','1'),(824,'650602','2015-02-10 20:03:28','0','1'),(825,'181601','2015-02-10 20:03:28','0','1'),(826,'649601','2015-02-10 20:03:28','0','1'),(827,'649602','2015-02-10 20:03:28','0','1'),(828,'641602','2015-02-10 20:03:28','1','1'),(829,'644601','2015-02-10 20:03:28','0','1'),(830,'615601','2015-02-10 20:03:28','0','1'),(831,'634601','2015-02-10 20:03:28','0','1'),(832,'640602','2015-02-10 20:03:28','1','1'),(833,'639602','2015-02-10 20:03:28','1','1'),(834,'589602','2015-02-10 20:03:28','0','1'),(835,'587602','2015-02-10 20:03:28','0','1'),(836,'643602','2015-02-10 20:03:28','1','1'),(837,'889602','2015-02-10 20:03:28','0','1'),(838,'184601','2015-02-10 20:03:28','1','1'),(839,'185601','2015-02-10 20:03:28','1','1'),(840,'186601','2015-02-10 20:03:28','1','1'),(841,'701602','2015-02-10 20:03:28','1','1'),(842,'704602','2015-02-10 20:03:28','0','1'),(843,'126602','2015-02-10 20:03:28','1','1'),(844,'706602','2015-02-10 20:03:28','1','1'),(845,'702602','2015-02-10 20:03:28','1','1'),(846,'707002','2015-02-10 20:03:28','0','1'),(847,'708602','2015-02-10 20:03:28','0','1'),(848,'707602','2015-02-10 20:03:28','1','1'),(849,'710602','2015-02-10 20:03:28','1','1'),(850,'085602','2015-02-10 20:03:28','0','1'),(851,'711602','2015-02-10 20:03:28','0','1'),(852,'712602','2015-02-10 20:03:28','0','1'),(853,'709602','2015-02-10 20:03:28','0','1'),(854,'713602','2015-02-10 20:03:28','1','1'),(855,'714602','2015-02-10 20:03:28','0','1'),(856,'715602','2015-02-10 20:03:28','0','1'),(857,'716602','2015-02-10 20:03:28','0','1'),(858,'717002','2015-02-10 20:03:28','0','1'),(859,'717602','2015-02-10 20:03:28','0','1'),(860,'718602','2015-02-10 20:03:28','1','1'),(861,'723602','2015-02-10 20:03:28','0','1'),(862,'719602','2015-02-10 20:03:28','1','1'),(863,'720602','2015-02-10 20:03:28','1','1'),(864,'721602','2015-02-10 20:03:28','1','1'),(865,'722602','2015-02-10 20:03:28','1','1'),(866,'724602','2015-02-10 20:03:28','0','1'),(867,'187601','2015-02-10 20:03:28','1','1'),(868,'188601','2015-02-10 20:03:28','1','1'),(869,'189601','2015-02-10 20:03:28','1','1'),(870,'725602','2015-02-10 20:03:28','1','1'),(871,'727602','2015-02-10 20:03:28','1','1'),(872,'726602','2015-02-10 20:03:28','1','1'),(873,'728602','2015-02-10 20:03:28','1','1'),(874,'729602','2015-02-10 20:03:28','1','1'),(875,'730602','2015-02-10 20:03:28','0','1'),(876,'731602','2015-02-10 20:03:28','0','1'),(877,'732602','2015-02-10 20:03:28','1','1'),(878,'733602','2015-02-10 20:03:28','0','1'),(879,'734602','2015-02-10 20:03:28','1','1'),(880,'735602','2015-02-10 20:03:28','1','1'),(881,'736602','2015-02-10 20:03:28','1','1'),(882,'737602','2015-02-10 20:03:28','1','1'),(883,'738602','2015-02-10 20:03:28','1','1'),(884,'739602','2015-02-10 20:03:28','1','1'),(885,'740602','2015-02-10 20:03:28','1','1'),(886,'741602','2015-02-10 20:03:28','1','1'),(887,'742602','2015-02-10 20:03:28','1','1'),(888,'743602','2015-02-10 20:03:28','1','1'),(889,'187301','2015-02-10 20:03:28','0','1'),(890,'197601','2015-02-10 20:03:28','1','1'),(891,'192601','2015-02-10 20:03:28','1','1'),(892,'182001','2015-02-10 20:03:28','0','1'),(893,'190601','2015-02-16 15:27:13','1','1'),(894,'191001','2015-02-16 15:28:40','0','1'),(895,'193601','2015-02-16 15:31:56','0','1'),(896,'194601','2015-02-16 15:33:06','0','1'),(897,'195601','2015-02-16 15:33:53','1','1'),(898,'196601','2015-02-16 15:35:03','1','1'),(899,'198601','2015-02-16 15:40:05','0','1'),(900,'000601','2015-02-27 16:05:28','1','1'),(901,'500601','2015-02-27 16:42:44','1','1'),(902,'101601','2015-03-01 23:05:06','0','2'),(903,'102601','2015-03-01 23:15:42','1','2'),(904,'103601','2015-03-01 23:16:44','0','2'),(905,'104601','2015-03-01 23:18:05','1','2'),(906,'105601','2015-03-01 23:24:00','0','2'),(907,'106601','2015-03-01 23:27:27','1','2'),(908,'107601','2015-03-01 23:28:14','1','2'),(909,'108601','2015-03-01 23:30:20','1','2'),(910,'109601','2015-03-01 23:32:31','1','2'),(911,'110601','2015-03-01 23:37:42','1','2'),(912,'501301','2015-03-01 23:40:14','0','2'),(913,'111601','2015-03-01 23:41:47','1','2'),(914,'502301','2015-03-01 23:42:48','1','2'),(915,'112601','2015-03-01 23:44:13','1','2'),(916,'503301','2015-03-01 23:45:02','1','2'),(917,'113601','2015-03-01 23:46:00','1','2'),(918,'504301','2015-03-01 23:47:24','0','2'),(919,'201601','2015-03-01 23:49:28','0','2'),(920,'202601','2015-03-01 23:51:01','0','2'),(921,'203601','2015-03-01 23:52:06','0','2'),(922,'204601','2015-03-01 23:53:24','0','2'),(923,'205601','2015-03-01 23:54:49','0','2'),(924,'206601','2015-03-01 23:55:50','0','2'),(925,'207601','2015-03-01 23:56:56','0','2'),(926,'208601','2015-03-01 23:58:18','0','2'),(927,'500601','2015-03-02 12:04:41','1','2'),(928,'799601','2015-03-03 04:23:47','0','2'),(929,'599601','2015-03-03 05:05:29','0','2'),(930,'799307','2015-03-03 17:26:39','0','2'),(931,'699601','2015-03-03 17:36:45','0','2'),(932,'207602','2015-03-04 02:03:37','1','2'),(933,'204002','2015-03-04 02:10:21','0','2'),(934,'204602','2015-03-04 02:11:57','1','2'),(935,'502301','2015-03-06 01:01:14','1','2'),(936,'302603','2015-03-06 01:03:12','1','2'),(937,'114601','2015-03-06 01:06:44','1','2'),(938,'116601','2015-03-06 01:08:07','1','2'),(939,'301603','2015-03-06 01:09:16','0','2'),(940,'209602','2015-03-06 01:10:30','1','2'),(941,'503301','2015-03-06 01:41:21','1','2'),(942,'118601','2015-03-06 01:54:14','1','2'),(943,'119601','2015-03-06 01:55:36','1','2'),(944,'115601','2015-03-07 04:14:35','1','2'),(945,'504705','2015-03-07 04:59:21','1','2'),(946,'120701','2015-03-08 04:07:15','1','2'),(947,'121601','2015-03-08 04:08:50','1','2'),(948,'105701','2015-03-08 04:28:57','1','2'),(949,'103301','2015-03-10 04:16:24','1','2'),(950,'301303','2015-03-10 04:23:47','1','2'),(951,'122601','2015-03-10 04:30:10','1','2'),(952,'206302','2015-03-13 03:01:36','1','2'),(953,'117301','2015-03-17 01:33:12','1','2'),(954,'205302','2015-03-17 01:52:23','1','2'),(955,'123601','2015-04-04 01:45:37','1','2'),(956,'999001','2015-04-27 15:34:00','0','2'),(957,'999002','2015-04-27 15:35:46','0','2'),(958,'900301','2015-05-13 19:07:52','0','2'),(959,'500601','2015-06-04 19:21:30','1','1'),(960,'001601','2015-06-05 22:55:42','1','1'),(961,'827601','2015-06-12 00:19:53','0','1'),(962,'027601','2015-06-12 00:21:46','0','1'),(963,'500601','2015-06-17 21:29:07','1','2'),(964,'001601','2015-06-20 13:22:15','1','2'),(965,'002301','2015-06-20 13:28:55','1','2'),(966,'002601','2015-06-20 13:36:13','0','2'),(967,'129901','2015-07-03 12:11:38','0','1'),(968,'188099','2015-07-03 12:13:09','0','1'),(969,'999101','2015-07-03 12:21:00','0','1'),(970,'998101','2015-07-03 12:22:22','0','1'),(971,'213101','2015-07-04 13:52:31','0','1'),(972,'132101','2015-07-04 13:56:12','0','1'),(973,'345155','2015-07-04 13:58:18','0','1'),(974,'234202','2015-07-04 14:01:59','0','1'),(975,'213301','2015-07-04 14:03:16','0','1'),(976,'123302','2015-07-04 14:36:25','0','2'),(977,'006000','2015-07-07 15:45:08','0','1'),(978,'434005','2015-07-07 15:47:20','0','1'),(979,'008000','2015-07-07 15:54:16','0','1'),(980,'009000','2015-07-07 15:55:41','0','1'),(981,'001101','2015-07-08 12:53:16','0','1'),(982,'003101','2015-07-08 13:38:40','0','2'),(983,'099302','2015-07-08 21:36:09','0','1'),(984,'200101','2015-07-16 20:02:02','0','1'),(985,'201101','2015-07-16 20:02:19','0','1'),(986,'202101','2015-07-16 20:02:35','0','1'),(987,'203101','2015-07-16 20:03:04','0','1'),(988,'204101','2015-07-16 20:03:15','0','1'),(989,'205101','2015-07-16 20:03:26','0','1'),(990,'206101','2015-07-16 20:03:37','0','1'),(991,'207101','2015-07-16 20:03:49','0','1'),(992,'010101','2015-07-16 21:14:37','0','1'),(993,'011101','2015-07-16 21:20:11','0','1'),(994,'012101','2015-07-16 21:48:51','0','1'),(995,'013101','2015-07-16 21:50:23','0','1'),(996,'016101','2015-07-16 22:07:56','0','1'),(997,'017101','2015-07-16 22:08:50','0','1'),(998,'018101','2015-07-17 15:51:01','0','1'),(999,'019101','2015-07-17 15:52:26','0','1'),(1000,'02001101','2015-07-17 16:00:51','0','2'),(1001,'0200109601','2015-07-17 16:03:15','0','2'),(1002,'005601','2015-07-17 16:20:40','0','1'),(1003,'025601','2015-07-17 16:21:05','0','1'),(1004,'004604','2015-07-17 16:22:51','0','1'),(1005,'002305','2015-07-17 16:23:48','0','1'),(1006,'029101','2015-07-17 16:27:49','0','1'),(1007,'030401','2015-07-17 16:28:43','0','1'),(1008,'031601','2015-07-17 16:43:51','0','1'),(1009,'000000','2015-07-17 18:43:03','0','1'),(1010,'030601','2015-07-27 16:13:01','0','1'),(1011,'100601','2015-08-03 14:53:28','1','1'),(1012,'101601','2015-08-04 15:33:58','0','1'),(1013,'567601','2015-08-04 20:12:16','0','1'),(1014,'789601','2015-09-11 15:26:07','0','1'),(1015,'765601','2015-09-12 14:21:52','0','1'),(1016,'765902','2015-09-12 14:38:17','1','1'),(1017,'002601','2016-04-11 16:05:01','0','1'),(1018,'001601','2016-04-11 20:19:53','0','1'),(1019,'555601','2016-04-27 15:39:50','0','1'),(1020,'500601','2016-05-03 12:08:43','0','1'),(1021,'180401','2016-07-18 13:36:09','0','1'),(1022,'800601','2016-07-18 21:12:19','0','1'),(1023,'100601','2016-07-23 14:28:59','0','1'),(1024,'566001','2016-07-29 12:55:29','0','1'),(1025,'1455667895','2016-07-29 19:40:37','0','1'),(1026,'8888888888','2016-07-29 19:49:33','0','1'),(1027,'8787878787','2016-08-01 14:48:27','0','1'),(1028,'5565656565','2016-08-01 15:48:23','0','1'),(1029,'5465446545','2016-08-01 15:53:33','0','1'),(1030,'7878998878','2016-08-01 16:01:09','0','1'),(1031,'899701','2016-08-01 16:01:45','0','1'),(1032,'1552245666','2016-08-02 16:21:12','0','1'),(1033,'5262626059','2016-08-02 16:37:54','0','1'),(1034,'656756','2016-08-02 16:42:33','0','1'),(1035,'1232154687','2016-08-02 16:56:46','0','1'),(1036,'5455456','2016-08-02 19:24:33','0','1'),(1037,'2186484616','2016-08-02 20:15:39','0','1'),(1038,'1024565656','2016-08-02 21:33:49','0','1'),(1039,'12','2016-08-02 22:01:28','0','1'),(1040,'123','2016-08-03 13:43:15','0',''),(1041,'12','2016-08-03 14:08:25','0','1'),(1042,'4562333','2016-08-03 14:45:36','0','1'),(1043,'4666666666','2016-08-03 14:50:57','0','1'),(1044,'4852136255','2016-08-03 15:06:52','0','1'),(1045,'4852136256','2016-08-03 15:08:53','0','1'),(1046,'66','2016-08-03 18:47:45','0','1'),(1047,'5487946456','2016-08-03 19:23:14','0','1'),(1048,'000566','2016-08-03 19:25:39','0','1'),(1049,'5556633','2016-08-03 19:30:36','0','1'),(1050,'0055','2016-08-03 19:31:08','0','1'),(1051,'5555','2016-08-03 19:33:13','0','1'),(1052,'5468412135','2016-08-09 15:53:41','0','1'),(1053,'001601','2016-08-11 16:35:26','0','1'),(1054,'920622','2016-08-11 16:36:27','0','1'),(1055,'002601','2016-08-11 16:37:15','0','1'),(1056,'931027','2016-08-11 16:37:38','0','1'),(1057,'1234567890','2016-08-11 16:43:24','0','1'),(1058,'931026','2016-08-11 21:03:51','0','1'),(1059,'901501','2016-08-11 21:08:25','0','1'),(1060,'55642','2016-08-11 21:08:36','0','1'),(1061,'902601','2016-08-11 21:23:10','0','1'),(1062,'54654','2016-08-11 21:23:29','0','1'),(1063,'003601','2016-08-12 13:34:34','0','1'),(1064,'903601','2016-08-12 14:10:17','0','1'),(1065,'521354','2016-08-12 14:11:30','0','1'),(1066,'904602','2016-08-12 14:20:42','0','1'),(1067,'5625455555','2016-08-12 14:20:54','0','1'),(1068,'1609','2016-08-12 14:26:06','0','1'),(1069,'1601','2016-08-12 14:44:24','0','1'),(1070,'904602','2016-08-12 14:45:47','0','1'),(1071,'931028','2016-08-12 15:14:11','0','1'),(1072,'931029','2016-08-12 15:18:09','0','1'),(1073,'931031','2016-08-12 15:19:28','0','1'),(1074,'546201','2016-08-12 15:20:32','0','1'),(1075,'1254','2016-08-12 19:22:05','0','1'),(1076,'35453','2016-08-12 19:22:48','0','1'),(1077,'931027','2016-08-23 16:23:59','0','1'),(1078,'1234','2016-08-23 16:35:26','0','1'),(1079,'002601','2016-08-23 16:36:34','0','1'),(1080,'001601','2016-08-23 16:37:31','0','1'),(1081,'1','2016-08-24 12:04:01','0','1'),(1082,'22','2016-08-24 12:04:23','0','1'),(1083,'333','2016-08-24 12:04:39','0','1'),(1084,'4444','2016-08-24 12:04:58','0','1'),(1085,'55555','2016-08-24 12:05:17','0','1'),(1086,'666666','2016-08-24 12:05:35','0','1'),(1087,'777777777','2016-08-24 12:07:22','0','1'),(1088,'88888888','2016-08-24 12:07:41','0','1'),(1089,'999999999','2016-08-24 12:08:03','0','1'),(1090,'1024545515','2016-08-24 12:08:36','0','1'),(1091,'8000','2016-08-24 12:08:52','0','1'),(1092,'1234567890','2016-08-24 16:20:23','0','1'),(1093,'504601','2016-08-29 21:10:32','0','1'),(1094,'800601','2016-09-19 22:43:59','0','1'),(1095,'505601','2016-09-21 15:18:58','0','1'),(1096,'600601','2016-09-21 20:32:40','0','1'),(1097,'003601','2016-09-22 19:20:35','0','1'),(1098,'010601','2016-09-28 14:54:02','0','1'),(1099,'750601','2016-09-29 19:33:17','0','1'),(1100,'001601','2016-12-16 22:08:44','0','1'),(1101,'600601','2016-12-16 22:22:03','0','1'),(1102,'001601','2017-02-07 19:32:53','0','1'),(1103,'002601','2017-02-14 21:28:09','0','1'),(1104,'001601','2017-03-31 21:02:14','0','2');
/*!40000 ALTER TABLE `ics_estado_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_estadoics`
--

DROP TABLE IF EXISTS `ics_estadoics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_estadoics` (
  `idics_estadosd` int(11) NOT NULL AUTO_INCREMENT,
  `est_nserie` varchar(45) DEFAULT NULL,
  `est_cliente` varchar(45) DEFAULT NULL,
  `est_estadosd` varchar(45) DEFAULT NULL,
  `est_fechasd` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `est_vpic18f4550` varchar(10) DEFAULT NULL,
  `est_vpic18f8722` varchar(10) DEFAULT NULL,
  `est_timestmp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_estadosd`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_estadoics`
--

LOCK TABLES `ics_estadoics` WRITE;
/*!40000 ALTER TABLE `ics_estadoics` DISABLE KEYS */;
INSERT INTO `ics_estadoics` VALUES (1,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-03-29 15:29:03'),(3,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-04-21 16:17:03'),(4,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-04-29 13:18:20'),(5,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-04-29 13:38:11'),(6,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-04-29 14:04:08'),(7,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-01 15:14:19'),(8,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-01 20:18:44'),(9,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-23 14:25:18'),(10,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-27 12:57:59'),(11,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-27 14:10:09'),(12,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-27 15:38:22'),(13,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-28 19:01:55'),(14,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-28 19:18:20'),(15,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-28 19:45:55'),(16,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-07-28 20:23:43'),(17,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-01 15:21:47'),(18,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-01 19:24:58'),(19,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-01 20:52:35'),(20,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-04 12:00:10'),(21,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-04 18:46:05'),(22,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-04 19:08:46'),(23,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-05 12:54:39'),(24,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-05 21:12:11'),(25,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-05 21:47:16'),(26,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-11 18:49:25'),(27,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-11 20:03:13'),(28,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-11 20:34:27'),(29,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-12 13:27:24'),(30,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-16 18:51:57'),(31,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-17 21:02:11'),(32,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-17 21:21:09'),(33,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-17 21:56:49'),(34,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-18 14:21:48'),(35,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-18 14:31:33'),(36,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-18 16:19:06'),(37,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-18 16:46:40'),(38,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-19 14:11:58'),(39,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-23 12:16:35'),(40,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-25 16:44:40'),(41,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-29 21:12:34'),(42,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-29 21:39:23'),(43,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-30 13:00:09'),(44,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-30 22:08:06'),(45,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-31 15:12:42'),(46,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-31 18:13:57'),(47,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-08-31 22:10:22'),(48,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-09-01 16:11:21'),(49,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-09-06 15:07:21'),(50,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-09-06 16:01:59'),(51,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-09-06 16:29:04'),(52,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-09-06 21:27:19'),(53,'0000000025','1','0','2016-09-29 15:22:22','35','17','2016-09-19 22:39:17'),(54,'0000000022','1','1','2016-10-03 20:24:56','35','17','2016-09-20 17:41:10'),(55,NULL,NULL,'1','2016-09-26 16:02:32',NULL,NULL,'2016-09-26 16:02:32'),(56,'0000000402',NULL,'1','2016-09-29 18:06:40',NULL,NULL,'2016-09-29 18:06:40'),(57,'8362511946','1',NULL,'2016-12-16 22:12:57',NULL,NULL,'2016-12-16 22:12:57'),(58,'0644011594','1','1','2016-12-16 22:47:27','37','19','2016-12-16 22:13:21'),(59,'8362511950','1',NULL,'2016-12-16 22:47:55',NULL,NULL,'2016-12-16 22:47:55'),(60,'8362511947','1',NULL,'2016-12-16 23:07:21','37','19','2016-12-16 23:07:21'),(61,'0644011595','1','1','2016-12-17 14:19:19','37','19','2016-12-16 23:12:54'),(62,'8362511949','1',NULL,'2016-12-16 23:22:15',NULL,NULL,'2016-12-16 23:22:15'),(63,'0644011601','1',NULL,'2016-12-16 23:31:00','37','19','2016-12-16 23:31:00'),(64,'0000000024','1','1','2017-04-25 16:13:08','40','23','2017-01-31 21:32:12'),(65,'0216088113',NULL,'1','2017-02-02 13:30:08',NULL,NULL,'2017-02-02 13:30:08'),(66,'0000000015','2',NULL,'2017-03-29 21:56:52','40','23','2017-03-29 21:56:52'),(67,'0017773962','1','1','2018-04-04 13:45:08','51','26','2018-02-24 12:41:57');
/*!40000 ALTER TABLE `ics_estadoics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_estadotubos_monedero`
--

DROP TABLE IF EXISTS `ics_estadotubos_monedero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_estadotubos_monedero` (
  `idics_estadotubos_monedero` int(11) NOT NULL AUTO_INCREMENT,
  `est_disp` varchar(45) DEFAULT NULL,
  `est_mon_50` int(11) DEFAULT NULL,
  `est_mon_100` int(11) DEFAULT NULL,
  `est_mon_200` int(11) DEFAULT NULL,
  `est_mon_500` int(11) DEFAULT NULL,
  `est_mon_1000` int(11) DEFAULT NULL,
  `est_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_estadotubos_monedero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_estadotubos_monedero`
--

LOCK TABLES `ics_estadotubos_monedero` WRITE;
/*!40000 ALTER TABLE `ics_estadotubos_monedero` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_estadotubos_monedero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_evento`
--

DROP TABLE IF EXISTS `ics_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_evento` (
  `idics_evento` int(11) NOT NULL AUTO_INCREMENT,
  `eve_descripcion` varchar(205) DEFAULT NULL COMMENT '1	Habilitado\n2	Deshabilitado\n3	Abierta\n4	Cerrada',
  PRIMARY KEY (`idics_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_evento`
--

LOCK TABLES `ics_evento` WRITE;
/*!40000 ALTER TABLE `ics_evento` DISABLE KEYS */;
INSERT INTO `ics_evento` VALUES (1,'Habilitado'),(2,'Deshabilitado'),(3,'Abierta'),(4,'Cerrada'),(5,'Encendido '),(6,'Apagado');
/*!40000 ALTER TABLE `ics_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_finger`
--

DROP TABLE IF EXISTS `ics_finger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_finger` (
  `Fgr_idvend_Finger` int(11) NOT NULL AUTO_INCREMENT,
  `Fgr_Numero` varchar(15) DEFAULT NULL,
  `Fgr_Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Fgr_idvend_Finger`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Tabla en la que se registran los nombres referentes a las huellas enroladas en el lector biometrico.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_finger`
--

LOCK TABLES `ics_finger` WRITE;
/*!40000 ALTER TABLE `ics_finger` DISABLE KEYS */;
INSERT INTO `ics_finger` VALUES (1,'0','0 (Meñique  Izquierdo)  '),(2,'1','1 (Anular Izquierdo)'),(3,'2','2 (Corazón Izquierdo)'),(4,'3','3 (Indice Izquierdo)'),(5,'4','4 (Pulgar Izquierdo)'),(6,'5','5 (Pulgar Derecho)'),(7,'6','6 (Indice Derecho) '),(8,'7','7 (Corazón Derecho)'),(9,'8','8 (Anular Derecho)'),(10,'9','9 (Meñique Derecho)');
/*!40000 ALTER TABLE `ics_finger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_firmware`
--

DROP TABLE IF EXISTS `ics_firmware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_firmware` (
  `fir_id_frirmware` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que me define el registro',
  `fir_version` varchar(4) DEFAULT NULL,
  `fir_descripcion` varchar(45) DEFAULT NULL COMMENT 'Descirpcion de la version del firmwaare',
  PRIMARY KEY (`fir_id_frirmware`),
  KEY `index` (`fir_version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se almacenan las versiones de firmaware que pueden existir';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_firmware`
--

LOCK TABLES `ics_firmware` WRITE;
/*!40000 ALTER TABLE `ics_firmware` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_firmware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_full_peticion_`
--

DROP TABLE IF EXISTS `ics_full_peticion_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_full_peticion_` (
  `fpe_id_ful_peticion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificacion de autorización',
  `fpe_num_seleccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Se almacena el numero de la seleccion que se hace el pedido',
  `fpe_estado_peticion` int(2) NOT NULL COMMENT 'Estado de la peticion despues de pasar por la funcion fn_Control_Autoriza',
  `fk_fpe_id_usuario_pet` varchar(15) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1' COMMENT 'Llave foranea de usuarios, donde almacenamos el id de usuario que hace la peticion.',
  `fk_fpe_serial_maq_pet` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Llave foranea donde se almacena el serial de la máquina en la cual se hace la peticion',
  `fk_fpe_id_pet` int(11) NOT NULL DEFAULT '0' COMMENT 'Llave foranea donde se encuentra el id de la peticion con el pauete de datos.',
  `fpe_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fpe_cliente` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fpe_cc_usr` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fpe_tipo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'tripo 1 eas 2 VENDING',
  PRIMARY KEY (`fpe_id_ful_peticion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla donde se almacenan los campos de todas las  peticiones recibidas desde el servicio en .NET,  después de separarlos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_full_peticion_`
--

LOCK TABLES `ics_full_peticion_` WRITE;
/*!40000 ALTER TABLE `ics_full_peticion_` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_full_peticion_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_fulldata`
--

DROP TABLE IF EXISTS `ics_fulldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_fulldata` (
  `ful_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica el registro',
  `ful_idusu` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Número de identificación del usuario que hae la transaccion',
  `ful_numsel` varchar(3) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Número de selección que es elegida en la transaccion',
  `ful_valsel` varchar(25) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Valor de la selección realizada en el sistema dato tomado desde los valores configurados en la base de datos desdse la gui',
  `ful_idmaq` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Serial de la máquina en la que se realiza la transacción',
  `ful_errores` varchar(4) COLLATE utf8_spanish_ci DEFAULT '1' COMMENT 'Errores que ha presentado la máquina o la venta en la transaccion',
  `ful_planom` varchar(15) COLLATE utf8_spanish_ci DEFAULT '0',
  `ful_finger` int(11) DEFAULT '0',
  `ful_item` int(11) DEFAULT NULL,
  `ful_cl` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ful_cc_usr` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `ful_ss` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ful_nom_it` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ful_tipoapp` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'tipo de aplicacion \n1 eas \n2 Biometria\n3 efectivo\n4 datafono\n',
  `ful_seccion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ful_fechacrea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación del registro de transaccion',
  `ful_fechaics` varchar(30) COLLATE utf8_spanish_ci DEFAULT '0000-00-00',
  `ful_timestmp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ful_lote` int(11) DEFAULT '0',
  `ful_vcosto` varchar(45) COLLATE utf8_spanish_ci DEFAULT '100',
  `ful_det_order` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`ful_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla donde se almacenan las diferentes transacciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_fulldata`
--

LOCK TABLES `ics_fulldata` WRITE;
/*!40000 ALTER TABLE `ics_fulldata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_fulldata` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_ics_control_item_in` AFTER INSERT ON `ics_fulldata` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin 

declare idcontrol int;
declare items  	  int;
DECLARE SAL_ACT VARCHAR(45);
set idcontrol = (select max(idcontro) from vis_ics_item_restante where maq=new.ful_idmaq and selec= new.ful_numsel);
set items	  = fn_num_items(new.ful_numsel,new.ful_idmaq);
	-- Procedimiento almacenado que actualiza control de items
call sp_ics_control_up(idcontrol,items);
	
IF NEW.ful_tipoapp = 2 or  NEW.ful_tipoapp = 5 -- SI ES VENDING o catering
THEN 
	SET SAL_ACT = (SELECT Cve_Credito FROM ics_controlventas WHERE Cve_IdUsuario = NEW.ful_idusu and Cve_cl = new.ful_cl LIMIT 1);
	SET SAL_ACT = SAL_ACT-NEW.ful_valsel;
	IF SAL_ACT IS NULL OR SAL_ACT < 0 THEN SET SAL_ACT = 0; END IF;
	  CALL sp_ics_Control_Ventas(NEW.ful_idusu,SAL_ACT,new.ful_cl);
END IF;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_fulldata_prueba`
--

DROP TABLE IF EXISTS `ics_fulldata_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_fulldata_prueba` (
  `idics_fulldata_prueba` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(245) DEFAULT NULL,
  `SUBSECCION` varchar(245) DEFAULT NULL,
  `Area` varchar(245) DEFAULT NULL,
  `SELECCIÓN` varchar(45) DEFAULT NULL,
  `DESCRIPCION` varchar(245) DEFAULT NULL,
  `CANTIDAD` varchar(45) DEFAULT NULL,
  `COSTO_UNIT` varchar(45) DEFAULT NULL,
  `COSTO_TOTAL` varchar(45) DEFAULT NULL,
  `DISPENSADORA` varchar(45) DEFAULT NULL,
  `FECHA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_fulldata_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_fulldata_prueba`
--

LOCK TABLES `ics_fulldata_prueba` WRITE;
/*!40000 ALTER TABLE `ics_fulldata_prueba` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_fulldata_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_idalias_usuario`
--

DROP TABLE IF EXISTS `ics_idalias_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_idalias_usuario` (
  `IdAlias_Usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador auto-incrementable de la tabla.',
  `IdA_Numero_Alias` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Numero identificador proveniente del numero del lector biometrico y del id asignado del usuario.',
  `IdA_Identificacion_Usu` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Documento de identificacion del usuario TI/CC Etc.',
  `IdA_Finger` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdA_Minucia` blob,
  `IdA_Estado_Enrolamiento` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1',
  `IdA_Estado_Usuario` int(11) DEFAULT '1' COMMENT 'Estado del usuario dentro del sistema',
  `IdA_cl` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'cliente',
  `IdA_acom` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0' COMMENT 'determina si el estado de la huella de un usuario es acomulable o no para aplicacion en Vending',
  `IdA_sistalternativo` int(11) DEFAULT '0',
  PRIMARY KEY (`IdAlias_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table en la que se relacionan el ide de usuario dentro de la operacion y el documento de identidad del mismo.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_idalias_usuario`
--

LOCK TABLES `ics_idalias_usuario` WRITE;
/*!40000 ALTER TABLE `ics_idalias_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_idalias_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `ics_instalador_v19`.`ics_idalias_usuario_AFTER_INSERT` AFTER INSERT ON `ics_idalias_usuario` FOR EACH ROW
    begin
 
	declare i int;
	declare cantidadDispensadoras int;

    INSERT INTO ics_estado_venta set aut_usr = new.IdA_Numero_Alias, aut_cl  = new.IdA_cl;
	INSERT INTO ics_estado_autorizacion set aut_usr= new.IdA_Numero_Alias, aut_cl = new.IdA_cl;
 
	set cantidadDispensadoras = (select count(*) from ics_maquinas where maq_cl =new.IdA_cl);
 
	 set i =0;
	 while i < cantidadDispensadoras do
		INSERT INTO ics_usu_dispensadora(udis_idUsuario,udis_Serial_Dispensadora,udis_Estado)
		VALUES
		(new.IdA_Numero_Alias,(select maq_serial_maq from ics_maquinas where maq_cl = new.IdA_cl limit i,1),1);

		set i =i+1;
	 end while;
 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_indicadores`
--

DROP TABLE IF EXISTS `ics_indicadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_indicadores` (
  `idics_indicadores` int(11) NOT NULL AUTO_INCREMENT,
  `ics_ind_ventasDia` int(11) DEFAULT '0',
  `ics_ind_top10_clientesrentables` int(11) DEFAULT '0',
  `ics_ind_top10_productosrentables` int(11) DEFAULT '0',
  `ics_ind_top10_dispensadorasrentables` int(11) DEFAULT '0',
  `ics_ind_top10_locacionesrentables` int(11) DEFAULT '0',
  `ics_ind_periodo` int(11) DEFAULT '1' COMMENT '1 diario\n2 Semanal\n3 Mensual',
  `ics_ind_dia` int(11) DEFAULT '1',
  `ics_ind_hora` int(11) DEFAULT '7',
  `ics_ind_diasemana` int(11) DEFAULT '1',
  `ics_ind_tipo_envio` varchar(45) COLLATE utf8_spanish_ci DEFAULT '2' COMMENT '1 Correo\n2 SMS\n3 Correo y SMS\n',
  `ics_ind_estado` int(11) DEFAULT '1',
  `ics_ind_usuariocreador` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ics_ind_fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_indicadores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_indicadores`
--

LOCK TABLES `ics_indicadores` WRITE;
/*!40000 ALTER TABLE `ics_indicadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_indicadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_item`
--

DROP TABLE IF EXISTS `ics_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_item` (
  `ite_id_item` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro y del item',
  `ite_nom_item` varchar(145) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombre del item',
  `ite_valor` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0' COMMENT 'Costo del item. campo no obligatorio pero puede tomar por defecto.',
  `fk_proveedor_ite` int(11) DEFAULT '0' COMMENT 'Llave foranea del proveedor del Item',
  `ite_cliente` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1' COMMENT 'Usuario (Cliente) creador del ítem;',
  `ite_codigo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0' COMMENT 'Código en Bodega de un ítem; Campo no obligatorio.',
  `ite_descripcion` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT 'SIN DESCRIPCION' COMMENT 'Breve descripción referente al ítem; Campo no obligatorio.',
  `ite_prioridad` int(1) DEFAULT '1' COMMENT '1 -> prioridad Alta ; Elementos de proteccion prioritarios.\n0-> Prioridad baja.\n',
  `ite_posologia` int(11) DEFAULT '1',
  `ite_tipo_producto` int(11) DEFAULT '6',
  `ite_tipo_medicamento` int(11) DEFAULT '1',
  `ite_aplicacion` int(11) DEFAULT '1',
  `ite_tipo_administracion` int(11) DEFAULT '1',
  `ite_medida` varchar(85) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1',
  `ite_reg_sanitario` varchar(85) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1',
  `ite_lote` varchar(85) CHARACTER SET ucs2 COLLATE ucs2_spanish_ci DEFAULT '1',
  `ite_fecha_venc` date DEFAULT NULL,
  `ite_fecha_crea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ite_costo` int(11) DEFAULT '0',
  `ite_estado` int(11) DEFAULT '1',
  `ics_rentabilidad` varchar(45) DEFAULT '40',
  `ite_foto` blob,
  PRIMARY KEY (`ite_id_item`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='1.	Tabla donde se almacenan los ítems que un cliente desea disponer en una planimetría.	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_item`
--

LOCK TABLES `ics_item` WRITE;
/*!40000 ALTER TABLE `ics_item` DISABLE KEYS */;
INSERT INTO `ics_item` VALUES (1,'Desconocido','1000',1,'1','0','SIN DESCRIPCION',1,1,6,1,1,1,'1','1','1',NULL,'2018-04-25 18:31:28',0,1,'40',NULL);
/*!40000 ALTER TABLE `ics_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_item_c`
--

DROP TABLE IF EXISTS `ics_item_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_item_c` (
  `ite_id_item` int(11) NOT NULL AUTO_INCREMENT,
  `ite_nom_item` varchar(245) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ite_valor` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_proveedor_ite` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ite_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ite_id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='CATERING';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_item_c`
--

LOCK TABLES `ics_item_c` WRITE;
/*!40000 ALTER TABLE `ics_item_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_item_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_log`
--

DROP TABLE IF EXISTS `ics_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_log` (
  `idics_log` int(11) NOT NULL AUTO_INCREMENT,
  `log_trama` varchar(400) DEFAULT NULL,
  `log_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_rta` varchar(45) DEFAULT NULL,
  `log_maq` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_log`
--

LOCK TABLES `ics_log` WRITE;
/*!40000 ALTER TABLE `ics_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_log_bil_disp`
--

DROP TABLE IF EXISTS `ics_log_bil_disp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_log_bil_disp` (
  `idics_log_bdisp` int(11) NOT NULL AUTO_INCREMENT,
  `ics_serial_bil` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ics_serial_disp` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ics_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_log_bdisp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_log_bil_disp`
--

LOCK TABLES `ics_log_bil_disp` WRITE;
/*!40000 ALTER TABLE `ics_log_bil_disp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_log_bil_disp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_log_config`
--

DROP TABLE IF EXISTS `ics_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_log_config` (
  `lco_id_log_config` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro de configuracion de la tarjeta',
  `lco_rev_firmware` varchar(4) DEFAULT NULL COMMENT 'Revision del firmware que posee la tarjeta',
  `lco_hora` varchar(4) DEFAULT NULL COMMENT 'Hora que tiene la tarjeta',
  `lco_fecha` varchar(4) DEFAULT NULL COMMENT 'Fecha que tiene la tarjeta',
  `lco_dia_semana` varchar(4) DEFAULT NULL COMMENT 'Primer día de la semana que esta configurado en la tarjeta',
  `lco_fecha_sistema` date DEFAULT NULL COMMENT 'Fecha del sistema en la cual se realiza el registro',
  `fk_lco_maquina` varchar(10) DEFAULT NULL COMMENT 'Llave foranea que me indica a que máquina pertence esa configuracion',
  `fk_lco_id_interfaz` varchar(10) DEFAULT NULL COMMENT 'Llave foranea que me indica a que interfaz pertence esa configuracion',
  `fk_lco_idrawconfig` int(11) NOT NULL COMMENT 'Llave foranea que me permite identificar cual es registro en raw que genero este registro',
  PRIMARY KEY (`lco_id_log_config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se toma la información de la configuracion que tiene la tarjeta al momento de energizarla, con el fin de llevar un registro de los cambios sin registro';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_log_config`
--

LOCK TABLES `ics_log_config` WRITE;
/*!40000 ALTER TABLE `ics_log_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_log_errores`
--

DROP TABLE IF EXISTS `ics_log_errores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_log_errores` (
  `idics_log_errores` int(11) NOT NULL AUTO_INCREMENT,
  `loe_usuario_DB` varchar(150) DEFAULT NULL,
  `loe_trama_error` varchar(200) DEFAULT NULL,
  `loe_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `loe_clase_proveniente` varchar(45) DEFAULT NULL COMMENT 'Clase de la que proviene el error o incosistencia (1 --> mysql ;2 -- > interfaz, 3 --> servidor)',
  PRIMARY KEY (`idics_log_errores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_log_errores`
--

LOCK TABLES `ics_log_errores` WRITE;
/*!40000 ALTER TABLE `ics_log_errores` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_log_errores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_log_mon_disp`
--

DROP TABLE IF EXISTS `ics_log_mon_disp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_log_mon_disp` (
  `idics_log_disp` int(11) NOT NULL AUTO_INCREMENT,
  `ics_serial_mon` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ics_serial_disp` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ics_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_log_disp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_log_mon_disp`
--

LOCK TABLES `ics_log_mon_disp` WRITE;
/*!40000 ALTER TABLE `ics_log_mon_disp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_log_mon_disp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_log_movil`
--

DROP TABLE IF EXISTS `ics_log_movil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_log_movil` (
  `idi_log` int(11) NOT NULL AUTO_INCREMENT,
  `lg_modulo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lg_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idi_log`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_log_movil`
--

LOCK TABLES `ics_log_movil` WRITE;
/*!40000 ALTER TABLE `ics_log_movil` DISABLE KEYS */;
INSERT INTO `ics_log_movil` VALUES (1,'MIS LOCACIONES','2018-04-17 15:58:49'),(2,'MIS LOCACIONES','2018-04-17 15:59:06'),(3,'MIS LOCACIONES','2018-04-17 15:59:48'),(4,'MI OPERACION','2018-04-17 15:59:52'),(5,'MI OPERACION','2018-04-17 16:00:04'),(6,'MIS VENTAS Y BALANCE','2018-04-17 16:00:08'),(7,'MIS INVENTARIOS','2018-04-17 16:00:18'),(8,'MIS LOCACIONES','2018-04-17 16:01:13'),(9,'MIS LOCACIONES','2018-04-17 16:03:34'),(10,'MIS LOCACIONES','2018-04-17 16:05:05'),(11,'MIS LOCACIONES','2018-04-17 16:05:12'),(12,'MIS DISPENSADORAS','2018-04-17 16:05:32'),(13,'MIS LOCACIONES','2018-04-17 16:06:29'),(14,'MIS DISPENSADORAS','2018-04-17 16:06:35'),(15,'MIS DISPENSADORAS','2018-04-17 16:06:47'),(16,'MIS PRODUCTOS','2018-04-17 16:07:22'),(17,'MIS PRODUCTOS','2018-04-17 16:07:25'),(18,'MIS PRODUCTOS','2018-04-17 16:07:29'),(19,'MIS USUARIOS','2018-04-17 16:07:42'),(20,'MIS INDICADORES','2018-04-17 16:08:07');
/*!40000 ALTER TABLE `ics_log_movil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_loglote`
--

DROP TABLE IF EXISTS `ics_loglote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_loglote` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `log_trama` varchar(400) DEFAULT NULL,
  `log_timestmp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_loglote`
--

LOCK TABLES `ics_loglote` WRITE;
/*!40000 ALTER TABLE `ics_loglote` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_loglote` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Userics`@`%`*/ /*!50003 TRIGGER `ics_instalador_v19`.`ics_loglote_AFTER_INSERT` AFTER INSERT ON `ics_loglote` FOR EACH ROW
BEGIN

declare indxTrama varchar(45);
declare pet_plano,c,item,subsecc,seccion varchar(6);
declare dispensadora varchar(15);
declare N_PROD varchar(150);
declare idError varchar(10);
declare parceDia,parceMes,parceano,parcehor,parceMin,parceSeg int;
declare anio,mes,dia,hor, min, seg varchar(3);
declare nSeleccion varchar(3);
declare costo ,CC_USR varchar(20);
declare fechaCrea varchar(30);


IF NEW.log_estado  = 'UNICO' THEN

	set idError = '0000';
	set indxTrama = substring(new.log_trama,1,1);
	set item =1;
	-- trama s
		set dispensadora = substring(new.log_trama,-10);
		
		SET pet_plano		= (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = dispensadora and pla_estado=1);
		IF pet_plano IS NULL THEN 
			SET pet_plano = 0 ;
			set N_PROD			= 'DESCONOCIDO';
		else
			set item        	= (SELECT fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_plano  and det_pln_numero_seleccion = substring(new.log_trama,2,2) );  -- Item actual en esa seleccion  
			IF  item  			IS NULL THEN SET item  = 1; END IF;
			set N_PROD			= (SELECT ite_nom_item	FROM ics_item WHERE ite_id_item = item limit 1);
		END IF;

		SET c 				= (select cli_id_cliente 	 from vi_ics_cliente_maq where maq_serial_maq 	 = dispensadora limit 1);	
		SET subsecc  		= (select fk_maq_punto_maqn  from ics_maquinas       where maq_serial_maq 	 = dispensadora limit 1);
		SET seccion  		= (select sbs_fk_seccion 	 from ics_sub_seccion    where sbs_id_subseccion =  subsecc     limit 1);
	-- inicio fecha erronea
		case indxTrama
			when 'S' then -- trama de venta efectivo
				
                set parceDia = 26;
                set parceMes = 28;
                set parceano = 30;       
                set parcehor = 32;
                set parceMin = 34;
                set parceSeg = 36;
                
			when 'U' then -- trama de venta efectivo 3s
				
                set parceDia = 27;
                set parceMes = 29;
                set parceano = 31;       
                set parcehor = 33;
                set parceMin = 35;
                set parceSeg = 37;
            when 'T' then -- tramas de billetero 
			
                set parceDia = 3;
                set parceMes = 5;
                set parceano = 7; 
                set parcehor = 9;
                set parceMin = 11;
                set parceSeg = 13;
            when 'P' then -- tramas de puerta 
				
                set parceDia = 3;
                set parceMes = 5;
                set parceano = 7;    
                set parcehor = 9;
                set parceMin = 11;
                set parceSeg = 13;
           -- when 'y' then -- tramas de venta horeca 
			-- 	set longTrama = 27;
			when 'B' then -- tramas de entregas EAS 
				
                set parceDia = 10;
                set parceMes = 12;
                set parceano = 14;
                set parcehor = 16;
                set parceMin = 18;
                set parceSeg = 20;
              
			when 'C' then -- tramas de entregas fallida  
			
                set parceDia = 10;
                set parceMes = 12;
                set parceano = 14;
                set parcehor = 16;
                set parceMin = 18;
                set parceSeg = 20;
        end case;
        
      SET anio = substring(new.log_trama,parceano,2);
	  SET mes  = substring(new.log_trama,parceMes,2);
	  SET dia  = substring(new.log_trama,parceDia,2);
      SET hor = substring(new.log_trama,parcehor,2);
	  SET min  = substring(new.log_trama,parceMin,2);
	  SET seg  = substring(new.log_trama,parceSeg,2);
      
      
      IF anio = '00' or mes = '00' or dia = '00' then
			SET fechaCrea =NOW();
		else
			SET fechaCrea = concat('20',anio,'-',mes,'-',dia,' ',hor,':',min,':',seg);
		end if;
	-- fin determinar fecha erronea.

	if indxTrama = 'S' then
    
     	INSERT INTO ics_fulldata
		(ful_numsel, ful_valsel,
		ful_idmaq, ful_planom,
		ful_item, ful_cl,
		ful_ss,	ful_nom_it,
		ful_tipoapp, ful_seccion,
		ful_fechacrea,   ful_fechaics,
		ful_lote)
		VALUES
		(
		substring(new.log_trama,2,2), 		substring(new.log_trama,4,7),
		substring(new.log_trama,-10), 		pet_plano,
		item,		c,
		subsecc,		N_PROD,
		3,		seccion,
		fechaCrea,	    concat(anio,'-',mes,'-',dia,' ',hor ,':',min,':',seg),
	    1);
		
	else
    IF indxTrama = 'U' THEN
    INSERT INTO ics_fulldata
		(ful_numsel, ful_valsel,
		ful_idmaq, ful_planom,
		ful_item, ful_cl,
		ful_ss,	ful_nom_it,
		ful_tipoapp, ful_seccion,
		ful_fechacrea,   ful_fechaics,
		ful_lote)
		VALUES
		(
		substring(new.log_trama,2,3), 		substring(new.log_trama,5,7),
		substring(new.log_trama,-10), 		pet_plano,
		item,		c,
		subsecc,		N_PROD,
		3,		seccion,
		fechaCrea,	    concat(anio,'-',mes,'-',dia,' ',hor ,':',min,':',seg),
	    1);
	IF indxTrama = 'T' THEN -- alerta billetero
			
		if substring(new.log_trama,2,1) = '1' then
			SET idError = '0008';
		else if substring(new.log_trama,2,1) = '2' then
			SET idError = '0011';
		else if substring(new.log_trama,2,1) ='3' THEN
			SET idError = '0012';
		else if substring(new.log_trama,2,1) ='4' THEN
			SET idError = '0013';
		else if substring(new.log_trama,2,1) ='5' THEN
			SET idError = '0014';
		else if substring(new.log_trama,2,1) = '0' THEN
			SET idError = '0010';
		ELSE
			SET idError = '0000';
		END if;
		END if;
		END if;
		END if;
		END if;
        END IF;
		END if;
        
           INSERT INTO ics_mensaje set fk_men_error= idError ,fk_men_serial_maq=substring(new.log_trama,-10),men_estado_de_envio=6, men_fecha = fechaCrea;
	
    ELSE IF indxTrama = 'P' THEN -- alerta puerta

		IF substring(new.log_trama,2,1) = 1 THEN  -- PUERTA ABIERTA
			SET idError = '0005';
		   -- INSERT INTO ics_mensaje SET fk_men_error = '0005',fk_men_serial_maq = substring(datos,-10); 
		ELSE
			SET idError = '0006';
			-- INSERT INTO ics_mensaje SET fk_men_error = '0006',fk_men_serial_maq = substring(datos,-10); 
		END IF;
        INSERT INTO ics_mensaje set fk_men_error= idError ,fk_men_serial_maq=substring(new.log_trama,-10),men_estado_de_envio=6 , men_fecha = fechaCrea;
        
    else if indxTrama = 'y' then -- horeca en lote			
    
		INSERT INTO ics_fulldata
			(ful_numsel,
            ful_idusu,
            ful_cc_usr,
			ful_valsel,
			ful_idmaq,
			ful_planom,
			ful_item,
			ful_cl,
			ful_ss,
			ful_nom_it,
			ful_tipoapp,
			ful_seccion,
			ful_fechacrea,
			ful_fechaics,
			ful_lote)
			VALUES
			(
			substring(new.log_trama,8,2),
            substring(new.log_trama,2,6),
            (SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias =  substring(new.log_trama,2,6)),
			substring(new.log_trama,10,5),
			substring(new.log_trama,-10), 
			pet_plano,
			item,
			c,
			subsecc,
			N_PROD,
			2,
			seccion,
			concat(substring(new.log_trama,19,2) ,'-',substring(new.log_trama,17,2),'-',substring(new.log_trama,15,2),' ',substring(new.log_trama,21,2) ,':',substring(new.log_trama,23,2),':',substring(new.log_trama,25,2)),
			concat(substring(new.log_trama,19,2) ,'-',substring(new.log_trama,17,2),'-',substring(new.log_trama,15,2),' ',substring(new.log_trama,21,2) ,':',substring(new.log_trama,23,2),':',substring(new.log_trama,25,2)),
			1);
		-- Entregas EAS estand alone u ofline
	else if indxTrama = 'B' then
    
		set nSeleccion     = substring(new.log_trama,8,2); 
		
		set item        =(SELECT fk_id_item_det  from ics_detalle_plano where fk_id_plano_det = pet_Plano and det_pln_numero_seleccion = nSeleccion );  -- Item actual en esa seleccion  
		IF item  IS NULL THEN SET item  = 1; END IF;
		set costo		=(SELECT ite_valor       from ics_item where ite_id_item = item);
		SET CC_USR			=(SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = SUBSTRING(new.log_trama,2,6));
		set N_PROD			=(SELECT ite_nom_item	 FROM ics_item WHERE ite_id_item = item limit 1);
		set seccion			=(SELECT usu_centro_Costo from ics_usuario where usu_id_usuario_opera = CC_USR and usu_client_creador=C);

		INSERT INTO ics_fulldata
        set 
		ful_idusu =SUBSTRING(new.log_trama,2,6),
		ful_numsel=nSeleccion,
		ful_valsel=costo,
		ful_idmaq=dispensadora,
		ful_planom=pet_plano,
		ful_item=item,
		ful_cl=c,
        ful_cc_usr=CC_USR,
		ful_ss=subsecc,
        ful_nom_it=N_PROD,
        ful_tipoapp='1',ful_seccion=seccion,
        ful_fechaics=fechaCrea,
        ful_fechacrea=fechaCrea,
        ful_lote=	'1';	
    else if indxTrama = 'C' then
    
		set dia  = substring(new.log_trama,10,2);
		set mes  = substring(new.log_trama,12,2);
        set anio = substring(new.log_trama,14,2);
		
		if anio = '00' or mes = '00' or dia = '00' then 
			set fechaCrea = now();
		else
			set fechaCrea = (select concat('20',anio,'-',mes,'-',dia,' ',hor,':',min,':',seg));
		end if;
	
		INSERT INTO ics_full_peticion_ 
		SET 
		fk_fpe_id_usuario_pet = SUBSTRING(new.log_trama,2,6),
		fk_fpe_serial_maq_pet = dispensadora,
		fpe_num_seleccion	  = SUBSTRING(new.log_trama,8,2),
		fpe_estado_peticion   = 1,
		fpe_cliente           =	c, 
		fpe_cc_usr            = (SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = SUBSTRING(new.log_trama,2,6)),
		fpe_tipo			  = 1,
		fpe_fechaStandAlone   = fechaCrea;
        
    end if;
    end if;
    end if;
	end if;
	end if;
	end if;

	
    
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_logsusuario`
--

DROP TABLE IF EXISTS `ics_logsusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_logsusuario` (
  `log_idlog` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que nos genera un control de los registros',
  `log_usuario` varchar(45) NOT NULL COMMENT 'Usuario usado para el logeo',
  `log_pass` varchar(45) NOT NULL COMMENT 'Contraseña usada para el logeo',
  `log_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de la creación del registro',
  `log_autoriz` int(1) NOT NULL COMMENT 'Este campo se registra si esta autorizado para ingresar o no',
  PRIMARY KEY (`log_idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Esta tabla almacena las entradas a la interfaz grafica';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_logsusuario`
--

LOCK TABLES `ics_logsusuario` WRITE;
/*!40000 ALTER TABLE `ics_logsusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_logsusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_m_mensaje`
--

DROP TABLE IF EXISTS `ics_m_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_m_mensaje` (
  `mme_id_m_mensaje` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que genera una identificacion del mensaje',
  `mme_nombre` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Nombre del mensaje',
  `mme_categoria` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Categoria del mensaje.\n1--->Máquina\n2--->Venta',
  `mme_tipo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Tipo de mensaje.\n1--->Alarma\n2--->Evento',
  `mme_descripcion_mens` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Descripcion del mensaje',
  `mme_codigo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`mme_id_m_mensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='ics_m_mensaje = mestro de mensaje. Esta tabla alamacena los mensajes que estan disponibles en el sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_m_mensaje`
--

LOCK TABLES `ics_m_mensaje` WRITE;
/*!40000 ALTER TABLE `ics_m_mensaje` DISABLE KEYS */;
INSERT INTO `ics_m_mensaje` VALUES (1,'Dispensadora Apagada','1','1','La Dispensadora se ha apagado.','0001'),(2,'Orden de Recarga','3','1','La dispensadora presenta una orden de recarga pendiente','0002'),(3,'Dispensadora Encendida','1','1','La Dispensadora se ha Encendido.','0003'),(4,'Temperatura','1','1','La temperatura de la dispensadora ha cambiado','0004'),(5,'Puerta Abierta','1','1','La puerta de la dispensadora se ha abierto.','0005'),(6,'Puerta Cerrada','1','1','La puerta se ha cerrado.','0006'),(7,'Monedero Habilitado','4','1','El monedero se ha habilitado.','0007'),(8,'Billetero Habilitado','5','1','El billetero se ha habilitado.','0008'),(9,'Monedero Deshabilitado','4','1','El monedero se ha deshabilitado.','0009'),(10,'Billetero Deshabilitado','5','1','El billetero se ha deshabilitado.','0010'),(11,'Motor de  Billetero ','5','1','Uno de los motores del billetero ha fallado.','0011'),(12,'Sensor de Billetero ','5','1','Uno de los sensores del billetero ha fallado.','0012'),(13,'Billete atascado','5','1','Se ha atascado un billete.','0013'),(14,'Cashbox de billetero removido','5','1','El cashbox ha sido removido del billetero.','0014'),(15,'Comunicacion ics','1','1','El  ICS ha dejado de comunicar','0015'),(16,'Espiral agotado','1','1','El espiral ha llegado a un nivel critico de inventario, ','0016'),(17,'Nivel de monedas','1','1','La cantidad de monedas ha llegado a un nivel critico ','0017');
/*!40000 ALTER TABLE `ics_m_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_maq_planometria`
--

DROP TABLE IF EXISTS `ics_maq_planometria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_maq_planometria` (
  `id_us_pl` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `Fk_pla_id_maq` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Identificador del usuario que esta en esa planometria (Llave foranea)',
  `Fk_pla_id_plan` int(11) NOT NULL COMMENT 'Identificador del planometria a la cual se esta asignando ese usuario (Llave foranea)',
  `pla_estado` int(11) DEFAULT '1',
  `pla_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pla_flag_crea_inv` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  PRIMARY KEY (`id_us_pl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla donde se almacena la relación una dispensadora y la planimetría que esta tiene activa.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_maq_planometria`
--

LOCK TABLES `ics_maq_planometria` WRITE;
/*!40000 ALTER TABLE `ics_maq_planometria` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_maq_planometria` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Userics`@`%`*/ /*!50003 TRIGGER `ics_maq_planometria_BINS` BEFORE INSERT ON `ics_maq_planometria` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin

if new.pla_flag_crea_inv = 0 then

	update ics_control_items set cit_estado = 0	where	fk_cit_idmaq = new.Fk_pla_id_maq	;
    
    end if;
    
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Userics`@`%`*/ /*!50003 TRIGGER `tr_ics_maq_planome_in` AFTER INSERT ON `ics_maq_planometria` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin  
declare maquina varchar(10);
declare planometria int(11);
declare s varchar(4);
declare ir varchar(10);
declare pl varchar(15);
declare it varchar(15);
declare i int;
declare nreg int;
if new.pla_flag_crea_inv =0 then

set maquina= new.Fk_pla_id_maq;
set planometria= new.Fk_pla_id_plan;
set nreg = (select count(*) from ics_detalle_plano as p where p.fk_id_plano_det = planometria);	
set i=0;	
while nreg > i
do
SET s=(select p.det_pln_numero_seleccion from ics_detalle_plano as p where p.fk_id_plano_det = planometria LIMIT i,1);
SET ir =(select p.det_maximo_item from ics_detalle_plano as p where p.fk_id_plano_det = planometria LIMIT i,1);
SET pl=(select p.fk_id_plano_det from ics_detalle_plano as p where p.fk_id_plano_det = planometria LIMIT i,1); 
SET it=(select p.fk_id_item_det from ics_detalle_plano as p where p.fk_id_plano_det = planometria LIMIT i,1); 
CALL sp_control_Itms_in(s,ir,pl,it,maquina);
SET i = i+1;
end while;
   
   end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_maquinas`
--

DROP TABLE IF EXISTS `ics_maquinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_maquinas` (
  `idics_maquinas` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica la máquina',
  `maq_serial_maq` varchar(12) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Serial de la maquina compuesto por 10 caracteres.',
  `maq_ref_maq` varchar(160) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1' COMMENT 'Nombre de la maquina.',
  `fk_maq_tipo_maqn` int(11) NOT NULL DEFAULT '1' COMMENT 'llave foranea, tipo de maquina.',
  `fk_maq_marca_maqn` int(11) NOT NULL DEFAULT '1' COMMENT 'Llave foranea marca de la maquina',
  `fk_maq_punto_maqn` int(11) NOT NULL COMMENT 'llave foranea, Punto donde esta ubicada la maquina SECCION.',
  `maq_estado` int(11) DEFAULT '1',
  `maq_img` varchar(45) COLLATE utf8_spanish_ci DEFAULT 'Recursosmaquina_peque.png',
  `maq_cl` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `maq_ics` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `maq_billetero` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `maq_monedero` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `maq_datafono` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `maq_biometrico` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0',
  `maq_est_bill` int(11) DEFAULT '1',
  `maq_est_mon` int(11) DEFAULT '1',
  `maq_est_pue` int(11) DEFAULT '1',
  `ics_id_area` varchar(45) COLLATE utf8_spanish_ci NOT NULL DEFAULT '1',
  `ics_piso` varchar(45) COLLATE utf8_spanish_ci DEFAULT 'DESCONOCIDO',
  PRIMARY KEY (`idics_maquinas`),
  UNIQUE KEY `maq_serial_maq` (`maq_serial_maq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla donde se almacenan las máquinas que estan en el sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_maquinas`
--

LOCK TABLES `ics_maquinas` WRITE;
/*!40000 ALTER TABLE `ics_maquinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_maquinas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Userics`@`%`*/ /*!50003 TRIGGER `ics_maquinas_AFTER_INSERT` AFTER INSERT ON `ics_maquinas` FOR EACH ROW
BEGIN

   
   INSERT INTO ics_usu_dispensadora (udis_idUsuario,udis_Serial_Dispensadora) 
SELECT IdA_Numero_Alias,NEW.maq_serial_maq FROM ics_idalias_usuario 
WHERE IdA_cl = NEW.maq_cl;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_marca_maq_`
--

DROP TABLE IF EXISTS `ics_marca_maq_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_marca_maq_` (
  `mar_id_marca_maq` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que genera un identificador de marca',
  `mar_descrip` varchar(45) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombre o descripcion de la marca de la maquina',
  `fk_mar_id_proveedor` int(11) NOT NULL DEFAULT '0' COMMENT 'Llave foranea que genera una identificacion de que proveedor da esa máquina',
  PRIMARY KEY (`mar_id_marca_maq`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla que almacena las marcas de  cada una de las Dispensadoras.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_marca_maq_`
--

LOCK TABLES `ics_marca_maq_` WRITE;
/*!40000 ALTER TABLE `ics_marca_maq_` DISABLE KEYS */;
INSERT INTO `ics_marca_maq_` VALUES (1,'AMS',0),(2,'BIANCHI',0),(3,'ADIMAC',0),(4,'VITA',0),(5,'FASTCORP',0),(6,'NECTA',0),(7,'AZKOYEN',0),(8,'CRANE',0),(9,'GENESIS',0);
/*!40000 ALTER TABLE `ics_marca_maq_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_maxmin_temp`
--

DROP TABLE IF EXISTS `ics_maxmin_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_maxmin_temp` (
  `idics_maxmin_temp` int(11) NOT NULL AUTO_INCREMENT,
  `mmt_max_temp` varchar(3) NOT NULL,
  `mmt_min_temp` varchar(3) NOT NULL,
  `fk_mmt_id_disp` varchar(12) NOT NULL,
  `mmt_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mmt_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idics_maxmin_temp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_maxmin_temp`
--

LOCK TABLES `ics_maxmin_temp` WRITE;
/*!40000 ALTER TABLE `ics_maxmin_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_maxmin_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_mensaje`
--

DROP TABLE IF EXISTS `ics_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_mensaje` (
  `men_id_mensaje` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que permite identificar el error',
  `fk_men_error` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Captura del error que se presento, código del mismo, llave foranea',
  `fk_men_serial_maq` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Llave foranea del serial de la máquina en la que se presento el error',
  `fk_men_id_peticion` int(11) NOT NULL DEFAULT '0' COMMENT 'Llave foranea que me identifica que peticion se genero el error',
  `men_estado` int(1) NOT NULL DEFAULT '1' COMMENT '0--->Inactiva\n1--->Activa',
  `men_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `men_detalle` varchar(300) COLLATE utf8_spanish_ci DEFAULT ' ',
  `men_estado_de_envio` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0' COMMENT '0 no enviado 1 enviado',
  PRIMARY KEY (`men_id_mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla que almacena un error  generado en una dispensadora. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_mensaje`
--

LOCK TABLES `ics_mensaje` WRITE;
/*!40000 ALTER TABLE `ics_mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_monedero`
--

DROP TABLE IF EXISTS `ics_monedero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_monedero` (
  `idics_mon` int(11) NOT NULL AUTO_INCREMENT,
  `mon_serial` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mon_manufactura` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mon_modelo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mon_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_mon`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_monedero`
--

LOCK TABLES `ics_monedero` WRITE;
/*!40000 ALTER TABLE `ics_monedero` DISABLE KEYS */;
INSERT INTO `ics_monedero` VALUES (1,'NA','000','m','2018-06-22 20:03:59');
/*!40000 ALTER TABLE `ics_monedero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_orden_de_recarga`
--

DROP TABLE IF EXISTS `ics_orden_de_recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_orden_de_recarga` (
  `idics_orden_de_recarga` int(11) NOT NULL AUTO_INCREMENT,
  `ics_odr_maquina` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `ics_odr_seleccion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ics_odr_nombreProducto` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ics_odr_prod_faltante` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ics_odr_maximo_prod` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ics_odr_cant_actual` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `ics_odr_usuario_creador` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ics_odr_fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_orden_de_recarga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_orden_de_recarga`
--

LOCK TABLES `ics_orden_de_recarga` WRITE;
/*!40000 ALTER TABLE `ics_orden_de_recarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_orden_de_recarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_orden_recarga`
--

DROP TABLE IF EXISTS `ics_orden_recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_orden_recarga` (
  `ore_id_orden_recarga` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que permite identificar la orden de recarga',
  `ore_tipo_orden` int(1) NOT NULL COMMENT 'Tipo de orden que se genera\n1- Espiral \n2 - Maq',
  `ore_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en la cual se genera la orden de recarga',
  `fk_ore_orden_compra` int(11) NOT NULL COMMENT 'Llave foranea de la orden de compra que genera la orden de recarga',
  PRIMARY KEY (`ore_id_orden_recarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Tabla donde se almacena la orden de recarga, después de recargar la Dispensadora físicamente.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_orden_recarga`
--

LOCK TABLES `ics_orden_recarga` WRITE;
/*!40000 ALTER TABLE `ics_orden_recarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_orden_recarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_ordencompra`
--

DROP TABLE IF EXISTS `ics_ordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_ordencompra` (
  `oco_idordenco` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador que tiene la orden de compra',
  `oco_tipoorden` int(1) NOT NULL COMMENT 'Tipo de orden:\n1----> Orden por producto\n2----> Orden general\n3----> Orden por estado ',
  `oco_serialmaq` varchar(10) NOT NULL COMMENT 'Llave foranea id (Serial) de máquina',
  `oco_idcliente` int(11) NOT NULL COMMENT 'Llave de clientes id del cliente',
  `oco_fechacreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creacion de la orden de recarga',
  `oco_estado` int(1) NOT NULL DEFAULT '1' COMMENT 'Estado de la orden\n1=''Activa''\n0=''Inactiva''',
  PRIMARY KEY (`oco_idordenco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Aquí se registran las órdenes de compra que se generan ya sea por espirales en estado crítico, agotado o Dispensadora en estado crítico.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_ordencompra`
--

LOCK TABLES `ics_ordencompra` WRITE;
/*!40000 ALTER TABLE `ics_ordencompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_ordencompra` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_ics_detalle_oco_in` AFTER INSERT ON `ics_ordencompra` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
declare orden int(11);
declare tipo int(1);
declare maquina varchar(10);
declare planometria int(11);
declare n_espirales int;
declare cant_recargar_plani int;
declare cant_recargar_rest int ;
declare i int;
DECLARE seleccion int;
declare cant_recargar int;-- Cantidad a recargar
declare iditem int;
set i =0;
-- Trigger que se dispara después de insertar en la tabla ics_ordencompra, 
-- almacena el detalle de cada orden de compra generada.
set orden   = new.oco_idordenco;

set tipo	= new.oco_tipoorden;
set maquina = new.oco_serialmaq;
-- tipo 3 --> Critico de maquina
-- tipo 4 --> Maquina Agotada 
-- tipo 1 --> Espiral Agotado
-- Tipo 2 --> ESpiral Critico 
 /*
insert into ics_mensaje 
set fk_men_error = '0002', 
fk_men_serial_maq = maquina,
men_detalle       = concat('OR=',orden); 
*/


if tipo = 4
then
		insert into ics_det_ordencompra
		(doc_numseleccion,	doc_cantirecargar,	fk_doc_iditem )
		SELECT dp.det_pln_numero_seleccion,	dp.det_maximo_item,	dp.fk_id_item_det 
		from  ics_detalle_plano dp where dp.fk_id_plano_det = 
		(select `Fk_pla_id_plan` from `ics_maq_planometria` where `Fk_pla_id_maq` = maquina and `pla_estado` = 1);
else
	
		-- cuenta espirales 
	set n_espirales = (select count(cit_seleccion) 
					   from  ics_control_items 
					   where fk_cit_idmaq = maquina and cit_estado = 1
					   and 	 fk_cit_idplanometria =	(select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq = maquina and pla_estado = 1));

	WHILE n_espirales > i do
	-- numero de la seleccion
		set seleccion = (select cit_seleccion from ics_control_items where fk_cit_idmaq = maquina and cit_estado = 1
		and fk_cit_idplanometria =(select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq =
				maquina and pla_estado = 1) order by cit_seleccion asc limit i,1);
  -- cantidad actual de items
	set cant_recargar_rest= (select cit_itemrestante from ics_control_items where fk_cit_idmaq = maquina and cit_estado = 1
								and fk_cit_idplanometria =(select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq =
				maquina and pla_estado = 1) order by cit_seleccion asc limit i,1);
	-- selecciona el identificador de itemms
	set iditem =(select fk_cit_iditem from ics_control_items where fk_cit_idmaq = maquina and  cit_estado = 1 and 
				fk_cit_idplanometria =(select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq =
					maquina and pla_estado = 1) order by cit_seleccion asc limit i,1);
		-- maximo de ese espiral
	set cant_recargar_plani = (select  det_maximo_item from ics_detalle_plano dp 
									where fk_id_plano_det = (select Fk_pla_id_plan from ics_maq_planometria mp
									where Fk_pla_id_maq =maquina and pla_estado = 1) limit i,1);

	set cant_recargar = cant_recargar_plani-cant_recargar_rest;

		
	if cant_recargar > 0
		then 
-- inserta en detalle de orden de compra.
			call sp_Det_Orden_Comp(seleccion,cant_recargar,iditem,orden);
		end if;
	set i = i+1;
	end while; 
  end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_perfil`
--

DROP TABLE IF EXISTS `ics_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_perfil` (
  `per_id_perfil` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del perfil.',
  `per_estado_per` int(1) DEFAULT '1' COMMENT 'Estado del perfil',
  `per_fecha_cre` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creacion del perfil',
  `per_periodo_recarga` int(11) NOT NULL COMMENT 'Periodo en el cual se recarga este perfil\n1---->Mensual\n2---->Semanal\n3---->Diario\n',
  `per_nombre_perf` varchar(45) COLLATE utf8_spanish_ci NOT NULL COMMENT 'nombre del perfil para eAs o valor del perfil  para vending',
  `per_cliente` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `per_tipo` varchar(45) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Tipo  1 eas 2 vending',
  PRIMARY KEY (`per_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla donde se registran los perfiles registrado por un usuario administrador  en el sistema de información. 		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_perfil`
--

LOCK TABLES `ics_perfil` WRITE;
/*!40000 ALTER TABLE `ics_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_periodo_recarga`
--

DROP TABLE IF EXISTS `ics_periodo_recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_periodo_recarga` (
  `per_id_Per_Rec` int(11) NOT NULL AUTO_INCREMENT,
  `per_descripcion` varchar(45) DEFAULT NULL COMMENT 'Periodo en el cual se recarga este perfil\n1---->Mensual\n2---->Semanal\n3---->Diario',
  PRIMARY KEY (`per_id_Per_Rec`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='1.	Almacena por defecto periodo de recarga de un perfil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_periodo_recarga`
--

LOCK TABLES `ics_periodo_recarga` WRITE;
/*!40000 ALTER TABLE `ics_periodo_recarga` DISABLE KEYS */;
INSERT INTO `ics_periodo_recarga` VALUES (1,'Mensual'),(2,'Semanal '),(3,'Diario'),(4,'Ilimitado');
/*!40000 ALTER TABLE `ics_periodo_recarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_pet`
--

DROP TABLE IF EXISTS `ics_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_pet` (
  `idnew_table` int(11) NOT NULL AUTO_INCREMENT,
  `datae` varchar(45) DEFAULT NULL,
  `log_disp` varchar(45) DEFAULT NULL,
  `log_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idnew_table`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_pet`
--

LOCK TABLES `ics_pet` WRITE;
/*!40000 ALTER TABLE `ics_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_peticiones_huella`
--

DROP TABLE IF EXISTS `ics_peticiones_huella`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_peticiones_huella` (
  `idics_peticiones_huella` int(11) NOT NULL AUTO_INCREMENT,
  `pet_id_usuario` varchar(45) DEFAULT NULL,
  `pet_cc_usuario` varchar(45) DEFAULT NULL,
  `pet_disp` varchar(45) DEFAULT NULL,
  `pet_estad` varchar(45) DEFAULT NULL,
  `pet_cl` varchar(45) DEFAULT NULL,
  `pet_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_peticiones_huella`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_peticiones_huella`
--

LOCK TABLES `ics_peticiones_huella` WRITE;
/*!40000 ALTER TABLE `ics_peticiones_huella` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_peticiones_huella` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_phantom`
--

DROP TABLE IF EXISTS `ics_phantom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_phantom` (
  `idics_phantom` int(11) NOT NULL AUTO_INCREMENT,
  `phan_consulta` varchar(60) NOT NULL,
  `phan_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_phantom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_phantom`
--

LOCK TABLES `ics_phantom` WRITE;
/*!40000 ALTER TABLE `ics_phantom` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_phantom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_planometria`
--

DROP TABLE IF EXISTS `ics_planometria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_planometria` (
  `idics_planometria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la planometria',
  `pla_num_selecciones` int(11) DEFAULT NULL COMMENT 'numero de selecciones de la maquina ',
  `pla_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en la cual se crea esta planometria',
  `pla_nivel_max` int(5) DEFAULT NULL COMMENT 'Maximo de items que se pueden colocar en la máquina',
  `pla_nivel_min` int(5) DEFAULT NULL COMMENT 'Nivel minimo de la máquina para enviar alerta de recarga de máquina y orden de compra',
  `pla_nombre` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pla_Cliente` int(11) DEFAULT NULL,
  `pla_estado` varchar(45) CHARACTER SET latin1 DEFAULT '1',
  `pla_tipo_maquina` varchar(45) CHARACTER SET latin1 DEFAULT '1',
  PRIMARY KEY (`idics_planometria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla donde se almacenan las planimetrías que  son registradas por un administrador.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_planometria`
--

LOCK TABLES `ics_planometria` WRITE;
/*!40000 ALTER TABLE `ics_planometria` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_planometria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_posologia`
--

DROP TABLE IF EXISTS `ics_posologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_posologia` (
  `idics_posologia` int(11) NOT NULL AUTO_INCREMENT,
  `pos_nombre` varchar(100) DEFAULT NULL,
  `pos_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_posologia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_posologia`
--

LOCK TABLES `ics_posologia` WRITE;
/*!40000 ALTER TABLE `ics_posologia` DISABLE KEYS */;
INSERT INTO `ics_posologia` VALUES (1,'NA','2014-02-21 15:42:29'),(2,'gr','2014-02-21 15:56:34'),(3,'ml','2014-02-21 15:56:34'),(4,'mg','2014-02-21 15:56:34'),(5,'unidades','2015-06-11 15:37:19');
/*!40000 ALTER TABLE `ics_posologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_proveedor_item_`
--

DROP TABLE IF EXISTS `ics_proveedor_item_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_proveedor_item_` (
  `pro_id_proveedor` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del proveedor',
  `pro_doc_proveedor` varchar(15) DEFAULT NULL COMMENT 'Documento del proveedor',
  `pro_nombre` varchar(160) DEFAULT NULL COMMENT 'Nombre del proveedor',
  `pro_direccion` varchar(160) DEFAULT NULL COMMENT 'Direccion del proveedor',
  `pro_razon_soc` varchar(160) DEFAULT NULL COMMENT 'Razon social del proveedor',
  `pro_correo` varchar(60) DEFAULT NULL COMMENT 'Correo electronico del proveedor',
  `pro_telefono` varchar(11) DEFAULT NULL COMMENT 'Telefono de contacto del proveedor',
  `pro_cl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pro_id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='ics_proveedor_item= pro_id_proveedor + pro_nombre+ pro_direccion + pro_razon_soc+ pro_correo+ pro_telefono\nTabla donde se almacenan los proveedores de items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_proveedor_item_`
--

LOCK TABLES `ics_proveedor_item_` WRITE;
/*!40000 ALTER TABLE `ics_proveedor_item_` DISABLE KEYS */;
INSERT INTO `ics_proveedor_item_` VALUES (1,'0','Desconocido','0','0','0','0','1');
/*!40000 ALTER TABLE `ics_proveedor_item_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_proveedor_maq_`
--

DROP TABLE IF EXISTS `ics_proveedor_maq_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_proveedor_maq_` (
  `pro_maq_id_proveedor` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del proveedor',
  `pro_maq_doc_proveedor` varchar(15) NOT NULL COMMENT 'Documento del proveedor de máquinas',
  `pro_maq_nombre` varchar(160) NOT NULL COMMENT 'Nombre del proveedor de máquinas',
  `pro_maq_direccion` varchar(160) NOT NULL COMMENT 'Direccion del proveedor de máquinas',
  `pro_maq_razon_soc` varchar(160) DEFAULT NULL COMMENT 'Razon Social del proveedor de máquinas',
  `pro_maq_correo` varchar(60) DEFAULT NULL COMMENT 'Correo electronico del proveedor de máquinas',
  `pro_maq_telefono` varchar(11) DEFAULT NULL COMMENT 'Telefono del proveedor de máquinas',
  `pro_maq_cl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pro_maq_id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Tabla donde se almacena el proveedor de máquinas.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_proveedor_maq_`
--

LOCK TABLES `ics_proveedor_maq_` WRITE;
/*!40000 ALTER TABLE `ics_proveedor_maq_` DISABLE KEYS */;
INSERT INTO `ics_proveedor_maq_` VALUES (1,'0','INSSA SAS','0','INSSA SAS','0','0','1');
/*!40000 ALTER TABLE `ics_proveedor_maq_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_puntos`
--

DROP TABLE IF EXISTS `ics_puntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_puntos` (
  `pun_id_punto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del punto (Llave primaria)',
  `pun_nombre` varchar(160) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombre del punto.',
  `pun_direccion` varchar(160) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Direccion del punto',
  `pun_persona_contacto` varchar(160) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Nombre de la persona de contacto en el punto',
  `pun_telefono` varchar(11) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Telefono de contacto en el punto',
  `pun_email` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Correo electronico del contacto en el punto',
  `fk_punt_id_clien` int(11) NOT NULL COMMENT 'Llave foranea que identifica que cliente tiene ese punto',
  `pun_ciudad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pun_pais` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pun_celular` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pun_estado` varchar(45) COLLATE utf8_spanish_ci DEFAULT '1',
  PRIMARY KEY (`pun_id_punto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='1.	Tabla donde se almacena la información geográfica de la localización  donde están dispuestas  las Dispensadoras.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_puntos`
--

LOCK TABLES `ics_puntos` WRITE;
/*!40000 ALTER TABLE `ics_puntos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_puntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_raw_config_if`
--

DROP TABLE IF EXISTS `ics_raw_config_if`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_raw_config_if` (
  `cof_idconfig_if` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica el registro',
  `cof_data` varchar(36) NOT NULL COMMENT 'Campo donde se alamacena el string que llega desde el servicio',
  `cof_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha en la cual se almacena la fecha en la cual se realiza el registro',
  PRIMARY KEY (`cof_idconfig_if`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se almacena el string que llega del servicio que corre de fondo para detectar la configuracion de la interfaz cuando se energiza';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_raw_config_if`
--

LOCK TABLES `ics_raw_config_if` WRITE;
/*!40000 ALTER TABLE `ics_raw_config_if` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_raw_config_if` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_raw_config_if_in` AFTER INSERT ON `ics_raw_config_if` FOR EACH ROW
-- Edit trigger body code below this line. Do not edit lines above this one
begin
			declare datos varchar(36);
			DECLARE rev_firmware varchar(4);
			declare hora varchar(4);
			declare fecha	varchar(4);
			declare dia_semana varchar(4);
			declare fecha_sistema date;
			declare maqu varchar(10);
			declare id_interfaz varchar(10);
			declare id_raw int(11);
			declare TAM_MES int;
			declare idia_sis int;
			declare TAM_dia int;

-- 
			declare fecha_sistem date ;
			declare mes_sis int;
			declare imes_sis int;
			declare dia_sis int;
			declare fecha_actual varchar(4);

			declare horas_sistem time;
			declare hora_sistem int;
			declare min_sistem  int;
			
			declare hora_actual varchar(4);
-- 
			declare maq_inter varchar(10);
			declare interfaz varchar(10);
			declare msaje varchar(200);
			declare estado int(1);
			declare revi_firm varchar(4);

-- 
			set datos		 =NEW.cof_data;
			set fecha_sistema=NEW.cof_fecha;
			set rev_firmware =substring(datos,1,3);
			set hora         =substring(datos,4,4);
			set fecha        =substring(datos,8,4);
			set dia_semana   =substring(datos,12,1);
			set maqu         =substring(datos,13,10);
			set id_interfaz  =substring(datos,23,10);
			set id_raw=      NEW.cof_idconfig_if;


			
-- 	
-- SP para la tabla ics_log_config
			call sp_ics_log_conf_ins(rev_firmware, hora, fecha,	dia_semana, fecha_sistema,
										maqu, id_interfaz, id_raw);	
-- 
			
			set fecha_sistem=(select current_date());
			set imes_sis = month(fecha_sistema);
			
				SET TAM_MES=(select length(imes_sis));
				if TAM_MES <2
			THEN 
				set mes_sis= concat(0,imes_sis);	
			END IF;

			set idia_sis = day(fecha_sistema);
			
			set TAM_dia=(select length(idia_sis));

				if TAM_dia<2
				then 
					set dia_sis = concat(0,idia_sis);
					end if;
			
			set fecha_actual = concat(mes_sis,dia_sis); -- mes y dia actual

			set horas_sistem= (select CURTIME());
			set hora_sistem = hour(horas_sistem);
			set min_sistem = minute(horas_sistem);
			
			set hora_actual= concat(hora_sistem,min_sistem); -- hora y minuto 
    
				-- selecciona la maquina que tiene la interfaz
		  set maq_inter =(select maq from vi_ics_maq_tarj where inter=id_interfaz);
		  
		  set interfaz  =(select inter from vi_ics_maq_tarj where maq=maqu);
		  
		set revi_firm = (select cif_rev_firmware from ics_configuracion_if 
							where fk_cif_id_tinterfaz = id_interfaz);
		set msaje = 'Error :' ;

		if rev_firmware != revi_firm or hora != hora_actual or fecha !=fecha_actual
			or interfaz != id_interfaz or interfaz = 0 or  maq_inter != maqu or maq_inter = 0
		then 
				if  rev_firmware != revi_firm
			then  
					set estado =1;
					set msaje= concat(msaje,'La revision de firmware. ');
			end if;

			if hora != hora_actual
			then 
					set estado =1;
					set msaje= concat(msaje,'La Hora no coincide. ');
			end if;

			if fecha !=fecha_actual
			then 
					set estado =1;
					set msaje= concat(msaje,'La Fecha no coincide. ');
			end if;

			if interfaz != id_interfaz or interfaz = 0
			then 
					set estado =1;
					set msaje= concat(msaje,'La interfaz no coincide. ');
			end if;

			if maq_inter != maqu or maq_inter = 0
			then 
					set estado =1;
					set msaje= concat(msaje,'La maquina no coincide con la interfaz. ');
			end if;
				
	else
				set estado =0;
					set msaje= 'No se presentaron errores';
		
 end if;
 -- SP para la tabla ics_registro_interfaz (errores pressentados en la interfaz)
			CALL sp_ics_reg_intf_ins(id_interfaz,msaje,estado,maqu,id_raw);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_recarga_dispensadora`
--

DROP TABLE IF EXISTS `ics_recarga_dispensadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_recarga_dispensadora` (
  `idics_recarga_dispensadora` int(11) NOT NULL AUTO_INCREMENT,
  `rec_ser_disp` varchar(45) DEFAULT NULL,
  `rec_cliente` varchar(45) DEFAULT NULL,
  `rec_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rec_usr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_recarga_dispensadora`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Tabla en la que se almacenan todas las recargas por trama O desde la dispensadora';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_recarga_dispensadora`
--

LOCK TABLES `ics_recarga_dispensadora` WRITE;
/*!40000 ALTER TABLE `ics_recarga_dispensadora` DISABLE KEYS */;
INSERT INTO `ics_recarga_dispensadora` VALUES (1,'0000000010','2','2014-08-21 19:48:31','000000'),(2,'0000000010','2','2014-08-21 19:48:57','000000'),(3,'0000000010','2','2014-08-21 19:59:18','000000'),(4,'0000000010','2','2014-08-23 11:24:25','000000'),(5,'0000000015','14','2014-08-29 20:57:21','603601'),(6,'0000000010','2','2014-09-04 21:41:18','000000'),(7,'0000000010','2','2014-09-05 14:19:34','000000'),(8,'0000000010','2','2014-09-05 19:26:46','000000'),(9,'0000000010','2','2014-09-06 15:19:38','000000'),(10,'0000000010','2','2014-09-06 20:41:34','000000'),(11,'0000000010','2','2014-09-07 14:43:01','000000'),(12,'0000000010','2','2014-09-07 22:44:23','000000'),(13,'0000000010','2','2014-09-09 01:02:46','000000'),(14,'0000000010','2','2014-09-09 22:15:52','000000'),(15,'0000000010','2','2014-09-10 22:32:35','000000'),(16,'0214073537','1','2014-10-09 15:44:50','000000'),(17,'0214073537','1','2014-10-09 21:04:22','000000'),(18,'0214073537','1','2014-10-17 18:57:15','000000'),(19,'0214073537','1','2014-10-18 16:25:00','000000');
/*!40000 ALTER TABLE `ics_recarga_dispensadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_recargas`
--

DROP TABLE IF EXISTS `ics_recargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_recargas` (
  `idics_recargas` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(245) DEFAULT NULL,
  `cc` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `credito` varchar(45) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_recargas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_recargas`
--

LOCK TABLES `ics_recargas` WRITE;
/*!40000 ALTER TABLE `ics_recargas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_recargas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_registro_interfaz`
--

DROP TABLE IF EXISTS `ics_registro_interfaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_registro_interfaz` (
  `rif_id_registro` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del registro',
  `rif_interfaz_fk` varchar(10) DEFAULT NULL COMMENT 'Identificador de la interfaz que genera el error',
  `rif_error` varchar(200) DEFAULT NULL COMMENT 'Error que presenta la interfaz',
  `rif_estado` int(1) DEFAULT '0' COMMENT 'Estado en el cual se encuentra esa alarma\n1--->Activa\n0--->Inactiva',
  `rif_fk_maquina` varchar(10) DEFAULT NULL COMMENT 'Es el serial de la máquina en la cual se presenta el error',
  `rif_fk_idrawconfig` int(11) NOT NULL,
  PRIMARY KEY (`rif_id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se registran los errores que pueden existir en la interfaz';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_registro_interfaz`
--

LOCK TABLES `ics_registro_interfaz` WRITE;
/*!40000 ALTER TABLE `ics_registro_interfaz` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_registro_interfaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_reinicio`
--

DROP TABLE IF EXISTS `ics_reinicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_reinicio` (
  `idics_reinicio` int(11) NOT NULL AUTO_INCREMENT,
  `rei_maq` varchar(45) DEFAULT NULL,
  `rei_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rei_tipo` varchar(45) DEFAULT '1',
  PRIMARY KEY (`idics_reinicio`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_reinicio`
--

LOCK TABLES `ics_reinicio` WRITE;
/*!40000 ALTER TABLE `ics_reinicio` DISABLE KEYS */;
INSERT INTO `ics_reinicio` VALUES (1,'0214094122','2015-02-27 16:19:35','1'),(2,'0214094122','2015-02-27 16:22:02','1'),(3,'0214094122','2015-02-27 16:25:04','1'),(4,'0214094122','2015-02-27 16:40:14','1'),(5,'0214094122','2015-02-27 16:47:28','1'),(6,'0214094122','2015-02-27 16:49:09','1'),(7,'0214094122','2015-02-27 17:00:09','1'),(8,'0214094122','2015-02-27 17:25:41','1'),(9,'0214094122','2015-02-27 19:09:31','1'),(10,'0214094122','2015-02-27 20:05:01','1'),(11,'0214094122','2015-03-02 12:01:02','1'),(12,'0214094122','2015-03-03 23:32:31','1'),(13,'0214094122','2015-03-08 04:33:34','1'),(14,'0214094122','2015-03-09 19:53:07','1'),(15,'0214094122','2015-03-11 01:41:56','1'),(16,'0214094122','2015-03-11 01:43:32','1'),(17,'0214094122','2015-03-11 01:46:04','1'),(18,'0214094122','2015-03-11 01:49:30','1'),(19,'0214094122','2015-03-11 01:51:22','1'),(20,'0214094122','2015-03-11 01:56:06','1'),(21,'0214094122','2015-03-11 01:58:01','1'),(22,'0214094122','2015-03-11 02:00:33','1'),(23,'0214094122','2015-03-11 02:03:42','1'),(24,'0214094122','2015-03-11 02:05:25','1'),(25,'0214094122','2015-03-11 02:07:18','1'),(26,'0214094122','2015-03-11 02:09:13','1'),(27,'0214094122','2015-03-11 02:11:06','1'),(28,'0214094122','2015-03-11 02:27:16','1'),(29,'0214094122','2015-03-11 02:29:12','1'),(30,'0214094122','2015-03-11 02:31:05','1'),(31,'0214094122','2015-03-11 02:32:38','1'),(32,'0214094122','2015-03-11 02:34:33','1'),(33,'0214094122','2015-03-11 02:36:24','1'),(34,'0214094122','2015-03-11 02:38:17','1'),(35,'0214094122','2015-03-11 02:40:16','1'),(36,'0214094122','2015-03-11 02:42:02','1'),(37,'0214094122','2015-03-11 02:43:55','1'),(38,'0214094122','2015-03-11 02:45:49','1'),(39,'0214094122','2015-03-11 02:47:42','1'),(40,'0214094122','2015-03-11 02:49:34','1'),(41,'0214094122','2015-03-11 02:51:30','1'),(42,'0214094122','2015-03-11 02:53:21','1'),(43,'0214094122','2015-03-11 02:56:02','1'),(44,'0214094122','2015-03-11 02:56:51','1'),(45,'0214094122','2015-03-11 02:59:28','1'),(46,'0214094122','2015-03-11 03:09:17','1'),(47,'0214094122','2015-03-11 03:11:11','1'),(48,'0214094122','2015-03-11 03:13:09','1'),(49,'0214094122','2015-03-11 03:14:56','1'),(50,'0214094122','2015-03-11 03:16:49','1'),(51,'0214094122','2015-03-11 03:18:42','1'),(52,'0214094122','2015-03-11 03:20:36','1'),(53,'0214094122','2015-03-11 03:22:28','1'),(54,'0214094122','2015-03-11 03:24:27','1'),(55,'0214094122','2015-03-11 03:26:13','1'),(56,'0214094122','2015-03-11 03:28:06','1'),(57,'0214094122','2015-03-11 03:30:04','1'),(58,'0214094122','2015-03-11 03:31:53','1'),(59,'0214094122','2015-03-11 03:33:46','1'),(60,'0214094122','2015-03-11 03:35:39','1'),(61,'0214094122','2015-03-11 03:37:46','1'),(62,'0214094122','2015-03-11 03:39:38','1'),(63,'0214094122','2015-03-11 03:41:32','1'),(64,'0214094122','2015-03-11 03:43:25','1'),(65,'0214094122','2015-03-11 03:45:18','1'),(66,'0214094122','2015-03-11 03:47:11','1'),(67,'0214094122','2015-03-11 03:49:05','1'),(68,'0214094122','2015-03-11 03:50:58','1'),(69,'0214094122','2015-03-11 03:52:51','1'),(70,'0214094122','2015-03-11 04:02:40','1'),(71,'0214094122','2015-03-11 04:04:24','1'),(72,'0214094122','2015-03-11 04:06:17','1'),(73,'0214094122','2015-03-11 04:08:10','1'),(74,'0214094122','2015-03-11 04:10:03','1'),(75,'0214094122','2015-03-11 04:11:56','1'),(76,'0214094122','2015-03-11 04:13:49','1'),(77,'0214094122','2015-03-11 04:15:42','1'),(78,'0214094122','2015-03-11 04:17:35','1'),(79,'0214094122','2015-03-11 04:19:28','1'),(80,'0214094122','2015-03-11 04:21:23','1'),(81,'0214094122','2015-03-11 04:23:14','1'),(82,'0214094122','2015-03-11 04:25:07','1'),(83,'0214094122','2015-03-11 04:27:00','1'),(84,'0214094122','2015-03-11 04:28:53','1'),(85,'0214094122','2015-03-11 04:30:56','1'),(86,'0214094122','2015-03-11 04:32:39','1'),(87,'0214094122','2015-03-11 04:34:32','1'),(88,'0214094122','2015-03-11 04:36:25','1'),(89,'0214094122','2015-03-11 04:38:18','1'),(90,'0214094122','2015-03-11 04:40:11','1'),(91,'0214094122','2015-03-11 04:42:03','1'),(92,'0214094122','2015-03-11 04:43:57','1'),(93,'0214094122','2015-03-11 04:45:49','1'),(94,'0214094122','2015-03-11 04:47:43','1'),(95,'0214094122','2015-03-11 04:49:38','1'),(96,'0214094122','2015-03-11 04:51:29','1'),(97,'0214094122','2015-03-11 04:53:21','1'),(98,'0214094122','2015-03-11 04:55:15','1'),(99,'0214094122','2015-03-11 04:57:07','1'),(100,'0214094122','2015-03-11 04:59:01','1'),(101,'0214094122','2015-03-11 05:00:54','1'),(102,'0214094122','2015-03-11 05:02:46','1'),(103,'0214094122','2015-03-11 05:04:40','1'),(104,'0214094122','2015-03-11 05:06:32','1'),(105,'0214094122','2015-03-11 05:08:25','1'),(106,'0214094122','2015-03-11 05:10:19','1'),(107,'0214094122','2015-03-11 05:12:12','1'),(108,'0214094122','2015-03-11 05:14:04','1'),(109,'0214094122','2015-03-11 05:15:57','1'),(110,'0214094122','2015-03-11 05:17:51','1'),(111,'0214094122','2015-03-11 05:19:43','1'),(112,'0214094122','2015-03-11 05:21:36','1'),(113,'0214094122','2015-03-11 05:23:31','1'),(114,'0214094122','2015-03-11 05:25:22','1'),(115,'0214094122','2015-03-11 05:27:15','1'),(116,'0214094122','2015-03-11 05:29:09','1'),(117,'0214094122','2015-03-11 05:31:02','1'),(118,'0214094122','2015-03-11 05:32:54','1'),(119,'0214094122','2015-03-11 05:34:47','1'),(120,'0214094122','2015-03-11 05:36:44','1'),(121,'0214094122','2015-03-11 05:38:33','1'),(122,'0214094122','2015-03-11 05:40:26','1'),(123,'0214094122','2015-03-11 05:42:19','1'),(124,'0214094122','2015-03-11 05:44:12','1'),(125,'0214094122','2015-03-11 05:46:05','1'),(126,'0214094122','2015-03-11 05:47:58','1'),(127,'0214094122','2015-03-11 05:49:52','1'),(128,'0214094122','2015-03-11 05:54:00','1'),(129,'0214094122','2015-03-11 05:55:30','1'),(130,'0214094122','2015-03-11 05:57:23','1'),(131,'0214094122','2015-03-11 05:59:17','1'),(132,'0214094122','2015-03-11 06:01:09','1'),(133,'0214094122','2015-03-11 06:03:02','1'),(134,'0214094122','2015-03-11 06:04:55','1'),(135,'0214094122','2015-03-11 06:06:48','1'),(136,'0214094122','2015-03-11 06:08:41','1'),(137,'0214094122','2015-03-11 06:10:36','1'),(138,'0214094122','2015-03-11 06:12:27','1'),(139,'0214094122','2015-03-11 06:14:20','1'),(140,'0214094122','2015-03-11 06:16:13','1'),(141,'0214094122','2015-03-11 06:18:06','1'),(142,'0214094122','2015-03-11 06:19:59','1'),(143,'0214094122','2015-03-11 06:21:52','1'),(144,'0214094122','2015-03-11 06:23:45','1'),(145,'0214094122','2015-03-11 06:25:38','1'),(146,'0214094122','2015-03-11 06:27:31','1'),(147,'0214094122','2015-03-11 06:29:24','1'),(148,'0214094122','2015-03-11 06:31:17','1'),(149,'0214094122','2015-03-11 06:33:10','1'),(150,'0214094122','2015-03-11 06:35:03','1'),(151,'0214094122','2015-03-11 06:36:56','1'),(152,'0214094122','2015-03-11 06:38:49','1'),(153,'0214094122','2015-03-11 06:40:42','1'),(154,'0214094122','2015-03-11 06:42:35','1'),(155,'0214094122','2015-03-11 06:44:28','1'),(156,'0214094122','2015-03-11 06:46:30','1'),(157,'0214094122','2015-03-11 06:48:23','1'),(158,'0214094122','2015-03-11 06:50:07','1'),(159,'0214094122','2015-03-11 06:51:59','1'),(160,'0214094122','2015-03-11 06:54:02','1'),(161,'0214094122','2015-03-11 06:55:46','1'),(162,'0214094122','2015-03-11 06:57:48','1'),(163,'0214094122','2015-03-11 06:59:32','1'),(164,'0214094122','2015-03-11 07:01:34','1'),(165,'0214094122','2015-03-11 07:03:18','1'),(166,'0214094122','2015-03-11 07:05:13','1'),(167,'0214094122','2015-03-12 00:30:59','1'),(168,'0214094122','2015-03-12 00:33:09','1'),(169,'0214094122','2015-03-12 01:48:41','1'),(170,'0214094122','2015-03-12 01:52:19','1'),(171,'0214094122','2015-03-12 01:54:37','1'),(172,'0214094122','2015-03-12 02:14:32','1'),(173,'0214094122','2015-03-12 02:17:30','1'),(174,'0214094122','2015-03-12 02:31:29','1'),(175,'0214094122','2015-03-12 02:33:30','1'),(176,'0214094122','2015-03-12 02:35:33','1'),(177,'0214094122','2015-03-12 02:51:56','1'),(178,'0214094122','2015-03-12 03:11:52','1'),(179,'0214094122','2015-03-12 03:20:38','1'),(180,'0214094122','2015-03-12 03:23:05','1'),(181,'0214094122','2015-03-12 03:53:54','1'),(182,'0214094122','2015-03-12 04:03:29','1'),(183,'0214094122','2015-03-12 04:07:12','1'),(184,'0214094122','2015-03-12 07:56:13','1'),(185,'0214094122','2015-03-12 11:18:37','1'),(186,'0214094122','2015-03-13 03:24:47','1'),(187,'0214094122','2015-03-14 15:36:25','1'),(188,'0214094122','2015-03-15 18:30:42','1'),(189,'0214094122','2015-03-15 21:30:55','1'),(190,'0214094122','2015-03-16 19:52:25','1'),(191,'0214094122','2015-03-16 20:02:37','1'),(192,'0214094122','2015-03-17 05:31:25','1'),(193,'0214094122','2015-03-23 09:35:11','1'),(194,'0214094122','2015-03-25 18:11:34','1'),(195,'0214094122','2015-03-30 12:26:25','1'),(196,'0214094122','2015-04-08 02:10:34','1'),(197,'0214094122','2015-04-08 02:21:01','1'),(198,'0214094122','2015-04-08 03:08:25','1'),(199,'0214094122','2015-04-08 03:10:12','1'),(200,'0214094122','2015-04-08 03:36:13','1'),(201,'0214094122','2015-04-08 03:53:02','1'),(202,'0214094122','2015-04-08 04:35:47','1'),(203,'0214094122','2015-04-08 04:44:23','1'),(204,'0214094122','2015-04-08 04:51:29','1'),(205,'0214094122','2015-04-08 04:53:02','1'),(206,'0214094122','2015-04-08 05:06:47','1'),(207,'0214094122','2015-04-08 05:10:56','1'),(208,'0214094122','2015-04-08 05:16:37','1'),(209,'0214094122','2015-04-08 05:18:58','1'),(210,'0214094122','2015-04-08 05:21:17','1'),(211,'0214094122','2015-04-08 05:24:25','1'),(212,'0214094122','2015-04-08 05:35:16','1'),(213,'0000000022','2015-06-03 16:08:54','1'),(214,'0000000022','2015-06-03 16:31:11','1'),(215,'0000000022','2015-06-03 16:38:04','1'),(216,'0000000022','2015-06-03 16:54:31','1'),(217,'0000000022','2015-06-03 18:24:26','1'),(218,'0000000022','2015-06-03 18:29:35','1'),(219,'0000000022','2015-06-03 19:39:48','1'),(220,'0000000022','2015-06-03 19:42:59','1'),(221,'0000000022','2015-06-03 19:52:17','1'),(222,'0000000022','2015-06-03 20:01:37','1'),(223,'0000000022','2015-06-03 20:16:06','1'),(224,'0000000022','2015-06-03 20:20:38','1'),(225,'0000000022','2015-06-03 20:26:50','1'),(226,'0000000022','2015-06-03 20:39:49','1'),(227,'0000000022','2015-06-03 20:43:39','1'),(228,'0000000022','2015-06-03 21:12:15','1'),(229,'0000000022','2015-06-03 21:14:46','1'),(230,'0000000022','2015-06-03 21:24:44','1'),(231,'0000000022','2015-06-04 13:29:23','1'),(232,'0000000022','2015-06-04 13:45:40','1'),(233,'0000000022','2015-06-04 13:57:45','1'),(234,'0000000022','2015-06-04 14:06:43','1'),(235,'0000000022','2015-06-04 14:15:44','1'),(236,'0000000022','2015-06-04 14:18:06','1'),(237,'0000000022','2015-06-04 15:55:25','1'),(238,'0000000022','2015-06-04 16:02:21','1'),(239,'0000000022','2015-06-04 17:04:37','1'),(240,'0000000022','2015-06-04 17:21:11','1'),(241,'0000000022','2015-06-04 18:32:37','1'),(242,'0000000022','2015-06-04 18:43:01','1'),(243,'0000000022','2015-06-04 18:54:56','1'),(244,'0000000022','2015-06-04 19:20:13','1'),(245,'0000000022','2015-06-04 19:32:59','1'),(246,'0000000022','2015-06-04 20:04:01','1'),(247,'0000000022','2015-06-04 20:18:42','1'),(248,'0000000022','2015-06-04 20:37:08','1'),(249,'0000000022','2015-06-04 20:39:51','1'),(250,'0000000022','2015-06-05 15:59:40','1'),(251,'0000000019','2015-06-19 15:49:17','1'),(252,'0000000022','2015-06-25 14:24:47','1'),(253,'0000000022','2015-06-25 14:26:29','1'),(254,'0000000022','2015-06-25 14:27:28','1'),(255,'0000000022','2015-06-25 18:26:46','1'),(256,'0000000022','2015-06-25 18:30:51','1'),(257,'0000000022','2015-06-25 18:35:16','1'),(258,'0000000022','2015-06-25 18:38:50','1'),(259,'0000000022','2015-06-25 18:55:13','1'),(260,'0000000022','2015-06-25 19:00:50','1'),(261,'0000000022','2015-06-25 19:06:56','1'),(262,'0000000022','2015-06-25 21:29:59','1'),(263,'0000000022','2015-06-25 21:37:37','1'),(264,'0000000022','2015-06-25 21:41:09','1'),(265,'0000000022','2015-06-26 12:17:24','1'),(266,'0000000022','2015-06-26 13:03:10','1'),(267,'0000000022','2015-06-26 13:10:46','1'),(268,'0000000022','2015-06-26 13:16:08','1'),(269,'0000000022','2015-06-26 13:23:06','1'),(270,'0000000022','2015-06-26 13:46:27','1'),(271,'0000000022','2015-06-26 15:14:53','1'),(272,'0000000022','2015-06-26 15:44:44','1'),(273,'0000000022','2015-06-26 15:56:01','1'),(274,'0000000022','2015-06-26 16:07:14','1'),(275,'0000000022','2015-06-26 16:10:01','1'),(276,'0000000022','2015-06-26 16:16:58','1'),(277,'0000000022','2015-06-26 16:24:17','1'),(278,'0000000022','2015-06-26 16:32:10','1'),(279,'0000000022','2015-06-26 16:34:54','1'),(280,'0000000022','2015-06-26 16:48:59','1'),(281,'0000000022','2015-06-26 18:21:03','1'),(282,'0000000022','2015-06-26 18:34:41','1'),(283,'0000000022','2015-06-26 18:40:01','1'),(284,'0000000022','2015-06-30 12:33:50','1'),(285,'0000000022','2015-06-30 16:17:14','1'),(286,'0000000022','2015-06-30 16:20:51','1'),(287,'0000000022','2015-06-30 16:29:40','1'),(288,'0000000022','2015-06-30 16:33:36','1'),(289,'0000000022','2015-07-07 20:49:44','1'),(290,'0000000022','2015-07-07 21:01:28','1'),(291,'0000000022','2015-07-07 21:05:57','1'),(292,'0000000022','2015-07-07 21:09:28','1'),(293,'0000000022','2015-07-07 21:11:49','1'),(294,'0000000022','2015-07-07 21:15:50','1'),(295,'0000000022','2015-07-07 21:37:27','1'),(296,'0000000022','2015-07-07 21:41:58','1'),(297,'0000000022','2015-07-07 21:55:29','1'),(298,'0000000022','2015-07-09 13:29:41','1'),(299,'0000000022','2015-07-09 13:31:30','1'),(300,'0000000022','2015-07-09 13:33:34','1'),(301,'0000000022','2015-07-09 14:05:01','1'),(302,'0000000022','2015-07-10 16:25:54','1'),(303,'0000000022','2015-07-10 16:29:55','1'),(304,'0000000022','2015-07-10 18:40:25','1'),(305,'0000000022','2015-07-11 13:28:05','1'),(306,'0000000022','2015-07-13 19:17:10','1'),(307,'0000000022','2015-07-13 19:37:27','1'),(308,'0000000022','2015-07-13 19:46:14','1'),(309,'0000000022','2015-07-13 20:06:04','1'),(310,'0000000022','2015-07-13 20:07:24','1'),(311,'0000000022','2015-07-21 13:29:54','1'),(312,'0000000022','2015-07-21 13:31:01','1'),(313,'0000000022','2015-07-21 13:32:41','1'),(314,'0000000022','2015-07-21 13:33:47','1'),(315,'0000000022','2015-07-22 21:58:57','1'),(316,'0000000022','2015-07-23 11:24:38','1'),(317,'0000000022','2015-07-23 11:37:10','1'),(318,'0000000022','2015-07-23 13:51:25','1'),(319,'0000000022','2015-07-23 16:34:32','1'),(320,'0000000022','2015-07-28 15:00:47','1'),(321,'0000000022','2015-08-04 15:13:01','1'),(322,'0000000022','2015-08-04 22:02:35','1'),(323,'0000000022','2015-08-19 19:19:06','1'),(324,'0000000022','2015-08-19 21:03:07','1'),(325,'0000000022','2015-08-20 21:52:44','1'),(326,'0000000022','2015-09-10 13:22:55','1'),(327,'0000000022','2015-09-11 15:20:19','1'),(328,'0000000022','2015-09-11 18:54:31','1'),(329,'0000000022','2015-09-11 22:21:31','1'),(330,'0000000022','2015-09-16 15:23:51','1'),(331,'0215024858','2015-09-21 14:36:15','1'),(332,'0215024858','2015-09-21 14:55:49','1'),(333,'0215024858','2015-09-22 00:07:21','1');
/*!40000 ALTER TABLE `ics_reinicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_seccion`
--

DROP TABLE IF EXISTS `ics_seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_seccion` (
  `sec_id_seccion` int(11) NOT NULL AUTO_INCREMENT,
  `sec_Nombre` varchar(45) DEFAULT NULL,
  `sec_descripcion` varchar(250) DEFAULT NULL,
  `sec_fk_punto` int(11) NOT NULL,
  PRIMARY KEY (`sec_id_seccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Se aloja la información de las secciones que pueden existir en una  compañía  donde se encuentra  localizada una dispensadora.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_seccion`
--

LOCK TABLES `ics_seccion` WRITE;
/*!40000 ALTER TABLE `ics_seccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_sistem_conf`
--

DROP TABLE IF EXISTS `ics_sistem_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_sistem_conf` (
  `idics_sistem_conf` int(11) NOT NULL AUTO_INCREMENT,
  `conf_tipo` varchar(45) DEFAULT NULL COMMENT 'Tipo de ics_instalador_v19 a instalar modificable por el usuario superadministrador del sistema (dto ing)',
  `conf_cliente` varchar(45) DEFAULT NULL COMMENT 'llave fk del cliente',
  `conf_estado` varchar(45) DEFAULT '1' COMMENT '[1.0] estado activo inactivo',
  `conf_teclado` int(11) DEFAULT '0',
  `conf_horeca` int(11) DEFAULT '0',
  `conf_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_sistem_conf`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_sistem_conf`
--

LOCK TABLES `ics_sistem_conf` WRITE;
/*!40000 ALTER TABLE `ics_sistem_conf` DISABLE KEYS */;
INSERT INTO `ics_sistem_conf` VALUES (1,'1','1','1',0,0,'2018-04-25 18:31:33');
/*!40000 ALTER TABLE `ics_sistem_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_status_senal`
--

DROP TABLE IF EXISTS `ics_status_senal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_status_senal` (
  `id_st` int(11) NOT NULL AUTO_INCREMENT,
  `st_dispensadora` varchar(45) DEFAULT NULL,
  `st_senal` varchar(45) DEFAULT NULL,
  `st_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `st_dec` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_st`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='estado de la señal 3g';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_status_senal`
--

LOCK TABLES `ics_status_senal` WRITE;
/*!40000 ALTER TABLE `ics_status_senal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_status_senal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_statusbilletero`
--

DROP TABLE IF EXISTS `ics_statusbilletero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_statusbilletero` (
  `idics_statusbilletero` int(11) NOT NULL AUTO_INCREMENT,
  `st_serial` varchar(45) DEFAULT NULL,
  `st_mme_codigo` varchar(45) DEFAULT NULL,
  `st_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(45) DEFAULT '0',
  PRIMARY KEY (`idics_statusbilletero`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_statusbilletero`
--

LOCK TABLES `ics_statusbilletero` WRITE;
/*!40000 ALTER TABLE `ics_statusbilletero` DISABLE KEYS */;
INSERT INTO `ics_statusbilletero` VALUES (1,'0214073537','0014','2014-10-19 14:07:23','1'),(2,'0214073537','0014','2014-10-19 14:46:45','1'),(3,'0214073537','0014','2014-10-19 16:00:19','1'),(4,'0214083930','0014','2014-10-20 15:22:09','1'),(5,'0214083930','0014','2014-10-20 16:21:50','1'),(6,'0214083930','0014','2014-10-20 16:31:31','1'),(7,'0214083930','0013','2014-10-20 16:40:00','1'),(8,'0214073537','0014','2014-10-20 20:48:33','1'),(9,'0214083938','0014','2014-10-21 14:06:28','1'),(10,'0214083938','0014','2014-10-21 15:15:38','1'),(11,'0214073537','0014','2014-10-21 16:23:10','1'),(12,'0214073537','0014','2014-10-21 16:26:25','1'),(13,'0214073537','0014','2014-10-21 16:28:52','1'),(14,'0214073537','0013','2014-10-23 16:36:09','1'),(15,'0214073537','0013','2014-10-24 17:11:03','1'),(16,'0214073537','0013','2014-10-24 17:17:40','1'),(17,'0214073537','0014','2014-10-24 17:22:08','1'),(18,'0214073537','0014','2014-10-25 16:51:33','1'),(19,'0214073537','0014','2014-10-28 16:20:54','1'),(20,'0214073537','0014','2014-10-28 16:25:01','1'),(21,'0214073537','0014','2014-10-29 16:50:18','1'),(22,'0214073537','0011','2014-11-01 19:50:46','1'),(23,'0214073537','0014','2014-11-02 15:35:33','1'),(24,'0214073537','0014','2014-11-04 12:25:50','1'),(25,'0214073537','0012','2014-11-04 12:26:11','1'),(26,'0214073537','0014','2014-11-04 12:26:14','1'),(27,'0214073537','0014','2014-11-04 12:27:14','1'),(28,'0214073537','0011','2014-11-07 21:04:46','1'),(29,'0214073537','0011','2014-11-07 21:05:18','1'),(30,'0214073537','0014','2014-11-07 21:06:43','1'),(31,'0214073537','0011','2014-11-07 21:07:46','1'),(32,'0214073537','0014','2014-11-07 21:13:21','1'),(33,'0214073537','0014','2014-11-09 18:14:00','1'),(34,'0214073537','0011','2014-11-11 14:44:03','1'),(35,'0214073537','0014','2014-11-11 15:08:52','1'),(36,'0214073537','0014','2014-11-13 13:28:04','1'),(37,'0214073537','0014','2014-11-15 01:19:57','1'),(38,'0214073537','0011','2014-11-15 05:09:57','1'),(39,'0214073537','0014','2014-11-17 13:03:26','1'),(40,'0214073537','0013','2014-11-17 13:04:30','1'),(41,'0214073537','0014','2014-11-17 13:18:57','1'),(42,'0214073537','0013','2014-11-17 13:20:41','1'),(43,'0214073537','0013','2014-11-17 14:48:26','1'),(44,'0214073537','0013','2014-11-18 02:22:57','1'),(45,'0214073537','0013','2014-11-18 07:05:07','1'),(46,'0214073537','0013','2014-11-19 04:12:33','1'),(47,'0214073537','0011','2014-11-22 16:50:07','1'),(48,'0214073537','0014','2014-11-22 17:01:53','1'),(49,'0214073537','0014','2014-11-22 17:01:59','1'),(50,'0214073537','0014','2014-11-23 15:21:34','1'),(51,'0214073537','0013','2014-11-23 15:22:38','1'),(52,'0214073537','0014','2014-11-23 15:39:50','1'),(53,'0214073537','0013','2014-11-23 15:40:43','1'),(54,'0214073537','0013','2014-11-23 20:15:54','1'),(55,'0214073537','0014','2014-11-24 13:39:40','1'),(56,'0214073537','0013','2014-11-24 13:40:42','1'),(57,'0214073537','0014','2014-11-24 17:43:21','1'),(58,'0214073537','0011','2014-11-24 21:36:02','1'),(59,'0214073537','0014','2014-11-25 14:18:00','1'),(60,'0214073537','0013','2014-11-25 15:17:08','1'),(61,'0214073537','0014','2014-11-25 15:20:46','1'),(62,'0214073537','0014','2014-11-25 15:21:16','1'),(63,'0214073537','0013','2014-11-25 15:23:06','1'),(64,'0214073537','0012','2014-11-25 15:49:24','1'),(65,'0214073537','0014','2014-11-25 20:47:29','1'),(66,'0214073537','0011','2014-11-26 11:04:12','1'),(67,'0214073537','0014','2014-11-27 06:42:02','1'),(68,'0214073537','0014','2014-11-29 17:07:48','1'),(69,'0214073537','0014','2014-11-29 17:53:04','1'),(70,'0214073537','0014','2014-11-29 17:57:28','1'),(71,'0214073537','0014','2014-12-03 14:22:22','1'),(72,'0214073537','0014','2014-12-04 16:51:40','1'),(73,'0214073537','0014','2014-12-06 17:40:31','1'),(74,'0214073537','0014','2014-12-10 17:03:48','1'),(75,'0214073537','0014','2014-12-12 22:24:03','1'),(76,'0214073537','0014','2014-12-19 16:28:38','1'),(77,'0214073537','0012','2014-12-21 16:49:37','1'),(78,'0214073537','0014','2014-12-21 16:49:41','1'),(79,'0214073537','0014','2014-12-23 15:55:33','1'),(80,'0214073537','0011','2014-12-23 21:22:38','1'),(81,'0214073537','0011','2014-12-26 16:16:26','1'),(82,'0214073537','0014','2014-12-26 17:12:17','1'),(83,'0214073537','0014','2014-12-29 16:22:33','1'),(84,'0214073537','0014','2014-12-29 16:54:07','1'),(85,'0214073537','0014','2014-12-29 16:58:19','1'),(86,'0214073537','0013','2015-01-02 18:49:16','1'),(87,'0214073537','0014','2015-01-02 18:50:28','1'),(88,'0214073537','0014','2015-01-06 14:09:43','1'),(89,'0214073537','0011','2015-01-10 22:11:32','1'),(90,'0214073537','0011','2015-01-11 04:17:24','1'),(91,'0214073537','0011','2015-01-12 12:40:33','1'),(92,'0214073537','0014','2015-01-12 13:02:43','1'),(93,'0214073537','0011','2015-01-13 18:26:23','1'),(94,'0214073537','0014','2015-01-13 18:42:15','1'),(95,'0214073537','0011','2015-01-13 21:33:21','1'),(96,'0214073537','0014','2015-01-13 21:44:20','1'),(97,'0214073537','0011','2015-01-13 21:44:33','1'),(98,'0214073537','0014','2015-01-13 21:45:37','1'),(99,'0214073537','0011','2015-01-13 21:56:46','1'),(100,'0214073537','0011','2015-01-14 21:11:43','1'),(101,'0214073537','0014','2015-01-15 19:23:51','1'),(102,'0214073537','0014','2015-01-15 19:24:54','1'),(103,'0214073537','0014','2015-01-15 22:01:09','1'),(104,'0214073537','0011','2015-01-15 22:11:51','1'),(105,'0214073537','0014','2015-01-15 22:24:40','1'),(106,'0214073537','0011','2015-01-15 23:17:50','1'),(107,'0214073537','0011','2015-01-16 15:21:38','1'),(108,'0214073537','0014','2015-01-16 16:26:42','1'),(109,'0214073537','0013','2015-01-16 18:20:06','1'),(110,'0214073537','0011','2015-01-17 17:49:41','1'),(111,'0214073537','0014','2015-01-17 17:52:46','1'),(112,'0214073537','0013','2015-01-17 19:58:13','1'),(113,'0214073537','0011','2015-01-17 21:52:32','1'),(114,'0214073537','0011','2015-01-18 04:37:38','1'),(115,'0214073537','0014','2015-01-18 18:40:22','1'),(116,'0214073537','0011','2015-01-18 22:29:27','1'),(118,'0214073537','0011','2015-01-19 21:41:54','1'),(119,'0214073537','0011','2015-01-19 21:57:39','1'),(120,'0214073537','0011','2015-01-19 22:49:07','1'),(121,'0214073537','0011','2015-01-20 02:39:45','1'),(122,'0214073537','0011','2015-01-20 19:47:15','1'),(123,'0214073537','0014','2015-01-20 20:30:47','1'),(124,'0214073537','0013','2015-01-20 21:24:48','1'),(125,'0214073537','0014','2015-01-21 17:10:18','1'),(126,'0214073537','0011','2015-01-21 17:21:25','1'),(127,'0214073537','0011','2015-01-22 02:59:51','1'),(128,'0214073537','0011','2015-01-22 19:37:27','1'),(129,'0214073537','0014','2015-01-22 19:58:00','1'),(130,'0214073537','0014','2015-01-22 20:37:00','1'),(131,'0214073537','0014','2015-01-22 20:57:43','1'),(132,'0214073537','0011','2015-01-23 17:41:04','0'),(133,'0214073537','0014','2015-01-23 21:13:15','0'),(134,'0214073537','0011','2015-01-24 18:25:08','0'),(135,'0214073537','0014','2015-01-26 21:02:35','0'),(136,'0214073537','0011','2015-01-27 03:35:59','0'),(137,'0214073537','0014','2015-01-29 15:03:52','0'),(138,'0214073537','0014','2015-01-31 16:57:08','0'),(139,'0214073537','0011','2015-01-31 16:57:17','0'),(140,'0214073537','0011','2015-01-31 20:30:33','0'),(141,'0214073537','0011','2015-01-31 20:45:24','0'),(142,'0214073537','0014','2015-02-02 20:54:16','0'),(143,'0214073537','0011','2015-02-03 19:53:53','0'),(144,'0214073537','0011','2015-02-03 21:33:44','0'),(145,'0214073537','0014','2015-02-04 16:19:19','0'),(146,'0214073537','0011','2015-02-04 19:47:47','0'),(147,'0214073537','0014','2015-02-04 21:23:09','0'),(148,'0214073537','0013','2015-02-05 02:42:40','0'),(149,'0214073537','0011','2015-02-06 17:11:29','0'),(150,'0214073537','0014','2015-02-06 17:17:02','0'),(151,'0214073537','0011','2015-02-06 17:17:16','0'),(152,'0214073537','0014','2015-02-06 17:59:37','0'),(153,'0214073537','0014','2015-02-06 19:02:34','0'),(154,'0214073537','0011','2015-02-06 21:41:00','0'),(155,'0214073537','0011','2015-02-07 15:52:13','0'),(156,'0214073537','0013','2015-02-08 19:40:33','0'),(157,'0214073537','0011','2015-02-11 02:58:08','0'),(158,'0214073537','0011','2015-02-12 02:49:42','0'),(159,'0214073537','0013','2015-02-12 09:00:14','0'),(160,'0214073537','0014','2015-02-13 20:15:43','0'),(161,'0214073537','0013','2015-02-14 21:48:56','0'),(162,'0214073537','0013','2015-02-14 23:37:42','0'),(163,'0214073537','0011','2015-02-14 23:42:10','0'),(164,'0214073537','0011','2015-02-16 14:22:58','0'),(165,'0214073537','0011','2015-02-16 15:26:48','0'),(166,'0214073537','0013','2015-02-16 15:34:42','0'),(167,'0214073537','0011','2015-02-16 16:26:37','0'),(168,'0214073537','0014','2015-02-16 17:54:40','0'),(169,'0214073537','0014','2015-02-16 19:14:50','0'),(170,'0214073537','0011','2015-02-16 19:38:42','0'),(171,'0214073537','0011','2015-02-16 22:24:03','0'),(172,'0214073537','0011','2015-02-18 11:29:39','0'),(173,'0214073537','0014','2015-02-18 11:30:17','0'),(174,'0214073537','0011','2015-02-18 22:31:58','0'),(175,'0214073537','0011','2015-02-19 04:28:01','0'),(176,'0214073537','0011','2015-02-19 11:42:44','0'),(177,'0214073537','0014','2015-02-19 12:01:32','0'),(178,'0214073537','0011','2015-02-19 17:37:48','0'),(179,'0214073537','0011','2015-02-19 19:19:40','0'),(180,'0214073537','0014','2015-02-19 20:04:59','0'),(181,'0214073537','0011','2015-02-19 20:05:20','0'),(182,'0214073537','0011','2015-02-19 21:18:33','0'),(183,'0214073537','0014','2015-02-19 21:28:35','0'),(184,'0214073537','0011','2015-02-19 23:49:02','0'),(185,'0214073537','0011','2015-02-20 16:49:15','0'),(186,'0214073537','0014','2015-02-20 19:06:51','0'),(187,'0214073537','0014','2015-02-21 11:37:30','0'),(188,'0214073537','0011','2015-02-21 15:37:13','0'),(189,'0214073537','0014','2015-02-21 18:48:59','0'),(190,'0214073537','0011','2015-02-23 21:41:47','0'),(191,'0214073537','0011','2015-02-23 22:14:34','0'),(192,'0214073537','0011','2015-02-24 16:09:25','0'),(193,'0214073537','0014','2015-02-24 16:25:10','0'),(194,'0214073537','0013','2015-02-24 19:46:08','0'),(195,'0214073537','0014','2015-02-24 19:46:33','0'),(196,'0214073537','0011','2015-02-25 20:20:34','0'),(197,'0214073537','0011','2015-02-25 20:52:09','0'),(199,'0214073537','0011','2015-02-25 21:39:34','0'),(200,'0214073537','0014','2015-02-26 13:47:09','0'),(201,'0214073537','0011','2015-02-26 21:21:32','0'),(202,'0214094122','0014','2015-02-27 16:05:18','0'),(203,'0214094122','0014','2015-03-03 16:30:53','0'),(204,'0214094122','0014','2015-03-03 16:41:13','0'),(205,'0214094122','0014','2015-03-03 16:56:14','0'),(206,'0214094122','0014','2015-03-03 16:58:02','0'),(207,'0214094122','0014','2015-03-03 16:58:15','0'),(208,'0214094122','0014','2015-03-05 03:11:29','0'),(209,'0214094122','0014','2015-03-07 03:07:43','0'),(210,'0214094122','0014','2015-03-07 05:26:03','0'),(211,'0214094122','0014','2015-03-11 01:58:05','0'),(212,'0214094122','0014','2015-03-11 02:00:42','0'),(213,'0214094122','0014','2015-03-14 15:51:19','0'),(214,'0214094122','0014','2015-03-16 13:49:24','0'),(215,'0214094122','0014','2015-03-16 17:45:06','0'),(216,'0214094122','0014','2015-03-16 17:47:25','0'),(217,'0214094122','0014','2015-03-16 17:54:15','0'),(218,'0214094122','0014','2015-03-19 17:24:58','0'),(219,'0214094122','0014','2015-03-21 02:59:14','0'),(220,'0214094122','0014','2015-03-21 19:19:01','0'),(221,'0214094122','0014','2015-03-21 19:38:28','0'),(222,'0214094122','0014','2015-03-21 19:39:28','0'),(223,'0214094122','0014','2015-03-23 04:39:25','0'),(224,'0214094122','0014','2015-03-25 19:39:24','0'),(225,'0214094122','0014','2015-03-26 16:52:19','0'),(226,'0214094122','0014','2015-03-28 13:25:24','0'),(227,'0214094122','0014','2015-03-29 02:34:49','0'),(228,'0214094122','0014','2015-03-29 20:17:09','0'),(229,'0214094122','0014','2015-03-29 20:17:24','0'),(230,'0214094122','0014','2015-03-30 17:45:39','0'),(231,'0214094122','0014','2015-04-01 21:27:43','0'),(232,'0214094122','0014','2015-04-04 18:19:21','0'),(233,'0214094122','0014','2015-04-06 16:22:53','0'),(234,'0214094122','0014','2015-04-08 04:37:39','0'),(235,'0214094122','0014','2015-04-08 04:45:12','0'),(236,'0214094122','0014','2015-04-08 04:51:31','0'),(237,'0000000022','0014','2015-06-03 20:55:21','0'),(238,'0000000022','0014','2015-06-03 20:56:21','0'),(239,'0000000022','0014','2015-06-03 21:25:11','0'),(240,'0000000022','0014','2015-06-03 21:26:00','0'),(241,'0000000022','0014','2015-06-03 21:53:56','0'),(242,'0000000022','0014','2015-06-05 13:41:49','0'),(243,'0000000022','0014','2015-06-05 16:19:08','0'),(244,'0000000022','0014','2015-06-05 16:20:40','0'),(245,'0000000022','0014','2015-06-05 16:36:04','0'),(246,'0000000022','0013','2015-06-06 12:17:28','0'),(247,'0000000022','0014','2015-06-06 12:18:39','0'),(248,'0000000022','0014','2015-06-06 12:19:42','0'),(249,'0000000022','0014','2015-06-06 12:38:51','0'),(250,'0000000022','0014','2015-06-09 17:34:11','0'),(251,'0000000022','0014','2015-06-13 16:13:29','0'),(252,'0000000022','0014','2015-06-13 16:14:51','0'),(253,'0000000019','0014','2015-06-17 19:43:25','0'),(254,'0000000019','0014','2015-06-17 21:52:55','0'),(255,'0000000019','0014','2015-06-17 21:53:11','0'),(256,'0000000019','0014','2015-06-19 13:52:44','0'),(257,'0000000019','0013','2015-06-19 14:03:15','0'),(258,'0000000019','0014','2015-06-19 16:10:04','0'),(259,'0000000019','0014','2015-06-19 16:10:59','0'),(260,'0000000019','0013','2015-06-19 16:14:42','0'),(261,'0000000019','0014','2015-06-20 14:50:00','0'),(262,'0000000022','0014','2015-06-22 15:30:39','0'),(263,'0000000022','0014','2015-06-22 15:47:37','0'),(264,'0000000022','0014','2015-06-22 18:11:38','0'),(265,'0000000022','0014','2015-06-22 18:14:10','0'),(266,'0000000022','0014','2015-06-23 12:16:56','0'),(267,'0000000022','0014','2015-06-24 13:56:47','0'),(268,'0000000022','0014','2015-06-25 14:24:53','0'),(269,'0000000022','0014','2015-06-25 14:25:14','0'),(270,'0000000022','0014','2015-06-25 14:30:22','0'),(271,'0000000022','0014','2015-06-25 14:46:58','0'),(272,'0000000022','0014','2015-06-25 14:47:10','0'),(273,'0000000022','0014','2015-06-25 14:47:26','0'),(274,'0000000022','0014','2015-06-25 15:41:28','0'),(275,'0000000022','0014','2015-06-25 15:43:05','0'),(276,'0000000022','0014','2015-06-25 15:52:52','0'),(277,'0000000022','0014','2015-06-25 15:55:29','0'),(278,'0000000022','0014','2015-06-25 16:04:48','0'),(279,'0000000022','0014','2015-06-25 16:06:53','0'),(280,'0000000022','0014','2015-06-25 16:08:01','0'),(281,'0000000022','0014','2015-06-25 16:10:13','0'),(282,'0000000022','0014','2015-06-25 16:10:14','0'),(283,'0000000022','0014','2015-06-25 16:13:20','0'),(284,'0000000022','0014','2015-06-25 16:14:05','0'),(285,'0000000022','0014','2015-06-25 16:26:20','0'),(286,'0000000022','0014','2015-06-26 18:39:21','0'),(287,'0000000022','0014','2015-06-30 15:42:54','0'),(288,'0000000022','0014','2015-06-30 15:43:14','0'),(289,'0000000022','0014','2015-07-07 19:28:03','0'),(290,'0000000022','0014','2015-07-10 16:36:11','0'),(291,'0000000022','0014','2015-07-10 18:07:26','0'),(292,'0000000022','0014','2015-07-11 13:25:39','0'),(293,'0000000022','0014','2015-07-18 16:31:33','0'),(294,'0000000022','0013','2015-07-18 16:33:01','0'),(295,'0000000022','0014','2015-07-21 16:23:58','0'),(296,'0000000022','0014','2015-07-21 16:37:28','0'),(297,'0000000022','0013','2015-07-21 16:38:57','0'),(298,'0000000022','0014','2015-07-22 22:45:29','0'),(299,'0000000022','0014','2015-07-23 11:47:48','0'),(300,'0000000022','0013','2015-07-23 11:56:14','0'),(301,'0000000022','0013','2015-07-23 12:37:28','0'),(302,'0000000022','0014','2015-07-27 15:26:35','0'),(303,'0000000022','0014','2015-07-28 16:01:02','0'),(304,'0000000022','0013','2015-08-03 14:31:28','0'),(305,'0000000022','0014','2015-08-04 16:16:37','0'),(306,'0000000022','0014','2015-08-04 16:31:48','0'),(307,'0000000022','0014','2015-08-13 20:32:45','0'),(308,'0000000022','0014','2015-08-13 20:33:06','0'),(309,'0000000022','0014','2015-08-14 12:05:05','0'),(310,'0000000022','0014','2015-08-14 18:48:24','0'),(311,'0000000022','0014','2015-08-20 12:53:24','0'),(312,'0000000022','0014','2015-08-20 13:01:22','0'),(313,'0000000022','0014','2015-08-20 13:07:32','0'),(314,'0000000022','0014','2015-08-20 13:22:01','0'),(315,'0000000022','0014','2015-08-20 13:27:27','0'),(316,'0000000022','0013','2015-08-21 20:18:23','0'),(317,'0000000022','0014','2015-08-21 20:18:58','0'),(318,'0000000022','0014','2015-08-25 20:08:53','0'),(319,'0000000022','0014','2015-08-31 16:27:13','0'),(320,'0000000022','0013','2015-08-31 16:44:36','0'),(321,'0000000022','0014','2015-08-31 17:05:13','0'),(322,'0000000022','0013','2015-08-31 19:19:30','0'),(323,'0000000022','0014','2015-09-01 15:56:02','0'),(324,'0000000022','0014','2015-09-08 21:06:37','0'),(325,'0000000022','0014','2015-09-08 21:06:54','0'),(326,'0000000022','0014','2015-09-08 21:07:20','0'),(327,'0000000022','0014','2015-09-09 20:54:04','0'),(328,'0000000022','0013','2015-09-11 21:23:48','0'),(329,'0000000022','0013','2015-09-11 22:23:25','0'),(330,'0000000022','0014','2015-09-11 22:23:55','0'),(331,'0215024858','0014','2015-09-21 18:14:03','0'),(332,'0215024858','0014','2015-09-21 19:33:49','0'),(333,'0215024858','0014','2015-09-21 20:25:21','0'),(334,'2902161108','0014','2016-02-29 16:06:48','0');
/*!40000 ALTER TABLE `ics_statusbilletero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_sub_seccion`
--

DROP TABLE IF EXISTS `ics_sub_seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_sub_seccion` (
  `sbs_id_subseccion` int(11) NOT NULL AUTO_INCREMENT,
  `sbs_nombre` varchar(65) DEFAULT NULL,
  `sbs_descripcion` varchar(250) DEFAULT NULL,
  `sbs_fk_seccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`sbs_id_subseccion`),
  KEY `sbs_fk_seccion_idx` (`sbs_fk_seccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Se aloja la información de las subsecciones de una sección que puedan existir en una  compañía  donde se encuentra  localizada una dispensadora.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_sub_seccion`
--

LOCK TABLES `ics_sub_seccion` WRITE;
/*!40000 ALTER TABLE `ics_sub_seccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_sub_seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tarjetas_`
--

DROP TABLE IF EXISTS `ics_tarjetas_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tarjetas_` (
  `tar_id_ai_tarjetas` int(11) NOT NULL AUTO_INCREMENT,
  `tar_id_tarjetas` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Identificador de trajeta.',
  `fk_tipo_tarjeta` int(11) NOT NULL COMMENT 'Tipo de tarjeta \n1--->modem\n2---> interfaz\n3--->Maquina',
  `fk_id_maquina` varchar(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Llave foranea con el serial de la máquina que posee esa tarjeta',
  `fk_id_firmware` int(11) NOT NULL COMMENT 'firmware de la tarjeta',
  `tar_descripcion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`tar_id_ai_tarjetas`),
  KEY `tar_id_tarjetas_` (`tar_id_tarjetas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='ics_tarjetas= tar_id_tarjetas+fk_tipo_tarjeta+fk_id_maquina+fk_id_firmware\n@tar_id_tarjetas\n1.	Tabla en la que se aloja toda la información de una tarjeta y en que maquina está instalada.	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tarjetas_`
--

LOCK TABLES `ics_tarjetas_` WRITE;
/*!40000 ALTER TABLE `ics_tarjetas_` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_tarjetas_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_telemetria_1d`
--

DROP TABLE IF EXISTS `ics_telemetria_1d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_telemetria_1d` (
  `idics_telemetria_1d` int(11) NOT NULL AUTO_INCREMENT,
  `tel_dispositivo` int(11) DEFAULT NULL COMMENT 'Componente de la dispensadora \nmonedero \nbilletero \netc..',
  `tel_evento` int(11) DEFAULT NULL COMMENT 'Evento desatado dentro de la dispensadora o sus componentes ',
  `tel_estado` int(11) DEFAULT '1' COMMENT 'Visto o no visto , desactivo o activo',
  `tel_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha del sistema',
  `tel_dispensadora` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_telemetria_1d`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla en la que se registran todos los eventos que suceden en la dispensadora \npara ser enviados como alarma en un correo electronico';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_telemetria_1d`
--

LOCK TABLES `ics_telemetria_1d` WRITE;
/*!40000 ALTER TABLE `ics_telemetria_1d` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_telemetria_1d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_temp_perfil`
--

DROP TABLE IF EXISTS `ics_temp_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_temp_perfil` (
  `idics_temp_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` varchar(45) DEFAULT NULL,
  `cant` varchar(45) DEFAULT NULL,
  `t_disp` varchar(45) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` varchar(45) DEFAULT '1',
  `idperfil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idics_temp_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_temp_perfil`
--

LOCK TABLES `ics_temp_perfil` WRITE;
/*!40000 ALTER TABLE `ics_temp_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_temp_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tiempo_rta`
--

DROP TABLE IF EXISTS `ics_tiempo_rta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tiempo_rta` (
  `idtiempo_rta` int(11) NOT NULL AUTO_INCREMENT,
  `tre_dispensadora` varchar(15) NOT NULL,
  `tre_tiempo` int(2) NOT NULL,
  `tre_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tre_trama` char(1) DEFAULT NULL,
  PRIMARY KEY (`idtiempo_rta`)
) ENGINE=InnoDB AUTO_INCREMENT=1942 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tiempo_rta`
--

LOCK TABLES `ics_tiempo_rta` WRITE;
/*!40000 ALTER TABLE `ics_tiempo_rta` DISABLE KEYS */;
INSERT INTO `ics_tiempo_rta` VALUES (1,'0000000015',1,'2017-03-29 21:59:05','T'),(2,'0000000024',2,'2017-03-30 13:11:08','Z'),(3,'0000000024',3,'2017-03-30 13:14:28','Z'),(4,'0000000024',1,'2017-03-30 13:15:35','Z'),(5,'0000000024',1,'2017-03-30 13:19:35','Z'),(6,'0000000024',1,'2017-03-30 13:24:17','Z'),(7,'0000000024',1,'2017-03-30 13:27:42','Z'),(8,'0000000024',1,'2017-03-30 13:37:07','Z'),(9,'0000000024',1,'2017-03-30 13:37:48','Z'),(10,'0000000024',1,'2017-03-30 13:38:50','Z'),(11,'0000000024',1,'2017-03-30 13:42:33','Z'),(12,'0000000024',1,'2017-03-30 13:43:36','Z'),(13,'0000000024',1,'2017-03-30 13:44:42','Z'),(14,'0000000024',1,'2017-03-30 13:45:51','Z'),(15,'0000000024',1,'2017-03-30 13:46:21','Z'),(16,'0000000024',1,'2017-03-30 13:47:38','Z'),(17,'0000000024',1,'2017-03-30 13:48:05','Z'),(18,'0000000024',1,'2017-03-30 13:49:11','Z'),(19,'0000000024',1,'2017-03-30 13:49:19','Z'),(20,'0000000024',1,'2017-03-30 13:56:57','Z'),(21,'0000000024',1,'2017-03-30 14:04:08','Z'),(22,'0000000024',1,'2017-03-30 14:06:52','Z'),(23,'0000000024',1,'2017-03-30 14:10:09','Z'),(24,'0000000024',1,'2017-03-30 14:10:41','Z'),(25,'0000000024',1,'2017-03-30 14:11:19','Z'),(26,'0000000024',3,'2017-03-30 14:13:00','Z'),(27,'0000000024',1,'2017-03-30 14:14:39','Z'),(28,'0000000024',1,'2017-03-30 14:15:48','Z'),(29,'0000000024',1,'2017-03-30 14:17:20','Z'),(30,'0000000024',1,'2017-03-30 14:18:28','Z'),(31,'0000000024',1,'2017-03-30 14:23:22','Z'),(32,'0000000024',1,'2017-03-30 14:29:44','Z'),(33,'0000000024',1,'2017-03-30 14:33:28','Z'),(34,'0000000024',1,'2017-03-30 14:35:10','Z'),(35,'0000000024',1,'2017-03-30 14:39:38','Z'),(36,'0000000024',1,'2017-03-30 15:23:46','Z'),(37,'0000000024',1,'2017-03-30 15:25:32','Z'),(38,'0000000024',1,'2017-03-30 15:37:19','Z'),(39,'0000000024',2,'2017-03-30 15:44:51','Z'),(40,'0000000024',3,'2017-03-30 15:50:57','Z'),(41,'0000000024',1,'2017-03-30 16:55:45','Z'),(42,'0000000024',1,'2017-03-30 18:09:52','Z'),(43,'0000000024',1,'2017-03-30 18:11:10','Z'),(44,'0000000024',2,'2017-03-30 18:17:00','Z'),(45,'0000000024',1,'2017-03-30 18:18:18','Z'),(46,'0000000024',1,'2017-03-30 18:20:10','Z'),(47,'0000000024',2,'2017-03-30 18:22:45','Z'),(48,'0000000024',1,'2017-03-30 18:24:30','Z'),(49,'0000000024',3,'2017-03-30 18:39:09','Z'),(50,'0000000024',1,'2017-03-30 18:48:31','Z'),(51,'0000000024',1,'2017-03-30 18:51:19','Z'),(52,'0000000024',1,'2017-03-30 18:53:28','Z'),(53,'0000000024',4,'2017-03-30 18:53:58','Z'),(54,'0000000024',1,'2017-03-30 19:03:21','Z'),(55,'0000000024',1,'2017-03-30 19:16:15','Z'),(56,'0000000024',1,'2017-03-30 19:17:04','Z'),(57,'0000000024',1,'2017-03-30 19:17:34','Z'),(58,'0000000024',1,'2017-03-30 19:18:58','Z'),(59,'0000000024',1,'2017-03-30 19:28:20','Z'),(60,'0000000024',1,'2017-03-30 19:29:26','Z'),(61,'0000000024',1,'2017-03-30 19:29:54','Z'),(62,'0000000024',1,'2017-03-30 19:37:09','Z'),(63,'0000000024',1,'2017-03-30 19:42:35','Z'),(64,'0000000024',1,'2017-03-30 19:43:37','Z'),(65,'0000000024',1,'2017-03-30 19:46:26','Z'),(66,'0000000024',1,'2017-03-30 19:58:48','Z'),(67,'0000000024',1,'2017-03-30 20:00:17','Z'),(68,'0000000024',1,'2017-03-30 20:08:56','Z'),(69,'0000000024',1,'2017-03-30 20:11:42','Z'),(70,'0000000024',1,'2017-03-30 20:28:22','Z'),(71,'0000000024',1,'2017-03-30 20:31:13','Z'),(72,'0000000024',1,'2017-03-30 20:38:42','Z'),(73,'0000000024',1,'2017-03-30 20:39:49','Z'),(74,'0000000024',2,'2017-03-30 20:45:08','Z'),(75,'0000000024',1,'2017-03-30 20:45:52','Z'),(76,'0000000024',2,'2017-03-30 20:46:34','Z'),(77,'0000000024',2,'2017-03-30 20:47:50','Z'),(78,'0000000024',1,'2017-03-30 20:49:01','Z'),(79,'0000000024',1,'2017-03-30 21:06:00','Z'),(80,'0000000024',4,'2017-03-30 21:06:30','Z'),(81,'0000000024',1,'2017-03-30 21:06:49','Z'),(82,'0000000024',1,'2017-03-30 21:07:19','Z'),(83,'0000000024',1,'2017-03-30 21:07:37','Z'),(84,'0000000024',1,'2017-03-30 21:09:33','Z'),(85,'0000000024',1,'2017-03-30 21:18:54','Z'),(86,'0000000024',1,'2017-03-30 21:20:11','Z'),(87,'0000000024',1,'2017-03-30 21:20:57','Z'),(88,'0000000024',1,'2017-03-30 21:24:55','Z'),(89,'0000000024',1,'2017-03-30 21:26:47','Z'),(90,'0000000024',2,'2017-03-30 21:27:36','Z'),(91,'0000000024',1,'2017-03-30 21:28:16','Z'),(92,'0000000024',1,'2017-03-30 21:28:37','Z'),(93,'0000000024',1,'2017-03-30 21:29:09','Z'),(94,'0000000024',7,'2017-03-30 21:29:35','Z'),(95,'0000000024',1,'2017-03-30 21:29:58','Z'),(96,'0000000024',1,'2017-03-30 21:30:22','Z'),(97,'0000000024',1,'2017-03-30 21:30:43','Z'),(98,'0000000024',1,'2017-03-31 11:58:13','Z'),(99,'0000000024',2,'2017-03-31 14:23:51','Z'),(100,'0000000024',1,'2017-03-31 14:24:32','Z'),(101,'0000000024',2,'2017-03-31 14:26:02','Z'),(102,'0000000024',1,'2017-03-31 14:40:48','Z'),(103,'0000000024',1,'2017-03-31 15:34:52','Z'),(104,'0000000024',1,'2017-03-31 16:09:26','Z'),(105,'0000000024',1,'2017-03-31 16:09:52','Z'),(106,'0000000024',1,'2017-03-31 16:50:08','Z'),(107,'0000000024',2,'2017-03-31 16:57:43','Z'),(108,'0000000024',0,'2017-03-31 18:00:53','Z'),(109,'0000000024',0,'2017-03-31 18:03:05','Z'),(110,'0000000024',1,'2017-03-31 18:51:23','Z'),(111,'0000000024',1,'2017-03-31 19:57:21','Z'),(112,'0000000024',1,'2017-03-31 20:10:31','Z'),(113,'0000000024',1,'2017-03-31 20:52:48','Z'),(114,'0000000015',1,'2017-03-31 21:08:55','Z'),(115,'0000000015',1,'2017-03-31 21:16:02','Z'),(116,'0000000024',1,'2017-03-31 21:24:25','Z'),(117,'0000000015',1,'2017-03-31 21:25:50','Z'),(118,'0000000015',3,'2017-03-31 21:32:17','Z'),(119,'0000000015',1,'2017-03-31 21:37:33','Z'),(120,'0000000015',1,'2017-03-31 21:42:29','Z'),(121,'0000000015',1,'2017-03-31 21:55:55','Z'),(122,'0000000015',1,'2017-04-01 12:46:18','Z'),(123,'0000000015',1,'2017-04-01 12:57:10','Z'),(124,'0000000015',1,'2017-04-01 13:06:20','Z'),(125,'0000000015',1,'2017-04-01 13:20:48','Z'),(126,'0000000015',1,'2017-04-01 13:46:01','Z'),(127,'0000000015',3,'2017-04-01 13:57:03','Z'),(128,'0000000015',1,'2017-04-01 14:03:13','Z'),(129,'0000000015',1,'2017-04-01 14:24:31','Z'),(130,'0000000015',1,'2017-04-01 14:57:45','Z'),(131,'0000000024',1,'2017-04-03 13:20:42','Z'),(132,'0000000024',1,'2017-04-03 13:21:19','Z'),(133,'0000000024',1,'2017-04-03 13:25:21','Z'),(134,'0000000024',1,'2017-04-03 15:16:01','Z'),(135,'0000000024',1,'2017-04-03 15:16:47','Z'),(136,'0000000024',1,'2017-04-03 19:01:54','Z'),(137,'0000000024',1,'2017-04-03 19:17:17','Z'),(138,'0000000024',1,'2017-04-03 19:35:05','Z'),(139,'0000000024',1,'2017-04-03 20:44:49','Z'),(140,'0000000024',1,'2017-04-03 20:59:20','Z'),(141,'0000000024',1,'2017-04-03 21:06:23','Z'),(142,'0000000024',1,'2017-04-03 22:03:57','Z'),(143,'0000000024',1,'2017-04-03 22:04:20','Z'),(144,'0000000024',3,'2017-04-03 22:04:45','Z'),(145,'0000000024',6,'2017-04-03 22:05:25','Z'),(146,'0000000024',1,'2017-04-03 22:05:56','Z'),(147,'0000000024',1,'2017-04-03 22:06:14','Z'),(148,'0000000024',4,'2017-04-04 13:26:23','Z'),(149,'0000000024',1,'2017-04-04 16:40:27','Z'),(150,'0000000024',1,'2017-04-04 16:41:44','Z'),(151,'0000000024',1,'2017-04-04 16:42:29','Z'),(152,'0000000024',1,'2017-04-04 16:46:45','Z'),(153,'0000000024',1,'2017-04-04 16:48:52','Z'),(154,'0000000024',1,'2017-04-04 16:49:49','Z'),(155,'0000000024',1,'2017-04-04 16:53:02','Z'),(156,'0000000024',1,'2017-04-04 18:01:21','Z'),(157,'0000000024',1,'2017-04-04 18:25:36','Z'),(158,'0000000024',1,'2017-04-04 18:43:47','Z'),(159,'0000000024',1,'2017-04-04 18:43:55','Z'),(160,'0000000024',1,'2017-04-04 18:44:18','Z'),(161,'0000000024',1,'2017-04-04 19:53:01','Z'),(162,'0000000024',2,'2017-04-04 19:53:30','Z'),(163,'0000000024',1,'2017-04-04 19:53:55','Z'),(164,'0000000024',1,'2017-04-04 19:54:49','Z'),(165,'0000000024',1,'2017-04-04 19:56:14','Z'),(166,'0000000024',1,'2017-04-04 19:56:52','Z'),(167,'0000000024',2,'2017-04-04 19:57:09','Z'),(168,'0000000024',1,'2017-04-04 19:57:32','Z'),(169,'0000000024',3,'2017-04-04 19:57:58','Z'),(170,'0000000024',2,'2017-04-04 19:58:29','Z'),(171,'0000000024',1,'2017-04-04 19:59:08','Z'),(172,'0000000024',3,'2017-04-04 20:00:47','Z'),(173,'0000000024',1,'2017-04-05 18:58:23','S'),(174,'0000000024',1,'2017-04-05 18:59:51','S'),(175,'0000000024',1,'2017-04-05 19:01:15','S'),(176,'0000000024',22,'2017-04-05 19:14:33','S'),(177,'0000000024',1,'2017-04-05 19:16:03','Z'),(178,'0000000024',7,'2017-04-05 19:21:06','Z'),(179,'0000000024',3,'2017-04-05 19:21:28','Z'),(180,'0000000024',1,'2017-04-05 19:21:50','Z'),(181,'0000000024',5,'2017-04-05 19:22:50','Z'),(182,'0000000024',1,'2017-04-05 19:28:40','Z'),(183,'0000000024',1,'2017-04-05 19:30:00','Z'),(184,'0000000024',1,'2017-04-05 19:35:53','Z'),(185,'0000000015',3,'2017-04-05 20:37:12','Z'),(186,'0000000015',3,'2017-04-05 20:51:05','Z'),(187,'0000000015',1,'2017-04-05 21:07:09','Z'),(188,'0000000024',1,'2017-04-05 21:52:21','Z'),(189,'0000000024',9,'2017-04-05 22:06:19','Z'),(190,'0000000024',34,'2017-04-05 22:15:25','Z'),(191,'0000000024',1,'2017-04-05 22:15:53','Z'),(192,'0000000024',2,'2017-04-05 22:16:17','Z'),(193,'0000000024',0,'2017-04-06 12:59:46','P'),(194,'0000000024',0,'2017-04-06 13:07:19','Z'),(195,'0000000024',0,'2017-04-06 13:07:37','Z'),(196,'0000000024',0,'2017-04-06 19:21:37','Z'),(197,'0000000024',0,'2017-04-06 19:22:42','Z'),(198,'0000000024',0,'2017-04-06 19:26:35','Z'),(199,'0000000024',0,'2017-04-06 19:32:32','P'),(200,'0000000024',0,'2017-04-06 19:32:34','P'),(201,'0000000024',0,'2017-04-06 19:35:09','P'),(202,'0000000024',0,'2017-04-06 19:35:11','P'),(203,'0000000024',0,'2017-04-06 19:37:30','Z'),(204,'0000000024',0,'2017-04-06 19:42:41','Z'),(205,'0000000024',0,'2017-04-06 19:46:18','P'),(206,'0000000024',0,'2017-04-06 19:46:20','P'),(207,'0000000024',0,'2017-04-06 20:11:00','T'),(208,'0000000024',0,'2017-04-06 20:11:03','T'),(209,'0000000024',0,'2017-04-06 20:35:19','P'),(210,'0000000024',2,'2017-04-06 20:36:06','S'),(211,'0000000024',5,'2017-04-06 20:50:34','S'),(212,'0000000024',0,'2017-04-10 21:50:38','Z'),(213,'0000000024',0,'2017-04-10 21:51:03','Z'),(214,'0000000024',4,'2017-04-10 21:53:20','Z'),(215,'0000000024',0,'2017-04-10 21:53:35','Z'),(216,'0000000024',0,'2017-04-10 21:53:50','Z'),(217,'0000000024',0,'2017-04-10 21:54:48','Z'),(218,'0000000024',0,'2017-04-10 21:55:59','Z'),(219,'0000000024',0,'2017-04-10 21:57:06','Z'),(220,'0000000024',0,'2017-04-10 21:58:29','Z'),(221,'0000000024',0,'2017-04-10 22:00:47','Z'),(222,'0000000024',0,'2017-04-10 22:04:12','Z'),(223,'0000000024',0,'2017-04-11 12:16:05','Z'),(224,'0000000024',0,'2017-04-11 13:17:33','Z'),(225,'0000000024',0,'2017-04-11 13:21:08','Z'),(226,'0000000024',0,'2017-04-11 13:25:27','Z'),(227,'0000000024',0,'2017-04-11 13:37:24','Z'),(228,'0000000024',4,'2017-04-11 13:39:29','Z'),(229,'0000000024',0,'2017-04-11 13:43:20','Z'),(230,'0000000024',0,'2017-04-11 14:01:22','Z'),(231,'0000000024',0,'2017-04-11 14:07:14','Z'),(232,'0000000024',0,'2017-04-11 14:11:25','Z'),(233,'0000000024',0,'2017-04-11 14:17:10','Z'),(234,'0000000024',0,'2017-04-11 14:23:56','Z'),(235,'0000000024',5,'2017-04-11 14:28:13','Z'),(236,'0000000024',11,'2017-04-11 14:34:06','P'),(237,'0000000024',0,'2017-04-11 14:34:08','P'),(238,'0000000024',0,'2017-04-11 20:10:00','Z'),(239,'0000000024',0,'2017-04-11 20:11:03','Z'),(240,'0000000024',0,'2017-04-11 21:46:57','Z'),(241,'0000000024',0,'2017-04-11 21:56:22','T'),(242,'0000000024',0,'2017-04-11 21:56:33','T'),(243,'0000000024',1,'2017-04-18 15:50:20','Z'),(244,'0000000024',1,'2017-04-18 15:54:06','Z'),(245,'0000000024',0,'2017-04-18 16:08:54','Z'),(246,'0000000024',0,'2017-04-18 16:09:11','Z'),(247,'0000000024',0,'2017-04-18 16:47:33','Z'),(248,'0000000024',0,'2017-04-18 18:44:58','Z'),(249,'0000000024',0,'2017-04-18 18:45:22','Z'),(250,'0000000024',0,'2017-04-18 18:46:42','Z'),(251,'0000000024',7,'2017-04-18 18:46:57','Z'),(252,'0000000024',0,'2017-04-18 18:50:37','Z'),(253,'0000000024',4,'2017-04-18 18:52:12','Z'),(254,'0000000024',0,'2017-04-18 18:52:29','Z'),(255,'0000000024',0,'2017-04-18 18:54:58','Z'),(256,'0000000024',4,'2017-04-18 18:57:32','Z'),(257,'0000000024',0,'2017-04-18 18:59:24','Z'),(258,'0000000024',5,'2017-04-18 19:03:38','Z'),(259,'0000000024',12,'2017-04-18 19:05:51','Z'),(260,'0000000024',0,'2017-04-18 19:09:23','S'),(261,'0000000024',0,'2017-04-18 19:11:31','S'),(262,'0000000024',0,'2017-04-18 19:22:32','T'),(263,'0000000024',0,'2017-04-18 19:23:56','S'),(264,'0000000024',0,'2017-04-18 19:24:29','T'),(265,'0000000024',0,'2017-04-18 19:25:16','T'),(266,'0000000024',0,'2017-04-18 19:37:49','Z'),(267,'0000000024',0,'2017-04-18 19:59:42','Z'),(268,'0000000024',0,'2017-04-18 20:00:00','V'),(269,'0000000024',0,'2017-04-18 20:00:40','Z'),(270,'0000000024',0,'2017-04-18 20:00:54','V'),(271,'0000000024',0,'2017-04-18 20:01:27','T'),(272,'0000000024',0,'2017-04-18 20:01:43','T'),(273,'0000000024',0,'2017-04-18 20:05:49','Z'),(274,'0000000024',0,'2017-04-18 20:06:15','V'),(275,'0000000024',0,'2017-04-18 20:22:27','P'),(276,'0000000024',18,'2017-04-18 20:22:33','P'),(277,'0000000024',2,'2017-04-19 14:07:08','P'),(278,'0000000024',1,'2017-04-19 15:38:29','S'),(279,'0000000024',37,'2017-04-19 15:40:17','S'),(280,'0000000024',37,'2017-04-19 15:41:47','S'),(281,'0000000024',2,'2017-04-19 15:54:05','T'),(282,'0000000024',2,'2017-04-19 15:55:33','T'),(283,'0000000024',1,'2017-04-19 16:14:18','L'),(284,'0000000024',1,'2017-04-19 16:24:04','L'),(285,'0000000024',1,'2017-04-19 16:25:10','L'),(286,'0000000024',0,'2017-04-20 18:17:28','P'),(287,'0000000024',0,'2017-04-20 18:17:30','P'),(288,'0000000024',0,'2017-04-20 18:18:01','T'),(289,'0000000024',0,'2017-04-20 18:18:09','T'),(290,'0000000024',1,'2017-04-20 18:20:03','P'),(291,'0000000024',2,'2017-04-20 18:20:05','P'),(292,'0000000024',1,'2017-04-21 14:29:43','Z'),(293,'0000000024',1,'2017-04-21 14:45:48','T'),(294,'0000000024',1,'2017-04-21 14:45:59','T'),(295,'0000000024',1,'2017-04-21 14:54:29','T'),(296,'0000000024',2,'2017-04-21 14:54:40','T'),(297,'0000000024',1,'2017-04-21 14:59:54','Z'),(298,'0000000024',1,'2017-04-21 15:04:58','T'),(299,'0000000024',3,'2017-04-21 15:05:08','T'),(300,'0000000024',0,'2017-04-22 13:34:44','T'),(301,'0000000024',0,'2017-04-22 13:36:08','L'),(302,'0000000024',0,'2017-04-22 13:36:38','K'),(303,'0000000024',0,'2017-04-22 13:47:46','S'),(304,'0000000024',0,'2017-04-22 13:57:02','S'),(305,'0000000024',0,'2017-04-22 14:00:22','L'),(306,'0000000024',0,'2017-04-22 14:09:11','S'),(307,'0000000024',0,'2017-04-24 12:26:23','S'),(308,'0000000024',0,'2017-04-24 12:27:43','P'),(309,'0000000024',0,'2017-04-24 12:34:18','P'),(310,'0000000024',0,'2017-04-24 12:35:57','P'),(311,'0000000024',0,'2017-04-24 12:38:33','P'),(312,'0000000024',0,'2017-04-24 13:52:50','P'),(313,'0000000024',5,'2017-04-24 20:11:09','Z'),(314,'0000000024',1,'2017-04-24 20:19:59','P'),(315,'0000000024',5,'2017-04-25 13:51:00','Z'),(316,'0000000024',5,'2017-04-25 13:52:34','Z'),(317,'0000000024',5,'2017-04-25 13:56:49','Z'),(318,'0000000024',0,'2017-04-25 14:49:37','Z'),(319,'0000000024',0,'2017-04-25 14:50:20','Z'),(320,'0000000024',0,'2017-04-25 14:50:41','Z'),(321,'0000000024',0,'2017-04-25 15:14:50','S'),(322,'0000000024',0,'2017-04-25 15:16:48','S'),(323,'0000000024',0,'2017-04-25 15:17:39','S'),(324,'0000000024',0,'2017-04-25 15:20:22','S'),(325,'0000000024',0,'2017-04-25 15:20:49','S'),(326,'0000000024',0,'2017-04-25 15:21:11','S'),(327,'0000000024',0,'2017-04-25 15:21:49','S'),(328,'0000000024',0,'2017-04-25 15:37:47','P'),(329,'0000000024',0,'2017-04-25 15:37:54','P'),(330,'0000000024',0,'2017-04-25 16:13:08','S'),(331,'0000000024',0,'2017-04-25 16:47:36','P'),(332,'0000000024',2,'2017-04-25 16:47:38','P'),(333,'0000000024',0,'2017-04-25 16:47:55','P'),(334,'0000000024',0,'2017-04-25 16:48:03','P'),(335,'0000000024',0,'2017-04-25 16:53:27','P'),(336,'0000000024',0,'2017-04-25 16:53:32','P'),(337,'0000000024',0,'2017-04-25 17:05:17','Z'),(338,'0000000024',0,'2017-04-25 17:05:37','Z'),(339,'0000000024',0,'2017-04-25 17:05:57','Z'),(340,'0000000024',0,'2017-04-25 17:06:17','Z'),(341,'0000000024',0,'2017-04-25 17:06:37','Z'),(342,'0000000024',0,'2017-04-25 17:08:09','Z'),(343,'0000000024',0,'2017-04-25 17:08:16','Z'),(344,'0000000024',0,'2017-04-25 17:08:39','Z'),(345,'0000000024',0,'2017-04-25 17:08:59','Z'),(346,'0000000024',0,'2017-04-25 17:09:38','Z'),(347,'0000000024',0,'2017-04-25 17:10:54','Z'),(348,'0000000024',0,'2017-04-25 17:11:14','Z'),(349,'0000000024',0,'2017-04-25 17:11:35','Z'),(350,'0000000024',0,'2017-04-25 17:11:55','Z'),(351,'0000000024',0,'2017-04-25 17:12:15','Z'),(352,'0000000024',0,'2017-04-25 17:12:35','Z'),(353,'0000000024',0,'2017-04-25 17:12:55','Z'),(354,'0000000024',0,'2017-04-25 17:13:15','Z'),(355,'0000000024',0,'2017-04-25 17:13:35','Z'),(356,'0000000024',0,'2017-04-25 17:13:56','Z'),(357,'0000000024',0,'2017-04-25 18:37:09','Z'),(358,'0000000024',3,'2017-04-25 18:45:32','Z'),(359,'0000000024',0,'2017-04-25 18:59:40','P'),(360,'0000000024',0,'2017-04-25 18:59:42','P'),(361,'0000000024',0,'2017-04-25 19:13:25','Z'),(362,'0000000024',0,'2017-04-25 19:15:03','Z'),(363,'0000000024',0,'2017-04-25 19:15:23','Z'),(364,'0000000024',0,'2017-04-25 19:16:51','Z'),(365,'0000000024',0,'2017-04-25 19:22:16','Z'),(366,'0000000024',0,'2017-04-25 19:57:13','P'),(367,'0000000024',0,'2017-04-25 19:57:18','P'),(368,'0000000024',0,'2017-04-25 19:58:09','P'),(369,'0000000024',0,'2017-04-25 19:58:11','P'),(370,'0000000024',0,'2017-04-25 20:11:06','P'),(371,'0000000024',0,'2017-04-25 20:14:31','Z'),(372,'0000000024',0,'2017-04-25 20:24:20','P'),(373,'0000000024',0,'2017-04-25 20:33:30','P'),(374,'0000000024',4,'2017-04-25 20:37:48','P'),(375,'0000000024',3,'2017-04-25 20:37:50','P'),(376,'0000000024',0,'2017-04-25 20:49:02','P'),(377,'0000000024',0,'2017-04-25 20:49:07','P'),(378,'0000000024',1,'2017-04-25 20:50:00','P'),(379,'0000000024',0,'2017-04-25 20:50:03','P'),(380,'0000000024',0,'2017-04-25 22:06:23','Z'),(381,'0000000024',0,'2017-04-25 22:07:30','P'),(382,'0000000024',0,'2017-04-25 22:07:33','P'),(383,'0000000024',0,'2017-04-25 22:10:51','Z'),(384,'0000000024',0,'2017-04-25 22:19:53','Z'),(385,'0000000024',0,'2017-04-25 22:28:52','Z'),(386,'0000000024',0,'2017-04-25 22:37:52','Z'),(387,'0000000024',0,'2017-04-25 22:46:52','Z'),(388,'0000000024',0,'2017-04-25 22:55:52','Z'),(389,'0000000024',0,'2017-04-25 23:05:08','Z'),(390,'0000000024',16,'2017-04-25 23:14:08','Z'),(391,'0000000024',0,'2017-04-25 23:23:08','Z'),(392,'0000000024',0,'2017-04-25 23:33:25','Z'),(393,'0000000024',16,'2017-04-25 23:42:25','Z'),(394,'0000000024',0,'2017-04-25 23:51:25','Z'),(395,'0000000024',0,'2017-04-26 00:00:24','Z'),(396,'0000000024',0,'2017-04-26 00:09:24','Z'),(397,'0000000024',0,'2017-04-26 00:18:24','Z'),(398,'0000000024',0,'2017-04-26 00:27:24','Z'),(399,'0000000024',0,'2017-04-26 00:36:24','Z'),(400,'0000000024',0,'2017-04-26 00:45:23','Z'),(401,'0000000024',0,'2017-04-26 00:54:23','Z'),(402,'0000000024',0,'2017-04-26 01:03:23','Z'),(403,'0000000024',0,'2017-04-26 01:12:23','Z'),(404,'0000000024',0,'2017-04-26 01:21:23','Z'),(405,'0000000024',0,'2017-04-26 01:30:23','Z'),(406,'0000000024',0,'2017-04-26 01:39:22','Z'),(407,'0000000024',0,'2017-04-26 01:48:22','Z'),(408,'0000000024',0,'2017-04-26 01:58:29','Z'),(409,'0000000024',0,'2017-04-26 02:07:29','Z'),(410,'0000000024',0,'2017-04-26 02:16:28','Z'),(411,'0000000024',0,'2017-04-26 02:25:28','Z'),(412,'0000000024',0,'2017-04-26 02:34:51','Z'),(413,'0000000024',2,'2017-04-26 02:44:18','Z'),(414,'0000000024',7,'2017-04-26 02:54:08','Z'),(415,'0000000024',9,'2017-04-26 03:03:08','Z'),(416,'0000000024',0,'2017-04-26 03:12:10','Z'),(417,'0000000024',2,'2017-04-26 03:21:10','Z'),(418,'0000000024',0,'2017-04-26 03:30:40','Z'),(419,'0000000024',10,'2017-04-26 03:39:40','Z'),(420,'0000000024',0,'2017-04-26 03:48:40','Z'),(421,'0000000024',0,'2017-04-26 03:57:40','Z'),(422,'0000000024',0,'2017-04-26 04:06:39','Z'),(423,'0000000024',0,'2017-04-26 04:15:39','Z'),(424,'0000000024',0,'2017-04-26 04:24:39','Z'),(425,'0000000024',0,'2017-04-26 04:34:07','Z'),(426,'0000000024',7,'2017-04-26 04:43:08','Z'),(427,'0000000024',1,'2017-04-26 04:52:09','Z'),(428,'0000000024',1,'2017-04-26 05:01:58','Z'),(429,'0000000024',9,'2017-04-26 05:10:58','Z'),(430,'0000000024',0,'2017-04-26 05:19:58','Z'),(431,'0000000024',0,'2017-04-26 05:28:58','Z'),(432,'0000000024',0,'2017-04-26 05:37:58','Z'),(433,'0000000024',0,'2017-04-26 05:46:57','Z'),(434,'0000000024',0,'2017-04-26 05:55:57','Z'),(435,'0000000024',0,'2017-04-26 06:05:37','Z'),(436,'0000000024',0,'2017-04-26 06:14:36','Z'),(437,'0000000024',0,'2017-04-26 06:23:36','Z'),(438,'0000000024',0,'2017-04-26 06:32:51','Z'),(439,'0000000024',15,'2017-04-26 06:41:51','Z'),(440,'0000000024',0,'2017-04-26 06:50:51','Z'),(441,'0000000024',0,'2017-04-26 06:59:51','Z'),(442,'0000000024',0,'2017-04-26 07:09:05','Z'),(443,'0000000024',14,'2017-04-26 07:18:05','Z'),(444,'0000000024',0,'2017-04-26 07:27:04','Z'),(445,'0000000024',0,'2017-04-26 07:36:04','Z'),(446,'0000000024',0,'2017-04-26 07:45:04','Z'),(447,'0000000024',0,'2017-04-26 07:54:04','Z'),(448,'0000000024',0,'2017-04-26 08:03:04','Z'),(449,'0000000024',0,'2017-04-26 08:12:04','Z'),(450,'0000000024',0,'2017-04-26 08:21:03','Z'),(451,'0000000024',0,'2017-04-26 08:30:03','Z'),(452,'0000000024',0,'2017-04-26 08:39:30','Z'),(453,'0000000024',7,'2017-04-26 08:48:30','Z'),(454,'0000000024',0,'2017-04-26 08:57:30','Z'),(455,'0000000024',0,'2017-04-26 09:06:30','Z'),(456,'0000000024',0,'2017-04-26 09:15:29','Z'),(457,'0000000024',0,'2017-04-26 09:24:29','Z'),(458,'0000000024',0,'2017-04-26 09:33:29','Z'),(459,'0000000024',0,'2017-04-26 09:42:49','Z'),(460,'0000000024',0,'2017-04-26 09:51:49','Z'),(461,'0000000024',0,'2017-04-26 10:00:49','Z'),(462,'0000000024',0,'2017-04-26 10:09:51','Z'),(463,'0000000024',2,'2017-04-26 10:18:51','Z'),(464,'0000000024',0,'2017-04-26 10:27:51','Z'),(465,'0000000024',0,'2017-04-26 10:36:50','Z'),(466,'0000000024',0,'2017-04-26 10:45:50','Z'),(467,'0000000024',0,'2017-04-26 10:54:50','Z'),(468,'0000000024',0,'2017-04-26 11:03:50','Z'),(469,'0000000024',0,'2017-04-26 11:12:50','Z'),(470,'0000000024',0,'2017-04-26 11:21:49','Z'),(471,'0000000024',0,'2017-04-26 11:30:49','Z'),(472,'0000000024',0,'2017-04-26 11:39:49','Z'),(473,'0000000024',0,'2017-04-26 11:48:49','Z'),(474,'0000000024',0,'2017-04-26 11:56:37','Z'),(475,'0000000024',0,'2017-04-26 11:58:22','Z'),(476,'0000000024',0,'2017-04-26 11:59:23','Z'),(477,'0000000024',0,'2017-04-26 12:00:23','Z'),(478,'0000000024',0,'2017-04-26 12:01:31','Z'),(479,'0000000024',7,'2017-04-26 12:02:31','Z'),(480,'0000000024',0,'2017-04-26 12:03:32','Z'),(481,'0000000024',0,'2017-04-26 12:04:33','Z'),(482,'0000000024',0,'2017-04-26 12:05:33','Z'),(483,'0000000024',0,'2017-04-26 12:06:34','Z'),(484,'0000000024',0,'2017-04-26 12:08:50','Z'),(485,'0000000024',15,'2017-04-26 12:09:26','P'),(486,'0000000024',0,'2017-04-26 12:09:48','P'),(487,'0000000024',1,'2017-04-26 12:09:52','P'),(488,'0000000024',0,'2017-04-26 12:10:51','P'),(489,'0000000024',0,'2017-04-26 12:10:55','P'),(490,'0000000024',15,'2017-04-26 12:11:56','P'),(491,'0000000024',0,'2017-04-26 12:12:59','Z'),(492,'0000000024',0,'2017-04-26 12:14:00','Z'),(493,'0000000024',0,'2017-04-26 12:15:00','Z'),(494,'0000000024',0,'2017-04-26 12:16:01','Z'),(495,'0000000024',0,'2017-04-26 12:17:01','Z'),(496,'0000000024',0,'2017-04-26 12:20:13','Z'),(497,'0000000024',10,'2017-04-26 12:21:28','Z'),(498,'0000000024',13,'2017-04-26 12:22:28','Z'),(499,'0000000024',0,'2017-04-26 12:23:29','Z'),(500,'0000000024',0,'2017-04-26 12:24:57','Z'),(501,'0000000024',7,'2017-04-26 12:26:03','P'),(502,'0000000024',0,'2017-04-26 12:26:28','Z'),(503,'0000000024',4,'2017-04-26 12:27:15','Z'),(504,'0000000024',7,'2017-04-26 12:28:46','P'),(505,'0000000024',7,'2017-04-26 12:29:47','P'),(506,'0000000024',0,'2017-04-26 12:31:06','Z'),(507,'0000000024',15,'2017-04-26 12:31:17','P'),(508,'0000000024',0,'2017-04-26 12:31:20','P'),(509,'0000000024',0,'2017-04-26 12:32:20','Z'),(510,'0000000024',0,'2017-04-26 12:33:21','Z'),(511,'0000000024',0,'2017-04-26 12:34:22','Z'),(512,'0000000024',0,'2017-04-26 12:35:22','Z'),(513,'0000000024',0,'2017-04-26 12:36:23','Z'),(514,'0000000024',0,'2017-04-26 12:37:23','Z'),(515,'0000000024',0,'2017-04-26 12:38:34','Z'),(516,'0000000024',10,'2017-04-26 12:39:35','Z'),(517,'0000000024',0,'2017-04-26 12:40:35','Z'),(518,'0000000024',0,'2017-04-26 12:42:18','Z'),(519,'0000000024',0,'2017-04-26 12:43:20','P'),(520,'0000000024',0,'2017-04-26 12:44:23','Z'),(521,'0000000024',0,'2017-04-26 12:45:49','Z'),(522,'0000000024',4,'2017-04-26 12:46:49','Z'),(523,'0000000024',0,'2017-04-26 12:47:48','P'),(524,'0000000024',0,'2017-04-26 12:47:50','P'),(525,'0000000024',0,'2017-04-26 12:48:51','Z'),(526,'0000000024',0,'2017-04-26 12:49:52','Z'),(527,'0000000024',0,'2017-04-26 12:50:54','Z'),(528,'0000000024',0,'2017-04-26 12:51:54','Z'),(529,'0000000024',0,'2017-04-26 12:52:55','Z'),(530,'0000000024',0,'2017-04-26 12:53:55','Z'),(531,'0000000024',0,'2017-04-26 12:54:56','Z'),(532,'0000000024',0,'2017-04-26 12:55:57','Z'),(533,'0000000024',0,'2017-04-26 12:57:05','Z'),(534,'0000000024',8,'2017-04-26 12:59:09','Z'),(535,'0000000024',0,'2017-04-26 13:00:10','Z'),(536,'0000000024',0,'2017-04-26 13:01:12','Z'),(537,'0000000024',1,'2017-04-26 13:02:12','Z'),(538,'0000000024',0,'2017-04-26 13:03:13','Z'),(539,'0000000024',0,'2017-04-26 13:04:14','Z'),(540,'0000000024',0,'2017-04-26 13:05:15','Z'),(541,'0000000024',0,'2017-04-26 13:06:16','Z'),(542,'0000000024',0,'2017-04-26 13:07:16','Z'),(543,'0000000024',0,'2017-04-26 13:08:10','P'),(544,'0000000024',0,'2017-04-26 13:08:15','P'),(545,'0000000024',0,'2017-04-26 13:09:53','Z'),(546,'0000000024',17,'2017-04-26 13:10:26','P'),(547,'0000000024',0,'2017-04-26 13:10:31','P'),(548,'0000000024',0,'2017-04-26 13:11:11','P'),(549,'0000000024',0,'2017-04-26 13:11:13','P'),(550,'0000000024',0,'2017-04-26 13:12:14','Z'),(551,'0000000024',0,'2017-04-26 13:13:14','Z'),(552,'0000000024',0,'2017-04-26 13:14:15','Z'),(553,'0000000024',0,'2017-04-26 13:15:15','Z'),(554,'0000000024',0,'2017-04-26 13:16:16','Z'),(555,'0000000024',0,'2017-04-26 13:17:17','Z'),(556,'0000000024',0,'2017-04-26 13:18:17','Z'),(557,'0000000024',0,'2017-04-26 13:19:18','Z'),(558,'0000000024',0,'2017-04-26 13:20:18','Z'),(559,'0000000024',0,'2017-04-26 13:21:20','Z'),(560,'0000000024',0,'2017-04-26 13:22:20','Z'),(561,'0000000024',0,'2017-04-26 13:23:21','Z'),(562,'0000000024',0,'2017-04-26 13:24:21','Z'),(563,'0000000024',0,'2017-04-26 13:25:22','Z'),(564,'0000000024',0,'2017-04-26 13:26:23','Z'),(565,'0000000024',0,'2017-04-26 13:28:15','Z'),(566,'0000000024',12,'2017-04-26 13:29:16','Z'),(567,'0000000024',0,'2017-04-26 13:30:17','Z'),(568,'0000000024',0,'2017-04-26 13:31:20','Z'),(569,'0000000024',0,'2017-04-26 13:32:31','Z'),(570,'0000000024',0,'2017-04-26 13:33:32','Z'),(571,'0000000024',0,'2017-04-26 13:34:33','Z'),(572,'0000000024',0,'2017-04-26 13:35:33','Z'),(573,'0000000024',0,'2017-04-26 13:36:34','Z'),(574,'0000000024',0,'2017-04-26 13:37:34','Z'),(575,'0000000024',0,'2017-04-26 13:38:35','Z'),(576,'0000000024',0,'2017-04-26 13:39:37','Z'),(577,'0000000024',1,'2017-04-26 13:40:37','Z'),(578,'0000000024',0,'2017-04-26 13:42:06','Z'),(579,'0000000024',0,'2017-04-26 13:44:04','Z'),(580,'0000000024',0,'2017-04-26 13:45:05','Z'),(581,'0000000024',0,'2017-04-26 13:46:05','Z'),(582,'0000000024',0,'2017-04-26 13:47:12','Z'),(583,'0000000024',5,'2017-04-26 13:48:39','Z'),(584,'0000000024',0,'2017-04-26 13:49:40','Z'),(585,'0000000024',0,'2017-04-26 13:50:42','Z'),(586,'0000000024',1,'2017-04-26 13:51:42','Z'),(587,'0000000024',0,'2017-04-26 13:52:43','Z'),(588,'0000000024',0,'2017-04-26 13:53:44','Z'),(589,'0000000024',0,'2017-04-26 13:54:44','Z'),(590,'0000000024',0,'2017-04-26 13:55:45','Z'),(591,'0000000024',0,'2017-04-26 13:56:45','Z'),(592,'0000000024',0,'2017-04-26 13:58:00','Z'),(593,'0000000024',14,'2017-04-26 13:59:01','Z'),(594,'0000000024',0,'2017-04-26 14:00:02','Z'),(595,'0000000024',0,'2017-04-26 14:01:02','Z'),(596,'0000000024',0,'2017-04-26 14:02:03','Z'),(597,'0000000024',0,'2017-04-26 14:03:04','Z'),(598,'0000000024',0,'2017-04-26 14:04:04','Z'),(599,'0000000024',0,'2017-04-26 14:06:29','Z'),(600,'0000000024',0,'2017-04-26 14:10:17','Z'),(601,'0000000024',0,'2017-04-26 15:55:53','Z'),(602,'0000000024',0,'2017-04-26 15:57:08','Z'),(603,'0000000024',4,'2017-04-26 15:58:09','Z'),(604,'0000000024',0,'2017-04-26 15:58:44','P'),(605,'0000000024',0,'2017-04-26 15:58:46','P'),(606,'0000000024',0,'2017-04-26 16:00:14','Z'),(607,'0000000024',0,'2017-04-26 16:00:43','P'),(608,'0000000024',0,'2017-04-26 16:00:55','P'),(609,'0000000024',0,'2017-04-26 16:00:57','P'),(610,'0000000024',0,'2017-04-26 16:00:59','P'),(611,'0000000024',0,'2017-04-26 16:02:00','Z'),(612,'0000000024',0,'2017-04-26 16:03:01','Z'),(613,'0000000024',0,'2017-04-26 16:03:58','P'),(614,'0000000024',0,'2017-04-26 16:05:00','Z'),(615,'0000000024',1,'2017-04-26 16:06:00','Z'),(616,'0000000024',0,'2017-04-26 16:07:01','Z'),(617,'0000000024',0,'2017-04-26 16:08:02','Z'),(618,'0000000024',0,'2017-04-26 16:09:03','Z'),(619,'0000000024',0,'2017-04-26 16:10:03','Z'),(620,'0000000024',0,'2017-04-26 16:11:04','Z'),(621,'0000000024',0,'2017-04-26 16:12:04','Z'),(622,'0000000024',0,'2017-04-26 16:13:05','Z'),(623,'0000000024',0,'2017-04-26 16:14:06','Z'),(624,'0000000024',0,'2017-04-26 16:15:06','Z'),(625,'0000000024',0,'2017-04-26 16:16:07','Z'),(626,'0000000024',0,'2017-04-26 16:17:07','Z'),(627,'0000000024',0,'2017-04-26 16:18:07','P'),(628,'0000000024',0,'2017-04-26 16:18:10','P'),(629,'0000000024',0,'2017-04-26 16:18:41','P'),(630,'0000000024',0,'2017-04-26 16:18:42','P'),(631,'0000000024',0,'2017-04-26 16:19:43','Z'),(632,'0000000024',0,'2017-04-26 16:20:44','Z'),(633,'0000000024',0,'2017-04-26 16:21:44','Z'),(634,'0000000024',0,'2017-04-26 16:22:45','Z'),(635,'0000000024',0,'2017-04-26 16:23:45','Z'),(636,'0000000024',0,'2017-04-26 16:24:46','Z'),(637,'0000000024',0,'2017-04-26 16:25:47','Z'),(638,'0000000024',0,'2017-04-26 16:26:47','Z'),(639,'0000000024',0,'2017-04-26 16:28:41','Z'),(640,'0000000024',12,'2017-04-26 16:29:44','Z'),(641,'0000000024',3,'2017-04-26 16:30:50','Z'),(642,'0000000024',4,'2017-04-26 16:31:51','Z'),(643,'0000000024',0,'2017-04-26 16:32:51','Z'),(644,'0000000024',0,'2017-04-26 16:33:52','Z'),(645,'0000000024',0,'2017-04-26 16:34:52','Z'),(646,'0000000024',0,'2017-04-26 16:35:53','Z'),(647,'0000000024',0,'2017-04-26 16:36:54','Z'),(648,'0000000024',0,'2017-04-26 16:39:32','Z'),(649,'0000000024',16,'2017-04-26 16:42:12','Z'),(650,'0000000024',0,'2017-04-26 16:43:17','Z'),(651,'0000000024',4,'2017-04-26 16:44:22','Z'),(652,'0000000024',5,'2017-04-26 16:45:23','Z'),(653,'0000000024',0,'2017-04-26 16:46:23','Z'),(654,'0000000024',0,'2017-04-26 16:47:24','Z'),(655,'0000000024',0,'2017-04-26 16:48:25','Z'),(656,'0000000024',0,'2017-04-26 16:49:26','Z'),(657,'0000000024',1,'2017-04-26 16:50:27','Z'),(658,'0000000024',0,'2017-04-26 16:52:38','Z'),(659,'0000000024',0,'2017-04-26 16:53:39','Z'),(660,'0000000024',0,'2017-04-26 16:54:39','Z'),(661,'0000000024',0,'2017-04-26 16:55:44','Z'),(662,'0000000024',4,'2017-04-26 16:56:45','Z'),(663,'0000000024',0,'2017-04-26 16:57:45','Z'),(664,'0000000024',0,'2017-04-26 16:58:47','Z'),(665,'0000000024',1,'2017-04-26 16:59:48','Z'),(666,'0000000024',0,'2017-04-26 17:00:48','Z'),(667,'0000000024',0,'2017-04-26 17:01:49','Z'),(668,'0000000024',0,'2017-04-26 17:02:50','Z'),(669,'0000000024',0,'2017-04-26 17:03:50','Z'),(670,'0000000024',0,'2017-04-26 17:04:51','Z'),(671,'0000000024',0,'2017-04-26 17:06:28','Z'),(672,'0000000024',0,'2017-04-26 17:07:29','Z'),(673,'0000000024',0,'2017-04-26 17:08:29','Z'),(674,'0000000024',0,'2017-04-26 17:09:30','Z'),(675,'0000000024',0,'2017-04-26 17:10:30','Z'),(676,'0000000024',0,'2017-04-26 17:11:31','Z'),(677,'0000000024',0,'2017-04-26 17:12:32','Z'),(678,'0000000024',0,'2017-04-26 17:13:35','Z'),(679,'0000000024',2,'2017-04-26 17:14:35','Z'),(680,'0000000024',0,'2017-04-26 17:15:36','Z'),(681,'0000000024',0,'2017-04-26 17:17:42','Z'),(682,'0000000024',0,'2017-04-26 17:18:42','Z'),(683,'0000000024',0,'2017-04-26 17:19:43','Z'),(684,'0000000024',0,'2017-04-26 17:20:44','Z'),(685,'0000000024',0,'2017-04-26 17:21:46','Z'),(686,'0000000024',1,'2017-04-26 17:22:49','Z'),(687,'0000000024',2,'2017-04-26 17:23:50','Z'),(688,'0000000024',0,'2017-04-26 17:24:50','Z'),(689,'0000000024',0,'2017-04-26 17:25:51','Z'),(690,'0000000024',0,'2017-04-26 17:26:52','Z'),(691,'0000000024',0,'2017-04-26 17:27:52','Z'),(692,'0000000024',0,'2017-04-26 17:28:53','Z'),(693,'0000000024',0,'2017-04-26 17:29:54','Z'),(694,'0000000024',0,'2017-04-26 17:30:54','Z'),(695,'0000000024',0,'2017-04-26 17:31:55','Z'),(696,'0000000024',0,'2017-04-26 17:32:56','Z'),(697,'0000000024',0,'2017-04-26 17:34:22','Z'),(698,'0000000024',0,'2017-04-26 17:35:22','Z'),(699,'0000000024',0,'2017-04-26 17:36:23','Z'),(700,'0000000024',0,'2017-04-26 17:37:23','Z'),(701,'0000000024',0,'2017-04-26 17:38:24','Z'),(702,'0000000024',0,'2017-04-26 17:39:25','Z'),(703,'0000000024',0,'2017-04-26 17:40:25','Z'),(704,'0000000024',0,'2017-04-26 17:41:26','Z'),(705,'0000000024',0,'2017-04-26 17:42:42','Z'),(706,'0000000024',16,'2017-04-26 17:43:43','Z'),(707,'0000000024',0,'2017-04-26 17:44:44','Z'),(708,'0000000024',0,'2017-04-26 17:45:44','Z'),(709,'0000000024',0,'2017-04-26 17:46:45','Z'),(710,'0000000024',0,'2017-04-26 17:47:45','Z'),(711,'0000000024',0,'2017-04-26 17:48:46','Z'),(712,'0000000024',0,'2017-04-26 17:49:48','Z'),(713,'0000000024',1,'2017-04-26 17:50:49','Z'),(714,'0000000024',0,'2017-04-26 17:51:49','Z'),(715,'0000000024',0,'2017-04-26 17:52:50','Z'),(716,'0000000024',0,'2017-04-26 17:53:53','Z'),(717,'0000000024',2,'2017-04-26 17:54:53','Z'),(718,'0000000024',0,'2017-04-26 17:55:54','Z'),(719,'0000000024',0,'2017-04-26 17:56:55','Z'),(720,'0000000024',0,'2017-04-26 17:57:55','Z'),(721,'0000000024',0,'2017-04-26 17:58:56','Z'),(722,'0000000024',0,'2017-04-26 17:59:56','Z'),(723,'0000000024',0,'2017-04-26 18:01:02','Z'),(724,'0000000024',5,'2017-04-26 18:02:03','Z'),(725,'0000000024',0,'2017-04-26 18:03:04','Z'),(726,'0000000024',0,'2017-04-26 18:04:05','Z'),(727,'0000000024',0,'2017-04-26 18:05:09','Z'),(728,'0000000024',4,'2017-04-26 18:06:10','Z'),(729,'0000000024',0,'2017-04-26 18:07:10','Z'),(730,'0000000024',0,'2017-04-26 18:08:11','Z'),(731,'0000000024',0,'2017-04-26 18:09:12','Z'),(732,'0000000024',0,'2017-04-26 18:10:13','Z'),(733,'0000000024',0,'2017-04-26 18:11:14','Z'),(734,'0000000024',0,'2017-04-26 18:12:39','Z'),(735,'0000000024',4,'2017-04-26 18:12:41','P'),(736,'0000000024',0,'2017-04-26 18:12:43','P'),(737,'0000000024',0,'2017-04-26 18:13:44','Z'),(738,'0000000024',0,'2017-04-26 18:14:44','Z'),(739,'0000000024',0,'2017-04-26 18:15:45','Z'),(740,'0000000024',0,'2017-04-26 18:16:45','Z'),(741,'0000000024',0,'2017-04-26 18:17:46','Z'),(742,'0000000024',0,'2017-04-26 18:18:48','Z'),(743,'0000000024',1,'2017-04-26 18:19:48','Z'),(744,'0000000024',0,'2017-04-26 18:20:49','Z'),(745,'0000000024',0,'2017-04-26 18:22:02','Z'),(746,'0000000024',13,'2017-04-26 18:23:39','Z'),(747,'0000000024',16,'2017-04-26 18:25:22','Z'),(748,'0000000024',0,'2017-04-26 18:26:35','Z'),(749,'0000000024',13,'2017-04-26 18:27:36','Z'),(750,'0000000024',0,'2017-04-26 18:28:38','Z'),(751,'0000000024',1,'2017-04-26 18:29:39','Z'),(752,'0000000024',0,'2017-04-26 18:30:39','Z'),(753,'0000000024',0,'2017-04-26 18:31:40','Z'),(754,'0000000024',0,'2017-04-26 18:32:40','Z'),(755,'0000000024',0,'2017-04-26 18:33:41','Z'),(756,'0000000024',0,'2017-04-26 18:34:42','Z'),(757,'0000000024',0,'2017-04-26 18:35:42','Z'),(758,'0000000024',0,'2017-04-26 18:36:43','Z'),(759,'0000000024',0,'2017-04-26 18:37:43','Z'),(760,'0000000024',0,'2017-04-26 18:38:44','Z'),(761,'0000000024',0,'2017-04-26 18:39:45','Z'),(762,'0000000024',0,'2017-04-26 18:40:46','Z'),(763,'0000000024',0,'2017-04-26 18:41:46','Z'),(764,'0000000024',0,'2017-04-26 18:43:05','Z'),(765,'0000000024',18,'2017-04-26 18:44:05','Z'),(766,'0000000024',0,'2017-04-26 18:45:06','Z'),(767,'0000000024',0,'2017-04-26 18:46:06','Z'),(768,'0000000024',0,'2017-04-26 18:47:07','Z'),(769,'0000000024',0,'2017-04-26 18:48:20','Z'),(770,'0000000024',12,'2017-04-26 18:50:40','Z'),(771,'0000000024',0,'2017-04-26 18:51:41','Z'),(772,'0000000024',0,'2017-04-26 18:52:42','Z'),(773,'0000000024',0,'2017-04-26 18:53:42','Z'),(774,'0000000024',0,'2017-04-26 18:54:45','Z'),(775,'0000000024',2,'2017-04-26 18:55:47','Z'),(776,'0000000024',0,'2017-04-26 18:56:47','Z'),(777,'0000000024',0,'2017-04-26 18:57:48','Z'),(778,'0000000024',0,'2017-04-26 18:58:49','Z'),(779,'0000000024',0,'2017-04-26 19:01:41','Z'),(780,'0000000024',0,'2017-04-26 19:03:00','Z'),(781,'0000000024',18,'2017-04-26 19:04:01','Z'),(782,'0000000024',0,'2017-04-26 19:05:02','Z'),(783,'0000000024',0,'2017-04-26 19:06:30','Z'),(784,'0000000024',0,'2017-04-26 19:07:32','Z'),(785,'0000000024',0,'2017-04-26 19:08:32','Z'),(786,'0000000024',0,'2017-04-26 19:09:33','Z'),(787,'0000000024',0,'2017-04-26 19:10:33','Z'),(788,'0000000024',0,'2017-04-26 19:11:35','Z'),(789,'0000000024',1,'2017-04-26 19:12:36','Z'),(790,'0000000024',0,'2017-04-26 19:13:55','Z'),(791,'0000000024',18,'2017-04-26 19:14:56','Z'),(792,'0000000024',0,'2017-04-26 19:15:56','Z'),(793,'0000000024',0,'2017-04-26 19:17:01','Z'),(794,'0000000024',4,'2017-04-26 19:18:02','Z'),(795,'0000000024',0,'2017-04-26 19:19:02','Z'),(796,'0000000024',0,'2017-04-26 19:20:03','Z'),(797,'0000000024',0,'2017-04-26 19:21:04','Z'),(798,'0000000024',0,'2017-04-26 19:22:04','Z'),(799,'0000000024',0,'2017-04-26 19:24:05','Z'),(800,'0000000024',0,'2017-04-26 19:25:05','Z'),(801,'0000000024',0,'2017-04-26 19:26:06','Z'),(802,'0000000024',0,'2017-04-26 19:27:06','Z'),(803,'0000000024',0,'2017-04-26 19:28:07','Z'),(804,'0000000024',0,'2017-04-26 19:29:08','Z'),(805,'0000000024',0,'2017-04-26 19:30:08','Z'),(806,'0000000024',0,'2017-04-26 19:31:26','Z'),(807,'0000000024',16,'2017-04-26 19:32:26','Z'),(808,'0000000024',0,'2017-04-26 19:33:27','Z'),(809,'0000000024',0,'2017-04-26 19:34:27','Z'),(810,'0000000024',0,'2017-04-26 19:36:36','Z'),(811,'0000000024',7,'2017-04-26 19:37:36','Z'),(812,'0000000024',0,'2017-04-26 19:38:37','Z'),(813,'0000000024',0,'2017-04-26 19:39:37','Z'),(814,'0000000024',0,'2017-04-26 19:40:38','Z'),(815,'0000000024',0,'2017-04-26 19:41:40','Z'),(816,'0000000024',2,'2017-04-26 19:42:41','Z'),(817,'0000000024',0,'2017-04-26 19:43:42','Z'),(818,'0000000024',0,'2017-04-26 19:44:42','Z'),(819,'0000000024',0,'2017-04-26 19:45:43','Z'),(820,'0000000024',0,'2017-04-26 19:46:43','Z'),(821,'0000000024',0,'2017-04-26 19:47:44','Z'),(822,'0000000024',0,'2017-04-26 19:48:45','Z'),(823,'0000000024',0,'2017-04-26 19:49:46','Z'),(824,'0000000024',0,'2017-04-26 19:50:47','Z'),(825,'0000000024',0,'2017-04-26 19:52:03','Z'),(826,'0000000024',16,'2017-04-26 19:53:04','Z'),(827,'0000000024',0,'2017-04-26 19:54:34','Z'),(828,'0000000024',10,'2017-04-26 19:55:35','Z'),(829,'0000000024',0,'2017-04-26 19:56:36','Z'),(830,'0000000024',0,'2017-04-26 19:57:36','Z'),(831,'0000000024',0,'2017-04-26 19:58:37','Z'),(832,'0000000024',0,'2017-04-26 19:59:37','Z'),(833,'0000000024',0,'2017-04-26 20:00:38','Z'),(834,'0000000024',0,'2017-04-26 20:01:39','Z'),(835,'0000000024',0,'2017-04-26 20:02:39','Z'),(836,'0000000024',0,'2017-04-26 20:03:40','Z'),(837,'0000000024',0,'2017-04-26 20:04:40','Z'),(838,'0000000024',0,'2017-04-26 20:05:41','Z'),(839,'0000000024',0,'2017-04-26 20:06:42','Z'),(840,'0000000024',0,'2017-04-26 20:07:42','Z'),(841,'0000000024',0,'2017-04-26 20:08:43','Z'),(842,'0000000024',0,'2017-04-26 20:09:43','Z'),(843,'0000000024',0,'2017-04-26 20:10:44','Z'),(844,'0000000024',0,'2017-04-26 20:11:45','Z'),(845,'0000000024',0,'2017-04-26 20:12:45','Z'),(846,'0000000024',0,'2017-04-26 20:13:46','Z'),(847,'0000000024',0,'2017-04-26 20:14:46','Z'),(848,'0000000024',0,'2017-04-26 20:15:47','Z'),(849,'0000000024',0,'2017-04-26 20:16:48','Z'),(850,'0000000024',0,'2017-04-26 20:17:48','Z'),(851,'0000000024',0,'2017-04-26 20:18:49','Z'),(852,'0000000024',0,'2017-04-26 20:54:58','Z'),(853,'0000000024',0,'2017-04-26 20:55:59','Z'),(854,'0000000024',0,'2017-04-26 20:56:59','Z'),(855,'0000000024',0,'2017-04-26 20:58:00','Z'),(856,'0000000024',0,'2017-04-26 20:59:01','Z'),(857,'0000000024',0,'2017-04-26 21:00:03','Z'),(858,'0000000024',6,'2017-04-26 21:01:08','Z'),(859,'0000000024',0,'2017-04-26 21:02:22','Z'),(860,'0000000024',13,'2017-04-26 21:03:26','Z'),(861,'0000000024',3,'2017-04-26 21:04:38','Z'),(862,'0000000024',11,'2017-04-26 21:05:39','Z'),(863,'0000000024',0,'2017-04-26 21:06:40','Z'),(864,'0000000024',0,'2017-04-26 21:07:40','Z'),(865,'0000000024',0,'2017-04-26 21:08:41','Z'),(866,'0000000024',0,'2017-04-26 21:09:42','Z'),(867,'0000000024',0,'2017-04-26 21:10:42','Z'),(868,'0000000024',0,'2017-04-26 21:11:43','Z'),(869,'0000000024',0,'2017-04-26 21:12:43','Z'),(870,'0000000024',0,'2017-04-26 21:13:44','Z'),(871,'0000000024',0,'2017-04-26 21:14:45','Z'),(872,'0000000024',0,'2017-04-26 21:15:48','Z'),(873,'0000000024',2,'2017-04-26 21:16:48','Z'),(874,'0000000024',0,'2017-04-26 21:17:49','Z'),(875,'0000000024',0,'2017-04-26 21:18:50','Z'),(876,'0000000024',0,'2017-04-26 21:19:51','Z'),(877,'0000000024',0,'2017-04-26 21:22:00','Z'),(878,'0000000024',0,'2017-04-26 21:23:02','Z'),(879,'0000000024',2,'2017-04-26 21:24:03','Z'),(880,'0000000024',0,'2017-04-26 21:25:03','Z'),(881,'0000000024',0,'2017-04-26 21:26:04','Z'),(882,'0000000024',0,'2017-04-26 21:27:06','Z'),(883,'0000000024',1,'2017-04-26 21:28:06','Z'),(884,'0000000024',0,'2017-04-26 21:29:07','Z'),(885,'0000000024',0,'2017-04-26 21:30:08','Z'),(886,'0000000024',0,'2017-04-26 21:31:08','Z'),(887,'0000000024',0,'2017-04-26 21:32:09','Z'),(888,'0000000024',0,'2017-04-26 21:33:09','Z'),(889,'0000000024',0,'2017-04-26 21:34:11','Z'),(890,'0000000024',1,'2017-04-26 21:35:36','Z'),(891,'0000000024',0,'2017-04-26 21:36:37','Z'),(892,'0000000024',0,'2017-04-26 21:39:07','Z'),(893,'0000000024',0,'2017-04-26 21:40:08','Z'),(894,'0000000024',0,'2017-04-26 21:41:08','Z'),(895,'0000000024',0,'2017-04-26 21:42:09','Z'),(896,'0000000024',0,'2017-04-26 21:43:14','Z'),(897,'0000000024',4,'2017-04-26 21:44:15','Z'),(898,'0000000024',0,'2017-04-26 21:45:15','Z'),(899,'0000000024',0,'2017-04-26 21:46:27','Z'),(900,'0000000024',10,'2017-04-26 21:47:27','Z'),(901,'0000000024',0,'2017-04-26 21:49:43','Z'),(902,'0000000024',15,'2017-04-26 21:50:44','Z'),(903,'0000000024',0,'2017-04-26 21:51:45','Z'),(904,'0000000024',0,'2017-04-26 21:52:45','Z'),(905,'0000000024',0,'2017-04-26 21:53:46','Z'),(906,'0000000024',0,'2017-04-26 21:54:20','P'),(907,'0000000024',0,'2017-04-26 21:54:28','P'),(908,'0000000024',5,'2017-04-26 21:55:28','Z'),(909,'0000000024',0,'2017-04-26 21:56:29','Z'),(910,'0000000024',0,'2017-04-26 21:57:30','Z'),(911,'0000000024',0,'2017-04-26 21:58:30','Z'),(912,'0000000024',0,'2017-04-26 21:59:31','Z'),(913,'0000000024',0,'2017-04-26 22:00:31','Z'),(914,'0000000024',0,'2017-04-26 22:01:37','Z'),(915,'0000000024',5,'2017-04-26 22:02:58','Z'),(916,'0000000024',0,'2017-04-26 22:04:00','Z'),(917,'0000000024',1,'2017-04-26 22:05:00','Z'),(918,'0000000024',0,'2017-04-26 22:06:50','Z'),(919,'0000000024',13,'2017-04-26 22:07:55','Z'),(920,'0000000024',0,'2017-04-26 22:08:57','Z'),(921,'0000000024',1,'2017-04-26 22:09:58','Z'),(922,'0000000024',0,'2017-04-26 22:10:58','Z'),(923,'0000000024',0,'2017-04-26 22:11:59','Z'),(924,'0000000024',0,'2017-04-26 22:12:59','Z'),(925,'0000000024',0,'2017-04-26 22:14:00','Z'),(926,'0000000024',0,'2017-04-26 22:15:01','Z'),(927,'0000000024',0,'2017-04-26 22:17:27','Z'),(928,'0000000024',5,'2017-04-26 22:18:28','Z'),(929,'0000000024',0,'2017-04-26 22:19:29','Z'),(930,'0000000024',0,'2017-04-26 22:20:29','Z'),(931,'0000000024',0,'2017-04-26 22:21:30','Z'),(932,'0000000024',0,'2017-04-26 22:22:30','Z'),(933,'0000000024',0,'2017-04-26 22:23:31','Z'),(934,'0000000024',0,'2017-04-26 22:24:32','Z'),(935,'0000000024',0,'2017-04-26 22:25:32','Z'),(936,'0000000024',0,'2017-04-26 22:26:33','Z'),(937,'0000000024',0,'2017-04-26 22:27:33','Z'),(938,'0000000024',0,'2017-04-26 22:28:34','Z'),(939,'0000000024',0,'2017-04-26 22:29:35','Z'),(940,'0000000024',0,'2017-04-26 22:30:36','Z'),(941,'0000000024',0,'2017-04-26 22:31:37','Z'),(942,'0000000024',0,'2017-04-26 22:32:38','Z'),(943,'0000000024',0,'2017-04-26 22:33:56','Z'),(944,'0000000024',17,'2017-04-26 22:34:56','Z'),(945,'0000000024',0,'2017-04-26 22:35:57','Z'),(946,'0000000024',0,'2017-04-26 22:37:55','Z'),(947,'0000000024',0,'2017-04-26 22:38:55','Z'),(948,'0000000024',0,'2017-04-26 22:39:56','Z'),(949,'0000000024',0,'2017-04-26 22:40:57','Z'),(950,'0000000024',0,'2017-04-26 22:41:57','Z'),(951,'0000000024',0,'2017-04-26 22:43:23','Z'),(952,'0000000024',0,'2017-04-26 22:44:24','Z'),(953,'0000000024',0,'2017-04-26 22:45:24','Z'),(954,'0000000024',0,'2017-04-26 22:46:25','Z'),(955,'0000000024',0,'2017-04-26 22:47:25','Z'),(956,'0000000024',0,'2017-04-26 22:48:26','Z'),(957,'0000000024',0,'2017-04-26 22:50:17','Z'),(958,'0000000024',0,'2017-04-26 22:51:18','Z'),(959,'0000000024',0,'2017-04-26 22:52:18','Z'),(960,'0000000024',0,'2017-04-26 22:53:19','Z'),(961,'0000000024',0,'2017-04-26 22:54:20','Z'),(962,'0000000024',0,'2017-04-26 22:55:20','Z'),(963,'0000000024',0,'2017-04-26 22:56:21','Z'),(964,'0000000024',0,'2017-04-26 22:57:21','Z'),(965,'0000000024',0,'2017-04-26 22:58:22','Z'),(966,'0000000024',0,'2017-04-26 22:59:23','Z'),(967,'0000000024',0,'2017-04-26 23:00:23','Z'),(968,'0000000024',0,'2017-04-26 23:01:24','Z'),(969,'0000000024',0,'2017-04-26 23:02:24','Z'),(970,'0000000024',0,'2017-04-26 23:03:25','Z'),(971,'0000000024',0,'2017-04-26 23:04:26','Z'),(972,'0000000024',0,'2017-04-26 23:05:26','Z'),(973,'0000000024',0,'2017-04-26 23:06:27','Z'),(974,'0000000024',0,'2017-04-26 23:07:27','Z'),(975,'0000000024',0,'2017-04-26 23:08:28','Z'),(976,'0000000024',0,'2017-04-26 23:09:29','Z'),(977,'0000000024',0,'2017-04-26 23:10:29','Z'),(978,'0000000024',0,'2017-04-26 23:11:30','Z'),(979,'0000000024',0,'2017-04-26 23:12:30','Z'),(980,'0000000024',0,'2017-04-26 23:13:31','Z'),(981,'0000000024',0,'2017-04-26 23:14:31','Z'),(982,'0000000024',0,'2017-04-26 23:15:32','Z'),(983,'0000000024',0,'2017-04-26 23:16:33','Z'),(984,'0000000024',0,'2017-04-26 23:17:33','Z'),(985,'0000000024',0,'2017-04-26 23:18:34','Z'),(986,'0000000024',0,'2017-04-26 23:19:34','Z'),(987,'0000000024',0,'2017-04-26 23:20:37','Z'),(988,'0000000024',2,'2017-04-26 23:21:38','Z'),(989,'0000000024',0,'2017-04-26 23:22:38','Z'),(990,'0000000024',0,'2017-04-26 23:23:39','Z'),(991,'0000000024',0,'2017-04-26 23:24:39','Z'),(992,'0000000024',0,'2017-04-26 23:25:58','Z'),(993,'0000000024',18,'2017-04-26 23:26:59','Z'),(994,'0000000024',0,'2017-04-26 23:27:59','Z'),(995,'0000000024',0,'2017-04-26 23:29:00','Z'),(996,'0000000024',0,'2017-04-26 23:30:03','Z'),(997,'0000000024',2,'2017-04-26 23:31:03','Z'),(998,'0000000024',0,'2017-04-26 23:32:04','Z'),(999,'0000000024',0,'2017-04-26 23:33:05','Z'),(1000,'0000000024',0,'2017-04-26 23:34:05','Z'),(1001,'0000000024',0,'2017-04-26 23:35:06','Z'),(1002,'0000000024',0,'2017-04-26 23:36:24','Z'),(1003,'0000000024',17,'2017-04-26 23:37:24','Z'),(1004,'0000000024',0,'2017-04-26 23:38:25','Z'),(1005,'0000000024',0,'2017-04-26 23:39:29','Z'),(1006,'0000000024',3,'2017-04-26 23:40:29','Z'),(1007,'0000000024',0,'2017-04-26 23:41:30','Z'),(1008,'0000000024',0,'2017-04-26 23:42:31','Z'),(1009,'0000000024',0,'2017-04-26 23:43:31','Z'),(1010,'0000000024',0,'2017-04-26 23:44:32','Z'),(1011,'0000000024',0,'2017-04-26 23:45:32','Z'),(1012,'0000000024',0,'2017-04-26 23:46:33','Z'),(1013,'0000000024',0,'2017-04-26 23:47:34','Z'),(1014,'0000000024',0,'2017-04-26 23:48:55','Z'),(1015,'0000000024',0,'2017-04-26 23:49:56','Z'),(1016,'0000000024',0,'2017-04-26 23:50:56','Z'),(1017,'0000000024',0,'2017-04-26 23:51:57','Z'),(1018,'0000000024',0,'2017-04-26 23:52:58','Z'),(1019,'0000000024',0,'2017-04-26 23:53:59','Z'),(1020,'0000000024',1,'2017-04-26 23:55:00','Z'),(1021,'0000000024',0,'2017-04-26 23:56:00','Z'),(1022,'0000000024',0,'2017-04-26 23:57:01','Z'),(1023,'0000000024',0,'2017-04-26 23:58:21','Z'),(1024,'0000000024',19,'2017-04-27 00:00:36','Z'),(1025,'0000000024',14,'2017-04-27 00:01:38','Z'),(1026,'0000000024',0,'2017-04-27 00:02:38','Z'),(1027,'0000000024',0,'2017-04-27 00:03:39','Z'),(1028,'0000000024',0,'2017-04-27 00:04:40','Z'),(1029,'0000000024',0,'2017-04-27 00:05:41','Z'),(1030,'0000000024',0,'2017-04-27 00:06:41','Z'),(1031,'0000000024',0,'2017-04-27 00:07:46','Z'),(1032,'0000000024',4,'2017-04-27 00:08:46','Z'),(1033,'0000000024',0,'2017-04-27 00:11:05','Z'),(1034,'0000000024',17,'2017-04-27 00:12:06','Z'),(1035,'0000000024',0,'2017-04-27 00:13:06','Z'),(1036,'0000000024',0,'2017-04-27 00:14:07','Z'),(1037,'0000000024',0,'2017-04-27 00:15:07','Z'),(1038,'0000000024',0,'2017-04-27 00:16:08','Z'),(1039,'0000000024',0,'2017-04-27 00:17:12','Z'),(1040,'0000000024',3,'2017-04-27 00:18:12','Z'),(1041,'0000000024',0,'2017-04-27 00:19:13','Z'),(1042,'0000000024',0,'2017-04-27 00:21:36','Z'),(1043,'0000000024',0,'2017-04-27 00:22:37','Z'),(1044,'0000000024',0,'2017-04-27 00:23:37','Z'),(1045,'0000000024',0,'2017-04-27 00:24:38','Z'),(1046,'0000000024',0,'2017-04-27 00:25:39','Z'),(1047,'0000000024',0,'2017-04-27 00:26:40','Z'),(1048,'0000000024',0,'2017-04-27 00:27:40','Z'),(1049,'0000000024',0,'2017-04-27 00:28:42','Z'),(1050,'0000000024',0,'2017-04-27 00:29:42','Z'),(1051,'0000000024',0,'2017-04-27 00:30:43','Z'),(1052,'0000000024',0,'2017-04-27 00:31:43','Z'),(1053,'0000000024',0,'2017-04-27 00:32:44','Z'),(1054,'0000000024',0,'2017-04-27 00:33:44','Z'),(1055,'0000000024',0,'2017-04-27 00:34:45','Z'),(1056,'0000000024',0,'2017-04-27 00:36:03','Z'),(1057,'0000000024',17,'2017-04-27 00:37:03','Z'),(1058,'0000000024',0,'2017-04-27 00:38:04','Z'),(1059,'0000000024',0,'2017-04-27 00:39:05','Z'),(1060,'0000000024',0,'2017-04-27 00:40:05','Z'),(1061,'0000000024',0,'2017-04-27 00:42:14','Z'),(1062,'0000000024',0,'2017-04-27 00:43:14','Z'),(1063,'0000000024',0,'2017-04-27 00:44:15','Z'),(1064,'0000000024',0,'2017-04-27 00:45:31','Z'),(1065,'0000000024',15,'2017-04-27 00:46:31','Z'),(1066,'0000000024',0,'2017-04-27 00:47:32','Z'),(1067,'0000000024',0,'2017-04-27 00:48:33','Z'),(1068,'0000000024',0,'2017-04-27 00:49:33','Z'),(1069,'0000000024',0,'2017-04-27 00:50:34','Z'),(1070,'0000000024',0,'2017-04-27 00:51:35','Z'),(1071,'0000000024',0,'2017-04-27 00:52:35','Z'),(1072,'0000000024',0,'2017-04-27 00:53:36','Z'),(1073,'0000000024',0,'2017-04-27 00:54:56','Z'),(1074,'0000000024',20,'2017-04-27 00:55:57','Z'),(1075,'0000000024',0,'2017-04-27 00:56:57','Z'),(1076,'0000000024',0,'2017-04-27 00:57:58','Z'),(1077,'0000000024',0,'2017-04-27 00:58:59','Z'),(1078,'0000000024',0,'2017-04-27 00:59:59','Z'),(1079,'0000000024',0,'2017-04-27 01:02:11','Z'),(1080,'0000000024',11,'2017-04-27 01:03:12','Z'),(1081,'0000000024',0,'2017-04-27 01:04:22','Z'),(1082,'0000000024',9,'2017-04-27 01:05:23','Z'),(1083,'0000000024',0,'2017-04-27 01:06:23','Z'),(1084,'0000000024',0,'2017-04-27 01:07:24','Z'),(1085,'0000000024',0,'2017-04-27 01:08:24','Z'),(1086,'0000000024',0,'2017-04-27 01:09:25','Z'),(1087,'0000000024',0,'2017-04-27 01:10:26','Z'),(1088,'0000000024',0,'2017-04-27 01:11:26','Z'),(1089,'0000000024',0,'2017-04-27 01:12:27','Z'),(1090,'0000000024',0,'2017-04-27 01:13:51','Z'),(1091,'0000000024',0,'2017-04-27 01:14:52','Z'),(1092,'0000000024',0,'2017-04-27 01:15:53','Z'),(1093,'0000000024',0,'2017-04-27 01:16:53','Z'),(1094,'0000000024',0,'2017-04-27 01:17:55','Z'),(1095,'0000000024',1,'2017-04-27 01:18:56','Z'),(1096,'0000000024',0,'2017-04-27 01:19:57','Z'),(1097,'0000000024',0,'2017-04-27 01:20:57','Z'),(1098,'0000000024',0,'2017-04-27 01:21:58','Z'),(1099,'0000000024',0,'2017-04-27 01:23:14','Z'),(1100,'0000000024',15,'2017-04-27 01:24:30','Z'),(1101,'0000000024',15,'2017-04-27 01:25:30','Z'),(1102,'0000000024',0,'2017-04-27 01:26:31','Z'),(1103,'0000000024',0,'2017-04-27 01:27:31','Z'),(1104,'0000000024',0,'2017-04-27 01:28:32','Z'),(1105,'0000000024',0,'2017-04-27 01:29:33','Z'),(1106,'0000000024',0,'2017-04-27 01:30:33','Z'),(1107,'0000000024',0,'2017-04-27 01:31:34','Z'),(1108,'0000000024',0,'2017-04-27 01:32:39','Z'),(1109,'0000000024',4,'2017-04-27 01:34:59','Z'),(1110,'0000000024',19,'2017-04-27 01:36:00','Z'),(1111,'0000000024',0,'2017-04-27 01:37:01','Z'),(1112,'0000000024',0,'2017-04-27 01:38:02','Z'),(1113,'0000000024',0,'2017-04-27 01:39:03','Z'),(1114,'0000000024',0,'2017-04-27 01:40:03','Z'),(1115,'0000000024',0,'2017-04-27 01:41:04','Z'),(1116,'0000000024',0,'2017-04-27 01:42:05','Z'),(1117,'0000000024',0,'2017-04-27 01:43:05','Z'),(1118,'0000000024',0,'2017-04-27 01:45:33','Z'),(1119,'0000000024',0,'2017-04-27 01:46:34','Z'),(1120,'0000000024',0,'2017-04-27 01:47:34','Z'),(1121,'0000000024',0,'2017-04-27 01:48:35','Z'),(1122,'0000000024',0,'2017-04-27 01:49:35','Z'),(1123,'0000000024',0,'2017-04-27 01:50:36','Z'),(1124,'0000000024',0,'2017-04-27 01:51:37','Z'),(1125,'0000000024',0,'2017-04-27 01:52:37','Z'),(1126,'0000000024',0,'2017-04-27 01:53:38','Z'),(1127,'0000000024',0,'2017-04-27 01:54:38','Z'),(1128,'0000000024',0,'2017-04-27 01:56:07','Z'),(1129,'0000000024',7,'2017-04-27 01:57:07','Z'),(1130,'0000000024',0,'2017-04-27 01:58:08','Z'),(1131,'0000000024',0,'2017-04-27 01:59:08','Z'),(1132,'0000000024',0,'2017-04-27 02:00:09','Z'),(1133,'0000000024',0,'2017-04-27 02:01:10','Z'),(1134,'0000000024',0,'2017-04-27 02:02:10','Z'),(1135,'0000000024',0,'2017-04-27 02:03:12','Z'),(1136,'0000000024',1,'2017-04-27 02:04:13','Z'),(1137,'0000000024',0,'2017-04-27 02:05:14','Z'),(1138,'0000000024',0,'2017-04-27 02:06:47','Z'),(1139,'0000000024',0,'2017-04-27 02:07:48','Z'),(1140,'0000000024',0,'2017-04-27 02:08:49','Z'),(1141,'0000000024',0,'2017-04-27 02:09:49','Z'),(1142,'0000000024',0,'2017-04-27 02:10:50','Z'),(1143,'0000000024',0,'2017-04-27 02:11:51','Z'),(1144,'0000000024',0,'2017-04-27 02:12:52','Z'),(1145,'0000000024',0,'2017-04-27 02:13:53','Z'),(1146,'0000000024',0,'2017-04-27 02:14:53','Z'),(1147,'0000000024',0,'2017-04-27 02:15:54','Z'),(1148,'0000000024',0,'2017-04-27 02:17:38','Z'),(1149,'0000000024',3,'2017-04-27 02:18:39','Z'),(1150,'0000000024',0,'2017-04-27 02:19:48','Z'),(1151,'0000000024',8,'2017-04-27 02:20:48','Z'),(1152,'0000000024',0,'2017-04-27 02:21:49','Z'),(1153,'0000000024',0,'2017-04-27 02:22:49','Z'),(1154,'0000000024',0,'2017-04-27 02:23:50','Z'),(1155,'0000000024',0,'2017-04-27 02:24:51','Z'),(1156,'0000000024',0,'2017-04-27 02:25:51','Z'),(1157,'0000000024',0,'2017-04-27 02:26:52','Z'),(1158,'0000000024',0,'2017-04-27 02:29:35','Z'),(1159,'0000000024',2,'2017-04-27 02:30:36','Z'),(1160,'0000000024',0,'2017-04-27 02:31:37','Z'),(1161,'0000000024',0,'2017-04-27 02:32:37','Z'),(1162,'0000000024',0,'2017-04-27 02:33:38','Z'),(1163,'0000000024',0,'2017-04-27 02:34:39','Z'),(1164,'0000000024',0,'2017-04-27 02:35:39','Z'),(1165,'0000000024',0,'2017-04-27 02:36:40','Z'),(1166,'0000000024',0,'2017-04-27 02:37:41','Z'),(1167,'0000000024',0,'2017-04-27 02:39:48','Z'),(1168,'0000000024',0,'2017-04-27 02:40:52','Z'),(1169,'0000000024',3,'2017-04-27 02:41:53','Z'),(1170,'0000000024',0,'2017-04-27 02:42:54','Z'),(1171,'0000000024',0,'2017-04-27 02:43:54','Z'),(1172,'0000000024',0,'2017-04-27 02:44:55','Z'),(1173,'0000000024',0,'2017-04-27 02:45:55','Z'),(1174,'0000000024',0,'2017-04-27 02:46:56','Z'),(1175,'0000000024',0,'2017-04-27 02:47:56','Z'),(1176,'0000000024',0,'2017-04-27 02:49:03','Z'),(1177,'0000000024',5,'2017-04-27 02:50:03','Z'),(1178,'0000000024',0,'2017-04-27 02:51:04','Z'),(1179,'0000000024',0,'2017-04-27 02:52:05','Z'),(1180,'0000000024',0,'2017-04-27 02:53:05','Z'),(1181,'0000000024',0,'2017-04-27 02:54:47','Z'),(1182,'0000000024',7,'2017-04-27 02:55:54','Z'),(1183,'0000000024',0,'2017-04-27 02:56:55','Z'),(1184,'0000000024',0,'2017-04-27 02:57:55','Z'),(1185,'0000000024',0,'2017-04-27 02:59:10','Z'),(1186,'0000000024',14,'2017-04-27 03:00:11','Z'),(1187,'0000000024',0,'2017-04-27 03:01:11','Z'),(1188,'0000000024',0,'2017-04-27 03:02:12','Z'),(1189,'0000000024',0,'2017-04-27 03:03:14','Z'),(1190,'0000000024',1,'2017-04-27 03:05:33','Z'),(1191,'0000000024',18,'2017-04-27 03:06:34','Z'),(1192,'0000000024',0,'2017-04-27 03:07:35','Z'),(1193,'0000000024',0,'2017-04-27 03:08:35','Z'),(1194,'0000000024',0,'2017-04-27 03:09:36','Z'),(1195,'0000000024',0,'2017-04-27 03:10:36','Z'),(1196,'0000000024',0,'2017-04-27 03:11:37','Z'),(1197,'0000000024',0,'2017-04-27 03:12:37','Z'),(1198,'0000000024',0,'2017-04-27 03:13:38','Z'),(1199,'0000000024',0,'2017-04-27 03:14:39','Z'),(1200,'0000000024',0,'2017-04-27 03:16:17','Z'),(1201,'0000000024',17,'2017-04-27 03:17:17','Z'),(1202,'0000000024',0,'2017-04-27 03:18:18','Z'),(1203,'0000000024',0,'2017-04-27 03:19:18','Z'),(1204,'0000000024',0,'2017-04-27 03:20:19','Z'),(1205,'0000000024',0,'2017-04-27 03:21:20','Z'),(1206,'0000000024',0,'2017-04-27 03:22:20','Z'),(1207,'0000000024',0,'2017-04-27 03:23:21','Z'),(1208,'0000000024',0,'2017-04-27 03:24:24','Z'),(1209,'0000000024',2,'2017-04-27 03:26:43','Z'),(1210,'0000000024',17,'2017-04-27 03:27:43','Z'),(1211,'0000000024',0,'2017-04-27 03:28:44','Z'),(1212,'0000000024',0,'2017-04-27 03:29:44','Z'),(1213,'0000000024',0,'2017-04-27 03:30:45','Z'),(1214,'0000000024',0,'2017-04-27 03:31:45','Z'),(1215,'0000000024',0,'2017-04-27 03:32:46','Z'),(1216,'0000000024',0,'2017-04-27 03:33:47','Z'),(1217,'0000000024',0,'2017-04-27 03:34:47','Z'),(1218,'0000000024',0,'2017-04-27 03:35:48','Z'),(1219,'0000000024',0,'2017-04-27 03:37:14','Z'),(1220,'0000000024',0,'2017-04-27 03:38:14','Z'),(1221,'0000000024',0,'2017-04-27 03:39:15','Z'),(1222,'0000000024',0,'2017-04-27 03:40:18','Z'),(1223,'0000000024',2,'2017-04-27 03:41:18','Z'),(1224,'0000000024',0,'2017-04-27 03:42:19','Z'),(1225,'0000000024',0,'2017-04-27 03:43:19','Z'),(1226,'0000000024',0,'2017-04-27 03:44:20','Z'),(1227,'0000000024',0,'2017-04-27 03:45:21','Z'),(1228,'0000000024',0,'2017-04-27 03:46:21','Z'),(1229,'0000000024',0,'2017-04-27 03:47:57','Z'),(1230,'0000000024',0,'2017-04-27 03:48:57','Z'),(1231,'0000000024',0,'2017-04-27 03:49:58','Z'),(1232,'0000000024',0,'2017-04-27 03:50:59','Z'),(1233,'0000000024',0,'2017-04-27 03:51:59','Z'),(1234,'0000000024',0,'2017-04-27 03:53:00','Z'),(1235,'0000000024',0,'2017-04-27 03:54:00','Z'),(1236,'0000000024',0,'2017-04-27 03:55:01','Z'),(1237,'0000000024',0,'2017-04-27 03:56:02','Z'),(1238,'0000000024',0,'2017-04-27 03:57:02','Z'),(1239,'0000000024',0,'2017-04-27 03:58:26','Z'),(1240,'0000000024',2,'2017-04-27 03:59:28','Z'),(1241,'0000000024',1,'2017-04-27 04:00:28','Z'),(1242,'0000000024',0,'2017-04-27 04:01:29','Z'),(1243,'0000000024',0,'2017-04-27 04:02:30','Z'),(1244,'0000000024',0,'2017-04-27 04:03:30','Z'),(1245,'0000000024',0,'2017-04-27 04:04:31','Z'),(1246,'0000000024',0,'2017-04-27 04:05:31','Z'),(1247,'0000000024',0,'2017-04-27 04:06:32','Z'),(1248,'0000000024',0,'2017-04-27 04:07:32','Z'),(1249,'0000000024',0,'2017-04-27 04:08:56','Z'),(1250,'0000000024',2,'2017-04-27 04:09:56','Z'),(1251,'0000000024',0,'2017-04-27 04:10:57','Z'),(1252,'0000000024',0,'2017-04-27 04:11:57','Z'),(1253,'0000000024',0,'2017-04-27 04:12:58','Z'),(1254,'0000000024',0,'2017-04-27 04:13:59','Z'),(1255,'0000000024',0,'2017-04-27 04:14:59','Z'),(1256,'0000000024',0,'2017-04-27 04:16:00','Z'),(1257,'0000000024',0,'2017-04-27 04:17:00','Z'),(1258,'0000000024',0,'2017-04-27 04:18:01','Z'),(1259,'0000000024',0,'2017-04-27 04:19:31','Z'),(1260,'0000000024',0,'2017-04-27 04:20:32','Z'),(1261,'0000000024',0,'2017-04-27 04:21:32','Z'),(1262,'0000000024',0,'2017-04-27 04:22:33','Z'),(1263,'0000000024',0,'2017-04-27 04:23:34','Z'),(1264,'0000000024',0,'2017-04-27 04:24:36','Z'),(1265,'0000000024',2,'2017-04-27 04:25:37','Z'),(1266,'0000000024',0,'2017-04-27 04:26:37','Z'),(1267,'0000000024',0,'2017-04-27 04:27:40','Z'),(1268,'0000000024',2,'2017-04-27 04:30:35','Z'),(1269,'0000000024',13,'2017-04-27 04:31:36','Z'),(1270,'0000000024',0,'2017-04-27 04:32:36','Z'),(1271,'0000000024',0,'2017-04-27 04:33:37','Z'),(1272,'0000000024',0,'2017-04-27 04:34:37','Z'),(1273,'0000000024',0,'2017-04-27 04:35:38','Z'),(1274,'0000000024',0,'2017-04-27 04:36:38','Z'),(1275,'0000000024',0,'2017-04-27 04:37:40','Z'),(1276,'0000000024',0,'2017-04-27 04:38:40','Z'),(1277,'0000000024',0,'2017-04-27 04:40:34','Z'),(1278,'0000000024',13,'2017-04-27 04:41:35','Z'),(1279,'0000000024',0,'2017-04-27 04:42:35','Z'),(1280,'0000000024',0,'2017-04-27 04:43:36','Z'),(1281,'0000000024',0,'2017-04-27 04:44:37','Z'),(1282,'0000000024',0,'2017-04-27 04:45:37','Z'),(1283,'0000000024',0,'2017-04-27 04:46:38','Z'),(1284,'0000000024',0,'2017-04-27 04:47:41','Z'),(1285,'0000000024',2,'2017-04-27 04:48:41','Z'),(1286,'0000000024',0,'2017-04-27 04:49:42','Z'),(1287,'0000000024',0,'2017-04-27 04:51:09','Z'),(1288,'0000000024',0,'2017-04-27 04:52:09','Z'),(1289,'0000000024',0,'2017-04-27 04:53:10','Z'),(1290,'0000000024',0,'2017-04-27 04:54:10','Z'),(1291,'0000000024',0,'2017-04-27 04:55:11','Z'),(1292,'0000000024',0,'2017-04-27 04:56:12','Z'),(1293,'0000000024',0,'2017-04-27 04:57:13','Z'),(1294,'0000000024',0,'2017-04-27 04:58:13','Z'),(1295,'0000000024',0,'2017-04-27 04:59:14','Z'),(1296,'0000000024',0,'2017-04-27 05:00:15','Z'),(1297,'0000000024',0,'2017-04-27 05:02:10','Z'),(1298,'0000000024',14,'2017-04-27 05:03:11','Z'),(1299,'0000000024',0,'2017-04-27 05:04:12','Z'),(1300,'0000000024',0,'2017-04-27 05:05:12','Z'),(1301,'0000000024',0,'2017-04-27 05:06:13','Z'),(1302,'0000000024',0,'2017-04-27 05:07:14','Z'),(1303,'0000000024',0,'2017-04-27 05:08:14','Z'),(1304,'0000000024',0,'2017-04-27 05:09:15','Z'),(1305,'0000000024',0,'2017-04-27 05:10:15','Z'),(1306,'0000000024',0,'2017-04-27 05:11:16','Z'),(1307,'0000000024',0,'2017-04-27 05:12:36','Z'),(1308,'0000000024',0,'2017-04-27 05:13:38','Z'),(1309,'0000000024',0,'2017-04-27 05:14:38','Z'),(1310,'0000000024',0,'2017-04-27 05:15:39','Z'),(1311,'0000000024',0,'2017-04-27 05:16:39','Z'),(1312,'0000000024',0,'2017-04-27 05:17:40','Z'),(1313,'0000000024',0,'2017-04-27 05:18:41','Z'),(1314,'0000000024',0,'2017-04-27 05:19:41','Z'),(1315,'0000000024',0,'2017-04-27 05:20:42','Z'),(1316,'0000000024',0,'2017-04-27 05:21:42','Z'),(1317,'0000000024',0,'2017-04-27 05:23:09','Z'),(1318,'0000000024',0,'2017-04-27 05:24:09','Z'),(1319,'0000000024',0,'2017-04-27 05:25:10','Z'),(1320,'0000000024',0,'2017-04-27 05:26:11','Z'),(1321,'0000000024',0,'2017-04-27 05:27:11','Z'),(1322,'0000000024',0,'2017-04-27 05:28:14','Z'),(1323,'0000000024',2,'2017-04-27 05:29:14','Z'),(1324,'0000000024',0,'2017-04-27 05:30:16','Z'),(1325,'0000000024',1,'2017-04-27 05:31:17','Z'),(1326,'0000000024',0,'2017-04-27 05:34:12','Z'),(1327,'0000000024',14,'2017-04-27 05:35:13','Z'),(1328,'0000000024',0,'2017-04-27 05:36:13','Z'),(1329,'0000000024',0,'2017-04-27 05:37:14','Z'),(1330,'0000000024',0,'2017-04-27 05:38:15','Z'),(1331,'0000000024',0,'2017-04-27 05:39:15','Z'),(1332,'0000000024',0,'2017-04-27 05:40:16','Z'),(1333,'0000000024',0,'2017-04-27 05:41:16','Z'),(1334,'0000000024',0,'2017-04-27 05:42:17','Z'),(1335,'0000000024',0,'2017-04-27 05:44:19','Z'),(1336,'0000000024',1,'2017-04-27 05:45:20','Z'),(1337,'0000000024',0,'2017-04-27 05:46:20','Z'),(1338,'0000000024',0,'2017-04-27 05:47:21','Z'),(1339,'0000000024',0,'2017-04-27 05:48:21','Z'),(1340,'0000000024',0,'2017-04-27 05:49:22','Z'),(1341,'0000000024',0,'2017-04-27 05:50:22','Z'),(1342,'0000000024',0,'2017-04-27 05:51:23','Z'),(1343,'0000000024',0,'2017-04-27 05:52:24','Z'),(1344,'0000000024',0,'2017-04-27 05:53:24','Z'),(1345,'0000000024',0,'2017-04-27 05:55:37','Z'),(1346,'0000000024',0,'2017-04-27 05:56:37','Z'),(1347,'0000000024',0,'2017-04-27 05:57:38','Z'),(1348,'0000000024',0,'2017-04-27 05:58:39','Z'),(1349,'0000000024',0,'2017-04-27 05:59:39','Z'),(1350,'0000000024',0,'2017-04-27 06:00:40','Z'),(1351,'0000000024',0,'2017-04-27 06:01:40','Z'),(1352,'0000000024',0,'2017-04-27 06:02:42','Z'),(1353,'0000000024',0,'2017-04-27 06:03:42','Z'),(1354,'0000000024',0,'2017-04-27 06:04:43','Z'),(1355,'0000000024',0,'2017-04-27 06:06:21','Z'),(1356,'0000000024',17,'2017-04-27 06:07:22','Z'),(1357,'0000000024',0,'2017-04-27 06:08:22','Z'),(1358,'0000000024',0,'2017-04-27 06:09:23','Z'),(1359,'0000000024',0,'2017-04-27 06:10:24','Z'),(1360,'0000000024',0,'2017-04-27 06:11:24','Z'),(1361,'0000000024',0,'2017-04-27 06:12:25','Z'),(1362,'0000000024',0,'2017-04-27 06:13:25','Z'),(1363,'0000000024',0,'2017-04-27 06:14:26','Z'),(1364,'0000000024',0,'2017-04-27 06:15:27','Z'),(1365,'0000000024',0,'2017-04-27 06:17:16','Z'),(1366,'0000000024',0,'2017-04-27 06:18:16','Z'),(1367,'0000000024',0,'2017-04-27 06:19:17','Z'),(1368,'0000000024',0,'2017-04-27 06:20:17','Z'),(1369,'0000000024',0,'2017-04-27 06:21:18','Z'),(1370,'0000000024',0,'2017-04-27 06:22:27','Z'),(1371,'0000000024',8,'2017-04-27 06:23:28','Z'),(1372,'0000000024',0,'2017-04-27 06:24:28','Z'),(1373,'0000000024',0,'2017-04-27 06:25:29','Z'),(1374,'0000000024',0,'2017-04-27 06:28:02','Z'),(1375,'0000000024',0,'2017-04-27 06:29:03','Z'),(1376,'0000000024',0,'2017-04-27 06:30:03','Z'),(1377,'0000000024',0,'2017-04-27 06:31:04','Z'),(1378,'0000000024',0,'2017-04-27 06:32:05','Z'),(1379,'0000000024',0,'2017-04-27 06:33:05','Z'),(1380,'0000000024',0,'2017-04-27 06:34:06','Z'),(1381,'0000000024',0,'2017-04-27 06:35:06','Z'),(1382,'0000000024',0,'2017-04-27 06:36:07','Z'),(1383,'0000000024',0,'2017-04-27 06:37:08','Z'),(1384,'0000000024',0,'2017-04-27 06:38:32','Z'),(1385,'0000000024',3,'2017-04-27 06:39:32','Z'),(1386,'0000000024',0,'2017-04-27 06:40:33','Z'),(1387,'0000000024',0,'2017-04-27 06:41:33','Z'),(1388,'0000000024',0,'2017-04-27 06:42:34','Z'),(1389,'0000000024',0,'2017-04-27 06:43:35','Z'),(1390,'0000000024',0,'2017-04-27 06:44:35','Z'),(1391,'0000000024',0,'2017-04-27 06:45:36','Z'),(1392,'0000000024',0,'2017-04-27 06:46:36','Z'),(1393,'0000000024',0,'2017-04-27 06:47:37','Z'),(1394,'0000000024',0,'2017-04-27 06:49:06','Z'),(1395,'0000000024',8,'2017-04-27 06:50:07','Z'),(1396,'0000000024',0,'2017-04-27 06:51:07','Z'),(1397,'0000000024',0,'2017-04-27 06:52:08','Z'),(1398,'0000000024',0,'2017-04-27 06:53:08','Z'),(1399,'0000000024',0,'2017-04-27 06:54:09','Z'),(1400,'0000000024',0,'2017-04-27 06:55:10','Z'),(1401,'0000000024',0,'2017-04-27 06:56:10','Z'),(1402,'0000000024',0,'2017-04-27 06:57:11','Z'),(1403,'0000000024',0,'2017-04-27 06:58:12','Z'),(1404,'0000000024',0,'2017-04-27 07:00:15','Z'),(1405,'0000000024',2,'2017-04-27 07:01:16','Z'),(1406,'0000000024',0,'2017-04-27 07:02:17','Z'),(1407,'0000000024',0,'2017-04-27 07:03:17','Z'),(1408,'0000000024',0,'2017-04-27 07:04:18','Z'),(1409,'0000000024',0,'2017-04-27 07:05:18','Z'),(1410,'0000000024',0,'2017-04-27 07:06:19','Z'),(1411,'0000000024',0,'2017-04-27 07:07:19','Z'),(1412,'0000000024',0,'2017-04-27 07:08:20','Z'),(1413,'0000000024',0,'2017-04-27 07:10:27','Z'),(1414,'0000000024',5,'2017-04-27 07:11:27','Z'),(1415,'0000000024',0,'2017-04-27 07:12:28','Z'),(1416,'0000000024',0,'2017-04-27 07:13:28','Z'),(1417,'0000000024',0,'2017-04-27 07:14:29','Z'),(1418,'0000000024',0,'2017-04-27 07:15:30','Z'),(1419,'0000000024',0,'2017-04-27 07:16:30','Z'),(1420,'0000000024',0,'2017-04-27 07:17:31','Z'),(1421,'0000000024',0,'2017-04-27 07:18:31','Z'),(1422,'0000000024',0,'2017-04-27 07:19:32','Z'),(1423,'0000000024',0,'2017-04-27 07:20:55','Z'),(1424,'0000000024',0,'2017-04-27 07:21:56','Z'),(1425,'0000000024',0,'2017-04-27 07:22:56','Z'),(1426,'0000000024',0,'2017-04-27 07:23:57','Z'),(1427,'0000000024',0,'2017-04-27 07:24:58','Z'),(1428,'0000000024',0,'2017-04-27 07:25:58','Z'),(1429,'0000000024',0,'2017-04-27 07:26:59','Z'),(1430,'0000000024',0,'2017-04-27 07:27:59','Z'),(1431,'0000000024',0,'2017-04-27 07:29:00','Z'),(1432,'0000000024',0,'2017-04-27 07:30:00','Z'),(1433,'0000000024',0,'2017-04-27 07:31:34','Z'),(1434,'0000000024',0,'2017-04-27 07:32:35','Z'),(1435,'0000000024',0,'2017-04-27 07:33:35','Z'),(1436,'0000000024',0,'2017-04-27 07:34:36','Z'),(1437,'0000000024',0,'2017-04-27 07:35:36','Z'),(1438,'0000000024',0,'2017-04-27 07:36:37','Z'),(1439,'0000000024',0,'2017-04-27 07:37:38','Z'),(1440,'0000000024',0,'2017-04-27 07:38:38','Z'),(1441,'0000000024',0,'2017-04-27 07:39:39','Z'),(1442,'0000000024',0,'2017-04-27 07:40:39','Z'),(1443,'0000000024',0,'2017-04-27 07:42:10','Z'),(1444,'0000000024',10,'2017-04-27 07:43:11','Z'),(1445,'0000000024',0,'2017-04-27 07:44:11','Z'),(1446,'0000000024',0,'2017-04-27 07:45:12','Z'),(1447,'0000000024',0,'2017-04-27 07:46:12','Z'),(1448,'0000000024',0,'2017-04-27 07:47:13','Z'),(1449,'0000000024',0,'2017-04-27 07:48:14','Z'),(1450,'0000000024',0,'2017-04-27 07:49:14','Z'),(1451,'0000000024',0,'2017-04-27 07:50:15','Z'),(1452,'0000000024',0,'2017-04-27 07:51:15','Z'),(1453,'0000000024',0,'2017-04-27 07:52:34','Z'),(1454,'0000000024',18,'2017-04-27 07:53:34','Z'),(1455,'0000000024',0,'2017-04-27 07:54:36','Z'),(1456,'0000000024',0,'2017-04-27 07:55:36','Z'),(1457,'0000000024',0,'2017-04-27 07:56:37','Z'),(1458,'0000000024',0,'2017-04-27 07:57:37','Z'),(1459,'0000000024',0,'2017-04-27 07:58:38','Z'),(1460,'0000000024',0,'2017-04-27 07:59:39','Z'),(1461,'0000000024',0,'2017-04-27 08:00:39','Z'),(1462,'0000000024',0,'2017-04-27 08:01:40','Z'),(1463,'0000000024',0,'2017-04-27 08:03:16','Z'),(1464,'0000000024',0,'2017-04-27 08:04:16','Z'),(1465,'0000000024',0,'2017-04-27 08:05:17','Z'),(1466,'0000000024',0,'2017-04-27 08:06:17','Z'),(1467,'0000000024',0,'2017-04-27 08:07:18','Z'),(1468,'0000000024',0,'2017-04-27 08:08:19','Z'),(1469,'0000000024',0,'2017-04-27 08:09:19','Z'),(1470,'0000000024',0,'2017-04-27 08:10:20','Z'),(1471,'0000000024',0,'2017-04-27 08:11:20','Z'),(1472,'0000000024',0,'2017-04-27 08:12:21','Z'),(1473,'0000000024',0,'2017-04-27 08:13:50','Z'),(1474,'0000000024',8,'2017-04-27 08:14:50','Z'),(1475,'0000000024',0,'2017-04-27 08:15:51','Z'),(1476,'0000000024',0,'2017-04-27 08:16:51','Z'),(1477,'0000000024',0,'2017-04-27 08:17:52','Z'),(1478,'0000000024',0,'2017-04-27 08:18:53','Z'),(1479,'0000000024',0,'2017-04-27 08:19:53','Z'),(1480,'0000000024',0,'2017-04-27 08:20:54','Z'),(1481,'0000000024',0,'2017-04-27 08:21:54','Z'),(1482,'0000000024',0,'2017-04-27 08:22:55','Z'),(1483,'0000000024',0,'2017-04-27 08:24:23','Z'),(1484,'0000000024',7,'2017-04-27 08:25:23','Z'),(1485,'0000000024',0,'2017-04-27 08:26:24','Z'),(1486,'0000000024',0,'2017-04-27 08:27:24','Z'),(1487,'0000000024',0,'2017-04-27 08:28:25','Z'),(1488,'0000000024',0,'2017-04-27 08:29:25','Z'),(1489,'0000000024',0,'2017-04-27 08:30:26','Z'),(1490,'0000000024',0,'2017-04-27 08:31:27','Z'),(1491,'0000000024',0,'2017-04-27 08:32:27','Z'),(1492,'0000000024',0,'2017-04-27 08:33:28','Z'),(1493,'0000000024',0,'2017-04-27 08:34:49','Z'),(1494,'0000000024',0,'2017-04-27 08:35:49','Z'),(1495,'0000000024',0,'2017-04-27 08:36:50','Z'),(1496,'0000000024',0,'2017-04-27 08:37:51','Z'),(1497,'0000000024',0,'2017-04-27 08:38:51','Z'),(1498,'0000000024',0,'2017-04-27 08:39:52','Z'),(1499,'0000000024',0,'2017-04-27 08:40:52','Z'),(1500,'0000000024',0,'2017-04-27 08:41:53','Z'),(1501,'0000000024',0,'2017-04-27 08:42:53','Z'),(1502,'0000000024',0,'2017-04-27 08:43:54','Z'),(1503,'0000000024',0,'2017-04-27 08:45:28','Z'),(1504,'0000000024',13,'2017-04-27 08:46:28','Z'),(1505,'0000000024',0,'2017-04-27 08:47:29','Z'),(1506,'0000000024',0,'2017-04-27 08:48:29','Z'),(1507,'0000000024',0,'2017-04-27 08:49:30','Z'),(1508,'0000000024',0,'2017-04-27 08:50:31','Z'),(1509,'0000000024',0,'2017-04-27 08:51:31','Z'),(1510,'0000000024',0,'2017-04-27 08:52:32','Z'),(1511,'0000000024',0,'2017-04-27 08:53:32','Z'),(1512,'0000000024',0,'2017-04-27 08:54:33','Z'),(1513,'0000000024',0,'2017-04-27 08:56:39','Z'),(1514,'0000000024',4,'2017-04-27 08:57:39','Z'),(1515,'0000000024',0,'2017-04-27 08:58:40','Z'),(1516,'0000000024',0,'2017-04-27 08:59:41','Z'),(1517,'0000000024',0,'2017-04-27 09:00:41','Z'),(1518,'0000000024',0,'2017-04-27 09:01:42','Z'),(1519,'0000000024',0,'2017-04-27 09:02:42','Z'),(1520,'0000000024',0,'2017-04-27 09:03:43','Z'),(1521,'0000000024',0,'2017-04-27 09:04:45','Z'),(1522,'0000000024',1,'2017-04-27 09:05:45','Z'),(1523,'0000000024',0,'2017-04-27 09:07:09','Z'),(1524,'0000000024',3,'2017-04-27 09:08:10','Z'),(1525,'0000000024',0,'2017-04-27 09:09:10','Z'),(1526,'0000000024',0,'2017-04-27 09:10:11','Z'),(1527,'0000000024',0,'2017-04-27 09:11:12','Z'),(1528,'0000000024',0,'2017-04-27 09:12:12','Z'),(1529,'0000000024',0,'2017-04-27 09:13:13','Z'),(1530,'0000000024',0,'2017-04-27 09:14:13','Z'),(1531,'0000000024',0,'2017-04-27 09:15:14','Z'),(1532,'0000000024',0,'2017-04-27 09:16:14','Z'),(1533,'0000000024',0,'2017-04-27 09:17:45','Z'),(1534,'0000000024',9,'2017-04-27 09:18:45','Z'),(1535,'0000000024',0,'2017-04-27 09:19:46','Z'),(1536,'0000000024',0,'2017-04-27 09:20:46','Z'),(1537,'0000000024',0,'2017-04-27 09:21:47','Z'),(1538,'0000000024',0,'2017-04-27 09:22:48','Z'),(1539,'0000000024',0,'2017-04-27 09:23:48','Z'),(1540,'0000000024',0,'2017-04-27 09:24:49','Z'),(1541,'0000000024',0,'2017-04-27 09:25:49','Z'),(1542,'0000000024',0,'2017-04-27 09:26:50','Z'),(1543,'0000000024',0,'2017-04-27 09:28:16','Z'),(1544,'0000000024',5,'2017-04-27 09:29:17','Z'),(1545,'0000000024',0,'2017-04-27 09:30:18','Z'),(1546,'0000000024',0,'2017-04-27 09:31:18','Z'),(1547,'0000000024',0,'2017-04-27 09:32:19','Z'),(1548,'0000000024',0,'2017-04-27 09:33:19','Z'),(1549,'0000000024',0,'2017-04-27 09:34:20','Z'),(1550,'0000000024',0,'2017-04-27 09:35:20','Z'),(1551,'0000000024',0,'2017-04-27 09:36:21','Z'),(1552,'0000000024',0,'2017-04-27 09:37:21','Z'),(1553,'0000000024',0,'2017-04-27 09:38:39','Z'),(1554,'0000000024',17,'2017-04-27 09:39:40','Z'),(1555,'0000000024',0,'2017-04-27 09:40:41','Z'),(1556,'0000000024',0,'2017-04-27 09:41:41','Z'),(1557,'0000000024',0,'2017-04-27 09:42:42','Z'),(1558,'0000000024',0,'2017-04-27 09:43:42','Z'),(1559,'0000000024',0,'2017-04-27 09:44:43','Z'),(1560,'0000000024',0,'2017-04-27 09:45:43','Z'),(1561,'0000000024',0,'2017-04-27 09:46:44','Z'),(1562,'0000000024',0,'2017-04-27 09:47:45','Z'),(1563,'0000000024',0,'2017-04-27 09:49:15','Z'),(1564,'0000000024',9,'2017-04-27 09:50:15','Z'),(1565,'0000000024',0,'2017-04-27 09:51:16','Z'),(1566,'0000000024',0,'2017-04-27 09:52:16','Z'),(1567,'0000000024',0,'2017-04-27 09:53:17','Z'),(1568,'0000000024',0,'2017-04-27 09:54:17','Z'),(1569,'0000000024',0,'2017-04-27 09:55:18','Z'),(1570,'0000000024',0,'2017-04-27 09:56:19','Z'),(1571,'0000000024',0,'2017-04-27 09:57:19','Z'),(1572,'0000000024',0,'2017-04-27 09:58:20','Z'),(1573,'0000000024',0,'2017-04-27 09:59:49','Z'),(1574,'0000000024',0,'2017-04-27 10:00:50','Z'),(1575,'0000000024',0,'2017-04-27 10:01:51','Z'),(1576,'0000000024',0,'2017-04-27 10:02:51','Z'),(1577,'0000000024',0,'2017-04-27 10:03:52','Z'),(1578,'0000000024',0,'2017-04-27 10:04:52','Z'),(1579,'0000000024',0,'2017-04-27 10:05:53','Z'),(1580,'0000000024',0,'2017-04-27 10:06:54','Z'),(1581,'0000000024',0,'2017-04-27 10:07:54','Z'),(1582,'0000000024',0,'2017-04-27 10:08:55','Z'),(1583,'0000000024',0,'2017-04-27 10:10:45','Z'),(1584,'0000000024',9,'2017-04-27 10:11:46','Z'),(1585,'0000000024',0,'2017-04-27 10:12:47','Z'),(1586,'0000000024',0,'2017-04-27 10:13:47','Z'),(1587,'0000000024',0,'2017-04-27 10:14:48','Z'),(1588,'0000000024',0,'2017-04-27 10:15:48','Z'),(1589,'0000000024',0,'2017-04-27 10:16:49','Z'),(1590,'0000000024',0,'2017-04-27 10:17:50','Z'),(1591,'0000000024',0,'2017-04-27 10:18:50','Z'),(1592,'0000000024',0,'2017-04-27 10:20:46','Z'),(1593,'0000000024',15,'2017-04-27 10:21:46','Z'),(1594,'0000000024',0,'2017-04-27 10:22:47','Z'),(1595,'0000000024',0,'2017-04-27 10:23:48','Z'),(1596,'0000000024',0,'2017-04-27 10:24:48','Z'),(1597,'0000000024',0,'2017-04-27 10:25:49','Z'),(1598,'0000000024',0,'2017-04-27 10:26:49','Z'),(1599,'0000000024',0,'2017-04-27 10:27:50','Z'),(1600,'0000000024',0,'2017-04-27 10:28:50','Z'),(1601,'0000000024',0,'2017-04-27 10:29:51','Z'),(1602,'0000000024',0,'2017-04-27 10:31:23','Z'),(1603,'0000000024',11,'2017-04-27 10:32:24','Z'),(1604,'0000000024',0,'2017-04-27 10:33:24','Z'),(1605,'0000000024',0,'2017-04-27 10:34:25','Z'),(1606,'0000000024',0,'2017-04-27 10:35:26','Z'),(1607,'0000000024',0,'2017-04-27 10:36:26','Z'),(1608,'0000000024',0,'2017-04-27 10:37:27','Z'),(1609,'0000000024',0,'2017-04-27 10:38:27','Z'),(1610,'0000000024',0,'2017-04-27 10:39:28','Z'),(1611,'0000000024',0,'2017-04-27 10:40:28','Z'),(1612,'0000000024',0,'2017-04-27 10:41:58','Z'),(1613,'0000000024',8,'2017-04-27 10:42:59','Z'),(1614,'0000000024',0,'2017-04-27 10:43:59','Z'),(1615,'0000000024',0,'2017-04-27 10:45:04','Z'),(1616,'0000000024',4,'2017-04-27 10:46:05','Z'),(1617,'0000000024',0,'2017-04-27 10:47:06','Z'),(1618,'0000000024',0,'2017-04-27 10:48:06','Z'),(1619,'0000000024',0,'2017-04-27 10:49:07','Z'),(1620,'0000000024',0,'2017-04-27 10:50:08','Z'),(1621,'0000000024',0,'2017-04-27 10:52:54','Z'),(1622,'0000000024',5,'2017-04-27 10:53:55','Z'),(1623,'0000000024',0,'2017-04-27 10:54:56','Z'),(1624,'0000000024',0,'2017-04-27 10:55:56','Z'),(1625,'0000000024',0,'2017-04-27 10:56:57','Z'),(1626,'0000000024',0,'2017-04-27 10:57:57','Z'),(1627,'0000000024',0,'2017-04-27 10:58:58','Z'),(1628,'0000000024',0,'2017-04-27 10:59:59','Z'),(1629,'0000000024',0,'2017-04-27 11:00:59','Z'),(1630,'0000000024',0,'2017-04-27 11:02:56','Z'),(1631,'0000000024',16,'2017-04-27 11:03:57','Z'),(1632,'0000000024',0,'2017-04-27 11:04:58','Z'),(1633,'0000000024',0,'2017-04-27 11:05:58','Z'),(1634,'0000000024',0,'2017-04-27 11:06:59','Z'),(1635,'0000000024',0,'2017-04-27 11:07:59','Z'),(1636,'0000000024',0,'2017-04-27 11:09:00','Z'),(1637,'0000000024',0,'2017-04-27 11:10:01','Z'),(1638,'0000000024',0,'2017-04-27 11:11:01','Z'),(1639,'0000000024',0,'2017-04-27 11:12:02','Z'),(1640,'0000000024',0,'2017-04-27 11:13:29','Z'),(1641,'0000000024',0,'2017-04-27 11:14:30','Z'),(1642,'0000000024',0,'2017-04-27 11:15:30','Z'),(1643,'0000000024',0,'2017-04-27 11:16:31','Z'),(1644,'0000000024',0,'2017-04-27 11:17:32','Z'),(1645,'0000000024',0,'2017-04-27 11:18:32','Z'),(1646,'0000000024',0,'2017-04-27 11:19:33','Z'),(1647,'0000000024',0,'2017-04-27 11:20:33','Z'),(1648,'0000000024',0,'2017-04-27 11:21:34','Z'),(1649,'0000000024',0,'2017-04-27 11:22:35','Z'),(1650,'0000000024',0,'2017-04-27 11:23:35','Z'),(1651,'0000000024',0,'2017-04-27 11:24:36','Z'),(1652,'0000000024',0,'2017-04-27 11:25:36','Z'),(1653,'0000000024',0,'2017-04-27 11:26:37','Z'),(1654,'0000000024',0,'2017-04-27 11:27:37','Z'),(1655,'0000000024',0,'2017-04-27 11:28:38','Z'),(1656,'0000000024',0,'2017-04-27 11:29:39','Z'),(1657,'0000000024',0,'2017-04-27 11:30:39','Z'),(1658,'0000000024',0,'2017-04-27 11:31:40','Z'),(1659,'0000000024',0,'2017-04-27 11:33:24','Z'),(1660,'0000000024',3,'2017-04-27 11:34:25','Z'),(1661,'0000000024',0,'2017-04-27 11:35:26','Z'),(1662,'0000000024',0,'2017-04-27 11:36:26','Z'),(1663,'0000000024',0,'2017-04-27 11:37:27','Z'),(1664,'0000000024',0,'2017-04-27 11:38:27','Z'),(1665,'0000000024',0,'2017-04-27 11:39:28','Z'),(1666,'0000000024',0,'2017-04-27 11:40:29','Z'),(1667,'0000000024',0,'2017-04-27 11:41:29','Z'),(1668,'0000000024',0,'2017-04-27 11:42:30','Z'),(1669,'0000000024',0,'2017-04-27 11:43:30','Z'),(1670,'0000000024',0,'2017-04-27 11:44:31','Z'),(1671,'0000000024',0,'2017-04-27 11:45:40','Z'),(1672,'0000000024',8,'2017-04-27 11:46:41','Z'),(1673,'0000000024',0,'2017-04-27 11:47:41','Z'),(1674,'0000000024',0,'2017-04-27 11:48:42','Z'),(1675,'0000000024',0,'2017-04-27 11:49:43','Z'),(1676,'0000000024',0,'2017-04-27 11:51:16','Z'),(1677,'0000000024',0,'2017-04-27 11:52:17','Z'),(1678,'0000000024',0,'2017-04-27 11:53:17','Z'),(1679,'0000000024',0,'2017-04-27 11:54:18','Z'),(1680,'0000000024',0,'2017-04-27 11:55:18','Z'),(1681,'0000000024',0,'2017-04-27 11:56:19','Z'),(1682,'0000000024',0,'2017-04-27 11:57:19','Z'),(1683,'0000000024',0,'2017-04-27 11:58:20','Z'),(1684,'0000000024',0,'2017-04-27 11:59:21','Z'),(1685,'0000000024',0,'2017-04-27 12:00:09','Z'),(1686,'0000000024',0,'2017-04-27 12:01:50','Z'),(1687,'0000000024',0,'2017-04-27 12:01:50','Z'),(1688,'0000000024',0,'2017-04-27 12:02:51','Z'),(1689,'0000000024',2,'2017-04-27 12:03:54','Z'),(1690,'0000000024',0,'2017-04-27 12:04:54','Z'),(1691,'0000000024',0,'2017-04-27 12:05:55','Z'),(1692,'0000000024',0,'2017-04-27 12:06:56','Z'),(1693,'0000000024',0,'2017-04-27 12:07:56','Z'),(1694,'0000000024',0,'2017-04-27 12:08:57','Z'),(1695,'0000000024',0,'2017-04-27 12:09:57','Z'),(1696,'0000000024',0,'2017-04-27 12:10:58','Z'),(1697,'0000000024',0,'2017-04-27 12:13:08','Z'),(1698,'0000000024',0,'2017-04-27 12:14:09','Z'),(1699,'0000000024',0,'2017-04-27 12:15:12','Z'),(1700,'0000000024',2,'2017-04-27 12:16:13','Z'),(1701,'0000000024',0,'2017-04-27 12:17:13','Z'),(1702,'0000000024',0,'2017-04-27 12:18:15','Z'),(1703,'0000000024',1,'2017-04-27 12:19:16','Z'),(1704,'0000000024',0,'2017-04-27 12:20:17','Z'),(1705,'0000000024',0,'2017-04-27 12:21:17','Z'),(1706,'0000000024',0,'2017-04-27 12:22:18','Z'),(1707,'0000000024',0,'2017-04-27 12:23:19','Z'),(1708,'0000000024',0,'2017-04-27 12:24:19','Z'),(1709,'0000000024',0,'2017-04-27 12:25:20','Z'),(1710,'0000000024',0,'2017-04-27 12:26:20','Z'),(1711,'0000000024',0,'2017-04-27 12:27:21','Z'),(1712,'0000000024',0,'2017-04-27 12:28:22','Z'),(1713,'0000000024',0,'2017-04-27 12:29:22','Z'),(1714,'0000000024',0,'2017-04-27 12:30:23','Z'),(1715,'0000000024',0,'2017-04-27 12:31:24','Z'),(1716,'0000000024',0,'2017-04-27 12:32:24','Z'),(1717,'0000000024',0,'2017-04-27 12:33:25','Z'),(1718,'0000000024',0,'2017-04-27 12:34:25','Z'),(1719,'0000000024',0,'2017-04-27 12:36:28','Z'),(1720,'0000000024',0,'2017-04-27 12:37:28','Z'),(1721,'0000000024',0,'2017-04-27 12:38:29','Z'),(1722,'0000000024',0,'2017-04-27 12:39:29','Z'),(1723,'0000000024',0,'2017-04-27 12:40:30','Z'),(1724,'0000000024',0,'2017-04-27 12:41:31','Z'),(1725,'0000000024',0,'2017-04-27 12:42:31','Z'),(1726,'0000000024',0,'2017-04-27 12:43:32','Z'),(1727,'0000000024',0,'2017-04-27 12:44:32','Z'),(1728,'0000000024',0,'2017-04-27 12:45:33','Z'),(1729,'0000000024',0,'2017-04-27 12:47:02','Z'),(1730,'0000000024',0,'2017-04-27 12:48:02','Z'),(1731,'0000000024',0,'2017-04-27 12:49:03','Z'),(1732,'0000000024',0,'2017-04-27 12:50:04','Z'),(1733,'0000000024',0,'2017-04-27 12:51:04','Z'),(1734,'0000000024',0,'2017-04-27 12:51:31','P'),(1735,'0000000024',0,'2017-04-27 12:51:33','P'),(1736,'0000000024',0,'2017-04-27 12:52:33','Z'),(1737,'0000000024',0,'2017-04-27 12:53:34','Z'),(1738,'0000000024',0,'2017-04-27 12:54:34','Z'),(1739,'0000000024',0,'2017-04-27 12:55:35','Z'),(1740,'0000000024',0,'2017-04-27 12:57:36','Z'),(1741,'0000000024',0,'2017-04-27 12:58:39','Z'),(1742,'0000000024',2,'2017-04-27 12:59:40','Z'),(1743,'0000000024',0,'2017-04-27 13:00:40','Z'),(1744,'0000000024',0,'2017-04-27 13:01:58','Z'),(1745,'0000000024',17,'2017-04-27 13:03:00','Z'),(1746,'0000000024',1,'2017-04-27 13:04:01','Z'),(1747,'0000000024',0,'2017-04-27 13:04:35','P'),(1748,'0000000024',0,'2017-04-27 13:04:37','P'),(1749,'0000000024',0,'2017-04-27 13:05:37','Z'),(1750,'0000000024',0,'2017-04-27 13:06:38','Z'),(1751,'0000000024',0,'2017-04-27 13:08:16','Z'),(1752,'0000000024',18,'2017-04-27 13:09:17','Z'),(1753,'0000000024',0,'2017-04-27 13:10:17','Z'),(1754,'0000000024',0,'2017-04-27 13:11:24','Z'),(1755,'0000000024',5,'2017-04-27 13:12:24','Z'),(1756,'0000000024',0,'2017-04-27 13:13:25','Z'),(1757,'0000000024',0,'2017-04-27 13:14:25','Z'),(1758,'0000000024',0,'2017-04-27 13:15:27','Z'),(1759,'0000000024',0,'2017-04-27 13:16:27','Z'),(1760,'0000000024',0,'2017-04-27 13:16:29','P'),(1761,'0000000024',0,'2017-04-27 13:16:34','P'),(1762,'0000000024',1,'2017-04-27 13:17:34','Z'),(1763,'0000000024',0,'2017-04-27 13:18:35','Z'),(1764,'0000000024',0,'2017-04-27 13:19:35','Z'),(1765,'0000000024',0,'2017-04-27 13:20:36','Z'),(1766,'0000000024',0,'2017-04-27 13:21:37','Z'),(1767,'0000000024',0,'2017-04-27 13:23:03','Z'),(1768,'0000000024',0,'2017-04-27 13:24:04','Z'),(1769,'0000000024',0,'2017-04-27 13:25:04','Z'),(1770,'0000000024',0,'2017-04-27 13:26:05','Z'),(1771,'0000000024',0,'2017-04-27 13:27:05','Z'),(1772,'0000000024',0,'2017-04-27 13:28:06','Z'),(1773,'0000000024',0,'2017-04-27 13:29:08','Z'),(1774,'0000000024',1,'2017-04-27 13:30:10','Z'),(1775,'0000000024',0,'2017-04-27 13:31:10','Z'),(1776,'0000000024',0,'2017-04-27 13:32:11','Z'),(1777,'0000000024',0,'2017-04-27 13:33:29','Z'),(1778,'0000000024',18,'2017-04-27 13:34:31','Z'),(1779,'0000000024',1,'2017-04-27 13:36:42','Z'),(1780,'0000000024',10,'2017-04-27 13:37:43','Z'),(1781,'0000000024',0,'2017-04-27 13:38:43','Z'),(1782,'0000000024',0,'2017-04-27 13:39:44','Z'),(1783,'0000000024',0,'2017-04-27 13:40:44','Z'),(1784,'0000000024',0,'2017-04-27 13:41:45','Z'),(1785,'0000000024',0,'2017-04-27 13:42:46','Z'),(1786,'0000000024',0,'2017-04-27 13:43:47','Z'),(1787,'0000000024',1,'2017-04-27 13:44:48','Z'),(1788,'0000000024',0,'2017-04-27 13:45:50','Z'),(1789,'0000000024',1,'2017-04-27 13:46:51','Z'),(1790,'0000000024',0,'2017-04-27 13:47:51','Z'),(1791,'0000000024',0,'2017-04-27 13:48:52','Z'),(1792,'0000000024',0,'2017-04-27 13:49:53','Z'),(1793,'0000000024',0,'2017-04-27 13:51:58','Z'),(1794,'0000000024',4,'2017-04-27 13:53:05','Z'),(1795,'0000000024',6,'2017-04-27 13:54:05','Z'),(1796,'0000000024',0,'2017-04-27 13:55:06','Z'),(1797,'0000000024',0,'2017-04-27 13:56:10','Z'),(1798,'0000000024',3,'2017-04-27 13:56:38','P'),(1799,'0000000024',0,'2017-04-27 13:56:40','P'),(1800,'0000000024',0,'2017-04-27 13:57:42','Z'),(1801,'0000000024',1,'2017-04-27 13:58:42','Z'),(1802,'0000000024',0,'2017-04-27 13:59:43','Z'),(1803,'0000000024',0,'2017-04-27 14:00:44','Z'),(1804,'0000000024',0,'2017-04-27 14:01:44','Z'),(1805,'0000000024',0,'2017-04-27 14:02:45','Z'),(1806,'0000000024',0,'2017-04-27 14:03:46','Z'),(1807,'0000000024',0,'2017-04-27 14:04:47','Z'),(1808,'0000000024',0,'2017-04-27 14:05:49','Z'),(1809,'0000000024',2,'2017-04-27 14:06:50','Z'),(1810,'0000000024',0,'2017-04-27 14:07:50','Z'),(1811,'0000000024',0,'2017-04-27 14:08:51','Z'),(1812,'0000000024',0,'2017-04-27 14:09:52','Z'),(1813,'0000000024',0,'2017-04-27 14:10:52','Z'),(1814,'0000000024',0,'2017-04-27 14:11:54','Z'),(1815,'0000000024',1,'2017-04-27 14:12:34','P'),(1816,'0000000024',0,'2017-04-27 14:12:44','P'),(1817,'0000000024',0,'2017-04-27 14:13:44','Z'),(1818,'0000000024',0,'2017-04-27 14:16:13','Z'),(1819,'0000000024',7,'2017-04-27 14:17:16','Z'),(1820,'0000000024',7,'2017-04-27 14:18:22','Z'),(1821,'0000000024',0,'2017-04-27 14:19:22','Z'),(1822,'0000000024',0,'2017-04-27 14:21:34','Z'),(1823,'0000000024',0,'2017-04-27 14:23:35','Z'),(1824,'0000000024',0,'2017-04-27 14:24:38','Z'),(1825,'0000000024',2,'2017-04-27 14:25:39','Z'),(1826,'0000000024',0,'2017-04-27 14:26:39','Z'),(1827,'0000000024',0,'2017-04-27 14:27:40','Z'),(1828,'0000000024',0,'2017-04-27 14:28:41','Z'),(1829,'0000000024',0,'2017-04-27 14:29:41','Z'),(1830,'0000000024',0,'2017-04-27 14:30:42','Z'),(1831,'0000000024',0,'2017-04-27 14:31:43','Z'),(1832,'0000000024',0,'2017-04-27 14:32:43','Z'),(1833,'0000000024',0,'2017-04-27 14:33:47','Z'),(1834,'0000000024',3,'2017-04-27 14:34:47','Z'),(1835,'0000000024',0,'2017-04-27 14:35:48','Z'),(1836,'0000000024',0,'2017-04-27 14:36:48','Z'),(1837,'0000000024',0,'2017-04-27 14:38:37','Z'),(1838,'0000000024',0,'2017-04-27 14:39:37','Z'),(1839,'0000000024',0,'2017-04-27 14:39:56','P'),(1840,'0000000024',0,'2017-04-27 14:40:00','P'),(1841,'0000000024',0,'2017-04-27 14:40:48','P'),(1842,'0000000024',0,'2017-04-27 14:40:50','P'),(1843,'0000000024',0,'2017-04-27 14:41:50','Z'),(1844,'0000000024',0,'2017-04-27 14:42:51','Z'),(1845,'0000000024',0,'2017-04-27 14:43:52','Z'),(1846,'0000000024',0,'2017-04-27 14:44:56','Z'),(1847,'0000000024',3,'2017-04-27 14:45:57','Z'),(1848,'0000000024',0,'2017-04-27 14:46:57','Z'),(1849,'0000000024',0,'2017-04-27 14:47:58','Z'),(1850,'0000000024',0,'2017-04-27 14:54:53','Z'),(1851,'0000000024',1,'2017-04-27 14:55:54','Z'),(1852,'0000000024',0,'2017-04-27 14:56:54','Z'),(1853,'0000000024',0,'2017-04-27 14:57:58','Z'),(1854,'0000000024',0,'2017-04-27 14:59:12','P'),(1855,'0000000024',0,'2017-04-27 14:59:17','P'),(1856,'0000000024',3,'2017-04-27 15:00:14','P'),(1857,'0000000024',3,'2017-04-27 15:00:16','P'),(1858,'0000000024',0,'2017-04-27 15:01:16','Z'),(1859,'0000000024',0,'2017-04-27 15:01:35','Z'),(1860,'0000000024',0,'2017-04-27 15:01:49','Z'),(1861,'0000000024',0,'2017-04-27 15:02:50','Z'),(1862,'0000000024',0,'2017-04-27 15:03:50','Z'),(1863,'0000000024',0,'2017-04-27 15:04:51','Z'),(1864,'0000000024',0,'2017-04-27 15:05:53','Z'),(1865,'0000000024',1,'2017-04-27 15:06:54','Z'),(1866,'0000000024',0,'2017-04-27 15:07:54','Z'),(1867,'0000000024',0,'2017-04-27 15:08:55','Z'),(1868,'0000000024',0,'2017-04-27 15:09:55','Z'),(1869,'0000000024',0,'2017-04-27 15:10:31','P'),(1870,'0000000024',0,'2017-04-27 15:10:35','P'),(1871,'0000000024',0,'2017-04-27 15:11:35','Z'),(1872,'0000000024',0,'2017-04-27 15:12:38','Z'),(1873,'0000000024',2,'2017-04-27 15:13:39','Z'),(1874,'0000000024',0,'2017-04-27 15:14:39','Z'),(1875,'0000000024',0,'2017-04-27 15:15:40','Z'),(1876,'0000000024',0,'2017-04-27 15:16:41','Z'),(1877,'0000000024',0,'2017-04-27 15:17:42','Z'),(1878,'0000000024',0,'2017-04-27 15:18:42','Z'),(1879,'0000000024',0,'2017-04-27 15:19:43','Z'),(1880,'0000000024',0,'2017-04-27 15:21:31','Z'),(1881,'0000000024',13,'2017-04-27 15:22:38','Z'),(1882,'0000000024',0,'2017-04-27 15:23:38','Z'),(1883,'0000000024',0,'2017-04-27 15:24:39','Z'),(1884,'0000000024',0,'2017-04-27 15:25:40','Z'),(1885,'0000000024',0,'2017-04-27 15:26:40','Z'),(1886,'0000000024',0,'2017-04-27 15:27:41','Z'),(1887,'0000000024',0,'2017-04-27 15:28:41','Z'),(1888,'0000000024',0,'2017-04-27 15:29:42','Z'),(1889,'0000000024',0,'2017-04-27 15:30:42','Z'),(1890,'0000000024',0,'2017-04-27 15:31:43','Z'),(1891,'0000000024',0,'2017-04-27 15:32:44','Z'),(1892,'0000000024',0,'2017-04-27 15:33:45','Z'),(1893,'0000000024',0,'2017-04-27 15:34:46','Z'),(1894,'0000000024',0,'2017-04-27 15:35:46','Z'),(1895,'0000000024',0,'2017-04-27 15:36:48','Z'),(1896,'0000000024',1,'2017-04-27 15:36:55','P'),(1897,'0000000024',1,'2017-04-27 15:36:59','P'),(1898,'0000000024',0,'2017-04-27 15:38:00','Z'),(1899,'0000000024',0,'2017-04-27 15:39:01','Z'),(1900,'0000000024',1,'2017-04-27 16:30:03','Z'),(1901,'0000000024',1,'2017-04-27 16:31:04','Z'),(1902,'0000000024',1,'2017-04-27 16:32:03','Z'),(1903,'0000000024',1,'2017-04-27 16:33:33','Z'),(1904,'0017773962',0,'2018-02-26 12:26:42','T'),(1905,'0017773962',1,'2018-02-26 12:27:10','S'),(1906,'0017773962',1,'2018-02-26 12:27:25','S'),(1907,'0017773962',1,'2018-02-26 12:27:40','S'),(1908,'0017773962',1,'2018-02-26 12:28:00','S'),(1909,'0017773962',1,'2018-02-26 12:28:19','S'),(1910,'0017773962',1,'2018-04-04 13:25:52','T'),(1911,'0017773962',1,'2018-04-04 13:27:49','S'),(1912,'0017773962',1,'2018-04-04 13:28:28','T'),(1913,'0017773962',1,'2018-04-04 13:40:01','S'),(1914,'0017773962',1,'2018-04-04 13:41:30','S'),(1915,'0017773962',20,'2018-04-04 13:43:17','S'),(1916,'0017773962',1,'2018-04-04 13:44:01','S'),(1917,'0017773962',1,'2018-04-04 13:45:08','S'),(1918,'0017773962',1,'2018-04-04 13:45:18','T'),(1919,'0017773962',1,'2018-04-04 13:47:51','T'),(1920,'0017773962',1,'2018-04-04 13:57:34','T'),(1921,'0017773962',1,'2018-04-06 20:13:56','T'),(1922,'0017773962',1,'2018-04-06 20:22:43','T'),(1923,'0017773962',1,'2018-04-06 20:31:06','T'),(1924,'0017773962',1,'2018-04-06 20:36:04','T'),(1925,'0017773962',1,'2018-04-06 20:46:37','T'),(1926,'0017773962',1,'2018-04-06 20:49:09','T'),(1927,'0017773962',1,'2018-04-06 21:00:44','T'),(1928,'0017773962',1,'2018-04-06 21:40:31','T'),(1929,'0017773962',1,'2018-04-06 22:54:02','T'),(1930,'0017773962',1,'2018-04-09 11:34:53','T'),(1931,'0017773962',1,'2018-04-09 13:19:59','T'),(1932,'0017773962',1,'2018-04-09 13:27:43','T'),(1933,'0017773962',1,'2018-04-09 14:29:14','T'),(1934,'0017773962',1,'2018-04-09 14:42:13','T'),(1935,'0017773962',0,'2018-04-09 14:46:16','T'),(1936,'0017773962',1,'2018-04-09 14:50:19','T'),(1937,'0017773962',1,'2018-04-09 15:05:11','T'),(1938,'0017773962',0,'2018-04-09 15:08:07','T'),(1939,'0017773962',1,'2018-04-09 15:10:10','T'),(1940,'0017773962',1,'2018-04-09 15:16:43','T'),(1941,'0017773962',1,'2018-04-09 15:24:59','T');
/*!40000 ALTER TABLE `ics_tiempo_rta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tipo_app`
--

DROP TABLE IF EXISTS `ics_tipo_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tipo_app` (
  `idics_tipo_app` int(11) NOT NULL AUTO_INCREMENT,
  `tapp_nombre` varchar(145) DEFAULT NULL,
  `tapp_Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_tipo_app`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tipo_app`
--

LOCK TABLES `ics_tipo_app` WRITE;
/*!40000 ALTER TABLE `ics_tipo_app` DISABLE KEYS */;
INSERT INTO `ics_tipo_app` VALUES (1,'Vending Cashless','2014-05-12 18:34:46'),(2,'Vending Telemetria','2014-05-12 18:34:46'),(3,'EAS','2014-05-12 18:34:46'),(4,'Datafono','2014-05-12 18:34:46'),(5,'Caterin','2015-05-15 12:55:41');
/*!40000 ALTER TABLE `ics_tipo_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tipo_de_administracion`
--

DROP TABLE IF EXISTS `ics_tipo_de_administracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tipo_de_administracion` (
  `idTipo_de_Administracion` int(11) NOT NULL AUTO_INCREMENT,
  `Adm_Tipo` varchar(45) DEFAULT NULL,
  `Adm_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idTipo_de_Administracion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tipo_de_administracion`
--

LOCK TABLES `ics_tipo_de_administracion` WRITE;
/*!40000 ALTER TABLE `ics_tipo_de_administracion` DISABLE KEYS */;
INSERT INTO `ics_tipo_de_administracion` VALUES (1,'NA','2014-02-21 15:55:36'),(2,'Comprimido','2014-02-21 15:55:36'),(3,'Capsulas','2014-02-21 15:55:36'),(4,'Jarabe','2014-02-21 15:55:36'),(5,'Unguento','2014-02-21 15:55:36'),(6,'Grageas','2014-02-21 15:55:36'),(7,'Gotas','2014-02-21 15:55:36'),(8,'Supositorios','2014-02-21 15:55:36'),(9,'Suspensiones','2014-02-21 15:55:36');
/*!40000 ALTER TABLE `ics_tipo_de_administracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tipo_medicamento`
--

DROP TABLE IF EXISTS `ics_tipo_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tipo_medicamento` (
  `idics_tipo_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `tip_nombre` varchar(85) DEFAULT NULL,
  `tip_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_tipo_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tipo_medicamento`
--

LOCK TABLES `ics_tipo_medicamento` WRITE;
/*!40000 ALTER TABLE `ics_tipo_medicamento` DISABLE KEYS */;
INSERT INTO `ics_tipo_medicamento` VALUES (1,'NA','2014-02-21 15:45:41'),(2,'Antidepresivo','2014-02-21 15:45:41'),(3,'Analgesico','2014-02-21 15:45:41'),(4,'Antibiotico','2014-02-21 15:45:41'),(5,'Antiinflamatorio','2014-02-21 15:45:41'),(6,'Antiseptico','2014-02-21 15:45:41'),(7,'Anestesico','2014-02-21 15:45:41');
/*!40000 ALTER TABLE `ics_tipo_medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tipo_producto`
--

DROP TABLE IF EXISTS `ics_tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tipo_producto` (
  `idics_tipo_producto` int(11) NOT NULL AUTO_INCREMENT,
  `tip_nombre` varchar(45) DEFAULT NULL,
  `tip_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_tipo_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tipo_producto`
--

LOCK TABLES `ics_tipo_producto` WRITE;
/*!40000 ALTER TABLE `ics_tipo_producto` DISABLE KEYS */;
INSERT INTO `ics_tipo_producto` VALUES (1,'Snack','2018-04-17 15:52:49'),(2,'Bebida caliente','2018-04-17 15:52:49'),(3,'Desconocido','2018-04-17 15:52:49');
/*!40000 ALTER TABLE `ics_tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tipos_maq_`
--

DROP TABLE IF EXISTS `ics_tipos_maq_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tipos_maq_` (
  `tip_id_tipo_maq` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de tipos de máquina',
  `tip_descripcion_tipo` varchar(60) NOT NULL COMMENT 'Descripcion del tipo de máquina\nEjemplo (Cafetera, iteractiva)',
  `tip_marca` int(11) DEFAULT NULL,
  PRIMARY KEY (`tip_id_tipo_maq`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COMMENT='1.	Tabla donde se almacenan los datos de los tipos de máquina que puedan existir para la entrega automatizada de suministros.	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tipos_maq_`
--

LOCK TABLES `ics_tipos_maq_` WRITE;
/*!40000 ALTER TABLE `ics_tipos_maq_` DISABLE KEYS */;
INSERT INTO `ics_tipos_maq_` VALUES (1,'COMBI',1),(2,'REFRIGERADA',1),(3,'AMBIENTE',1),(4,'LEI 400',2),(5,'LEI 60',2),(6,'TORINO 400',3),(7,'TORINO 600',3),(8,'VITA',4),(9,'ROBOTICA',5),(10,'KIKO MAX',6),(11,'ZENSIA',7),(12,'CRANE MERCHANT',8),(13,'GENESIS',9);
/*!40000 ALTER TABLE `ics_tipos_maq_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_tipos_tarjetas_`
--

DROP TABLE IF EXISTS `ics_tipos_tarjetas_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_tipos_tarjetas_` (
  `tip_id_tipos_tarj` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del tipo de tarjeta',
  `tip_descripcion` varchar(60) DEFAULT NULL COMMENT 'Descripcion o nombre  de la tarjeta ',
  PRIMARY KEY (`tip_id_tipos_tarj`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ics_tipos_tarjetas_=  tip_id_tipos_tarj  + tip_descripcion\n@tip_id_tipos_tarj';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_tipos_tarjetas_`
--

LOCK TABLES `ics_tipos_tarjetas_` WRITE;
/*!40000 ALTER TABLE `ics_tipos_tarjetas_` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_tipos_tarjetas_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_total_data_itm`
--

DROP TABLE IF EXISTS `ics_total_data_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_total_data_itm` (
  `dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_nom_item` varchar(45) DEFAULT NULL COMMENT 'Nombre del item',
  `dt_valor` varchar(45) DEFAULT '1000' COMMENT 'Costo del item. campo no obligatorio pero puede tomar por defecto.',
  `dt_proveedor_ite` varchar(245) NOT NULL COMMENT 'Llave foranea del proveedor del Item',
  `dt_cliente` varchar(15) DEFAULT '1' COMMENT 'Usuario (Cliente) creador del ítem;',
  `dt_codigo` varchar(45) DEFAULT NULL COMMENT 'Código en Bodega de un ítem; Campo no obligatorio.',
  `dt_descripcion` varchar(250) DEFAULT NULL COMMENT 'Breve descripción referente al ítem; Campo no obligatorio.',
  `dt_prioridad` varchar(45) DEFAULT '1' COMMENT '1 -> prioridad Alta ; Elementos de proteccion prioritarios.',
  `dt_posologia` varchar(45) DEFAULT '1',
  `dt_tipo_producto` varchar(45) DEFAULT NULL,
  `dt_tipo_medicamento` varchar(45) DEFAULT '1',
  `dt_aplicacion` varchar(45) DEFAULT '1',
  `dt_tipo_administracion` varchar(45) DEFAULT '1',
  `dt_medida` varchar(85) DEFAULT '1',
  `dt_reg_sanitario` varchar(85) DEFAULT '1',
  `dt_lote` varchar(85) DEFAULT '1',
  `dt_fecha_venc` varchar(85) DEFAULT NULL,
  `dt_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Tabla donde se almacenan los ítems que un cliente desea disponer en una planimetría.	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_total_data_itm`
--

LOCK TABLES `ics_total_data_itm` WRITE;
/*!40000 ALTER TABLE `ics_total_data_itm` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_total_data_itm` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `ics_total_data_itm_AINS` AFTER INSERT ON `ics_total_data_itm` FOR EACH ROW
begin
DECLARE IDPROVEEDOR, PRIOR, POSOLOGIA , TPROD , TMED , APL,TADMON VARCHAR(145);
-- PROVEEDOR
if new.dt_proveedor_ite in(select pro_nombre from ics_proveedor_item_ where pro_cl = new.dt_cliente) then
	-- selecciona id del proveedor
	SET IDPROVEEDOR =(SELECT pro_id_proveedor FROM ics_proveedor_item_ WHERE pro_cl = new.dt_cliente AND pro_nombre = new.dt_proveedor_ite);	
	
else
	-- inserta
		INSERT INTO ics_proveedor_item_ SET  pro_nombre =new.dt_proveedor_ite, pro_razon_soc =new.dt_proveedor_ite,pro_cl =new.dt_cliente;
		SET IDPROVEEDOR = LAST_INSERT_ID();
end if;
-- PRIORIDAD
IF NEW.dt_prioridad = 'Alto' then
	SET PRIOR = 1;
else
	SET PRIOR = 0;
end if;
-- POSOLOGIA
IF NEW.dt_posologia IN (SELECT pos_nombre FROM  ics_posologia) THEN
	SET POSOLOGIA = (SELECT idics_posologia FROM ics_posologia WHERE pos_nombre = NEW.dt_posologia);
ELSE
	INSERT INTO ics_posologia set pos_nombre =NEW.dt_posologia ;
	SET POSOLOGIA = LAST_INSERT_ID();
END IF;
-- TIPO PRROODUCTO
IF NEW.dt_tipo_producto IN (SELECT tip_nombre FROM ics_tipo_producto) THEN
	SET TPROD = (SELECT idics_tipo_producto FROM  ics_tipo_producto WHERE tip_nombre = NEW.dt_tipo_producto );
ELSE
	INSERT INTO ics_tipo_producto set tip_nombre =NEW.dt_tipo_producto ;
	SET TPROD = LAST_INSERT_ID();
END IF ;
-- tipo mediicamento
if new.dt_tipo_medicamento in (SELECT tip_nombre FROM ics_tipo_medicamento) then
	set TMED  = (SELECT idics_tipo_medicamento FROM ics_tipo_medicamento WHERE tip_nombre =  new.dt_tipo_medicamento);
else
	INSERT INTO ics_tipo_medicamento SET tip_nombre= NEW.dt_tipo_medicamento;
	set TMED  = LAST_INSERT_ID();
end if;

-- APLICACION 

IF NEW.dt_aplicacion IN (SELECT apl_tipo FROM ics_aplicacion) then
	SET APL = (SELECT idics_aplicacion FROM ics_aplicacion WHERE apl_tipo = NEW.dt_aplicacion);
ELSE
	INSERT INTO ics_aplicacion SET apl_tipo =NEW.dt_aplicacion ;
	SET APL = LAST_INSERT_ID();
END IF;
-- TIPO ADMINISTRACION

IF NEW.dt_tipo_administracion IN (SELECT Adm_Tipo FROM ics_tipo_de_administracion) then
	SET TADMON = (SELECT idTipo_de_Administracion FROM ics_tipo_de_administracion WHERE Adm_Tipo = NEW.dt_tipo_administracion);
ELSE
	INSERT INTO ics_tipo_de_administracion SET Adm_Tipo =NEW.dt_tipo_administracion ;
	SET TADMON = LAST_INSERT_ID();
END IF;

INSERT INTO ics_item
set ite_nom_item		=	new.dt_nom_item,
ite_valor				=	new.dt_valor,
fk_proveedor_ite		=	IDPROVEEDOR,
ite_cliente				=	NEW.dt_cliente,
ite_codigo				=	NEW.dt_codigo,	
ite_descripcion			=	NEW.dt_descripcion,
ite_prioridad			=   PRIOR,
ite_posologia			= 	POSOLOGIA,
ite_tipo_producto		= 	TPROD,
ite_tipo_medicamento	=	TMED,
ite_aplicacion			=	APL,
ite_tipo_administracion	= 	TADMON,
ite_medida				=	new.dt_medida,
ite_reg_sanitario		=   new.dt_reg_sanitario,
ite_lote				=   new.dt_lote,
ite_fecha_venc			=   new.dt_fecha_venc;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_total_data_itm_vend`
--

DROP TABLE IF EXISTS `ics_total_data_itm_vend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_total_data_itm_vend` (
  `dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_nom_item` varchar(45) DEFAULT NULL COMMENT 'Nombre del item',
  `dt_valor` varchar(45) DEFAULT '1000' COMMENT 'Costo del item. campo no obligatorio pero puede tomar por defecto.',
  `dt_proveedor_ite` varchar(245) NOT NULL COMMENT 'Llave foranea del proveedor del Item',
  `dt_cliente` varchar(15) DEFAULT '1' COMMENT 'Usuario (Cliente) creador del ítem;',
  `dt_codigo` varchar(45) DEFAULT NULL COMMENT 'Código en Bodega de un ítem; Campo no obligatorio.',
  `dt_descripcion` varchar(250) DEFAULT NULL COMMENT 'Breve descripción referente al ítem; Campo no obligatorio.',
  `dt_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	Tabla donde se almacenan los ítems que un cliente desea disponer en una planimetría.	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_total_data_itm_vend`
--

LOCK TABLES `ics_total_data_itm_vend` WRITE;
/*!40000 ALTER TABLE `ics_total_data_itm_vend` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_total_data_itm_vend` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `ics_total_data_itm_vend_AINS` AFTER INSERT ON `ics_total_data_itm_vend` FOR EACH ROW
begin

DECLARE id_prov  VARCHAR(45);
if 	new.dt_proveedor_ite  in (select pro_nombre from ics_proveedor_item_) then 
	set id_prov = (select pro_id_proveedor from ics_proveedor_item_ where pro_nombre = new.dt_proveedor_ite LIMIT 1);

else if new.dt_proveedor_ite is not null then
	INSERT INTO ics_proveedor_item_ SET pro_nombre  = new.dt_proveedor_ite,pro_cl=  NEW.dt_cliente;
	set id_prov = LAST_INSERT_ID();
ELSE		
	set id_prov =1;
END IF;
END IF;


INSERT INTO ics_item
SET
ite_nom_item	=NEW.dt_nom_item,
ite_valor		=NEW.dt_valor,
fk_proveedor_ite=id_prov,
ite_cliente		=NEW.dt_cliente,
ite_codigo		=new.dt_codigo,
ite_descripcion	=new.dt_descripcion;





end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_total_data_usr`
--

DROP TABLE IF EXISTS `ics_total_data_usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_total_data_usr` (
  `idcrm_total_data_usr` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cedula` varchar(45) DEFAULT NULL,
  `dt_nombre` varchar(245) DEFAULT NULL,
  `dt_huella` varchar(45) DEFAULT NULL,
  `dt_centro_cost` varchar(145) DEFAULT NULL,
  `dt_dto` varchar(145) DEFAULT NULL,
  `dt_f_finalizacion` varchar(45) DEFAULT NULL,
  `dt_correo` varchar(245) DEFAULT NULL,
  `dt_cargo` varchar(245) DEFAULT NULL,
  `dt_codigo` varchar(45) DEFAULT NULL,
  `dt_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_cl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcrm_total_data_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_total_data_usr`
--

LOCK TABLES `ics_total_data_usr` WRITE;
/*!40000 ALTER TABLE `ics_total_data_usr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_total_data_usr` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ics_total_data_usr_AINS AFTER INSERT ON ics_total_data_usr FOR EACH ROW
begin
-- CENTRO DE COSTO  = SECCION
-- DEPARTAMENTO 	= SUBSECCION
declare centro_costo, departamento , cargo varchar(45);
/* nuevo centro de costos*/
if NEW.dt_centro_cost in (select cc_nombre 			 from ics_centro_costos where cc_cl 	= new.dt_cl) then 
	SET centro_costo = 	 (select idics_centro_costos from ics_centro_costos where cc_nombre = NEW.dt_centro_cost and cc_cl = new.dt_cl);
else
	INSERT INTO ics_centro_costos SET cc_nombre= NEW.dt_centro_cost, cc_cl= new.dt_cl;
	SET centro_costo = last_insert_id();
end if;
/*un nuevo departamento*/

if NEW.dt_dto in (select de_nombre from ics_departamentos where de_cl = new.dt_cl ) then 
	SET departamento = 	 (select idics_departamentos from ics_departamentos where de_nombre = NEW.dt_dto and de_cl = new.dt_cl  );
else
	INSERT INTO ics_departamentos SET de_nombre= NEW.dt_dto,de_cl = new.dt_cl, fk_centro_costo = centro_costo;
	SET departamento = last_insert_id();
end if;

if 	NEW.dt_huella in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) 
and NEW.dt_cedula in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then
-- inserta en tabla de error cedula y huella ya existen 
INSERT INTO `ics_total_data_usr_f`
	SET
	`dt_cedula`=NEW.dt_cedula,
	`dt_nombre`=NEW.dt_nombre,
	`dt_huella`=NEW.dt_huella,
	`dt_centro_cost`=NEW.dt_centro_cost,
	`dt_dto`=NEW.dt_dto,
	`dt_f_finalizacion`=NEW.dt_f_finalizacion,
	`dt_correo`=NEW.dt_correo,
	`dt_cargo`=NEW.dt_cargo,
	`dt_codigo`=NEW.dt_codigo,
	`dt_cl`=NEW.dt_cl,
	 dt_error = 'Identificador de huella y cedula ya existen';
else if NEW.dt_huella in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then
-- error huella ya existe 

	INSERT INTO `ics_total_data_usr_f`
	SET
	`dt_cedula`=NEW.dt_cedula,
	`dt_nombre`=NEW.dt_nombre,
	`dt_huella`=NEW.dt_huella,
	`dt_centro_cost`=NEW.dt_centro_cost,
	`dt_dto`=NEW.dt_dto,
	`dt_f_finalizacion`=NEW.dt_f_finalizacion,
	`dt_correo`=NEW.dt_correo,
	`dt_cargo`=NEW.dt_cargo,
	`dt_codigo`=NEW.dt_codigo,
	`dt_cl`=NEW.dt_cl,
	 dt_error = 'Identificador de huella ya existe';

else if NEW.dt_cedula in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then

	INSERT INTO ics_idalias_usuario
	set
	IdA_Numero_Alias 		=NEW.dt_huella,
	IdA_Identificacion_Usu	=NEW.dt_cedula,
	IdA_cl					=NEW.dt_cl,
	IdA_Finger				=substring(NEW.dt_huella,4,1);

else if NEW.dt_huella not in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) 
	and NEW.dt_cedula not in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then
	/*ics_usuario*/

	INSERT INTO ics_usuario
	SET
	usu_id_usuario_opera		=NEW.dt_cedula,
	usu_nombre					=NEW.dt_nombre,
	usu_codigo					=NEW.dt_codigo,
	usu_centro_Costo			=centro_costo,
	usu_departamento			=departamento,
	usu_fecha_finalizacion		=NEW.dt_f_finalizacion,
	usu_client_creador			=NEW.dt_cl,
	usu_correo					=NEW.dt_correo;
	/*id alias*/

	INSERT INTO ics_idalias_usuario
	set
	IdA_Numero_Alias 		=NEW.dt_huella,
	IdA_Identificacion_Usu	=NEW.dt_cedula,
	IdA_cl					=NEW.dt_cl,
	IdA_Finger				=substring(NEW.dt_huella,4,1);
	end if;
end if;

end if;
end if;


/*cargos*/
if new.dt_cargo in (select car_nombre from ics_cargos where  car_cliente= new.dt_cl ) then
	set cargo= (select id_cargos from ics_cargos where car_nombre = new.dt_cargo and car_cliente =new.dt_cl limit 1 );
else
	INSERT INTO ics_cargos set car_nombre =new.dt_cargo ,car_cliente= new.dt_cl;
set cargo = last_insert_id();
end if;
/*usuario cargo*/
	INSERT INTO ics_usuario_cargo
set
fk_id_cargo=cargo,
fk_cedula_usuario=NEW.dt_cedula;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_total_data_usr_f`
--

DROP TABLE IF EXISTS `ics_total_data_usr_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_total_data_usr_f` (
  `idcrm_total_data_usr` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cedula` varchar(45) DEFAULT NULL,
  `dt_nombre` varchar(245) DEFAULT NULL,
  `dt_huella` varchar(45) DEFAULT NULL,
  `dt_centro_cost` varchar(145) DEFAULT NULL,
  `dt_dto` varchar(145) DEFAULT NULL,
  `dt_f_finalizacion` varchar(45) DEFAULT NULL,
  `dt_correo` varchar(245) DEFAULT NULL,
  `dt_cargo` varchar(245) DEFAULT NULL,
  `dt_codigo` varchar(45) DEFAULT NULL,
  `dt_cl` varchar(45) DEFAULT NULL,
  `dt_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_error` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`idcrm_total_data_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_total_data_usr_f`
--

LOCK TABLES `ics_total_data_usr_f` WRITE;
/*!40000 ALTER TABLE `ics_total_data_usr_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_total_data_usr_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_total_data_usr_vend`
--

DROP TABLE IF EXISTS `ics_total_data_usr_vend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_total_data_usr_vend` (
  `idcrm_total_data_usr` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cedula` varchar(45) DEFAULT NULL,
  `dt_nombre` varchar(245) DEFAULT NULL,
  `dt_huella` varchar(45) DEFAULT NULL,
  `dt_cargo` varchar(245) DEFAULT NULL,
  `dt_perfil` varchar(245) DEFAULT NULL,
  `dt_acumula` varchar(45) DEFAULT NULL,
  `dt_centro_cost` varchar(145) DEFAULT NULL,
  `dt_dto` varchar(145) DEFAULT NULL,
  `dt_correo` varchar(245) DEFAULT NULL,
  `dt_codigo` varchar(45) DEFAULT NULL,
  `dt_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_cl` varchar(45) DEFAULT NULL,
  `dt_all_maqs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcrm_total_data_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_total_data_usr_vend`
--

LOCK TABLES `ics_total_data_usr_vend` WRITE;
/*!40000 ALTER TABLE `ics_total_data_usr_vend` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_total_data_usr_vend` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `ics_total_data_usr_vend_AINS` AFTER INSERT ON `ics_total_data_usr_vend` FOR EACH ROW
begin


declare centro_costo, departamento , cargo  varchar(45);
declare IT,V1 int;
/* nuevo centro de costos*/
if NEW.dt_centro_cost in (select cc_nombre 			 from ics_centro_costos where cc_cl 	= new.dt_cl) then 
	SET centro_costo = 	 (select idics_centro_costos from ics_centro_costos where cc_nombre = NEW.dt_centro_cost and cc_cl = new.dt_cl);
else
	INSERT INTO ics_centro_costos SET cc_nombre= NEW.dt_centro_cost, cc_cl= new.dt_cl;
	SET centro_costo = last_insert_id();
end if;
/*un nuevo departamento*/

if NEW.dt_dto in (select de_nombre from ics_departamentos where de_cl = new.dt_cl ) then 
	SET departamento = 	 (select idics_departamentos from ics_departamentos where de_nombre = NEW.dt_dto and de_cl = new.dt_cl  );
else
	INSERT INTO ics_departamentos SET de_nombre= NEW.dt_dto,de_cl = new.dt_cl, fk_centro_costo = centro_costo;
	SET departamento = last_insert_id();
end if;




if 	NEW.dt_huella in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) 
and NEW.dt_cedula in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then
-- inserta en tabla de error cedula y huella ya existen 
	INSERT INTO ics_total_data_usr_vend_f
	set
	dt_cedula=new.dt_cedula,
	dt_nombre=new.dt_nombre,
	dt_huella=new.dt_huella,
	dt_cargo=new.dt_cargo,
	dt_perfil=new.dt_perfil,
	dt_acumula=new.dt_acumula,
	dt_centro_cost=new.dt_centro_cost,
	dt_dto=new.dt_dto,
	dt_correo=new.dt_correo,
	dt_codigo=new.dt_codigo,
	dt_cl=new.dt_cl,
	dt_all_maqs=new.dt_all_maqs,
	dt_error='El identificador de huella y cedula ya existen.';


else if NEW.dt_huella in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then
-- error huella ya existe 

	INSERT INTO ics_total_data_usr_vend_f
	set
	dt_cedula=new.dt_cedula,
	dt_nombre=new.dt_nombre,
	dt_huella=new.dt_huella,
	dt_cargo=new.dt_cargo,
	dt_perfil=new.dt_perfil,
	dt_acumula=new.dt_acumula,
	dt_centro_cost=new.dt_centro_cost,
	dt_dto=new.dt_dto,
	dt_correo=new.dt_correo,
	dt_codigo=new.dt_codigo,
	dt_cl=new.dt_cl,
	dt_all_maqs=new.dt_all_maqs,
	dt_error='Identificador de huella ya existe';
	

else if NEW.dt_cedula in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then

	INSERT INTO ics_idalias_usuario
	set
	IdA_Numero_Alias 		=NEW.dt_huella,
	IdA_Identificacion_Usu	=NEW.dt_cedula,
	IdA_cl					=NEW.dt_cl,
	IdA_Finger				=substring(NEW.dt_huella,4,1);

	if new.dt_all_maqs = 'Si' then
		SET IT  = (SELECT COUNT(maq_serial_maq) FROM ics_maquinas WHERE maq_cl = NEW.dt_cl);
		SET V1 = 0;
		WHILE V1 < IT DO
			-- USUARIO DISPENSADORA
			INSERT INTO ics_usu_dispensadora
			SET 
			udis_idUsuario			 = NEW.dt_huella,
			udis_Serial_Dispensadora = (SELECT (maq_serial_maq) FROM ics_maquinas WHERE maq_cl = NEW.dt_cl LIMIT V1, 1);
		SET v1 = v1 + 1;
		END WHILE;
	end if;

		
else if NEW.dt_huella not in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) 
	and NEW.dt_cedula not in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl	= NEW.dt_cl) then
	/*ics_usuario*/

	INSERT INTO ics_usuario set
	usu_id_usuario_opera	=new.dt_cedula,
	usu_nombre				=new.dt_nombre,
	usu_codigo				=new.dt_codigo,
	usu_centro_Costo		=centro_costo ,
	usu_departamento		=departamento ,
	usu_client_creador		=new.dt_cl	  ,
	usu_correo				=new.dt_correo;

	/*id alias*/

	INSERT INTO ics_idalias_usuario
	set
	IdA_Numero_Alias 		=NEW.dt_huella,
	IdA_Identificacion_Usu	=NEW.dt_cedula,
	IdA_cl					=NEW.dt_cl,
	IdA_Finger				=substring(NEW.dt_huella,4,1);
	end if;
	
	if new.dt_all_maqs = 'Si' then
		SET IT  = (SELECT COUNT(maq_serial_maq) FROM ics_maquinas WHERE maq_cl = NEW.dt_cl);
		SET V1 = 0;
		WHILE V1 < IT DO
			-- USUARIO DISPENSADORA
			INSERT INTO ics_usu_dispensadora
			SET 
			udis_idUsuario			 = NEW.dt_huella,
			udis_Serial_Dispensadora = (SELECT (maq_serial_maq) FROM ics_maquinas WHERE maq_cl = NEW.dt_cl LIMIT V1, 1);
		SET v1 = v1 + 1;
		END WHILE;
	end if;
end if;

end if;
end if;

/*cargos*/
if new.dt_cargo in (select car_nombre from ics_cargos where  car_cliente= new.dt_cl ) then
	set cargo= (select id_cargos from ics_cargos where car_nombre = new.dt_cargo and car_cliente =new.dt_cl limit 1 );
else
	INSERT INTO ics_cargos set car_nombre =new.dt_cargo ,car_cliente= new.dt_cl;
set cargo = last_insert_id();
end if;
/*usuario cargo*/
	INSERT INTO ics_usuario_cargo
	set
	fk_id_cargo=cargo,
	fk_cedula_usuario=NEW.dt_cedula;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_total_data_usr_vend_f`
--

DROP TABLE IF EXISTS `ics_total_data_usr_vend_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_total_data_usr_vend_f` (
  `idcrm_total_data_usr` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cedula` varchar(45) DEFAULT NULL,
  `dt_nombre` varchar(245) DEFAULT NULL,
  `dt_huella` varchar(45) DEFAULT NULL,
  `dt_cargo` varchar(245) DEFAULT NULL,
  `dt_perfil` varchar(245) DEFAULT NULL,
  `dt_acumula` varchar(45) DEFAULT NULL,
  `dt_centro_cost` varchar(145) DEFAULT NULL,
  `dt_dto` varchar(145) DEFAULT NULL,
  `dt_correo` varchar(245) DEFAULT NULL,
  `dt_codigo` varchar(45) DEFAULT NULL,
  `dt_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dt_cl` varchar(45) DEFAULT NULL,
  `dt_all_maqs` varchar(45) DEFAULT NULL,
  `dt_error` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcrm_total_data_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_total_data_usr_vend_f`
--

LOCK TABLES `ics_total_data_usr_vend_f` WRITE;
/*!40000 ALTER TABLE `ics_total_data_usr_vend_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_total_data_usr_vend_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_usu_dispensadora`
--

DROP TABLE IF EXISTS `ics_usu_dispensadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usu_dispensadora` (
  `udis_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria, campo  que identifica de forma única a cada fila de la tabla. ',
  `udis_idUsuario` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Llave foranea que me permite identificar el usuario, Codigo de referencia dentro del sistema.',
  `udis_Serial_Dispensadora` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Llave foranea. Serial de la dispensadora (compuesto por 10 caracteres).',
  `udis_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo que  denota  la hora y fecha  en la cual ocurrió la inserción de un registro. ',
  `udis_Estado` int(11) DEFAULT '1' COMMENT '1 -> Activo dentro de esa maquina\n2 ->Desactivado ',
  PRIMARY KEY (`udis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla donde se vincula un usuario a una o varias dispensadoras.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usu_dispensadora`
--

LOCK TABLES `ics_usu_dispensadora` WRITE;
/*!40000 ALTER TABLE `ics_usu_dispensadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usu_dispensadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_usu_per`
--

DROP TABLE IF EXISTS `ics_usu_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usu_per` (
  `usp_idusu_per` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria que identifica el registro',
  `usp_fk_id_usu` varchar(15) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Llave foranea que me permite identificar el usuario',
  `usp_fk_id_perfil` int(11) NOT NULL COMMENT 'Llave foranea que me permite designar un perfil a ese usuario',
  `usp_estado` int(1) NOT NULL DEFAULT '1' COMMENT 'Estado de ese perfil:\n1---> Activo\n0---->Inactivo',
  `usp_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usp_cl` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usp_tipo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Tipo  1 eas 2 vending',
  PRIMARY KEY (`usp_idusu_per`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla donde se agina un perfil a un usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usu_per`
--

LOCK TABLES `ics_usu_per` WRITE;
/*!40000 ALTER TABLE `ics_usu_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usu_per` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ics_usu_per_AINS` AFTER INSERT ON `ics_usu_per` FOR EACH ROW
if(Select conf_tipo from ics_sistem_conf LIMIT 1)!= 3 THEN

	if new.usp_fk_id_usu not in (select Cve_IdUsuario from ics_controlventas where Cve_cl = new.usp_cl) then
		
	INSERT INTO ics_controlventas 
	SET Cve_IdUsuario = NEW.usp_fk_id_usu ,
	Cve_Credito = (SELECT per_nombre_perf FROM ics_perfil WHERE per_id_perfil = NEW.usp_fk_id_perfil LIMIT 1),
	Cve_cl = new.usp_cl ;
	end if;
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_usuario`
--

DROP TABLE IF EXISTS `ics_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usuario` (
  `usu_id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria identificadora del registro mas no del cliente',
  `usu_id_usuario_opera` varchar(15) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Identificador del usuario compuesto por el serial de la máquina+ identificador del cliente+número de usuario en la máquina',
  `usu_nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Nombre del usuario',
  `usu_codigo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_centro_Costo` int(11) DEFAULT NULL COMMENT 'Es la misma seccion que se encuentra dentro de la ubicacion de la maquina\n',
  `usu_departamento` int(11) DEFAULT NULL COMMENT 'Es la subseccino dentro de la ubicaion de la maquina',
  `usu_fecha_crea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usu_estado` int(1) DEFAULT '1' COMMENT 'Estado 1 --> activo , 0 --> inactivo ',
  `usu_fecha_finalizacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT '0000-00-00' COMMENT 'Fecha en la que un usuario termina su contrato dentro de la empresa donde esta localizada la maquina.',
  `usu_client_creador` int(11) DEFAULT NULL COMMENT 'identificador del cliente al que se le crea el usuario (usuario: Persona que tiene acceso unicamente a los productos de la  dispensadora)',
  `usu_correo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usu_foto` blob,
  `usu_usrcreador` varchar(45) COLLATE utf8_spanish_ci DEFAULT 'DESCONOCIDO',
  PRIMARY KEY (`usu_id_usuario`),
  KEY `usu_id_usuario_opera` (`usu_id_usuario_opera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla donde se registran los usuarios que haran uso de las Dispensadoras.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usuario`
--

LOCK TABLES `ics_usuario` WRITE;
/*!40000 ALTER TABLE `ics_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_usuario_cargo`
--

DROP TABLE IF EXISTS `ics_usuario_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usuario_cargo` (
  `idics_usuario_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_cargo` int(11) DEFAULT NULL,
  `fk_cedula_usuario` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `uc_Estado` int(11) DEFAULT '1',
  `uc_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_usuario_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usuario_cargo`
--

LOCK TABLES `ics_usuario_cargo` WRITE;
/*!40000 ALTER TABLE `ics_usuario_cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usuario_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_usuario_recarga`
--

DROP TABLE IF EXISTS `ics_usuario_recarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usuario_recarga` (
  `Ure_idUsuariorec` int(11) NOT NULL AUTO_INCREMENT,
  `Ure_Id_Usuario` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Código que   Identifica al  usuario dentro del sistema.',
  `Ure_Valor_Recarga` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '0' COMMENT 'Valor en pesos de la recarga. ',
  `Ure_Fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo que  denota  la hora y fecha  en la cual ocurrió la inserción de un registro. ',
  `Ure_tipo` int(11) DEFAULT '0' COMMENT 'Tipos de recarga\n1 -> Recarga por importe de dinero. \n0 -> Recarga por GUI.\n2 -> Recarga automática mensual. \n3 ->',
  `Ure_Dispensadora` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Serial de la dispensadora donde el usuario ha efectuado una recarga',
  `Ure_cli` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT '1' COMMENT 'Cliente',
  `Ure_cc` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Ure_idUsuariorec`),
  KEY `Ure_Id_Usuario_idx` (`Ure_Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla en la que se registra  el valor de la recarga que se efectúa  al perfil o crédito de un usuario. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usuario_recarga`
--

LOCK TABLES `ics_usuario_recarga` WRITE;
/*!40000 ALTER TABLE `ics_usuario_recarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usuario_recarga` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ics_usuario_recarga_AINS` AFTER INSERT ON `ics_usuario_recarga` FOR EACH ROW
begin 
declare x varchar(15) ;
	set x = ((select Cve_Credito from ics_controlventas
			  where  Cve_IdUsuario = new.Ure_Id_Usuario and Cve_cl =new.Ure_cli limit 1)+new.Ure_Valor_Recarga);	
call sp_ics_Control_Ventas_uprec(new.Ure_Id_Usuario,x,new.Ure_cli);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ics_usuario_recarga_gui`
--

DROP TABLE IF EXISTS `ics_usuario_recarga_gui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usuario_recarga_gui` (
  `idics_urg` int(11) NOT NULL AUTO_INCREMENT,
  `ics_urg_idhuella` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `ics_urg_credito_anterior` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `ics_urg_credito` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `ics_urg_usuariocreador` varchar(255) CHARACTER SET latin1 DEFAULT 'DESCONOCIDO',
  `ics_urg_fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idics_urg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usuario_recarga_gui`
--

LOCK TABLES `ics_usuario_recarga_gui` WRITE;
/*!40000 ALTER TABLE `ics_usuario_recarga_gui` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usuario_recarga_gui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ics_usuariosistema`
--

DROP TABLE IF EXISTS `ics_usuariosistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ics_usuariosistema` (
  `ust_idususis` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del usuario',
  `ust_usuario` varchar(45) NOT NULL COMMENT 'Nombre de usuario que se usa para el logeo',
  `ust_pass` varchar(45) NOT NULL COMMENT 'Contraseña que se usa para el logeo',
  `ust_perfil` int(1) NOT NULL DEFAULT '2' COMMENT 'Número de perfil al que tiene derecho ese usuario:\n1---->Super usuario\n2---->Administrador \n3---->Operativo\n4---->Tecnico',
  `ust_nombre` varchar(200) NOT NULL COMMENT 'Nombre del usuario',
  `ust_id_cliente` varchar(15) DEFAULT NULL COMMENT 'SI es usuario con perfil de administrador el id de cliente quedara por defecto en 1, ya que este usuario puede administrar la operación de su propia empresa.\nid del cliente al que un usuario operativo consulta los informes.',
  `ust_id_administrador` int(11) DEFAULT NULL COMMENT 'Id proveniente de la variable de session del usuario administrador que crea un usuario operativo. ',
  PRIMARY KEY (`ust_idususis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1.	En esta tabla se registran los usuarios del sistema, datos de acceso y  privilegios	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ics_usuariosistema`
--

LOCK TABLES `ics_usuariosistema` WRITE;
/*!40000 ALTER TABLE `ics_usuariosistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `ics_usuariosistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vi_centro_costos`
--

DROP TABLE IF EXISTS `vi_centro_costos`;
/*!50001 DROP VIEW IF EXISTS `vi_centro_costos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_centro_costos` AS SELECT 
 1 AS `idcentro`,
 1 AS `nombrecentro`,
 1 AS `cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_client_tipoapp`
--

DROP TABLE IF EXISTS `vi_client_tipoapp`;
/*!50001 DROP VIEW IF EXISTS `vi_client_tipoapp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_client_tipoapp` AS SELECT 
 1 AS `TIPO`,
 1 AS `IDCLIENT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_clientes`
--

DROP TABLE IF EXISTS `vi_clientes`;
/*!50001 DROP VIEW IF EXISTS `vi_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_clientes` AS SELECT 
 1 AS `cli_id_cliente`,
 1 AS `cli_nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_compras_bi`
--

DROP TABLE IF EXISTS `vi_compras_bi`;
/*!50001 DROP VIEW IF EXISTS `vi_compras_bi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_compras_bi` AS SELECT 
 1 AS `HUELLA`,
 1 AS `CC`,
 1 AS `NOMBRE`,
 1 AS `SUBSECCION`,
 1 AS `Area`,
 1 AS `SELECCIóN`,
 1 AS `PRODUCTO`,
 1 AS `CANTIDAD`,
 1 AS `COSTO UNIT`,
 1 AS `COSTO TOTAL`,
 1 AS `DISPENSADORA`,
 1 AS `FECHAC`,
 1 AS `FECHA`,
 1 AS `HORA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_consxuser`
--

DROP TABLE IF EXISTS `vi_consxuser`;
/*!50001 DROP VIEW IF EXISTS `vi_consxuser`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_consxuser` AS SELECT 
 1 AS `ful_cc_usr`,
 1 AS `usu_nombre`,
 1 AS `ful_idusu`,
 1 AS `usu_departamento`,
 1 AS `usu_centro_Costo`,
 1 AS `cantidad`,
 1 AS `valor`,
 1 AS `ful_cl`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_departamentos`
--

DROP TABLE IF EXISTS `vi_departamentos`;
/*!50001 DROP VIEW IF EXISTS `vi_departamentos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_departamentos` AS SELECT 
 1 AS `iddep`,
 1 AS `nombredep`,
 1 AS `ccdep`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_dispensadoras_1p`
--

DROP TABLE IF EXISTS `vi_dispensadoras_1p`;
/*!50001 DROP VIEW IF EXISTS `vi_dispensadoras_1p`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_dispensadoras_1p` AS SELECT 
 1 AS `ful_idmaq`,
 1 AS `mar_descrip`,
 1 AS `sbs_nombre`,
 1 AS `valor_sel`,
 1 AS `ful_fechacrea`,
 1 AS `id_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_dispensadoras_2`
--

DROP TABLE IF EXISTS `vi_dispensadoras_2`;
/*!50001 DROP VIEW IF EXISTS `vi_dispensadoras_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_dispensadoras_2` AS SELECT 
 1 AS `ful_numsel`,
 1 AS `ite_id_item`,
 1 AS `ite_nom_item`,
 1 AS `ite_valor`,
 1 AS `cantidad`,
 1 AS `total`,
 1 AS `fecha`,
 1 AS `ful_idmaq`,
 1 AS `id_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_estado_maquina`
--

DROP TABLE IF EXISTS `vi_estado_maquina`;
/*!50001 DROP VIEW IF EXISTS `vi_estado_maquina`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_estado_maquina` AS SELECT 
 1 AS `cit_seleccion`,
 1 AS `cit_itemrestante`,
 1 AS `det_minimo_item`,
 1 AS `det_maximo_item`,
 1 AS `porcent`,
 1 AS `fk_cit_iditem`,
 1 AS `maquina`,
 1 AS `planometria`,
 1 AS `ite_nom_item`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_full_data`
--

DROP TABLE IF EXISTS `vi_full_data`;
/*!50001 DROP VIEW IF EXISTS `vi_full_data`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_full_data` AS SELECT 
 1 AS `ful_idusu`,
 1 AS `ful_numsel`,
 1 AS `ite_nom_item`,
 1 AS `ful_valsel`,
 1 AS `ful_idmaq`,
 1 AS `ful_fechacrea`,
 1 AS `fk_punt_id_clien`,
 1 AS `usu_nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_cliente`
--

DROP TABLE IF EXISTS `vi_ics_cliente`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_cliente` AS SELECT 
 1 AS `cli`,
 1 AS `ser_maq`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_cliente_maq`
--

DROP TABLE IF EXISTS `vi_ics_cliente_maq`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_cliente_maq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_cliente_maq` AS SELECT 
 1 AS `maq_serial_maq`,
 1 AS `maq_ref_maq`,
 1 AS `fk_maq_punto_maqn`,
 1 AS `cli_razon_social`,
 1 AS `cli_id_cliente`,
 1 AS `mar_descrip`,
 1 AS `tip_descripcion_tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_deta_planome`
--

DROP TABLE IF EXISTS `vi_ics_deta_planome`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_deta_planome`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_deta_planome` AS SELECT 
 1 AS `seleccion`,
 1 AS `max_items`,
 1 AS `id_item`,
 1 AS `idplano`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_firm_tarj`
--

DROP TABLE IF EXISTS `vi_ics_firm_tarj`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_firm_tarj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_firm_tarj` AS SELECT 
 1 AS `version`,
 1 AS `firm`,
 1 AS `maq`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_huella_perfil`
--

DROP TABLE IF EXISTS `vi_ics_huella_perfil`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_huella_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_huella_perfil` AS SELECT 
 1 AS `usu_id_usuario`,
 1 AS `usu_id_usuario_opera`,
 1 AS `usu_nombre`,
 1 AS `usu_codigo`,
 1 AS `usu_cargo`,
 1 AS `IdA_Numero_Alias`,
 1 AS `IdA_Estado_Enrolamiento`,
 1 AS `IdA_Estado_Usuario`,
 1 AS `usu_correo`,
 1 AS `cliente`,
 1 AS `usu_client_creador`,
 1 AS `usu_centro_Costo`,
 1 AS `usu_departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_idalias`
--

DROP TABLE IF EXISTS `vi_ics_idalias`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_idalias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_idalias` AS SELECT 
 1 AS `IdA_Identificacion_Usu`,
 1 AS `IdA_Numero_Alias`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_item_perfil`
--

DROP TABLE IF EXISTS `vi_ics_item_perfil`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_item_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_item_perfil` AS SELECT 
 1 AS `items`,
 1 AS `usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_item_usu`
--

DROP TABLE IF EXISTS `vi_ics_item_usu`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_item_usu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_item_usu` AS SELECT 
 1 AS `citem`,
 1 AS `maquinita`,
 1 AS `seleccioni`,
 1 AS `estpla`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_maq_items`
--

DROP TABLE IF EXISTS `vi_ics_maq_items`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_maq_items`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_maq_items` AS SELECT 
 1 AS `idmaquinna`,
 1 AS `idtem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_maq_tarj`
--

DROP TABLE IF EXISTS `vi_ics_maq_tarj`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_maq_tarj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_maq_tarj` AS SELECT 
 1 AS `inter`,
 1 AS `maq`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_mensaj_clientes_desc`
--

DROP TABLE IF EXISTS `vi_ics_mensaj_clientes_desc`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_mensaj_clientes_desc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_mensaj_clientes_desc` AS SELECT 
 1 AS `mme_nombre`,
 1 AS `mme_descripcion_mens`,
 1 AS `Cat_Nombre_Categoria`,
 1 AS `fk_dme_id_cliente`,
 1 AS `fk_men_serial_maq`,
 1 AS `men_fecha`,
 1 AS `men_detalle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_mensajes_clientes`
--

DROP TABLE IF EXISTS `vi_ics_mensajes_clientes`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_mensajes_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_mensajes_clientes` AS SELECT 
 1 AS `men_id_mensaje`,
 1 AS `mme_nombre`,
 1 AS `mme_descripcion_mens`,
 1 AS `Cat_Nombre_Categoria`,
 1 AS `fk_dme_id_cliente`,
 1 AS `fk_men_serial_maq`,
 1 AS `men_fecha`,
 1 AS `men_detalle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_min_esp`
--

DROP TABLE IF EXISTS `vi_ics_min_esp`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_min_esp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_min_esp` AS SELECT 
 1 AS `planomet`,
 1 AS `sel`,
 1 AS `min_item`,
 1 AS `maq`,
 1 AS `max`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_orden_compras`
--

DROP TABLE IF EXISTS `vi_ics_orden_compras`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_orden_compras`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_orden_compras` AS SELECT 
 1 AS `id_orden_comp`,
 1 AS `tipo_orden`,
 1 AS `serial_mq`,
 1 AS `id_clie`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_sel_perf`
--

DROP TABLE IF EXISTS `vi_ics_sel_perf`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_sel_perf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_sel_perf` AS SELECT 
 1 AS `per_id_perfil`,
 1 AS `per_nombre_perf`,
 1 AS `per_cliente`,
 1 AS `per_tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ics_sum_item`
--

DROP TABLE IF EXISTS `vi_ics_sum_item`;
/*!50001 DROP VIEW IF EXISTS `vi_ics_sum_item`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ics_sum_item` AS SELECT 
 1 AS `suma`,
 1 AS `planom`,
 1 AS `maquin`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_id_nom_items`
--

DROP TABLE IF EXISTS `vi_id_nom_items`;
/*!50001 DROP VIEW IF EXISTS `vi_id_nom_items`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_id_nom_items` AS SELECT 
 1 AS `ite_id_item`,
 1 AS `ite_nom_item`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_item_dispensados`
--

DROP TABLE IF EXISTS `vi_item_dispensados`;
/*!50001 DROP VIEW IF EXISTS `vi_item_dispensados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_item_dispensados` AS SELECT 
 1 AS `fk_id_item_det`,
 1 AS `cantidad`,
 1 AS `ite_nom_item`,
 1 AS `ite_valor`,
 1 AS `Total`,
 1 AS `Fecha_Ultima_Disp`,
 1 AS `id_cliente`,
 1 AS `ful_idmaq`,
 1 AS `Fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_item_menos_disp`
--

DROP TABLE IF EXISTS `vi_item_menos_disp`;
/*!50001 DROP VIEW IF EXISTS `vi_item_menos_disp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_item_menos_disp` AS SELECT 
 1 AS `id_usuario`,
 1 AS `numeroseleecio`,
 1 AS `suma`,
 1 AS `Maquina`,
 1 AS `Cliente`,
 1 AS `punto`,
 1 AS `Item`,
 1 AS `Nombre_Item`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_item_prov`
--

DROP TABLE IF EXISTS `vi_item_prov`;
/*!50001 DROP VIEW IF EXISTS `vi_item_prov`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_item_prov` AS SELECT 
 1 AS `ite_id_item`,
 1 AS `ite_nom_item`,
 1 AS `ite_valor`,
 1 AS `fk_proveedor_ite`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_maq_pun_clie`
--

DROP TABLE IF EXISTS `vi_maq_pun_clie`;
/*!50001 DROP VIEW IF EXISTS `vi_maq_pun_clie`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_maq_pun_clie` AS SELECT 
 1 AS `maq_serial_maq`,
 1 AS `maq_ref_maq`,
 1 AS `fk_maq_tipo_maqn`,
 1 AS `fk_maq_marca_maqn`,
 1 AS `subseccion`,
 1 AS `maq_estado`,
 1 AS `maq_img`,
 1 AS `sbs_id_subseccion`,
 1 AS `sbs_nombre`,
 1 AS `fk_punt_id_clien`,
 1 AS `mar_descrip`,
 1 AS `tip_descripcion_tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_maq_punto_cli`
--

DROP TABLE IF EXISTS `vi_maq_punto_cli`;
/*!50001 DROP VIEW IF EXISTS `vi_maq_punto_cli`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_maq_punto_cli` AS SELECT 
 1 AS `suma`,
 1 AS `maquina`,
 1 AS `Cliente`,
 1 AS `punto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_maq_punto_cli_men`
--

DROP TABLE IF EXISTS `vi_maq_punto_cli_men`;
/*!50001 DROP VIEW IF EXISTS `vi_maq_punto_cli_men`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_maq_punto_cli_men` AS SELECT 
 1 AS `suma`,
 1 AS `maquina`,
 1 AS `Cliente`,
 1 AS `punto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_maquina_producto`
--

DROP TABLE IF EXISTS `vi_maquina_producto`;
/*!50001 DROP VIEW IF EXISTS `vi_maquina_producto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_maquina_producto` AS SELECT 
 1 AS `ful_idmaq`,
 1 AS `cantidad`,
 1 AS `ful_numsel`,
 1 AS `ite_valor`,
 1 AS `valor_total`,
 1 AS `ite_nom_item`,
 1 AS `fecha`,
 1 AS `id_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_marca_maq`
--

DROP TABLE IF EXISTS `vi_marca_maq`;
/*!50001 DROP VIEW IF EXISTS `vi_marca_maq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_marca_maq` AS SELECT 
 1 AS `mar_descrip`,
 1 AS `maq_serial_maq`,
 1 AS `maq_ref_maq`,
 1 AS `cli_nombre`,
 1 AS `cli_documento`,
 1 AS `pun_nombre`,
 1 AS `pun_id_punto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_mens_configurados`
--

DROP TABLE IF EXISTS `vi_mens_configurados`;
/*!50001 DROP VIEW IF EXISTS `vi_mens_configurados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_mens_configurados` AS SELECT 
 1 AS `mme_codigo`,
 1 AS `dme_id_det_mensaje`,
 1 AS `seriald`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_prod_xcl`
--

DROP TABLE IF EXISTS `vi_prod_xcl`;
/*!50001 DROP VIEW IF EXISTS `vi_prod_xcl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_prod_xcl` AS SELECT 
 1 AS `ite_id_item`,
 1 AS `ite_nom_item`,
 1 AS `ite_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_productos_1`
--

DROP TABLE IF EXISTS `vi_productos_1`;
/*!50001 DROP VIEW IF EXISTS `vi_productos_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_productos_1` AS SELECT 
 1 AS `ite_nom_item`,
 1 AS `ite_valor`,
 1 AS `cantidad`,
 1 AS `total`,
 1 AS `Fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_productos_1p`
--

DROP TABLE IF EXISTS `vi_productos_1p`;
/*!50001 DROP VIEW IF EXISTS `vi_productos_1p`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_productos_1p` AS SELECT 
 1 AS `ite_nom_item`,
 1 AS `ite_valor`,
 1 AS `ite_id_item`,
 1 AS `Fecha`,
 1 AS `cliente`,
 1 AS `ful_idmaq`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_productos_caterin`
--

DROP TABLE IF EXISTS `vi_productos_caterin`;
/*!50001 DROP VIEW IF EXISTS `vi_productos_caterin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_productos_caterin` AS SELECT 
 1 AS `ite_id_item`,
 1 AS `ite_nom_item`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_prov_cliente`
--

DROP TABLE IF EXISTS `vi_prov_cliente`;
/*!50001 DROP VIEW IF EXISTS `vi_prov_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_prov_cliente` AS SELECT 
 1 AS `ite_id_item`,
 1 AS `ite_nom_item`,
 1 AS `fk_proveedor_ite`,
 1 AS `per_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_prov_maq_usu`
--

DROP TABLE IF EXISTS `vi_prov_maq_usu`;
/*!50001 DROP VIEW IF EXISTS `vi_prov_maq_usu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_prov_maq_usu` AS SELECT 
 1 AS `ID_proveedor`,
 1 AS `Nombre_provee`,
 1 AS `cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_provedores_maq`
--

DROP TABLE IF EXISTS `vi_provedores_maq`;
/*!50001 DROP VIEW IF EXISTS `vi_provedores_maq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_provedores_maq` AS SELECT 
 1 AS `idprovee`,
 1 AS `razon`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_puntos`
--

DROP TABLE IF EXISTS `vi_puntos`;
/*!50001 DROP VIEW IF EXISTS `vi_puntos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_puntos` AS SELECT 
 1 AS `idpun`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_seccion_cliente`
--

DROP TABLE IF EXISTS `vi_seccion_cliente`;
/*!50001 DROP VIEW IF EXISTS `vi_seccion_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_seccion_cliente` AS SELECT 
 1 AS `ID_SECCION`,
 1 AS `NOM_SECCION`,
 1 AS `ID_CLIENTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_seccion_us_bi`
--

DROP TABLE IF EXISTS `vi_seccion_us_bi`;
/*!50001 DROP VIEW IF EXISTS `vi_seccion_us_bi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_seccion_us_bi` AS SELECT 
 1 AS `USUARIO`,
 1 AS `SECCION`,
 1 AS `FECHA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_status_bi`
--

DROP TABLE IF EXISTS `vi_status_bi`;
/*!50001 DROP VIEW IF EXISTS `vi_status_bi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_status_bi` AS SELECT 
 1 AS `x`,
 1 AS `CANTIDAD_V`,
 1 AS `PORC_VENT_OK`,
 1 AS `CANTIDAD_F`,
 1 AS `PORC_VENT_FALL`,
 1 AS `CANT_USR`,
 1 AS `CANT_USR_CONS`,
 1 AS `PORC_USR`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_status_ma_bi`
--

DROP TABLE IF EXISTS `vi_status_ma_bi`;
/*!50001 DROP VIEW IF EXISTS `vi_status_ma_bi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_status_ma_bi` AS SELECT 
 1 AS `x`,
 1 AS `CANTIDAD_V`,
 1 AS `PORC_VENT_OK`,
 1 AS `CANTIDAD_F`,
 1 AS `PORC_VENT_FALL`,
 1 AS `CANT_USR`,
 1 AS `CANT_USR_CONS`,
 1 AS `PORC_USR`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_subseccion_1`
--

DROP TABLE IF EXISTS `vi_subseccion_1`;
/*!50001 DROP VIEW IF EXISTS `vi_subseccion_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_subseccion_1` AS SELECT 
 1 AS `ful_idmaq`,
 1 AS `sbs_nombre`,
 1 AS `sbs_id_subseccion`,
 1 AS `ful_idusu`,
 1 AS `valor`,
 1 AS `usu_nombre`,
 1 AS `ite_nom_item`,
 1 AS `id_cliente`,
 1 AS `ful_fechacrea`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_tar_maq`
--

DROP TABLE IF EXISTS `vi_tar_maq`;
/*!50001 DROP VIEW IF EXISTS `vi_tar_maq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_tar_maq` AS SELECT 
 1 AS `tar_id_tarjetas`,
 1 AS `fk_id_maquina`,
 1 AS `punto`,
 1 AS `cli_id_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ult_trama`
--

DROP TABLE IF EXISTS `vi_ult_trama`;
/*!50001 DROP VIEW IF EXISTS `vi_ult_trama`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ult_trama` AS SELECT 
 1 AS `nserie`,
 1 AS `ult_fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usu_cl_punto_maq`
--

DROP TABLE IF EXISTS `vi_usu_cl_punto_maq`;
/*!50001 DROP VIEW IF EXISTS `vi_usu_cl_punto_maq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usu_cl_punto_maq` AS SELECT 
 1 AS `id_usuario`,
 1 AS `suma`,
 1 AS `Maquina`,
 1 AS `Cliente`,
 1 AS `punto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usu_desac_up`
--

DROP TABLE IF EXISTS `vi_usu_desac_up`;
/*!50001 DROP VIEW IF EXISTS `vi_usu_desac_up`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usu_desac_up` AS SELECT 
 1 AS `IdA_Numero_Alias`,
 1 AS `usu_id_usuario_opera`,
 1 AS `usu_nombre`,
 1 AS `car_nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usu_men_cl_punto_maq`
--

DROP TABLE IF EXISTS `vi_usu_men_cl_punto_maq`;
/*!50001 DROP VIEW IF EXISTS `vi_usu_men_cl_punto_maq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usu_men_cl_punto_maq` AS SELECT 
 1 AS `id_usuario`,
 1 AS `suma`,
 1 AS `Maquina`,
 1 AS `Cliente`,
 1 AS `punto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usuario_items`
--

DROP TABLE IF EXISTS `vi_usuario_items`;
/*!50001 DROP VIEW IF EXISTS `vi_usuario_items`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usuario_items` AS SELECT 
 1 AS `ful_idusu`,
 1 AS `ful_idmaq`,
 1 AS `sel`,
 1 AS `ful_fechacrea`,
 1 AS `IdA_Identificacion_Usu`,
 1 AS `usu_nombre`,
 1 AS `cc`,
 1 AS `id_cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usuario_items2`
--

DROP TABLE IF EXISTS `vi_usuario_items2`;
/*!50001 DROP VIEW IF EXISTS `vi_usuario_items2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usuario_items2` AS SELECT 
 1 AS `ful_idusu`,
 1 AS `ful_idmaq`,
 1 AS `sel`,
 1 AS `ful_fechacrea`,
 1 AS `IdA_Identificacion_Usu`,
 1 AS `usu_nombre`,
 1 AS `cc`,
 1 AS `id_cliente`,
 1 AS `ite_nom_item`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usuario_perfil`
--

DROP TABLE IF EXISTS `vi_usuario_perfil`;
/*!50001 DROP VIEW IF EXISTS `vi_usuario_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usuario_perfil` AS SELECT 
 1 AS `usu_id_usuario_opera`,
 1 AS `usu_nombre`,
 1 AS `usu_centro_Costo`,
 1 AS `per_nombre_perf`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_usuarios_opera`
--

DROP TABLE IF EXISTS `vi_usuarios_opera`;
/*!50001 DROP VIEW IF EXISTS `vi_usuarios_opera`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_usuarios_opera` AS SELECT 
 1 AS `usu_id_usuario_opera`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_venta_fall`
--

DROP TABLE IF EXISTS `vi_venta_fall`;
/*!50001 DROP VIEW IF EXISTS `vi_venta_fall`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_venta_fall` AS SELECT 
 1 AS `n`,
 1 AS `id`,
 1 AS `s`,
 1 AS `m`,
 1 AS `cl`,
 1 AS `cc`,
 1 AS `f`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ventas_bi`
--

DROP TABLE IF EXISTS `vi_ventas_bi`;
/*!50001 DROP VIEW IF EXISTS `vi_ventas_bi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ventas_bi` AS SELECT 
 1 AS `SUB_AREA`,
 1 AS `AREA`,
 1 AS `SELECCIÓN`,
 1 AS `DESCRIPCION`,
 1 AS `CANTIDAD`,
 1 AS `COSTO_UNIT`,
 1 AS `DISPENSADORA`,
 1 AS `FECHA`,
 1 AS `FECHAC`,
 1 AS `CL`,
 1 AS `TAPP`,
 1 AS `CODIGO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vi_ventas_eas`
--

DROP TABLE IF EXISTS `vi_ventas_eas`;
/*!50001 DROP VIEW IF EXISTS `vi_ventas_eas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vi_ventas_eas` AS SELECT 
 1 AS `SUBSECCION`,
 1 AS `Area`,
 1 AS `SELECCIÓN`,
 1 AS `DESCRIPCION`,
 1 AS `CANTIDAD`,
 1 AS `COSTO_UNIT`,
 1 AS `DISPENSADORA`,
 1 AS `FECHA`,
 1 AS `FECHAC`,
 1 AS `CL`,
 1 AS `TAPP`,
 1 AS `NOMBRE`,
 1 AS `CEDULA`,
 1 AS `ID_HUELLA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vis_cantid_trans`
--

DROP TABLE IF EXISTS `vis_cantid_trans`;
/*!50001 DROP VIEW IF EXISTS `vis_cantid_trans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vis_cantid_trans` AS SELECT 
 1 AS `usu`,
 1 AS `maq`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vis_ics_item_restante`
--

DROP TABLE IF EXISTS `vis_ics_item_restante`;
/*!50001 DROP VIEW IF EXISTS `vis_ics_item_restante`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vis_ics_item_restante` AS SELECT 
 1 AS `idcontro`,
 1 AS `nitem`,
 1 AS `maq`,
 1 AS `selec`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vis_ics_oco_doc`
--

DROP TABLE IF EXISTS `vis_ics_oco_doc`;
/*!50001 DROP VIEW IF EXISTS `vis_ics_oco_doc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vis_ics_oco_doc` AS SELECT 
 1 AS `sele`,
 1 AS `iditem`,
 1 AS `id_detalle_oc`,
 1 AS `serialmaq`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'ics_instalador_v19'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `evento_database_d_v14` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`Userics`@`%`*/ /*!50106 EVENT `evento_database_d_v14` ON SCHEDULE EVERY 1 MINUTE STARTS '2015-09-07 11:03:23' ON COMPLETION NOT PRESERVE DISABLE DO call SP_ALERT_OFF() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'ics_instalador_v19'
--
/*!50003 DROP FUNCTION IF EXISTS `Fn_Actualiza_Estado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Fn_Actualiza_Estado`(u varchar(15), m int,d int,a int, c varchar(45)) RETURNS date
    DETERMINISTIC
BEGIN
-- actualiza el estado de un usuario si su fecha de finalizacion de contrato 
-- es menor o igual a la fecha actual.
	DECLARE FECHA DATE;
	declare cc varchar(15);
	SET FECHA = concat(a,'-',m,'-',d); -- fecha actual 
	set cc = (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_Numero_Alias = u and IdA_cl = c limit 1);
	UPDATE ics_usuario	set usu_estado =  0 where  usu_id_usuario_opera = cc and usu_fecha_finalizacion <= FECHA AND usu_fecha_finalizacion != 0000-00-00;     
RETURN FECHA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_Autorizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Autorizacion`(dato varchar(400)) RETURNS varchar(60) CHARSET latin1
    DETERMINISTIC
BEGIN

		DECLARE datos 				varchar(400);
		DECLARE Tamano_Pet 			INT;		
		DECLARE aut 				varchar(56);		
		DECLARE peticion 	,maquina		varchar(45);	

		SET datos= dato;
		SET Tamano_Pet 		= LENGTH(datos);
		SET peticion  		= substring(datos,1,1);
		set aut				= '8';

		set maquina			= substring(datos,-10);
case peticion

-- ____EAS _____________________________________________________________________________________________________________________________________________
WHEN '0' THEN set aut = FN_ICS_TRAMA_0(Tamano_Pet,datos);

WHEN '1' THEN set aut = FN_ICS_TRAMA_1(Tamano_Pet,datos);

WHEN '2' THEN set aut = FN_ICS_TRAMA_2(Tamano_Pet,datos);

WHEN '3' THEN set aut = FN_ICS_TRAMA_3(Tamano_Pet,datos);

WHEN '4' THEN set aut = FN_ICS_TRAMA_4(Tamano_Pet,datos);		

-- ___VENDING / TELEMETRIA ____________________________________________________________________________________________________________________________________

WHEN 'Z' THEN set aut = FN_ICS_TRAMA_Z(Tamano_Pet,datos);		
	
WHEN 'Y' THEN set aut = FN_ICS_TRAMA_Y(Tamano_Pet,datos);	

WHEN 'X' THEN set aut = FN_ICS_TRAMA_X(Tamano_Pet,datos);	

WHEN 'W' THEN set aut = FN_ICS_TRAMA_W(Tamano_Pet,datos);	

WHEN 'V' THEN set aut = FN_ICS_TRAMA_V(Tamano_Pet,datos);	
	
WHEN 'U' THEN set aut = FN_ICS_TRAMA_U(Tamano_Pet,datos);	

WHEN 'T' THEN set aut = FN_ICS_TRAMA_T(Tamano_Pet,datos);
	
WHEN 'S' THEN set aut = FN_ICS_TRAMA_S(Tamano_Pet,datos);

WHEN 'R' THEN set aut = FN_ICS_TRAMA_R(Tamano_Pet,datos);	
-- ----------------------------------
WHEN 'Q' THEN set aut = FN_ICS_TRAMA_Q(Tamano_Pet,datos);
	
WHEN 'P' THEN set aut = FN_ICS_TRAMA_P(Tamano_Pet,datos);
	
WHEN 'O' THEN set aut = FN_ICS_TRAMA_O(Tamano_Pet,datos);

WHEN 'N' THEN set aut = FN_ICS_TRAMA_N(datos);

WHEN 'M' THEN set aut = FN_ICS_TRAMA_M(datos);

-- -----------------------------------
WHEN 'K' THEN set aut = FN_ICS_TRAMA_K(datos);

WHEN 'L' THEN set aut = FN_ICS_TRAMA_L(datos);
ELSE 	
	SET aut='5';
end case;
update ics_mensaje set men_estado = 0 where fk_men_error = '0015'  and fk_men_serial_maq = maquina;

INSERT INTO ics_log  set log_trama = datos,log_rta=aut,  log_maq =maquina;	
RETURN aut;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_Autorizacion_cing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Autorizacion_cing`(trama varchar(145)) RETURNS varchar(146) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE IND, USUARIO , MAQUINA , CREDITO , RECARGA, NOMBRE,CEDULA VARCHAR(245);
DECLARE CLIENTE INT;
SET IND 	= substring(trama,1,1) ;
SET USUARIO = substring(trama,2,6) ;
SET MAQUINA = substring(trama,8,10) ;
SET CLIENTE = (SELECT MAQ_CL FROM  ics_maquinas WHERE maq_serial_maq = MAQUINA LIMIT 1);
set CEDULA 	 =(SELECT IdA_Identificacion_Usu from ics_idalias_usuario where IdA_Numero_Alias= USUARIO limit 1);
SET NOMBRE = (SELECT usu_nombre FROM ics_usuario WHERE  usu_id_usuario_opera = CEDULA and usu_client_creador = CLIENTE  LIMIT 1);

INSERT INTO `ics_instalador_v19`.`ics_log`
(`log_trama`)
VALUES
(trama);

CASE IND 
WHEN 0 THEN



	if USUARIO in (select udis_idUsuario from ics_usu_dispensadora where udis_Serial_Dispensadora = MAQUINA  and udis_Estado = 1) then
			SET CREDITO = (SELECT Cve_Credito from ics_controlventas where Cve_IdUsuario = USUARIO and Cve_cl = CLIENTE  LIMIT 1);
		IF CREDITO IS NULL THEN 
			RETURN CONCAT('0*',NOMBRE,'*0');
		ELSE	
			RETURN CONCAT('1*',NOMBRE,'*',CREDITO);
		END IF;	
	ELSE
		 RETURN CONCAT('0*USUARIO NO HABILITADO *0');

	end if;
    
WHEN 2 THEN
	
SET RECARGA = (substring(trama,18,( length(trama))) );

INSERT INTO ics_usuario_recarga set 
Ure_Id_Usuario=USUARIO,
Ure_Valor_Recarga=RECARGA,
Ure_tipo=3,
Ure_Dispensadora=MAQUINA,
Ure_cc=(select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_Numero_Alias= USUARIO and IdA_cl = CLIENTE limit 1),
Ure_cli = CLIENTE;

		SET CREDITO = (SELECT Cve_Credito from ics_controlventas where Cve_IdUsuario = USUARIO  and Cve_cl = CLIENTE  LIMIT 1);
		IF CREDITO IS NULL THEN 
			RETURN '0';
		ELSE	
			RETURN CREDITO;
		END IF;	
END CASE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_Cantidad_Perfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Cantidad_Perfil`(us varchar(10), it int, cl varchar(45)  ) RETURNS varchar(10) CHARSET latin1
    DETERMINISTIC
BEGIN
declare cant varchar(45) ;-- cantidad de items asignados en un perfil
set cant =( select dp.det_cantidades from ics_deta_perfil as dp 	inner join ics_usu_per as usu 
	  on usu.usp_fk_id_perfil= dp.fk_det_id_perf and usu.usp_estado = 1 where usu.usp_fk_id_usu=us	and dp.fk_det_id_item=it and  usu.usp_cl =cl);
RETURN cant;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_CARGOS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_CARGOS`(cargo varchar(45),cliente varchar(454)) RETURNS int(11)
    DETERMINISTIC
BEGIN
	if cargo in (select car_nombre from ics_cargos where car_cliente = cliente ) then
		return (select id_cargos from ics_cargos where car_cliente = cliente and car_nombre = cargo limit 1);
	else
		INSERT INTO ics_cargos set car_nombre =cargo ,car_cliente=cliente;
		return last_insert_id();
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_Control_Autoriza` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_Control_Autoriza`(u varchar(11),
 m varchar(10),s varchar(2),i int, cl varchar(45)) RETURNS varchar(56) CHARSET latin1
    DETERMINISTIC
begin 
		declare mes 			int(2);
		declare dia 			int(2);
		declare semana 			int(2);
		declare per				int;	
		declare periodo 		int(1);
		declare perfil 			int;
		declare n_transacciones int;
		declare td 				int;
		declare fuld 			time;
		declare timedif 		datetime;
		declare hora 			int;
		declare minut 			int;
		declare anioa  			int;
        declare estado_peticion varchar(45);

		declare est_user 		int;
	
		declare a 				int;
		declare b 				int;
		declare c 				int; 
		declare cantidd			varchar(3); -- puede tomar el valor de ilm
		declare aut 			int;
		declare cit 			int(4);
		declare long_maq 		int;
		declare f				date;
		declare echo      varchar(46);
		set perfil=0;
		set mes     =(select  month(current_date));
		set dia     =(select day(current_date));
		set anioa   =(select year(current_date));
		set semana  =(select week(current_date,1));-- Semana actual
		
	
	-- set f =Fn_Actualiza_Estado(u,mes,dia,anioa,cl); -- funcion q actualiza el estado deun usuario si el tiemmpo de su contrato a vencido
	
--  cantidad de items 
-- set cit =(select citem FROM unificada_prueba_replica.vi_ics_item_usu where maquinita=m and seleccioni=s );

-- tiempo de dispensacion de ese item en ese perfil cada perfil de cada cliente es diferennte 
set td=(select dp.det_tiempodispen from ics_deta_perfil as dp inner join ics_usu_per as usu 
		on usu.usp_fk_id_perfil= dp.fk_det_id_perf	where usu.usp_fk_id_usu=u and dp.fk_det_id_item=i and usu.usp_estado=1 limit 1);
-- set echo='entro';

		-- if cit != 0 then -- --  hay items -- cada perfil es difente 	
	set perfil = fn_perfil_item(i,u); -- consulta si el item (i) se encuentra dentro de ese perfil 
	
    IF perfil = 1 
	THEN 
					SET n_transacciones=(SELECT count(ful_idusu) FROM ics_fulldata		WHERE ful_idusu		   = u AND ful_cl = cl AND ful_item = i); 
					-- estado del usuario dentro de una dispensadora  
					SET est_user 	   =(SELECT count(*) 		 FROM ics_idalias_usuario WHERE IdA_Numero_Alias = u AND IdA_cl = cl AND IdA_Estado_Enrolamiento =1);
			
			if n_transacciones= 0 -- si no ha realizado transacciones
			then							
				-- Asigna a c las cantidades que tiene permitidas
				set cantidd=fn_Cantidad_Perfil(u,i,cl);
				
					if cantidd = 'ilm'
					then
							set c=1;
					else
							set c = cantidd;
					end if;
			ELSE -- si tiene transacciones

					SET fuld  = fn_ult_disp(i,u,cl); -- calcula en minutos el tiempo de la ultima dispensacion de ese item
					SET hora  = (SELECT HOUR(fuld))*60;
					SET minut = (SELECT MINUTE(fuld))+hora;
					
						IF minut >=td then
							set cantidd=fn_Cantidad_Perfil(u,i,cl);
							set periodo = ( select p.per_periodo_recarga from ics_perfil as p 
											inner join ics_usu_per as usu on usu.usp_fk_id_perfil = p.per_id_perfil
											where p.per_cliente= cl and usu.usp_fk_id_usu= u and usu.usp_estado =1);		

							IF est_user > 0 then -- si el estado del usuario es activo
								IF cantidd != 'ilm' -- si no es ilimitado 
								then				
								-- a <- Numero de selecciones que ha realizado el usuario en ese mes, semana o dia
								-- b <- Cantidad de selecciones a las que tiene derecho 
								-- c <- b-a 	
								
									case  periodo 
										when 1  -- Mensual 
										then 
											set per = (select month(current_date)); -- mes actual
											set a 	=fn_items_dispensados(i,u,per,periodo,anioa,mes);
											set b 	=fn_Cantidad_Perfil(u,i,cl);	
											set c 	=b-a; 																	
										when 2  -- semanal
										then														
											set per = (select week(current_date,1));-- semana actual 		
											set a 	=fn_items_dispensados(i,u,per,periodo,anioa,mes);
											set b 	=fn_Cantidad_Perfil(u,i,cl);	
											set c 	=b-a;
										when 3	-- diario							
											then
											set per = (select day(current_date));   -- dia actual		
											set a 	=fn_items_dispensados(i,u,per,periodo,anioa,mes);														
											set b 	=fn_Cantidad_Perfil(u,i,cl);	
											set c 	=b-a; 										
									end case; 	-- termina de validar el periodo de recarga
								else -- si es ilimitado								
									set c=1;
								end if; -- termina si es ilimitado

							else -- si no esta activo
								set estado_peticion='NA'; -- usuario no activo
							end if; -- termina valida estado del usuario						
						else -- valida tiempo
							set estado_peticion='TD'; -- tiempo entre dispensaciones 
						end if; -- --fin valida tiempo					
			End if; -- valida transacciones 
                
		  else
				set estado_peticion='SI'; -- seleccion invalida
		  end if; -- Termiana valida perfil
	-- else -- else valida si hay o no items
		-- set c=0;
	-- end if; -- valida si hay o no items

if c > 0
then
	set aut = 1;
else

	set aut = 2;  -- agotados 

	case estado_peticion  
    when 'NA' then
    set aut  =0; -- no autorizado
    when 'TD' then
    set aut = 3; -- tiempo entre dispensacion
    when 'SI' then
    set aut = 0; -- seleccion invalida
    else 
	set aut = 2;  -- agotados 
    end case;
end if;
RETURN aut;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_estado_actual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_estado_actual`(dispensadora varchar(45)) RETURNS int(11)
    DETERMINISTIC
BEGIN


if  TIMEDIFF(CURTIME(), ( SELECT  TIME(log_fecha) FROM ics_log WHERE log_maq = dispensadora  order by idics_log desc LIMIT 1)) >= '00:10:00' or
TIMEDIFF(CURTIME(), ( SELECT  TIME(log_fecha) FROM ics_log WHERE log_maq = dispensadora  order by idics_log desc LIMIT 1)) IS NULL
  then

RETURN 0; -- dispensadora apagada
else
RETURN 1;
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_evento_dispositivo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_evento_dispositivo`(evento varchar(2)) RETURNS int(11)
    DETERMINISTIC
BEGIN
case evento 
		when 0		then
			set evento =2; -- dESHABILITADO
		when 1		then
			set evento =1; -- HABILITADI
		end case;
RETURN evento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_GESTION_USR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GESTION_USR`( nombre_usuario varchar(145), pass varchar(145)) RETURNS int(11)
    DETERMINISTIC
begin
 -- actualización
		UPDATE 	ics_usuariosistema
		SET	 	ust_pass	= pass
		WHERE 	ust_usuario	= nombre_usuario ;


RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_INSERT_USR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_INSERT_USR`(cc varchar(45), cl varchar(45),acom varchar(45), tapp varchar(45), huella varchar(45), idperfil varchar(45),nombre varchar(225),correo varchar(225), cargo varchar(45), cargo_nuevo varchar(45), codigo varchar(45), ff_contr date) RETURNS varchar(45) CHARSET latin1
    DETERMINISTIC
BEGIN
	declare x,tappperfil,RETORNO varchar(45);
  -- se valida cargos

	if cargo_nuevo = '1' then -- cargo nuevo
		if cargo in (select car_nombre from ics_cargos where car_cliente = cl ) then
			-- selecciona el id y lo asigna
			insert into ics_usuario_cargo set fk_id_cargo = (select id_cargos from ics_cargos where car_nombre = cargo and car_cliente = cl) , fk_cedula_usuario =cc ;
		else
			-- inserta y asigna last_insert_id
			insert into ics_cargos set car_nombre =cargo, car_cliente=cl;
			insert into ics_usuario_cargo set fk_id_cargo = LAST_INSERT_ID(), fk_cedula_usuario =cc ;
		end if;
	else -- cargo existente desde gui 
	
	insert into ics_usuario_cargo set fk_id_cargo = cargo, fk_cedula_usuario =cc ;
	-- asigna identificador de cargo (usuario cargo)
	end if;
	
	if cc in (select usu_id_usuario_opera from ics_usuario where usu_client_creador = cl)
	then
		set x= 1;
	else
		set x= 0;
	end if;

	if tapp = 1 then
		set tappperfil = 2; -- 2 vending en tabla de perfiles
	else if tapp = 3 then
		set tappperfil = 1; -- 1 eas en tabla de perfiles
	end if;
	end if;
	-- si la cc esta 
	If x = 1
	then
		-- inserta solo huella
		--  inserta en perfil
	IF huella in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl = cl and IdA_Estado_Usuario = 1) THEN -- si el id de huella ya esta entonces
		SET RETORNO = '0';
	ELSE		
		INSERT INTO ics_idalias_usuario set IdA_Numero_Alias= huella, IdA_Identificacion_Usu =cc, IdA_Finger='6', IdA_Minucia='0', IdA_Estado_Enrolamiento='1', IdA_Estado_Usuario='1', IdA_cl=cl, IdA_acom= acom;
		update ics_usu_per set usp_estado = 0 where usp_fk_id_usu = huella;
		INSERT INTO ics_usu_per  set usp_fk_id_usu=huella ,usp_fk_id_perfil=idperfil,usp_cl=cl,usp_tipo = tappperfil;
		SET RETORNO = '1';
	END IF;

	else	
	
	IF huella in (select IdA_Numero_Alias from ics_idalias_usuario where IdA_cl = cl and IdA_Estado_Usuario = 1) THEN -- si el id de huella ya esta entonces
		SET RETORNO = '0';
	else
	-- inserta en usuario y en huella 
	-- insert perfil
		INSERT INTO ics_usuario   set usu_id_usuario_opera=cc,usu_nombre=nombre,usu_codigo=codigo,usu_fecha_finalizacion=ff_contr,usu_client_creador=cl,usu_correo=correo;
		INSERT INTO ics_idalias_usuario set IdA_Numero_Alias	=huella, IdA_Identificacion_Usu =cc, IdA_Finger='6', IdA_Minucia='0', IdA_Estado_Enrolamiento='1', IdA_Estado_Usuario='1', IdA_cl=cl, IdA_acom= acom;
		update ics_usu_per set usp_estado = 0 where usp_fk_id_usu = huella;
		INSERT INTO ics_usu_per   set usp_fk_id_usu		=huella ,usp_fk_id_perfil=idperfil,usp_cl=cl,usp_tipo = tappperfil;
		SET RETORNO = '1';
	end if;

	end if;
return RETORNO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_INSERT_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_INSERT_USUARIO`(
vusu_id_usuario_opera 	varchar(145),
vusu_nombre 			varchar(245),
vusu_codigo 			varchar(145),
vusu_centro_Costo 		varchar(145),
vusu_departamento		varchar(145),
vusu_fecha_finalizacion	varchar(145),
vusu_client_creador 	varchar(145),
vusu_correo 			varchar(145),
vcargo					varchar(245)) RETURNS int(11)
    DETERMINISTIC
BEGIN

declare centro_costo,cargo,departamento varchar(45);
set cargo = FN_CARGOS(vcargo,vusu_client_creador);

/* nuevo centro de costos*/
if vusu_centro_Costo in (select cc_nombre 			 from ics_centro_costos where cc_cl 	= vusu_client_creador) then 
	SET centro_costo = 	 (select idics_centro_costos from ics_centro_costos where cc_nombre = vusu_centro_Costo and cc_cl = vusu_client_creador limit 1);
else
	INSERT INTO ics_centro_costos SET cc_nombre = vusu_centro_Costo, cc_cl = vusu_client_creador;
	SET centro_costo = last_insert_id();
end if;
/*un nuevo departamento*/

if vusu_departamento in (select de_nombre from ics_departamentos where de_cl = vusu_client_creador ) then 
	SET departamento = 	 (select idics_departamentos from ics_departamentos where de_nombre =vusu_departamento and de_cl = vusu_client_creador limit 1);
else
	INSERT INTO ics_departamentos SET de_nombre= vusu_departamento ,de_cl = vusu_client_creador, fk_centro_costo = centro_costo;
	SET departamento = last_insert_id();
end if;

INSERT INTO ics_usuario
set
	usu_id_usuario_opera = vusu_id_usuario_opera,
	usu_nombre			 = vusu_nombre,
	usu_codigo			 = vusu_codigo,
	usu_centro_Costo	 = centro_costo,
	usu_departamento	 = departamento,
	usu_fecha_finalizacion = vusu_fecha_finalizacion,
	usu_client_creador   = vusu_client_creador,
	usu_correo			 = vusu_correo;

update 	ics_usuario_cargo
set 	uc_Estado= 0
where 	fk_cedula_usuario =vusu_id_usuario_opera;

INSERT INTO ics_usuario_cargo
set 
fk_id_cargo 		=cargo,
fk_cedula_usuario	=vusu_id_usuario_opera;

RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_items_dispensados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_items_dispensados`(
it int(11), 	-- id item
us varchar(15), -- id usuario
per int,		-- dia mes o semana actual 
tip_per int,
anioa int, 		-- año actual
mesa int 		-- mes actual
) RETURNS int(11)
    DETERMINISTIC
BEGIN
		declare x int;
case tip_per
when 1 -- mensu
	then
		set x =(select count(ful_idusu) from ics_fulldata 
		where ful_idusu = us and ful_item =it and  month(ful_fechacrea) = per and year(ful_fechacrea)= anioa);
when 2 -- semanal
	then
		set x =(select count(ful_idusu) from ics_fulldata 
		where ful_idusu = us and ful_item =it and  week(ful_fechacrea,1) = per and year(ful_fechacrea) = anioa);

when 3 -- diario
	then
		set x =(select count(ful_idusu) from ics_fulldata 
		where ful_idusu = us and ful_item =it and  day(ful_fechacrea) = per and month(ful_fechacrea) =mesa and year(ful_fechacrea)= anioa );

end case ;

		
RETURN x ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_MENS_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_MENS_DISP`(DISP VARCHAR(45), MENS VARCHAR(45)) RETURNS int(11)
    DETERMINISTIC
BEGIN
	IF MENS IN (SELECT fk_dme_id_m_mensaje FROM ics_det_mensaje WHERE fk_dme_serial_dispens = DISP AND dme_estado = 1)
	THEN 	
		RETURN 1;
	ELSE
		RETURN 0;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_MES_ANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_MES_ANT`(param varchar(45)) RETURNS varchar(56) CHARSET latin1
    DETERMINISTIC
BEGIN
case param 
when '1' then
	RETURN (monthname( concat('2014-',(month(curdate()) -1),'-01') ));
when '2' then
	RETURN (monthname( concat('2014-',(month(curdate()) -2),'-01') ));
end case;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_num_items` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_num_items`(seleccion varchar(3),maquina varchar(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN
 declare i int;
declare num_items int;

set num_items = (select nitem from vis_ics_item_restante where maq=maquina and selec= seleccion);	
	IF num_items = 0 THEN
		SET i = num_items;
	ELSE 
		SET i = num_items-1;
	end if; 

RETURN i;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_perfil_item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_perfil_item`(i int, u varchar(15)) RETURNS int(11)
    DETERMINISTIC
BEGIN
-- retorna 1 si el usuario tiene derecho de dispensar ese producto  
declare Autoriza_item int;

if i in (select items from  vi_ics_item_perfil where usuario = u)
then 
	set Autoriza_item=1;
else
	set Autoriza_item =0;
end if;
RETURN Autoriza_item;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_RADIALics_BI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_RADIALics_BI`(CL VARCHAR(45), TIPO VARCHAR(45)) RETURNS varchar(350) CHARSET latin1
    DETERMINISTIC
BEGIN
	DECLARE VENTASOK 	VARCHAR(45);
	DECLARE VENTFALL	VARCHAR(45);
	DECLARE FECHA		VARCHAR(45);	
	DECLARE CIENPORC	VARCHAR(45);
	DECLARE CANT_USR	VARCHAR(45);
	DECLARE USR_CONS	VARCHAR(45);

	IF TIPO = 1 THEN  -- MES PASADO 
		SET FECHA = MONTH(DATE_SUB(CURDATE(), INTERVAL 1 MONTH));
	ELSE -- MES ACTUAL
		SET FECHA = MONTH(CURDATE());
	END IF;
		
	SET VENTASOK 	= (SELECT COUNT(ful_numsel)         FROM ics_fulldata 		 WHERE ful_tipoapp 			= '1' AND ful_cl = CL AND MONTH(ful_fechacrea) = FECHA );
	SET VENTFALL	= (SELECT COUNT(fpe_num_seleccion)  FROM ics_full_peticion_  WHERE fpe_tipo 			= '1' AND fpe_estado_peticion = '3' AND fpe_cliente = CL AND MONTH(fpe_fecha) = FECHA );
	SET CANT_USR	= (SELECT COUNT(IdA_Numero_Alias)   FROM ics_idalias_usuario WHERE IdA_Estado_Usuario 	= '1');
	SET USR_CONS	= (SELECT COUNT(DISTINCT ful_idusu) FROM ics_fulldata 		 WHERE ful_tipoapp 			= '1' AND ful_cl = CL AND MONTH(ful_fechacrea) = FECHA);

	SET CIENPORC 	= (VENTASOK + VENTFALL);
	SET USR_CONS	= ROUND((USR_CONS   * 100)/CANT_USR);
	SET VENTASOK 	= ROUND((VENTASOK   * 100)/CIENPORC);
	SET VENTFALL	= ROUND((VENTFALL   * 100)/CIENPORC);
	
	IF USR_CONS IS NULL THEN SET USR_CONS = 0 ; END IF;
	IF VENTASOK IS NULL THEN SET VENTASOK = 0 ; END IF;
	IF VENTFALL IS NULL THEN SET VENTFALL = 0 ; END IF;
 RETURN CONCAT(VENTASOK,',',VENTFALL,',',USR_CONS,',',0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_RADIAL_BI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_RADIAL_BI`(CL VARCHAR(45), TIPO VARCHAR(45)) RETURNS varchar(350) CHARSET latin1
    DETERMINISTIC
BEGIN
	DECLARE VENTASOK 	VARCHAR(45);
	DECLARE VENTASCASH	VARCHAR(45);
	DECLARE VENTASEFEC	VARCHAR(45);
	DECLARE VENTFALL	VARCHAR(45);
	DECLARE FECHA		VARCHAR(45);	
	DECLARE CIENPORC	VARCHAR(45);

	IF TIPO = 1 THEN  -- MES PASADO 
		SET FECHA = MONTH(DATE_SUB(CURDATE(), INTERVAL 1 MONTH));
	ELSE -- MES ACTUAL
		SET FECHA = MONTH(CURDATE());
	END IF;
		
	SET VENTASOK 	= (SELECT COUNT(ful_numsel) FROM ics_fulldata WHERE ful_tipoapp = '3' AND ful_cl = CL AND MONTH(ful_fechacrea) = FECHA );
	SET VENTASCASH	= (SELECT COUNT(ful_numsel) FROM ics_fulldata WHERE ful_tipoapp = '1' AND ful_cl = CL AND MONTH(ful_fechacrea) = FECHA);
	SET VENTASEFEC	= (SELECT COUNT(ful_numsel) FROM ics_fulldata WHERE ful_tipoapp = '3' AND ful_cl = CL AND MONTH(ful_fechacrea) = FECHA);
	SET VENTFALL	= (SELECT COUNT(fpe_num_seleccion) FROM ics_full_peticion_ WHERE fpe_tipo = '2' AND fpe_estado_peticion = '3' AND fpe_cliente = CL AND MONTH(fpe_fecha) = FECHA );
	
	SET CIENPORC 	= (VENTASOK + VENTASCASH + VENTASEFEC + VENTFALL);
	SET VENTASOK 	= ROUND((VENTASOK   * 100)/CIENPORC);
	SET VENTASCASH	= ROUND((VENTASCASH * 100)/CIENPORC);
	SET VENTASEFEC	= ROUND((VENTASEFEC * 100)/CIENPORC);
	SET VENTFALL	= ROUND((VENTFALL   * 100)/CIENPORC);

	IF VENTASOK 	IS NULL THEN SET VENTASOK 	= 0; END IF;
	IF VENTASCASH	IS NULL THEN SET VENTASCASH = 0; END IF;
	IF VENTASEFEC	IS NULL THEN SET VENTASEFEC = 0; END IF;
	IF VENTFALL		IS NULL THEN SET VENTFALL	= 0; END IF;
	
 RETURN CONCAT(VENTASOK,',',VENTASCASH,',',VENTASEFEC,',',VENTFALL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_ult_disp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ult_disp`(it int(11), us varchar(15), cl varchar(45)) RETURNS varchar(56) CHARSET latin1
    DETERMINISTIC
BEGIN
	declare x  datetime;
	DECLARE s TIME;
	set x= (select ful_fechacrea from ics_fulldata where ful_idusu = us and ful_cl = cl and ful_item = it order by ful_fechacrea Desc limit 1);	
	IF x IS NULL THEN SET s = '00:00:00';
	ELSE
		IF(SELECT TIMEDIFF(NOW(),x)>= '838:59:59')	then
			SET s = '838:59:59';	
		else
			set s=(SELECT TIMEDIFF(NOW(),x));
		END IF;
	END IF;
RETURN s ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_update_datos_mal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_update_datos_mal`(x int) RETURNS int(11)
    DETERMINISTIC
BEGIN
UPDATE `ics_fulldata` SET `ful_valsel`='00'  WHERE ful_valsel = '0000\0';
UPDATE `ics_fulldata` SET `ful_valsel`='50'  WHERE ful_valsel = '0050\0';
UPDATE `ics_fulldata` SET `ful_valsel`='100' WHERE ful_valsel = '0100\0';
UPDATE `ics_fulldata` SET `ful_valsel`='150' WHERE ful_valsel = '0150\0';
UPDATE `ics_fulldata` SET `ful_valsel`='200' WHERE ful_valsel = '0200\0';
UPDATE `ics_fulldata` SET `ful_valsel`='250' WHERE ful_valsel = '0250\0';
UPDATE `ics_fulldata` SET `ful_valsel`='300' WHERE ful_valsel = '0300\0';
UPDATE `ics_fulldata` SET `ful_valsel`='350' WHERE ful_valsel = '0350\0';
UPDATE `ics_fulldata` SET `ful_valsel`='450' WHERE ful_valsel = '0450\0';
UPDATE `ics_fulldata` SET `ful_valsel`='400' WHERE ful_valsel = '0400\0';
UPDATE `ics_fulldata` SET `ful_valsel`='550' WHERE ful_valsel = '0550\0';
UPDATE `ics_fulldata` SET `ful_valsel`='500' WHERE ful_valsel = '0500\0';
UPDATE `ics_fulldata` SET `ful_valsel`='650' WHERE ful_valsel = '0650\0';
UPDATE `ics_fulldata` SET `ful_valsel`='600' WHERE ful_valsel = '0600\0';
UPDATE `ics_fulldata` SET `ful_valsel`='750' WHERE ful_valsel = '0750\0';
UPDATE `ics_fulldata` SET `ful_valsel`='700' WHERE ful_valsel = '0700\0';
UPDATE `ics_fulldata` SET `ful_valsel`='850' WHERE ful_valsel = '0850\0';
UPDATE `ics_fulldata` SET `ful_valsel`='800' WHERE ful_valsel = '0800\0';
UPDATE `ics_fulldata` SET `ful_valsel`='900' WHERE ful_valsel = '0900\0';
UPDATE `ics_fulldata` SET `ful_valsel`='950' WHERE ful_valsel = '0950\0';
update ics_usuario_recarga set  Ure_Valor_Recarga = '50'  where Ure_Valor_Recarga = '050';
update ics_usuario_recarga set  Ure_Valor_Recarga = '100' where Ure_Valor_Recarga = '0100';
update ics_usuario_recarga set  Ure_Valor_Recarga = '150' where Ure_Valor_Recarga = '0150';
update ics_usuario_recarga set  Ure_Valor_Recarga = '500' where Ure_Valor_Recarga = '0500';
update ics_usuario_recarga set  Ure_Valor_Recarga = '550' where Ure_Valor_Recarga = '0550';
update ics_usuario_recarga set  Ure_Valor_Recarga = '200' where Ure_Valor_Recarga = '0200';
update ics_usuario_recarga set  Ure_Valor_Recarga = '250' where Ure_Valor_Recarga = '0250';
update ics_usuario_recarga set  Ure_Valor_Recarga = '300' where Ure_Valor_Recarga = '0300';
update ics_usuario_recarga set  Ure_Valor_Recarga = '350' where Ure_Valor_Recarga = '0350';
update ics_usuario_recarga set  Ure_Valor_Recarga = '400' where Ure_Valor_Recarga = '0400';
update ics_usuario_recarga set  Ure_Valor_Recarga = '450' where Ure_Valor_Recarga = '0450';
RETURN x;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_UP_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_UP_USUARIO`(correo VARCHAR(45) ,
 cedula VARCHAR(45) , cargo  VARCHAR(245) , 
 codigo varchar(45) , 
cliente VARCHAR(45) , dt_centro_cost varchar(145), dt_dto varchar(145) , 
nombre varchar(245) , idRegistro int) RETURNS int(11)
    DETERMINISTIC
BEGIN
declare idcargo ,centro_costo,departamento varchar(145);
declare cedulaUsuario varchar(16);

UPDATE ics_usuario 		 SET usu_correo= correo  WHERE usu_id_usuario_opera = cedula;
UPDATE ics_usuario_cargo SET uc_Estado = 0 		 WHERE fk_cedula_usuario 	= cedula;

/* nuevo centro de costos*/
if dt_centro_cost 	 in (select cc_nombre 			from ics_centro_costos where cc_cl 	= cliente) then 
	SET centro_costo = 	(select idics_centro_costos from ics_centro_costos where cc_nombre = dt_centro_cost and cc_cl = cliente limit 1);
else	
	INSERT INTO ics_centro_costos SET cc_nombre= dt_centro_cost, cc_cl= cliente;
	SET centro_costo = last_insert_id();
end if;
/*un nuevo departamento*/

if dt_dto in (select de_nombre from ics_departamentos where de_cl = cliente ) then 
	SET departamento = 	 (select idics_departamentos from ics_departamentos where de_nombre = dt_dto and de_cl = cliente limit 1);
else
	INSERT INTO ics_departamentos SET de_nombre= dt_dto,de_cl = cliente, fk_centro_costo = centro_costo;
	SET departamento = last_insert_id();
end if;


if cargo in (select car_nombre from ics_cargos where  car_cliente =  cliente) then 
	set idcargo = (select id_cargos from ics_cargos where car_nombre = cargo and car_cliente =  cliente limit 1 );
else
	INSERT INTO ics_cargos SET car_nombre= cargo, car_cliente = cliente;
	set idcargo = LAST_INSERT_ID();
end if;

	insert into ics_usuario_cargo  set fk_id_cargo = idcargo,fk_cedula_usuario = cedula;


	set cedulaUsuario = (select usu_id_usuario_opera from ics_usuario where  usu_id_usuario = idRegistro);

	update ics_usuario set 
    usu_centro_Costo = centro_costo ,  
    usu_departamento = departamento  ,
    usu_nombre = nombre ,
    usu_correo = correo,
    usu_codigo= codigo,
    usu_id_usuario_opera = cedula
    where usu_id_usuario = idRegistro and usu_client_creador = cliente;

   -- actualizar en id alias where cedula = and cliente = 
   
   update  ics_idalias_usuario set IdA_Identificacion_Usu = cedula where IdA_Identificacion_Usu = cedulaUsuario and IdA_cl =cliente;
   
   -- actualizar las ventas 
	UPDATE  ics_fulldata set   ful_cc_usr = cedula where ful_cc_usr = cedulaUsuario and  ful_cl = cliente;
    
	-- actualizar usuario cargo
    update ics_usuario_cargo set  fk_cedula_usuario = cedula where fk_cedula_usuario = cedula ;

RETURN 1;                      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_user_existencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_user_existencia`(cc varchar(15),u varchar(10)) RETURNS varchar(11) CHARSET latin1
    DETERMINISTIC
BEGIN
-- en la funcion valido si ese usuario se puede enrolar con ese id de huella si si retorna 1
-- si no retorna 0; mas no valido si el usuario existe o no por que puede que exista dentro de 
-- la base de datos , pero lo quieran enrolar en esa otra x dispensadora ; si lo va a dejar ; 
-- por q ese es el id de huella que el puede tener
--
	declare ccu varchar(15);
	declare us varchar(15);
	declare cc_asig varchar(15);
	declare aut int;
	
	set ccu = cc;
	set us = u;
	if us in (select IdA_Numero_Alias from ics_idalias_usuario)
	then
 
		-- si la cedula cc es diferente a la cedula asignada a ese id.
		set cc_asig = (select IdA_Identificacion_Usu 
						from  ics_idalias_usuario
							where IdA_Numero_Alias =us);
		if cc_asig = cc
			then
				set aut = 1;
		else
				set aut = 0;
		end if;
	else
		set aut=1;
end if;

RETURN aut;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_UsuarioExiste` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_UsuarioExiste`(cc varchar(15)) RETURNS int(11)
    DETERMINISTIC
BEGIN
  declare cantidad int;
  declare ret int;
  set cantidad = (select count(usu_id_usuario_opera) from ics_usuario where usu_id_usuario_opera = cc);
  IF cantidad = 0 THEN SET ret = 0;
  ELSE  SET ret = 1;
  end if;
RETURN ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_VALIDA_CC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_VALIDA_CC`(cc varchar(45), cliente varchar(45)) RETURNS int(11)
    DETERMINISTIC
BEGIN
	if cc in (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_cl = cliente ) then
		return 0 ;
	else
		return 1;
	end if ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_VALIDA_HUELLA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_VALIDA_HUELLA`(huella varchar(45), cliente varchar(45)) RETURNS varchar(45) CHARSET latin1
    DETERMINISTIC
BEGIN

declare retorno varchar(45);
set retorno = 'A';
	if huella  in (select IdA_Numero_Alias from `ics_instalador_v19`.ics_idalias_usuario where IdA_cl = cliente ) then
		set retorno ='0' ;
	else
		set retorno='1';
	end if ;
    return retorno;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fn_estado_dispositivos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fn_estado_dispositivos`(dispositivo varchar(45),dispensadora varchar(45))
    DETERMINISTIC
BEGIN
case dispositivo

when 1 -- billetero
then

	select fk_men_error from ics_mensaje where  fk_men_error in ('0008','0010','0011','0012','0013','0014') and fk_men_serial_maq = dispensadora  order by men_id_mensaje desc limit 1;

when 2 -- monedas
then 

	select est_mon_50 , est_mon_100, est_mon_200, est_mon_500, est_mon_1000 from ics_estadotubos_monedero where est_disp = dispensadora order by idics_estadotubos_monedero desc limit 1;

when 3 -- ventas
then 

	select sum(ful_valsel) valor , count(ful_numsel) cantidad from ics_fulldata where ful_idmaq = dispensadora and date(ful_fechacrea) = curdate() ;

end case;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZAR_INVENTARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_ACTUALIZAR_INVENTARIO`(nombre varchar(255), cantidadactual int, serialmaquina varchar(10), numerosel int,
costoProducto varchar(100), tipoProducto varchar(250))
BEGIN
declare idproducto int;
declare idTipoProducto int;

if nombre not in (select ite_nom_item from ics_item) then

	set idTipoProducto = (SELECT idics_tipo_producto FROM ics_tipo_producto WHERE tip_nombre = tipoProducto);

	INSERT INTO ics_item
	(ite_nom_item,ite_tipo_producto,ite_costo)
	VALUES
	(nombre,idTipoProducto,costoProducto);

end if;

set idproducto = (select ite_id_item from ics_item where ite_nom_item = nombre);
UPDATE ics_control_items 
SET 
    cit_itemrestante = cantidadactual,
    fk_cit_iditem = idproducto
WHERE
    fk_cit_idmaq = serialmaquina
        AND cit_seleccion = numerosel
        AND cit_estado = 1;
																																													 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZAR_NOMBRE_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_ACTUALIZAR_NOMBRE_PLANIMETRIA`(idPlanimetria varchar(5) , nombre varchar(255))
BEGIN

UPDATE ics_planometria SET pla_nombre = nombre WHERE idics_planometria = idPlanimetria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTUALIZA_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_ACTUALIZA_PLANIMETRIA`(serialD varchar(10) )
BEGIN
declare nombreplanimetria varchar(255);
declare cliente varchar(255);
declare idPlanoAnterior int; 
declare idPlanoActual int;
declare idsubstring int;
DECLARE j int;
DECLARE numero varchar(255);
DECLARE longitud int;
DECLARE nCaracteres int;
DECLARE flagCopia boolean;
DECLARE nuevoNombre varchar(255);

-- Se identifica el nombre de la planimetria y del cliente 
set nombreplanimetria = (select pla_nombre from ics_maq_planometria JOIN ics_planometria on idics_planometria =  Fk_pla_id_plan where Fk_pla_id_maq = serialD and ics_maq_planometria.pla_estado = 1);
set cliente = (select  maq_cl from ics_maquinas where maq_serial_maq = serialD);

 SET j = 0;
 SET longitud = length(nombreplanimetria);
 set flagCopia = false;
 
 -- identifica el nombre y crea uno nuevo de la forma (#)
while j < longitud do
	if substring(nombreplanimetria,j,1) = '(' then
		set nCaracteres = (longitud - 1) - (j);
		set numero = (select substring(nombreplanimetria, (j + 1),nCaracteres));  
        set numero = numero + 1;
		set nuevoNombre =  concat( substring(nombreplanimetria, 1 , j), numero, ')');
		set flagCopia = true;
		set j=longitud;
	end if;
	set j = j+1;
end while;

-- se identifica si se ha creado una planimetria nueva o se genero una copia
if flagCopia = true then
	INSERT INTO ics_planometria set pla_nombre = nuevoNombre, pla_cliente = cliente;
else 
	INSERT INTO ics_planometria set pla_nombre = CONCAT(nombreplanimetria, ' (1)'), pla_cliente = cliente;
end if;

set idPlanoActual = last_insert_id();

set idPlanoAnterior = (select  Fk_pla_id_plan FROM ics_maq_planometria where Fk_pla_id_maq = serialD and pla_estado = 1);
-- se crea la nueva planimetria
INSERT INTO ics_detalle_plano
(ics_detalle_plano.det_pln_id_seleccion,
det_pln_numero_seleccion,
det_maximo_item,
det_minimo_item,
fk_id_item_det,
fk_id_plano_det)
SELECT 
    ics_detalle_plano.det_pln_id_seleccion,
    ics_detalle_plano.det_pln_numero_seleccion,
    ics_detalle_plano.det_maximo_item,
    ics_detalle_plano.det_minimo_item,
    ics_detalle_plano.fk_id_item_det,
    idPlanoActual
FROM ics_detalle_plano where fk_id_plano_det = idPlanoAnterior;

-- deshabilita la planimetria anterior de la dipensadora
UPDATE ics_maq_planometria
SET
pla_estado = 0
WHERE Fk_pla_id_maq  =serialD;

-- actualiza la nueva planimetria a la dispensadora indicada
INSERT INTO ics_maq_planometria
(Fk_pla_id_maq,
Fk_pla_id_plan, pla_flag_crea_inv)
VALUES
(serialD,idPlanoActual,1);

-- la cantidad de productos de la nueva planimetria 
UPDATE ics_detalle_plano pd,
    ics_control_items ci 
SET 
    pd.fk_id_item_det = ci.fk_cit_iditem
WHERE
    ci.fk_cit_idmaq = serialD
        AND ci.cit_seleccion = pd.det_pln_numero_seleccion
        and ci.cit_estado = 1 and fk_id_plano_det = idPlanoActual;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ALERT_OFF` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ALERT_OFF`()
    DETERMINISTIC
BEGIN

declare num_dispensadoras int;

declare ult_log datetime;

declare v1 INT DEFAULT 0;

declare maquina, ult_alerta, cliente, nom_cliente varchar(245);

 INSERT INTO errores(mens_error) VALUES(concat('entro',now()));

set num_dispensadoras = (SELECT count(ics_maquinas.maq_serial_maq) FROM ics_maquinas);
  
  WHILE v1 < num_dispensadoras DO
	
	set maquina = (select ics_maquinas.maq_serial_maq from ics_maquinas order by ics_maquinas.maq_serial_maq desc  limit v1,1);
    
    set cliente= (select maq_cl from ics_maquinas where maq_serial_maq = maquina);
    
    set nom_cliente =(select cli_razon_social from ics_clientes where cli_id_cliente = cliente);
 
	set ult_alerta = (select ics_mensaje.fk_men_error from ics_mensaje where fk_men_serial_maq = maquina order by men_id_mensaje desc limit 1);
 
	set ult_log = ( select  ics_log.log_fecha  from ics_log where  substring(ics_log.log_trama,-10) = maquina order by ics_log.idics_log desc limit 1);
    
    -- si es diferente al de apagado y han pasado 17 minutos
    if ult_alerta != '0001' and TIMEDIFF(current_timestamp(),ult_log) >= '00:20:00' then 
    
		INSERT INTO errores(mens_error) VALUES(concat('la dispensadora esta apagada',maquina,now()));
        Insert into  ics_mensaje(fk_men_error,fk_men_serial_maq, men_estado, men_estado_de_envio)   values ('0001',maquina,'1',0); 
    -- if TIMEDIFF(current_timestamp(),ult_log) >= '00:17:00' AND  TIMEDIFF(current_timestamp(),ult_log) <= '00:23:00' then 
      --  INSERT INTO errores(mens_error) VALUES(concat('la dispensadora esta apagada',maquina));
		   
           -- registro y udate en estado de dispensadora en base de datso global
           update db_clientes_ics_3g.status_ics set st_estado_registro =0 where st_serial=maquina;
           
           INSERT INTO db_clientes_ics_3g.status_ics(st_nombre_cliente,st_nom_cliente,st_serial,st_estado,st_ult_trama)
            VALUES('Pruebas de desarrollo',nom_cliente,maquina,0,ult_log);
	else
		if TIMEDIFF(current_timestamp(),ult_log) < '00:17:00' then 
			 update db_clientes_ics_3g.status_ics set st_estado_registro =0 where st_serial=maquina;
           
           INSERT INTO db_clientes_ics_3g.status_ics(st_nombre_cliente,st_nom_cliente,st_serial,st_estado,st_ult_trama)
            VALUES('Pruebas de desarrollo',nom_cliente,maquina,1,ult_log);
            
        else if ult_alerta = '0001' then 
             update db_clientes_ics_3g.status_ics set st_estado_registro =0 where st_serial=maquina;
          
          INSERT INTO db_clientes_ics_3g.status_ics(st_nombre_cliente,st_nom_cliente,st_serial,st_estado,st_ult_trama)
            VALUES('Pruebas de desarrollo',nom_cliente,maquina,0,ult_log);
            end if;
		end if;
    end if;   
    SET v1 = v1 + 1;   
  END WHILE;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ASIG_USU_P` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ASIG_USU_P`(u varchar(45), p varchar(45), c varchar(45) , tapp varchar(45))
    DETERMINISTIC
BEGIN
if tapp = 1 then set tapp  =2;
else
set tapp = 1;
end if;
	INSERT INTO ics_usu_per set usp_fk_id_usu = u, usp_fk_id_perfil = p,usp_cl = c , `usp_tipo` = tapp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONFG_MENS_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONFG_MENS_ACT`(disp varchar(45))
    DETERMINISTIC
BEGIN
select fk_dme_id_m_mensaje from ics_det_mensaje where dme_estado = 1 and fk_dme_serial_dispens = disp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_configuracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_configuracion`()
    DETERMINISTIC
BEGIN
	select  `rec_fecha` as rec_per_fecha , `rec_tipo` as Per_Tiempo
 from ics_config_recarga
 where rec_estado = 1 ;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_config_maqin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_config_maqin`(fe int,deci int,pet_serial_maq varchar(15),evento int)
    DETERMINISTIC
BEGIN
INSERT INTO ics_configuracion_maq set cmaq_fe=fe,cmaq_dec= deci,cmaq_serial = pet_serial_maq,cmaq_estado=evento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONF_TEMP_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONF_TEMP_DISP`(dispensadora varchar(45))
    DETERMINISTIC
BEGIN
select mmt_max_temp, mmt_min_temp  from ics_maxmin_temp where mmt_estado = 1 and fk_mmt_id_disp = dispensadora;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONSULTAR_ITEMS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_CONSULTAR_ITEMS`(D VARCHAR(45))
BEGIN
	select ite_id_item ,ite_nom_item from ics_item where ite_cliente =(SELECT  maq_cl FROM ics_maquinas WHERE maq_serial_maq = D LIMIT 1) order by ite_nom_item ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONS_NOCONS_BI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONS_NOCONS_BI`(fi varchar(45), ff varchar(45))
    DETERMINISTIC
BEGIN
		select count(distinct ful_idusu) Consumidores,
		(select count(distinct IdA_Numero_Alias) from ics_idalias_usuario where IdA_Numero_Alias 	 not in 
		(select count(distinct ful_idusu) 		 from ics_fulldata 	   where date(ful_fechacrea) between fi and ff) and IdA_Estado_Usuario = 1 ) NO_Consumidores
		from ful_data where date(ful_fechacrea) between fi and ff;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONS_USU_BI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CONS_USU_BI`(FI VARCHAR(45), FF VARCHAR(45))
    DETERMINISTIC
BEGIN
select ful_nom_usu, count(*) CANT from  ics_fulldata
where  (date(ful_fechacrea) between FI and FF) and ful_nom_usu is not null
group by ful_nom_usu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONTROL_AUTORIZA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_CONTROL_AUTORIZA`(u varchar(11), m varchar(10),s varchar(2),i int, cl varchar(45))
    DETERMINISTIC
BEGIN
				declare mes 			int(2);
		declare dia 			int(2);
		declare semana 			int(2);
		declare per				int;	
		declare periodo 		int(1);
		declare perfil 			int;
		declare n_transacciones int;
		declare td 				int;
		declare fuld 			time;
		declare timedif 		datetime;
		declare hora 			int;
		declare minut 			int;
		declare anioa  			int;
        declare estado_peticion varchar(45);

		declare est_user 		int;
	
		declare a 				int;
		declare b 				int;
		declare c 				int; 
		declare cantidd			varchar(3); -- puede tomar el valor de ilm
		declare aut 			int;
		declare cit 			int(4);
		declare long_maq 		int;
		declare f				date;
		declare echo      varchar(46);
		set perfil=0;
		set mes     =(select  month(current_date));
		set dia     =(select day(current_date));
		set anioa   =(select year(current_date));
		set semana  =(select week(current_date,1));-- Semana actual
		
	
	-- set f =Fn_Actualiza_Estado(u,mes,dia,anioa,cl); -- funcion q actualiza el estado deun usuario si el tiemmpo de su contrato a vencido
	
--  cantidad de items 
-- set cit =(select citem FROM unificada_prueba_replica.vi_ics_item_usu where maquinita=m and seleccioni=s );

-- tiempo de dispensacion de ese item en ese perfil cada perfil de cada cliente es diferennte 
set td=(select dp.det_tiempodispen from ics_deta_perfil as dp inner join ics_usu_per as usu 
		on usu.usp_fk_id_perfil= dp.fk_det_id_perf	where usu.usp_fk_id_usu=u and dp.fk_det_id_item=i and usu.usp_estado=1 limit 1);
-- set echo='entro';

		-- if cit != 0 then -- --  hay items -- cada perfil es difente 	
	set perfil = fn_perfil_item(i,u); -- consulta si el item (i) se encuentra dentro de ese perfil 
	
    IF perfil = 1 
	THEN 
					SET n_transacciones=(SELECT count(ful_idusu) FROM ics_fulldata		WHERE ful_idusu		   = u AND ful_cl = cl AND ful_item = i); 
					-- estado del usuario dentro de una dispensadora  
					SET est_user 	   =(SELECT count(*) 		 FROM ics_idalias_usuario WHERE IdA_Numero_Alias = u AND IdA_cl = cl AND IdA_Estado_Enrolamiento =1);
			
			if n_transacciones= 0 -- si no ha realizado transacciones
			then							
				-- Asigna a c las cantidades que tiene permitidas
				set cantidd=fn_Cantidad_Perfil(u,i,cl);
				
					if cantidd = 'ilm'
					then
							set c=1;
					else
							set c = cantidd;
					end if;
			ELSE -- si tiene transacciones

					SET fuld  = fn_ult_disp(i,u,cl); -- calcula en minutos el tiempo de la ultima dispensacion de ese item
					SET hora  = (SELECT HOUR(fuld))*60;
					SET minut = (SELECT MINUTE(fuld))+hora;
					
						IF minut >=td then
							set cantidd=fn_Cantidad_Perfil(u,i,cl);
							set periodo = ( select p.per_periodo_recarga from ics_perfil as p 
											inner join ics_usu_per as usu on usu.usp_fk_id_perfil = p.per_id_perfil
											where p.per_cliente= cl and usu.usp_fk_id_usu= u and usu.usp_estado =1);		

							IF est_user > 0 then -- si el estado del usuario es activo
								IF cantidd != 'ilm' -- si no es ilimitado 
								then				
								-- a <- Numero de selecciones que ha realizado el usuario en ese mes, semana o dia
								-- b <- Cantidad de selecciones a las que tiene derecho 
								-- c <- b-a 	
								
									case  periodo 
										when 1  -- Mensual 
										then 
											set per = (select month(current_date)); -- mes actual
											set a 	=fn_items_dispensados(i,u,per,periodo,anioa,mes);
											set b 	=fn_Cantidad_Perfil(u,i,cl);	
											set c 	=b-a; 																	
										when 2  -- semanal
										then														
											set per = (select week(current_date,1));-- semana actual 		
											set a 	=fn_items_dispensados(i,u,per,periodo,anioa,mes);
											set b 	=fn_Cantidad_Perfil(u,i,cl);	
											set c 	=b-a;
										when 3	-- diario							
											then
											set per = (select day(current_date));   -- dia actual		
											set a 	=fn_items_dispensados(i,u,per,periodo,anioa,mes);														
											set b 	=fn_Cantidad_Perfil(u,i,cl);	
											set c 	=b-a; 										
									end case; 	-- termina de validar el periodo de recarga
								else -- si es ilimitado								
									set c=1;
								end if; -- termina si es ilimitado

							else -- si no esta activo
								set estado_peticion='NA'; -- usuario no activo
							end if; -- termina valida estado del usuario						
						else -- valida tiempo
							set estado_peticion='TD'; -- tiempo entre dispensaciones 
						end if; -- --fin valida tiempo					
			End if; -- valida transacciones 
                
		  else
				set estado_peticion='SI'; -- seleccion invalida
		  end if; -- Termiana valida perfil
	-- else -- else valida si hay o no items
		-- set c=0;
	-- end if; -- valida si hay o no items

if c > 0
then
	set aut = 1;
else

	set aut = 2;  -- agotados 

	case estado_peticion  
    when 'NA' then
    set aut  =0; -- no autorizado
    when 'TD' then
    set aut = 3; -- tiempo entre dispensacion
    when 'SI' then
    set aut = 0; -- seleccion invalida
    else 
	set aut = 2;  -- agotados 
    end case;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_control_Itms_in` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `sp_control_Itms_in`(s varchar(4),ir varchar(10),pl varchar(15),it varchar(15),maq varchar(15))
    DETERMINISTIC
BEGIN
insert into ics_control_items set cit_seleccion = s,cit_itemrestante = ir,fk_cit_idplanometria = pl,fk_cit_iditem = it,fk_cit_idmaq= maq;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_COSTO_INVENTARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_COSTO_INVENTARIO`(serialD varchar(10),costo int,usuariocreador varchar(255))
BEGIN

INSERT INTO ics_costo_inventario
(ics_costo ,ics_maquina,ics_nombre_creador)
VALUES
(costo,serialD,usuariocreador);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CREAR_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_CREAR_PLANIMETRIA`(idplano int, ndispensadora varchar(15))
    DETERMINISTIC
BEGIN
declare idPlani int;
declare cliente int;
declare nombrePlani varchar(160);
declare i , substr int;
set substr = 0;
set i = 0;
set cliente = (select maq_cl from ics_maquinas where maq_serial_maq= ndispensadora);

set nombrePlani = (select pla_nombre from ics_planometria where idics_planometria= idplano );

while i <= length(nombrePlani) do
	if substring(nombrePlani,i,1) = '(' then
		set substr = i-1;
        set i = length(nombrePlani);
    end if;
    set i = i+1;
end while;


if substr != 0 then
	set nombrePlani =substring((select pla_nombre from ics_planometria where idics_planometria= idplano ),1,substr); 
    set nombrePlani =concat(nombrePlani,'(',month(now()),'-',day(now()),'/',hour(curtime()),':',minute(curtime()),')');
else
	set nombrePlani =(select pla_nombre from ics_planometria where idics_planometria= idplano ); 
    set nombrePlani =concat(nombrePlani,'(',month(now()),'-',day(now()),'/',hour(curtime()),':',minute(curtime()),')');
end if;
INSERT INTO ics_planometria
(pla_num_selecciones,
pla_nivel_max,
pla_nivel_min,
pla_nombre,
pla_Cliente)
VALUES
(0,0,0,nombrePlani,cliente);

set idPlani=last_insert_id();

INSERT INTO ics_detalle_plano
(det_pln_id_seleccion,
det_pln_numero_seleccion,
det_maximo_item,
det_minimo_item,
fk_id_item_det,
fk_id_plano_det)
(select det_pln_id_seleccion,
det_pln_numero_seleccion,
det_maximo_item,
det_minimo_item,
fk_id_item_det, idPlani
from ics_detalle_plano where fk_id_plano_det = idplano) ;


UPDATE  ics_maq_planometria
SET Fk_pla_id_plan= idPlani where Fk_pla_id_maq = ndispensadora and pla_estado = 1; 
UPDATE ics_control_items
SET fk_cit_idplanometria =idPlani
WHERE fk_cit_idmaq =ndispensadora and cit_estado = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_credito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `sp_credito`(datos varchar(40))
    DETERMINISTIC
BEGIN
DECLARE idTrama VARCHAR(2);
SET idTrama 		= substring(datos,1,1); 
IF idTrama= 'Z' THEN	   -- ACREDITACION VENDING
	CALL SP_TRAMA_Z(datos);
ELSE IF idTrama = 'A' then -- ACREDITACION EAS
	CALL SP_TRAMA_A(datos);    
ELSE IF idTrama = 'D' THEN -- ACREDITACION DATAFONO EAS
	CALL SP_TRAMA_D(datos);
ELSE IF idTrama = 'L' THEN -- TARJETA DATAFONO
	CALL SP_TRAMA_L(datos);
ELSE IF idTrama	= 'G' THEN -- TECLADO HORECA
    CALL SP_TRAMA_G(datos);          
END IF;	
END IF;	
END IF;
END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DATA_CL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DATA_CL`(maquina varchar(45) )
    DETERMINISTIC
BEGIN
		-- nombre y correo 
	declare cliente varchar(45);
	set 	cliente =(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = maquina limit 1);		

	select cli_razon_social, cli_correo from ics_clientes where cli_id_cliente = cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DATA_CL_DOC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_DATA_CL_DOC`(nit varchar(54))
    DETERMINISTIC
BEGIN

select c.cli_nombre  , c.cli_documento, c.cli_celular, c.cli_correo ,c.cli_direccion ,sc.CONF_TIPO,c.cli_id_cliente,c.cli_razon_social,c.cli_persona_contacto,
c.cli_ciudad,c.cli_departamento, c.cli_numbodegas, c.cli_numtrabajadores

FROM ics_clientes c
JOIN ics_sistem_conf sc on sc.conf_cliente = c.cli_id_cliente
where c.cli_id_cliente  = nit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DESACTIVAR_USR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_DESACTIVAR_USR`(idCliente varchar(5), Cc_Usuario varchar(15))
BEGIN

declare cantidadHuellas, i , j ,cantidadMaquinas int;
   declare huella,maquina varchar(20);
   
set cantidadHuellas = (select count(*) from  ics_idalias_usuario where  IdA_Identificacion_Usu = Cc_Usuario and  IdA_cl = idCliente);
   
   set i=0;
   while i<cantidadHuellas do

       set huella = (select IdA_Numero_Alias from ics_idalias_usuario where IdA_Identificacion_Usu =Cc_Usuario and IdA_cl = idCliente limit i,1 );
-- consulta listado de maquinas de un solo cliente 
       set cantidadMaquinas = (select count(*) from ics_maquinas where maq_cl =idCliente);
       set j=0;
while j< cantidadMaquinas do
set maquina = (select maq_serial_maq from ics_maquinas where maq_cl = 1 limit j ,1);
update  ics_usu_dispensadora set udis_Estado =0 where udis_idUsuario = huella and udis_Serial_Dispensadora  =maquina;
set j=j+1;
end while;
set i = i+1;
   end while;
   
    update ics_usuario set  usu_client_creador =0 where  usu_id_usuario_opera = Cc_Usuario and  usu_client_creador = idCliente;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DETALLE_PLANO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_DETALLE_PLANO`(d varchar(15))
    DETERMINISTIC
begin

SELECT dp.det_pln_numero_seleccion sel , dp.fk_id_item_det iditm, i.ite_nom_item it ,   dp.det_maximo_item max 
FROM  ics_detalle_plano dp
join  ics_item i on i.ite_id_item = dp.fk_id_item_det 
where  dp.fk_id_plano_det = (select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq = d and pla_estado = 1 limit 1) order by dp.det_pln_numero_seleccion asc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Det_Orden_Comp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Det_Orden_Comp`(s int, cnt_recargar int, i int, o int(11))
    DETERMINISTIC
BEGIN
insert into ics_det_ordencompra SET  doc_numseleccion = s, doc_cantirecargar = cnt_recargar,fk_doc_iditem = i,fk_doc_orden_compra = o;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DUPLICAR_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_DUPLICAR_PLANIMETRIA`(idPlanimetria varchar(10))
BEGIN

declare nombreplanimetria varchar(255);
DECLARE numero varchar(255);
DECLARE longitud int;
DECLARE nCaracteres int;
DECLARE flagCopia boolean;
DECLARE nuevoNombre varchar(255);
DECLARE idPlanoActual int;
DECLARE idPlanoAnterior int;
DECLARE j int;

set nombreplanimetria = (select pla_nombre from ics_planometria where idics_planometria = idPlanimetria );

 SET j = 0;
 SET longitud = length(nombreplanimetria);
 set flagCopia = false;
 
while j < longitud do
	if substring(nombreplanimetria,j,1) = '(' then
		set nCaracteres = (longitud - 1) - (j);
		set numero = (select substring(nombreplanimetria, (j + 1),nCaracteres));  
        set numero = numero + 1;
		set nuevoNombre =  concat( substring(nombreplanimetria, 1 , j), numero, ')');
		set flagCopia = true;
		set j=longitud;
	end if;
	set j = j+1;
end while;

if flagCopia = true then
	INSERT INTO ics_planometria set pla_nombre = nuevoNombre, pla_cliente = '1';
else 
	INSERT INTO ics_planometria set pla_nombre = CONCAT(nombreplanimetria, ' (1)'), pla_cliente = '1';
end if;

set idPlanoActual = last_insert_id();

set idPlanoAnterior = idPlanimetria;

INSERT INTO ics_detalle_plano
(ics_detalle_plano.det_pln_id_seleccion,
det_pln_numero_seleccion,
det_maximo_item,
det_minimo_item,
fk_id_item_det,
fk_id_plano_det)
SELECT 
    ics_detalle_plano.det_pln_id_seleccion,
    ics_detalle_plano.det_pln_numero_seleccion,
    ics_detalle_plano.det_maximo_item,
    ics_detalle_plano.det_minimo_item,
    ics_detalle_plano.fk_id_item_det,
    idPlanoActual
FROM ics_detalle_plano where fk_id_plano_det = idPlanoAnterior;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINAR_SELECCION_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_ELIMINAR_SELECCION_PLANIMETRIA`(idPlanimetria varchar(10), seleccion varchar(5))
BEGIN

DELETE FROM ics_detalle_plano 
WHERE
    det_pln_numero_seleccion = seleccion
    AND fk_id_plano_det = idPlanimetria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINAR_USR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINAR_USR`(idCliente varchar(5), Cc_Usuario varchar(15), ClienteIP varchar(16), UsuarioElimina varchar(40))
BEGIN
DECLARE nhuellas int;
DECLARE j,c int;
DECLARE nmaquinas int;
declare idhuella varchar(20);
declare serialmaq varchar(20);
declare nomuser varchar(100);
declare cargousu varchar(45);
declare saldo varchar(45);
declare cliente_ip varchar(16);
set cliente_ip = ClienteIP;


-- cuenta el numero de huellas que estan asociadas a una cedula
	set nhuellas = (select count(*) from  ics_idalias_usuario where  IdA_Identificacion_Usu = Cc_Usuario and  IdA_cl = idCliente);
    --  consultar cargo
   set j=0;
	while j<nhuellas do
			-- Almacena la primera id_huella
		set idhuella=(select IdA_Numero_Alias from ics_idalias_usuario where IdA_Identificacion_Usu =Cc_Usuario and IdA_cl = idCliente limit j,1 );
        set nomuser=(select usu_nombre from ics_usuario where usu_id_usuario_opera=Cc_Usuario);
		set cargousu= (select fk_id_cargo from ics_usuario_cargo where fk_cedula_usuario=Cc_Usuario and uc_Estado);
        set saldo=(Select Cve_Credito from ics_controlventas where Cve_IdUsuario=idhuella and Cve_cl=idCliente);
        insert into  ics_borrados(bor_id_huella,bor_identificaciousuario,bor_nombreusuario,bor_cliente,bor_cargo,bor_saldo,bor_ip,bor_usuarioadmin) values(idhuella,Cc_Usuario,nomuser,idCliente,cargousu,saldo,cliente_ip,UsuarioElimina); 
		delete from ics_controlventas where Cve_IdUsuario=idhuella and Cve_cl=idCliente;
        
        -- cuenta el numero de maquina del id_cliente que llega en el parametro
		set nmaquinas = (select count(*) from ics_maquinas where maq_cl =idCliente);
        set c=0;
			while c<nmaquinas do
			set serialmaq = (select maq_serial_maq from ics_maquinas where maq_cl = 1 limit c ,1);
			delete from ics_usu_dispensadora where udis_idUsuario = idhuella and udis_Serial_Dispensadora  =serialmaq;
			set c=c+1;
            end while;
		delete from ics_usu_per where usp_fk_id_usu=idhuella and usp_cl=idCliente;
	set j=j+1;
	end while;
    delete from ics_idalias_usuario where IdA_Identificacion_Usu =Cc_Usuario and IdA_cl = idCliente;
    delete from ics_usuario where  usu_id_usuario_opera = Cc_Usuario and  usu_client_creador = idCliente;
	delete from ics_usuario_cargo where fk_cedula_usuario=Cc_Usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ELIMINAR_USRXICS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ELIMINAR_USRXICS`(tipoeliminar varchar(2),idCliente varchar(5),idhuella varchar(10), Cc_Usuario varchar(15), ClienteIP varchar(16), UsuarioElimina varchar(40))
BEGIN
DECLARE nhuellas int;
DECLARE j,c int;
DECLARE nmaquinas int;
declare serialmaq varchar(20);
declare nomuser varchar(100);
declare cargousu varchar(45);
declare saldo varchar(45);
declare cliente_ip varchar(16);
declare nombreproducto varchar(250);
declare valorproducto varchar(50);
declare cedulauser varchar(25);
   
set cliente_ip = ClienteIP;

CASE tipoeliminar
		WHEN  1 -- ELIMINAR USUARIOS
			THEN

				set cedulauser= (select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_Numero_Alias=idhuella and IdA_cl=idCliente);
				set nomuser=(select usu_nombre from ics_usuario where usu_id_usuario_opera=cedulauser);
				set saldo=(Select Cve_Credito from ics_controlventas where Cve_IdUsuario=idhuella and Cve_cl=idCliente);
              
                INSERT ics_borradosnoc (bor_nombre,bor_identificacioserial,bor_id_huella,bor_saldo,bor_ip,bor_mac,bor_usuarioadmin,bor_cliente,bor_tipoborrado) 
                VALUES (nomuser,cedulauser,idhuella,saldo,ClienteIP,'0',UsuarioElimina,idCliente,tipoeliminar);
                
				
				delete from ics_usu_per where usp_fk_id_usu=idhuella and usp_cl=idCliente;
				delete from ics_controlventas where Cve_IdUsuario=idhuella and Cve_cl=idCliente;
				delete from ics_usuario_cargo where fk_cedula_usuario=cedulauser;
				delete from ics_idalias_usuario where IdA_Numero_Alias =idhuella  and IdA_Identificacion_Usu=cedulauser and IdA_cl = idCliente;
                
                
                
				/*select "entro a eliminar usuarios" as valor; */
        WHEN 2 -- ELIMINAR PRODUCTOS
        THEN 
            
			set nombreproducto = (Select ite_nom_item from ics_item where ite_id_item = Cc_Usuario);
            set valorproducto = (select ite_valor from ics_item where ite_id_item = Cc_Usuario);
            
            INSERT ics_borradosnoc (bor_nombre,bor_identificacioserial,bor_id_huella,bor_saldo,bor_ip,bor_mac,bor_usuarioadmin,bor_cliente,bor_tipoborrado) 
            VALUES (nombreproducto,Cc_Usuario,'222222',valorproducto,ClienteIP,'0',UsuarioElimina,idCliente,tipoeliminar);
            /*Select Cc_Usuario AS valor;*/
            
            DELETE FROM ics_item WHERE ite_id_item=Cc_Usuario AND ite_cliente=idCliente;
            /*Select "Registro eliminado con éxito" as valor;*/
		WHEN 3 
        THEN
			
            INSERT ics_borradosnoc (bor_nombre,bor_identificacioserial,bor_id_huella,bor_saldo,bor_ip,bor_mac,bor_usuarioadmin,bor_cliente,bor_tipoborrado) 
            VALUES ('DISPENSADORA',Cc_Usuario,'333333','0',ClienteIP,'0',UsuarioElimina,idCliente,tipoeliminar);
			
            DELETE FROM ics_maquinas WHERE maq_serial_maq=Cc_Usuario  and maq_cl=idCliente;
            Select "Registro eliminado con éxito" as valor;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_estado_User_Up` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_estado_User_Up`(u varchar(6), d varchar(10))
    DETERMINISTIC
BEGIN
	UPDATE ics_usu_dispensadora SET udis_Estado = 0 WHERE udis_idUsuario = u and udis_Serial_Dispensadora = d;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EST_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EST_DISP`(disp varchar(45))
    DETERMINISTIC
BEGIN
	SELECT  ci.cit_seleccion,  i.ite_nom_item, ci.cit_itemrestante,  dp.det_maximo_item, ci.fk_cit_idmaq 
	FROM ics_control_items ci
	join ics_detalle_plano dp 	on  dp.fk_id_plano_det  = (select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq = disp and pla_estado = 1) 
								and dp.det_pln_numero_seleccion = ci.cit_seleccion
	join ics_item i 			on i.ite_id_item = ci.fk_cit_iditem
	
	where fk_cit_idmaq = disp and cit_estado = '1' ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GENERAR_OR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GENERAR_OR`(nserial varchar(45))
    DETERMINISTIC
BEGIN
select ci.cit_seleccion sel, i.ite_nom_item it, ci.cit_itemrestante rest, dp.det_maximo_item - ci.cit_itemrestante arec,  dp.det_maximo_item max
								from ics_control_items ci 
								join ics_item i on i.ite_id_item = ci.fk_cit_iditem 
								join ics_detalle_plano dp on dp.fk_id_plano_det = ci.fk_cit_idplanometria
								and dp.det_pln_numero_seleccion = ci.cit_seleccion
								where ci.fk_cit_idmaq =  nserial  and cit_estado = 1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_DATAITEM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_GET_DATAITEM`(codigoItem varchar(45) , kiosko varchar(45))
    DETERMINISTIC
BEGIN
DECLARE exiteItem int;
SET exiteItem = (select count(*) from ics_item where ite_codigo = codigoItem) ;


IF exiteItem = 0 THEN 
	SELECT 0 nombre, 0 codigo ,(select ite_foto from  ics_item where ite_id_item = 1) foto ;
ELSE

select ite_id_item id, ite_nom_item nombre, ite_codigo codigo, ite_foto foto from  ics_item where ite_codigo = codigoItem LIMIT 1;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_DATAUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_GET_DATAUSUARIO`(IN identificador varchar(45) , IN idKiosk varchar(45) )
    DETERMINISTIC
BEGIN
	declare cliente int;
    
    set cliente = ( select  maq_cl from ics_maquinas where maq_serial_maq =  idKiosk limit 1);

	set @nombre = (select usu_nombre from ics_usuario where usu_id_usuario_opera = identificador);
 
    /*Busqueda por id de usuario*/
    if @nombre is null then		
        set @cedula = (select  IdA_Identificacion_Usu   from   ics_idalias_usuario  where   IdA_Numero_Alias = identificador and IdA_cl = cliente limit 1 );
		set @nombre = (select usu_nombre from ics_usuario where usu_id_usuario_opera = @cedula);    
        set @huella = identificador;
        set @foto 	= (select usu_foto from ics_usuario where usu_id_usuario_opera = @cedula);
	else
    /*Busqueda por cedula*/
		set @huella = (select IdA_Numero_Alias    from   ics_idalias_usuario  where   IdA_Identificacion_Usu = identificador and IdA_cl = cliente limit 1 );
		set @cedula = identificador;
        set @foto 	= (select usu_foto from ics_usuario where usu_id_usuario_opera = @cedula);
    end if;
    
    if @nombre is null then 
		select '0' nombre, '000000' huella, '00000' cedula, null foto;
    else		
        select @nombre nombre, @huella huella , @cedula cedula, @foto foto ;
    end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_USERHISTORIC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_GET_USERHISTORIC`( idusuario varchar(45), kiosko varchar(15) )
    DETERMINISTIC
BEGIN

declare cl int;

set cl = (select maq_cl from ics_maquinas where maq_serial_maq = kiosko limit 1);

SELECT FDT.ful_cc_usr documento,
U.usu_nombre nombre, 
FDT.ful_idusu idhuella,
M.maq_ref_maq dispensadora, 
FDT.ful_nom_it item,
FDT.ful_numsel nSeleccion,
FDT.ful_valsel valorItem, 
FDT.ful_fechacrea 	, 
FDT.ful_tipoapp Tipo, 
dok.dok_estado EstadoEntrega, 
FDT.ful_det_orden_kiosko idOrdenKiosco
FROM   ics_fulldata FDT 
JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  cl
JOIN   ics_maquinas   M ON M.maq_serial_maq = FDT.ful_idmaq
JOIN   ics_det_orden_kiosko dok on dok.idics_det_orden_kiosko = FDT.ful_det_orden_kiosko 
WHERE  FDT.ful_cl = cl AND FDT.ful_idusu = idusuario  order by FDT.ful_fechacrea DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_control_ins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_control_ins`(selec varchar(2),nitems int(4),plano int(11),item int(11),maq varchar(10))
    DETERMINISTIC
BEGIN
insert into `ics_control_items` 
SET cit_seleccion =selec ,cit_itemrestante=nitems,fk_cit_idplanometria=plano,
fk_cit_iditem=item,fk_cit_idmaq=maq;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_control_up` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_control_up`(idcon int(10),items int)
    DETERMINISTIC
BEGIN
	update ics_control_items set cit_itemrestante = items where cit_idcontrol= idcon;		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_Control_Ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_Control_Ventas`(u varchar(15), x varchar(15),c varchar(45))
    DETERMINISTIC
BEGIN
		update `ics_controlventas` set `Cve_Credito` = x	where `Cve_IdUsuario` = u and `Cve_cl` = c;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_Control_Ventas_uprec` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_Control_Ventas_uprec`(u varchar(15), x varchar(15),c varchar(45))
    DETERMINISTIC
BEGIN
	update `ics_controlventas` 
	set `Cve_Credito` = x
	where `Cve_IdUsuario` = u and Cve_cl = c;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_error_maq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_error_maq`(serial_maq varchar(10), 
dat_error varchar(5))
    DETERMINISTIC
BEGIN
	insert into ics_mensaje SET fk_men_serial_maq =serial_maq, fk_men_error = dat_error;		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_full_data_in` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_full_data_in`(u varchar(15),ns varchar(3),it  int, vs varchar(25),
					sm varchar(10),aa int,pl varchar(15),fg int, c varchar(45), CC_USER VARCHAR(45), subsecc varchar(45), seccion varchar(45), n_prod varchar(245), ta varchar(1))
    DETERMINISTIC
BEGIN
DECLARE 	costo_producto INT;
set costo_producto = (select ite_costo from ics_item where  ite_id_item = it);
	INSERT INTO `ics_fulldata`
	SET ful_idusu = u,	 ful_numsel= ns,	  ful_item	= it,	 ful_valsel=vs,
     ful_idmaq =sm,	 	ful_errores= aa,	 ful_planom =pl,	 ful_finger=fg, 
	 ful_cl = c ,		ful_cc_usr = CC_USER, ful_ss =subsecc,	ful_nom_it=n_prod,
	ful_tipoapp = ta, ful_seccion = seccion, ful_vcosto = costo_producto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_full_data_in2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_full_data_in2`(ns varchar(3),vs varchar(25),sm varchar(10),tv int,
 pl int,it int,cl varchar(45),tp varchar(45), Nom_it varchar(245) , seccion varchar(45))
    DETERMINISTIC
BEGIN
INSERT INTO ics_fulldata
set 
ful_numsel		=ns,
ful_valsel		=vs,
ful_idmaq		=sm,
ful_planom 		=pl,
ful_item		=it,
ful_cl			=cl,
ful_nom_it		=Nom_it,
ful_ss 			= tv,-- SUBSECCION
ful_seccion 	= seccion,
ful_tipoapp		=tp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_full_peticion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `sp_ics_full_peticion`(id_usuario varchar(15),
serial_maq varchar(10), num_sel varchar(45),estado_peticion int(1), c varchar(45), cc_usr varchar(45), tp varchar(1),iditem varchar(4))
    DETERMINISTIC
BEGIN
INSERT INTO ics_full_peticion_ 
SET 
fk_fpe_id_usuario_pet =id_usuario,
fk_fpe_serial_maq_pet =serial_maq,
fpe_num_seleccion	  =num_sel,
fpe_estado_peticion   =estado_peticion,
fpe_cliente           =c, 
fpe_cc_usr            = cc_usr,
fpe_tipo			  = tp,
fk_fpe_id_pet         =iditem;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_log_conf_ins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_log_conf_ins`(
firm varchar(4),
hora varchar(4),
fecha varchar(4),
dia varchar(4),
fech date,
maq varchar(10),
interf varchar(10),
idraw int(11))
    DETERMINISTIC
BEGIN
insert into ics_log_config
SET lco_rev_firmware=firm,
lco_hora=hora,lco_fecha=fecha,lco_dia_semana=dia,lco_fecha_sistema=fech,
fk_lco_maquina=maq,fk_lco_id_interfaz=interf,fk_lco_idrawconfig=idraw;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_oco_ins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_oco_ins`(tipo int(1), serial_maq varchar(10),cliente int(11))
    DETERMINISTIC
BEGIN
insert into ics_ordencompra set oco_tipoorden =tipo,oco_serialmaq=serial_maq,oco_idcliente=cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_reg_intf_ins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_reg_intf_ins`(interf varchar(10), error_if varchar(200), estado int(1),maq varchar(10),idraw int(11))
    DETERMINISTIC
BEGIN

insert into `ics_registro_interfaz`
SET rif_interfaz_fk =interf ,rif_error =error_if,rif_fk_maquina=maq,rif_estado=estado,rif_fk_idrawconfig =idraw;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_telemetria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `sp_ics_telemetria`(datos blob)
BEGIN

DECLARE indx 			VARCHAR(1);
SET indx = substring(datos,1,1);

IF indx = 'Y' THEN 
	CALL SP_TRAMA_Y(datos);   
ELSE IF indx = 'S' THEN -- EFECTIVO	
    CALL SP_TRAMA_S(datos);	
ELSE IF indx = 'B' THEN -- ENTREGA EAS	
    CALL SP_TRAMA_B(datos);	
ELSE IF indx = 'V' THEN -- RECARGA
	CALL SP_TRAMA_V(datos);
ELSE IF indx = 'K' THEN -- VENTA DATAFONO	
	CALL SP_TRAMA_K(datos);
ELSE IF indx = 'T' THEN -- BILLETERO
	CALL SP_TRAMA_T(datos);       
ELSE IF indx = 'P' THEN -- PUERTA
	CALL SP_TRAMA_P(datos);		
ELSE IF indx = 'R' THEN -- ENCENDIDO		
    CALL SP_TRAMA_R(datos);
ELSE IF indx = 'W' THEN -- VENTA FALLIDA
	CALL SP_TRAMA_W(datos);	
ELSE IF indx = 'I' THEN 
	select 6;
ELSE IF indx = 'C' THEN -- ENTREGA FALLIDA
	CALL SP_TRAMA_C(datos);	
ELSE IF indx = 'H' THEN -- VENTA TECLADO
	CALL SP_TRAMA_H(datos);	
ELSE IF indx = 'X' THEN -- VENTA TECLADO
	CALL SP_TRAMA_X(datos);	
else
INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = substring(datos,-10);
select 6;	 
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_user`(
usu_id_usuario_opera varchar(15),
usu_nombre varchar(200),
usu_cargo varchar(45),
usu_codigo varchar(45),
usu_fecha_finalizacion date,
usu_client_creador int,
usu_correo varchar(200)
)
    DETERMINISTIC
BEGIN

declare cant_cargos int;
declare cargo int;
set cant_cargos = (select count(*) from `ics_cargos` where  `car_nombre` = usu_cargo);

if cant_cargos != 0
then
 set cargo = (select `id_cargos` from `ics_cargos` where `car_nombre` like usu_cargo);
else
INSERT INTO ics_cargos(`car_nombre`)VALUES(usu_cargo);
set cargo= (select last_insert_id());
end if;

INSERT INTO ics_usuario
set usu_id_usuario_opera=usu_id_usuario_opera,
usu_nombre=usu_nombre,
usu_codigo=usu_codigo,
usu_fecha_finalizacion=usu_fecha_finalizacion,
usu_client_creador=usu_client_creador,
usu_correo=usu_correo;
insert into ics_usuario_cargo set fk_cedula_usuario=usu_id_usuario_opera,fk_id_cargo=cargo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ics_usuario_recarga` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ics_usuario_recarga`(us varchar(15) ,vr varchar(200), t int , m varchar(10),ccusr varchar(45), cl varchar(45))
    DETERMINISTIC
BEGIN
INSERT INTO `ics_usuario_recarga`
   SET `Ure_Id_Usuario` = us,`Ure_Valor_Recarga`=vr,`Ure_Dispensadora`=m,`Ure_tipo`=t,Ure_cc=ccusr, Ure_cli=cl ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INDICADORES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_INDICADORES`(ventasDia int,  topclientesrentables int, topproductosrentables int,
topdispensadorasmasrentables int, toplocacionesmasrentables int,  periodo int, dia int, hora int, diaSemana int, tipoEnvio varchar(2))
BEGIN

UPDATE ics_indicadores
SET
 ics_ind_estado = 0               
WHERE ics_ind_estado = 1;
    
    INSERT INTO ics_indicadores 
    ( ics_ind_ventasDia,
    ics_ind_top10_clientesrentables,
    ics_ind_top10_productosrentables,
    ics_ind_top10_dispensadorasrentables,
    ics_ind_top10_locacionesrentables,
    ics_ind_periodo,
    ics_ind_dia,
    ics_ind_hora,
    ics_ind_diasemana,
    ics_ind_tipo_envio) 
    VALUES
    (ventasDia,
	topclientesrentables,
    topproductosrentables, 
    topdispensadorasmasrentables,
    toplocacionesmasrentables, 
    periodo, 
    dia, 
    hora, 
    diaSemana,
    tipoEnvio);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_blob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_blob`(IdUserMysql varchar(45), CC varchar(45), IDFinger varchar(45), res blob, EstadoUsuarioMysql varchar(45))
    DETERMINISTIC
BEGIN
INSERT INTO ics_idalias_usuario 
SET IdA_Numero_Alias = IdUserMysql, IdA_Identificacion_Usu =CC, IdA_Finger = IDFinger, IdA_Minucia =res, IdA_Estado_Enrolamiento =EstadoUsuarioMysql;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_MED` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_MED`(TIPO VARCHAR(45), DATO VARCHAR(250))
    DETERMINISTIC
BEGIN
	CASE TIPO
	WHEN 1 -- POSOLOGIA.
	THEN	INSERT INTO ics_posologia 		 SET pos_nombre = DATO;
	WHEN 2 -- TIPO DE MEDICACION.
	THEN	INSERT INTO ics_tipo_medicamento SET tip_nombre = DATO;
	WHEN 3 --  tIPO DE APLICACION.
	THEN	INSERT INTO ics_aplicacion   	 SET apl_tipo = DATO;
	WHEN 4 -- ADMINISTRACION DE MEDICAMENTO.
	THEN	INSERT INTO ics_tipo_de_administracion SET Adm_Tipo  = DATO;
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_OR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_OR`(VCASE  varchar(10),REST INT, SEL VARCHAR(45), NSER VARCHAR(45))
    DETERMINISTIC
BEGIN
declare MAX,VREST INT;
DECLARE NPLAN VARCHAR(45);

SET NPLAN =(SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = NSER AND pla_estado = 1 LIMIT 1);

SET MAX = (select det_maximo_item from ics_detalle_plano where det_pln_numero_seleccion  = SEL and fk_id_plano_det = NPLAN  );                                       

	if VCASE = 1 then -- Actualiza inventario por cada espiral 
		
        if REST <= MAX then 	
				set  VREST= REST; 
		else
				set  VREST= MAX;
		END IF;

		UPDATE ics_control_items SET cit_itemrestante = VREST WHERE cit_seleccion = SEL AND fk_cit_idmaq = NSER and cit_estado = 1;
		
	else        -- Actualiza inventario al 100%          

		UPDATE ics_control_items SET cit_itemrestante = MAX WHERE cit_seleccion = SEL AND fk_cit_idmaq = NSER and cit_estado = 1;
        
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_PERF` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERT_PERF`()
    DETERMINISTIC
BEGIN
INSERT INTO `ics_deta_perfil`
(`fk_det_id_item`,`det_cantidades`,`det_tiempodispen`,`fk_det_id_perf`)
select `id_item`, `cant`, `t_disp`,`idperfil`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INVENTARIO_100` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_INVENTARIO_100`(serialD varchar(10))
BEGIN
declare idplano int;

set idplano = (select  Fk_pla_id_plan FROM ics_maq_planometria where Fk_pla_id_maq = serialD and pla_estado = 1);

UPDATE ics_control_items ci,
    ics_detalle_plano dp 
SET 
    ci.cit_itemrestante = dp.det_maximo_item
WHERE
    ci.cit_seleccion = dp.det_pln_numero_seleccion
        AND dp.fk_id_plano_det = idplano
        AND ci.cit_estado = 1
        AND ci.fk_cit_idmaq = serialD;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ITE_CANT_BI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ITE_CANT_BI`(FI VARCHAR(45), FF VARCHAR(45))
    DETERMINISTIC
BEGIN
select  ful_nom_it, count(ful_nom_it) from ics_fulldata 
where date(ful_fechacrea) between FI and FF 
group by ful_nom_it;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_log_errores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_log_errores`(trama varchar(200), clase varchar(45) )
    DETERMINISTIC
BEGIN
INSERT INTO ics_log_errores
SET 
loe_usuario_DB		 =user(),
loe_trama_error		 =trama,
loe_clase_proveniente=clase;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_mens_configurados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mens_configurados`(ma varchar(45))
    DETERMINISTIC
BEGIN


select
	cm.Cat_Nombre_Categoria,concat(mm.mme_descripcion_mens,m.men_detalle),m.men_fecha
FROM
	ics_mensaje m
JOIN
	vi_mens_configurados vmc on vmc.mme_codigo = m.fk_men_error
join
	ics_m_mensaje mm ON m.fk_men_error = mm.mme_codigo 

 join 
	 ics_categoria_mensaje cm on cm.idics_cate_mens = mm. mme_categoria
WHERE
	m.men_estado = 1
AND m.men_estado_de_envio <= 1
AND m.fk_men_serial_maq = ma 
 and vmc.seriald = ma   order by  m. men_fecha desc ;

update ics_mensaje m
set m.men_estado_de_envio = 2
where m.men_estado_de_envio < 2 and m.fk_men_serial_maq = ma ;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_NOM_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_NOM_USUARIO`(HUELLA VARCHAR(45), MAQUINA VARCHAR(45))
    DETERMINISTIC
BEGIN

	DECLARE CLIENTE VARCHAR(45);
	
	SET CLIENTE = (SELECT cli_id_cliente FROM vi_ics_cliente_maq where maq_serial_maq = MAQUINA limit 1);

	SELECT U.usu_nombre FROM ics_idalias_usuario AU
	JOIN ics_usuario U ON U.usu_id_usuario_opera = AU.IdA_Identificacion_Usu AND U.usu_client_creador  =CLIENTE 
	WHERE AU.IdA_cl  = CLIENTE AND AU.IdA_Numero_Alias = HUELLA;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_NUEVA_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_NUEVA_PLANIMETRIA`(nombre varchar(255), tipoDispensadora varchar(255))
BEGIN

DECLARE idTipo varchar(5);

SET idTipo = (SELECT tip_id_tipo_maq FROM ics_tipos_maq_ WHERE tip_descripcion_tipo = tipoDispensadora);

INSERT INTO 
ics_planometria 
(pla_nombre, 
pla_cliente, 
pla_tipo_maquina) 
VALUES 
(nombre, '1', idTipo);

SELECT idics_planometria  AS RESPUESTA FROM ics_planometria WHERE pla_nombre = nombre;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ORDEN_DE_RECARGA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_ORDEN_DE_RECARGA`(serialmaquina varchar(10),usuariocreador varchar(255))
BEGIN


INSERT INTO 
ics_orden_de_recarga 
(ics_odr_maquina, 
ics_odr_seleccion,
ics_odr_nombreProducto,
ics_odr_prod_faltante,
ics_odr_maximo_prod,
ics_odr_cant_actual,
ics_odr_usuario_creador) 
SELECT 
ics_control_items.fk_cit_idmaq, 
ics_control_items.cit_seleccion, 
ics_item.ite_nom_item,
ics_detalle_plano.det_maximo_item - ics_control_items.cit_itemrestante,
ics_detalle_plano.det_maximo_item, 
ics_control_items.cit_itemrestante,
usuariocreador
FROM 
ics_control_items 
JOIN ics_item on fk_cit_iditem = ite_id_item
JOIN ics_detalle_plano on det_pln_numero_seleccion = cit_seleccion 
and fk_id_plano_det = fk_cit_idplanometria 
where cit_estado = '1' and fk_cit_idmaq = serialmaquina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PER_ACT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PER_ACT`(u varchar(45), c varchar(45))
    DETERMINISTIC
BEGIN
	select up.usp_fk_id_perfil, p.per_nombre_perf from ics_usu_per up
	join ics_perfil p on p.per_id_perfil = up.usp_fk_id_perfil
	where up.usp_estado = 1 and up.usp_cl = c and up.usp_fk_id_usu = u limit 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PRODUCTO`(ma varchar(45), sel varchar(45))
    DETERMINISTIC
BEGIN
	select  i.ite_nom_item  	from ics_detalle_plano dpl
	join  	ics_item i 			on dpl.fk_id_item_det = i.ite_id_item
	where dpl.fk_id_plano_det =(select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq = ma and pla_estado = 1) and dpl.det_pln_numero_seleccion = sel;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PROD_CANT_BI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PROD_CANT_BI`(FI VARCHAR(45), FF VARCHAR(45))
    DETERMINISTIC
BEGIN
select ful_nom_prod, ful_idmaq, ful_numsel , count(*) from ics_fulldata where ful_nom_prod is not null AND date(ful_fechacrea) between FI  and FF
group by ful_nom_prod,ful_idmaq, ful_numsel ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PROYECCION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PROYECCION`(cl varchar(45), tapp varchar(45))
    DETERMINISTIC
BEGIN
declare mesAnt, ano varchar(145);

if month(curdate()) = 1 then 
	set mesAnt = 12 ;
	set ano = year(curdate())- 1;  
else
	set mesAnt = month(curdate()) -1;
	set ano = year(curdate());
end if;

if (select sum(ful_valsel) from ics_fulldata where ful_cl= cl and  ful_tipoapp = tapp
and month(ful_fechacrea) = mesAnt and year(ful_fechacrea) =  ano) is null then
	select FN_MES_ANT(2);
else
select monthname(ful_fechacrea),sum(ful_valsel) from ics_fulldata where ful_cl= cl and  ful_tipoapp = tapp
and month(ful_fechacrea) = mesAnt and year(ful_fechacrea) =  ano;
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PROYECCION0` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PROYECCION0`(cl varchar(45), tapp varchar(45))
    DETERMINISTIC
BEGIN
declare mesAnt, ano varchar(145);

if (select count(ful_fechacrea) from ics_fulldata where ful_cl=cl and  ful_tipoapp = tapp 
and month(ful_fechacrea) = month(curdate()) and year(ful_fechacrea) =  year(curdate()) ) = 0 then

	select FN_MES_ANT(0);
else

select monthname(ful_fechacrea),sum(ful_valsel) from ics_fulldata where ful_cl=cl and  ful_tipoapp = tapp 
and month(ful_fechacrea) = month(curdate()) and year(ful_fechacrea) =  year(curdate()) ;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PROYECCION2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_PROYECCION2`(cl varchar(45), tapp varchar(45))
    DETERMINISTIC
BEGIN
declare mesAnt, ano varchar(145);

if month(curdate()) = 1 then 
	set mesAnt = 11 ;
	set ano = year(curdate())- 1;  
else if month(curdate()) = 2 then 
	set mesAnt = 12;
	set ano = year(curdate())- 1;  
else
	set mesAnt = month(curdate()) -2;
	set ano = year(curdate());
end if;
end if;

if (select sum(ful_valsel) from ics_fulldata where ful_cl= cl and  ful_tipoapp = tapp and month(ful_fechacrea) = mesAnt and year(ful_fechacrea) =  ano) is null
	then
		select FN_MES_ANT(2);
	else
		select monthname(ful_fechacrea),sum(ful_valsel) from ics_fulldata 
		where ful_cl= cl and  ful_tipoapp = tapp
		and month(ful_fechacrea) = mesAnt and year(ful_fechacrea) =  ano;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_recarga_automatica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_recarga_automatica`(cl varchar(45))
    DETERMINISTIC
BEGIN
	declare hora int;
	declare min int;
	declare rtn int;
	declare flagg_recarg int;
	set hora =(select hour(curtime()));
	set min  =(select minute(curtime()));

	if hora = 0 and min < 3
	then 
		-- actualizo 0
		UPDATE ics_config_recarga set rec_estado_recarga  = 0 where rec_estado = 1 ;
	END if;

	set flagg_recarg=(select rec_estado_recarga from ics_config_recarga where rec_estado =1);

-- -------------------------------------------------------------------------------------------------------------------------
if flagg_recarg = 0 
then
-- correjimos POSIBLES errores
	set rtn= (select fn_update_datos_mal(1));


	UPDATE ics_controlventas cv , ics_usu_per up ,ics_idalias_usuario au
	SET   cv.Cve_Credito   = (cv.Cve_Credito+(select p.per_nombre_perf from ics_perfil p 
    where p.per_id_perfil = up.usp_fk_id_perfil ))
	where cv.Cve_IdUsuario = up.usp_fk_id_usu    and up.usp_estado		 =1   
	and   cv.Cve_IdUsuario = au.IdA_Numero_Alias and au.IdA_acom   =1
    and au.IdA_cl = cl and cv.Cve_cl = cl and up.usp_cl = cl ;

		UPDATE ics_controlventas cv , ics_usu_per up ,ics_idalias_usuario au
	SET   cv.Cve_Credito   = (select p.per_nombre_perf from ics_perfil p 
    where p.per_id_perfil = up.usp_fk_id_perfil )
	where cv.Cve_IdUsuario = up.usp_fk_id_usu    and up.usp_estado		 =1   
	and   cv.Cve_IdUsuario = au.IdA_Numero_Alias and au.IdA_acom   =0
    and au.IdA_cl = cl and cv.Cve_cl = cl and up.usp_cl = cl ;

	update 
ics_controlventas
set cve_fecharec = now() where Cve_cl = cl;
END if;
	UPDATE ics_config_recarga set rec_estado_recarga = 1 where rec_estado = 1 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REC_AUT_EJECUTABLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_REC_AUT_EJECUTABLE`(v_cli_rec_idpunto varchar(45), v_cli_rec_catalogo varchar(120))
BEGIN

declare cl varchar(45); 
declare fechaactual datetime;
declare consulta_punto varchar(45); 
declare si_recarga varchar(45);
declare catalogo_nombre varchar(120);

 DECLARE continue HANDLER FOR SQLEXCEPTION
 BEGIN 
 END; 
 DECLARE continue HANDLER FOR SQLWARNING
 BEGIN
-- SHOW WARNINGS; -- SHOW COUNT(*) WARNINGS; -- SELECT @@warning_count; -- ROLLBACK;
 END; 
 
 
START TRANSACTION;
set fechaactual=(select SYSDATE());
set cl = v_cli_rec_idpunto;

UPDATE  ics_controlventas cv , ics_usu_per up ,ics_idalias_usuario au
	SET   cv.Cve_Credito = (cv.Cve_Credito+(select p.per_nombre_perf from ics_perfil p 
    where p.per_id_perfil = up.usp_fk_id_perfil )), cv.Cve_fecharec = fechaactual
	where cv.Cve_IdUsuario = up.usp_fk_id_usu    and up.usp_estado		 =1   
	and   cv.Cve_IdUsuario = au.IdA_Numero_Alias and au.IdA_acom   =1
    and au.IdA_cl = cl and cv.Cve_cl = cl and up.usp_cl = cl ;
 
UPDATE ics_controlventas cv , ics_usu_per up ,ics_idalias_usuario au
	SET   cv.Cve_Credito   = (select p.per_nombre_perf from ics_perfil p 
    where p.per_id_perfil = up.usp_fk_id_perfil ), cv.Cve_fecharec = fechaactual
	where cv.Cve_IdUsuario = up.usp_fk_id_usu    and up.usp_estado		 =1   
	and   cv.Cve_IdUsuario = au.IdA_Numero_Alias and au.IdA_acom   =0
    and au.IdA_cl = cl and cv.Cve_cl = cl and up.usp_cl = cl ;
 -- update ics_controlventas set Cve_fecharec= fechaactual where Cve_fecharec <> fechaactual and Cve_cl=cl;     
commit; 
 -- set fechaactual=(select SYSDATE());
set cl = v_cli_rec_idpunto;
set si_recarga = (select Cve_fecharec from ics_controlventas where Cve_cl=cl limit 1);
 if si_recarga <> fechaactual then 
 -- set @Querys = concat('call ',v_cli_rec_catalogo,'.SP_REC_AUT_EJECUTABLE("',v_cli_rec_idpunto,'")' );  errores(mens_error) VALUES (si_recarga)
set catalogo_nombre = v_cli_rec_catalogo;
insert  ignore into db_clientes_ics_3g.cli_log_recarga_automatica(cli_log_recarga_automatica_nombre, cli_log_recarga_automatica_catalogo, cli_log_recarga_automatica_tiporec, cli_log_recarga_automatica_punto, cli_log_recarga_automatica_error) VALUES ('ERROR: sp recaarga ',catalogo_nombre,0, 'ERROR FATAL AL RECARGAR','ERROR FATAL AL RECARGAR'); 
end if;

 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SEGMENTADORS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_SEGMENTADORS`(lote blob, longitud int)
BEGIN

declare tramaok bool;
declare j,i,longTrama int;
declare trama varchar(60);
declare dispensadora varchar(15);
declare indxTrama, anio,mes,dia varchar(2);
declare tramaExiste int;
declare parceDia,parceMes,parceano,parcehor,parceMin,parceSeg int;

set i =1;
-- segmentacion de tramas 
set dispensadora = substring(lote,-10);


while i <= longitud do -- recorre cada letra
	set tramaok = true;
	set j =1;
    set indxTrama    = substring(lote,i,1);
	if indxTrama = 'T' or indxTrama = 'P' or indxTrama = 'S' or indxTrama = 'y' or indxTrama = 'B' or indxTrama = 'C' or indxTrama = 'U' then	-- solo si es la inicial de trama	        
	        
		case indxTrama
			when 'S' then -- trama de venta efectivo
				set longTrama = 40;
                set parceDia = 26;
                set parceMes = 28;
                set parceano = 30;
			
            when 'U' then -- trama de venta efectivo 3S
				set longTrama = 41;
                set parceDia = 27;
                set parceMes = 29;
                set parceano = 31;
                
            when 'T' then -- tramas de billetero 
				set longTrama = 17;
                set parceDia = 3;
                set parceMes = 5;
                set parceano = 7;
                
            when 'P' then -- tramas de puerta 
				set longTrama = 17;
                set parceDia = 3;
                set parceMes = 5;
                set parceano = 7;
                
            when 'y' then -- tramas de venta horeca
				set longTrama = 27;
			when 'B' then -- tramas de entregas EAS 
				set longTrama = 24;
                set parceDia = 10;
                set parceMes = 12;
                set parceano = 14;
              
			when 'C' then -- tramas de entregas fallida  
				set longTrama = 24;
                set parceDia = 10;
                set parceMes = 12;
                set parceano = 14;
                
        end case;
        
        
        set trama = substring(lote,i,longTrama) ;             
            while j < longTrama do
				if substring(trama,j+1,1) = indxTrama then
					set tramaok = false;    
					set j=longTrama;
				end if;
				set j = j+1;
			end while;
         
         SET  trama = concat(trama,dispensadora);

		   SET anio = substring(trama,parceano,2);
		   SET mes  = substring(trama,parceMes,2);
		   SET dia  = substring(trama,parceDia,2);

		IF anio = '00' or mes = '00' or dia = '00' then
		 SET tramaExiste =0;
			else
			SET tramaExiste = (select count(log_trama) from ics_log where log_trama = trama and date(log_fecha) =  curdate());
		end if;

         -- consulta si la trama ya ha sido almacenada 
		
  			
         if  tramaExiste > 0 then 
			 set tramaok = false;    
		 else 		
            IF anio = '00' or mes = '00' or dia = '00' then
				SET tramaExiste = 0;
            else
				SET tramaExiste = (select count(log_trama) from ics_loglote where log_trama = trama  and date(log_timestmp) =  curdate());
            end if;           
            if  tramaExiste > 0 then 
				set tramaok = false;    
			end if;
         end if;
         
		
		 if tramaok then    
            INSERT INTO ics_loglote(log_trama,log_estado)VALUES(trama,'UNICO');
		 else
			INSERT INTO ics_loglote(log_trama,log_estado)VALUES(trama,'DUPLICADO/ERROR');
		 end if;
         
	end if;
   set i= i+1;
end while;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_select_blob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_select_blob`(id varchar(45))
    DETERMINISTIC
BEGIN
     SELECT * FROM ics_idalias_usuario WHERE IdA_Numero_Alias = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SETUPDATEDISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_SETUPDATEDISP`(idDisp int ,serialD varchar(15)  , 
nombre varchar(200) ,tipo int, marca int , idPunto int , estado  int , idPlanimetria int, nomCliente varchar(255) ,
area varchar(255), piso varchar(100), valorCred int)
BEGIN

DECLARE idcl   int;
DECLARE planiActual INT;
DECLARE dispActual VARCHAR(45);
DECLARE idArea int;
DECLARE nArea int;

set idcl = (select cli_id_cliente from ics_clientes where cli_razon_social =  nomCliente);
set dispActual = (select maq_serial_maq from ics_maquinas where idics_maquinas = idDisp );

set nArea = ( select count(*) from ics_area_disp where area_disp_nombre = area);

IF nArea = 0 then

	INSERT  INTO ics_area_disp(area_disp_nombre) VALUES (area);

END IF;

set idArea = (select idics_area_disp from ics_area_disp where area_disp_nombre = area);

	UPDATE ics_maquinas
	SET
	maq_serial_maq = serialD ,
	maq_ref_maq = nombre,
	fk_maq_tipo_maqn = tipo,
	fk_maq_marca_maqn = marca,
	fk_maq_punto_maqn = idPunto,
	maq_estado = estado,
	maq_cl = idcl,
    ics_id_area = idArea,
	ics_piso = piso
	WHERE idics_maquinas = idDisp ;
    
    UPDATE ics_config_transac
SET
config_valormax = valorCred
WHERE config_maquina = serialD;

    
    if dispActual != serialD then -- si hay cambio de serial , se actualiza usuario dispensadora 
		 UPDATE ics_usu_dispensadora
		SET	
		udis_Serial_Dispensadora = idDisp
		WHERE udis_Serial_Dispensadora =dispActual ;  
        
        -- SE ACTUALIZA MAQUINA PLANIMETRIA 
        		update ics_maq_planometria set   Fk_pla_id_maq  = serialD where Fk_pla_id_maq  = dispActual ;        
    end if;
	
	
    SET planiActual = (select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq = serialD and pla_estado = 1 limit 1)    ;
    
    if planiActual != idPlanimetria or planiActual is null  then
    
		update ics_maq_planometria set   pla_estado = 0 where Fk_pla_id_maq  = serialD ;
    
		if idPlanimetria != 0 then
		
			INSERT INTO ics_maq_planometria
			(Fk_pla_id_maq,
			Fk_pla_id_plan,
			pla_estado)
			VALUES
			(serialD,idPlanimetria,1);
		end if;
    end if;
    
							
	


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SET_CREATE_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_SET_CREATE_DISP`( serialDisp varchar(20) , nombre varchar(200) , tipo int  , marca int , punto int, plani int, area varchar(255), piso varchar(20), nombCliente varchar(255) ,valorAcre int )
BEGIN

/*
Procedimiento para app movil que realiza un registro de dispensadora y le asigna una planimetria en caso de que el parametro @plani  != 0 
*/
DECLARE idCliente int;
DECLARE idArea int;


	SET idCliente = (select fk_punt_id_clien from ics_puntos where pun_id_punto = punto); 
    
    SET idArea = (SELECT  count(*) FROM ics_area_disp WHERE area_disp_nombre = area);
    
    IF idArea = 0 THEN
    
    INSERT INTO ics_area_disp (area_disp_nombre) VALUES (area);
    
    END IF;
    
    SET idArea = (SELECT idics_area_disp FROM ics_area_disp WHERE area_disp_nombre = area);

	INSERT INTO ics_maquinas(maq_serial_maq,
	maq_ref_maq,              fk_maq_tipo_maqn,
    fk_maq_marca_maqn,      fk_maq_punto_maqn,        maq_cl, ics_id_area, ics_piso)
    VALUES(serialDisp , nombre, tipo, marca , punto , idCliente, idArea, piso);
    
    
INSERT INTO ics_config_transac
(config_valormax, config_maquina)
VALUES
(valorAcre, serialDisp);
                    
    IF plani != 0 THEN 
    
		UPDATE ics_maq_planometria SET pla_estado = 0  WHERE  Fk_pla_id_maq = serialDisp;
    
		INSERT INTO ics_maq_planometria
			(Fk_pla_id_maq,
			Fk_pla_id_plan)
			VALUES
			(serialDisp,plani);
    END IF;
                    


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_statusbilletero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_statusbilletero`(maquina varchar(45))
    DETERMINISTIC
begin
	SELECT 	eb. st_serial, m.mme_nombre,m. mme_descripcion_mens ,eb. st_fecha
	FROM 	ics_statusbilletero eb
	join 	ics_m_mensaje m		 on m.mme_codigo = eb.st_mme_codigo
	WHERE 	eb.ST_SERIAL = maquina and eb.estado ='0'  order by eb.idics_statusbilletero desc limit 1 
;

update ics_statusbilletero set estado = '1' where ST_SERIAL = maquina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_statusmaquina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_statusmaquina`(maquina varchar(45))
    DETERMINISTIC
begin
	SELECT 	eb.fk_men_serial_maq, m.mme_nombre,m. mme_descripcion_mens ,eb. men_fecha
	FROM 	ics_mensaje eb
	join 	ics_m_mensaje m		 on m.mme_codigo = eb.fk_men_error
	WHERE 	eb.fk_men_serial_maq = maquina and eb.men_estado_de_envio='0' and fk_men_error in 
	('0001','0003','0005','0006')
 order by eb.men_id_mensaje desc limit 1 
;

update ics_mensaje set men_estado_de_envio = '1' where fk_men_serial_maq = maquina;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_STATUS_MONEDERO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_STATUS_MONEDERO`(MAQUINA VARCHAR(45))
    DETERMINISTIC
begin
SELECT `est_mon_200`, `est_mon_50`, `est_mon_100`, `est_mon_500`, `est_mon_1000`, `est_disp`, `est_fecha`
 FROM ics_estadotubos_monedero where est_disp = MAQUINA order by idics_estadotubos_monedero desc limit 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_telemetria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_telemetria`(di int, ev int, dis varchar(15))
    DETERMINISTIC
BEGIN
	INSERT INTO ics_telemetria_1d 
	set tel_dispositivo   = di,
		tel_evento	  	  = ev,
		tel_dispensadora  = dis;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_temperatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temperatura`(g varchar(45), d varchar(10))
    DETERMINISTIC
BEGIN
	INSERT INTO ics_config_temp set ctem_grados_tm =g,ctem_disp=d;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_test`()
    DETERMINISTIC
BEGIN 
insert into errores values('enta_desde_sptest');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TOTAL_DATA_ITM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TOTAL_DATA_ITM`(
vdt_nom_item varchar(245),
vdt_valor varchar(245),
vdt_proveedor_ite varchar(245),
vdt_cliente varchar(245),
vdt_codigo varchar(245),
vdt_descripcion varchar(245),
vdt_prioridad varchar(245),
vdt_posologia varchar(245),
vdt_tipo_producto varchar(245),
vdt_tipo_medicamento varchar(245),
vdt_aplicacion varchar(245),
vdt_tipo_administracion varchar(245),
vdt_medida varchar(245),
vdt_reg_sanitario varchar(245),
vdt_lote varchar(245),
vdt_fecha_venc varchar(245))
    DETERMINISTIC
BEGIN
INSERT INTO ics_total_data_itm
 set dt_nom_item = vdt_nom_item,
dt_valor = vdt_valor,
dt_proveedor_ite = vdt_proveedor_ite,
dt_cliente		 = vdt_cliente,
dt_codigo		 = vdt_codigo	,
dt_descripcion	 = vdt_descripcion,
dt_prioridad	 = vdt_prioridad,
dt_posologia	 = vdt_posologia,
dt_tipo_producto = vdt_tipo_producto,
dt_tipo_medicamento = vdt_tipo_medicamento,
dt_aplicacion = vdt_aplicacion,
dt_tipo_administracion = vdt_tipo_administracion ,
dt_medida =  vdt_medida,
dt_reg_sanitario = vdt_reg_sanitario,
dt_lote = vdt_lote,
dt_fecha_venc = vdt_fecha_venc;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TOTAL_DATA_ITM_VEND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TOTAL_DATA_ITM_VEND`(
vdt_nom_item varchar(245),
vdt_valor varchar(245),
vdt_proveedor_ite varchar(245),
vdt_cliente varchar(245),
vdt_codigo varchar(245),
vdt_descripcion varchar(245))
    DETERMINISTIC
BEGIN
	INSERT INTO ics_total_data_itm_vend
	 set 
	dt_nom_item = vdt_nom_item,
	dt_valor = vdt_valor,
	dt_proveedor_ite = vdt_proveedor_ite,
	dt_cliente		 = vdt_cliente,
	dt_codigo		 = vdt_codigo	,
	dt_descripcion	 = vdt_descripcion
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TOTAL_DATA_USR_VEND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TOTAL_DATA_USR_VEND`(
vdt_cedula varchar(45),
vdt_nombre varchar(245),
vdt_huella varchar(45),
vdt_cargo  varchar(245),
vdt_perfil varchar(45),
vdt_acumula varchar(45),
vdt_centro_cost varchar(245),
vdt_dto varchar(245),
vdt_correo varchar(245),
vdt_codigo varchar(145),
vdt_all_maqs varchar(45),
vdt_cl varchar(45))
    DETERMINISTIC
BEGIN
INSERT INTO ics_total_data_usr_vend
SET dt_cedula 	= vdt_cedula,
dt_nombre		=vdt_nombre,
dt_huella		=vdt_huella,
dt_cargo		=vdt_cargo,
dt_perfil		=vdt_perfil,
dt_acumula		=vdt_acumula,
dt_centro_cost	=vdt_centro_cost,
dt_dto			=vdt_dto,
dt_correo		=vdt_correo,
dt_codigo		=vdt_codigo,
dt_cl			=vdt_cl,
dt_all_maqs		=vdt_all_maqs;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_A` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_A`(datos varchar(60))
    DETERMINISTIC
BEGIN
	  
    DECLARE seleccion VARCHAR(2);
    DECLARE planometria,item, c,retrn INT;
    DECLARE pet_serial_disp,pet_id_Alias VARCHAR(15);
    DECLARE tiempoRespuesta int(2);
    
    set seleccion		= substring(datos,8,2);		
    set pet_serial_disp = substring(datos,-10);	
	set pet_id_Alias	= substring(datos,2,6);	
    set tiempoRespuesta = substring(datos,10,2);		
    
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'A');
	
    set seleccion		= cast(seleccion as unsigned);		
	set planometria 	=(select Fk_pla_id_plan from  ics_maq_planometria where Fk_pla_id_maq = pet_serial_disp and pla_estado = 1 limit 1);
	set item 			=(select fk_id_item_det from ics_detalle_plano	where fk_id_plano_det = planometria	and det_pln_numero_seleccion = seleccion);
	set c	 			=(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);		
	set retrn=(select fn_Control_Autoriza(pet_id_Alias,pet_serial_disp,seleccion,item,c));		
	INSERT INTO ics_log  set log_trama = datos,log_rta=retrn,  log_maq = pet_serial_disp;
	select concat(retrn,pet_id_Alias);
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_B` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_B`(datos blob)
BEGIN
	
DECLARE Tamano_Pet INT;
DECLARE pet_id_Alias VARCHAR(15);
DECLARE pet_num_sel VARCHAR(2);
DECLARE pet_serial_disp VARCHAR(15);
DECLARE c,pet_Plano, item INT;
DECLARE CC_USR VARCHAR(15) ;
DECLARE pet_valsel INT;
DECLARE N_PROD VARCHAR(145);
DECLARE subsecc,SECCION INT;
DECLARE tiempoRespuesta int(2);
	set Tamano_Pet = length(datos)  ;
	if Tamano_Pet <= 34 then  
    
    if (select count(*) from ics_log where log_trama = datos and date(log_fecha)  = date(NOW()) )  = 0 then  
    
		set pet_id_Alias    = substring(datos,2,6);	-- ID USUARIO CONFORMADO	
		set pet_num_sel     = substring(datos,8,2); -- seleccion
		set pet_serial_disp = substring(datos,-10); -- serial
		
        set tiempoRespuesta = substring(datos,23,2);		
		INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'B');
        
		set c	 		=(SELECT cli_id_cliente  FROM vi_ics_cliente_maq WHERE maq_serial_maq = pet_serial_disp limit 1);	
		SET CC_USR		=(SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);
		set pet_Plano 	=(SELECT Fk_pla_id_plan  FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado = 1);
		set item        =(SELECT fk_id_item_det  FROM ics_detalle_plano WHERE fk_id_plano_det = pet_Plano and det_pln_numero_seleccion = pet_num_sel );  -- Item actual en esa seleccion  
		IF item  IS NULL THEN SET item  = 1; END IF;
		set N_PROD		=(SELECT ite_nom_item	 FROM ics_item WHERE ite_id_item = item limit 1);
		set pet_valsel	=(SELECT ite_valor       FROM ics_item WHERE ite_id_item = item);
		
        
        SET subsecc  = (select fk_maq_punto_maqn from ics_maquinas where maq_serial_maq = pet_serial_disp limit 1 );
		SET SECCION  = (select sbs_fk_seccion from ics_sub_seccion where sbs_id_subseccion =  subsecc limit 1);
		
		INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = pet_serial_disp;
		INSERT INTO ics_fulldata(ful_idusu, ful_numsel, ful_valsel, ful_idmaq, ful_planom, ful_item, ful_cl, ful_cc_usr, ful_ss, ful_nom_it, ful_tipoapp, ful_seccion,ful_fechaics )
		VALUES  (pet_id_Alias,  pet_num_sel,  pet_valsel,  pet_serial_disp,  pet_Plano,  item, c, CC_USR, subsecc, N_PROD, '1', SECCION,         
		concat('20',substring(datos,14,2),'-',substring(datos,12,2),'-',substring(datos,10,2),' ',substring(datos,16,2),':',substring(datos,18,2),':',substring(datos,20,2)));
	else
    INSERT INTO ics_loglote(log_trama,log_estado) VALUES(datos,'DUPLICADO/TCONEXIONOK');

    end if;
    else
		call SP_SEGMENTADORS(datos,Tamano_Pet);		
	end if;
    -- select sleep(25);
    select 6;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_C` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_C`(datos blob)
BEGIN

DECLARE Tamano_Pet INT;
DECLARE pet_id_Alias,pet_serial_disp,CC_USR VARCHAR(15);
DECLARE pet_num_sel VARCHAR(2);
DECLARE c INT;
DECLARE tiempoRespuesta int(2);

set Tamano_Pet = length(datos)  ;
	if Tamano_Pet <= 34 then 
		set pet_id_Alias    =substring(datos,2,6);	
		set pet_num_sel 	=substring(datos,8,2);	
		set pet_serial_disp =substring(datos,-10);			
		set c 				=(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
		SET CC_USR			=(SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);
		set tiempoRespuesta = substring(datos,23,2);		
		INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'C');
		
        INSERT INTO ics_log(log_trama,log_rta,log_maq) VALUES(datos,6,pet_serial_disp);

        call sp_ics_full_peticion(pet_id_Alias,pet_serial_disp,pet_num_sel,3,c,CC_USR,1);	-- ENVIA PARAMETRO 3 DE VENTA FALLIDA POR NO CAIDA DE N_PROD
    else
		call SP_SEGMENTADORS(datos,Tamano_Pet);
	END IF;
    -- select sleep(25);
    select 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_D` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_D`(datos varchar(60))
BEGIN

DECLARE planometria, item, c INT;
DECLARE seleccion VARCHAR(2);
DECLARE pet_id_Alias,pet_serial_disp VARCHAR(15);
DECLARE Conid_pet_alias,retrn ,existeUsuario , habilitadoTeclado INT;
DECLARE tiempoRespuesta int;
	
    set tiempoRespuesta = substring(datos,14,2);		
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'D');

	SET pet_id_Alias      = substring(datos,2,6);    -- ID USUARIO CONFORMADO 
	SET pet_serial_disp   = substring(datos,-10);
	set planometria 	=(select Fk_pla_id_plan from  ics_maq_planometria where Fk_pla_id_maq = pet_serial_disp and pla_estado = 1 limit 1);
    set seleccion 	    = substring(datos,12,2);
    set seleccion 	    = cast(seleccion as unsigned);
	set item 			=(select fk_id_item_det from ics_detalle_plano	where fk_id_plano_det = planometria	and det_pln_numero_seleccion = seleccion);
	set c	 			=(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);		
	set pet_id_Alias 	= substring(datos,2,10) ; -- cedula de la persona.
	set Conid_pet_alias = cast(pet_id_Alias as UNSIGNED);
    set retrn =0;
    set existeUsuario 	= (select count(*) from ics_idalias_usuario where IdA_Numero_Alias = Conid_pet_alias and IdA_cl =c );
    
    if existeUsuario > 0 then -- si el usuario esta registrado 
		set habilitadoTeclado  = (select IdA_sistalternativo from ics_idalias_usuario where  IdA_Numero_Alias= Conid_pet_alias and IdA_cl =c );         
        if habilitadoTeclado then      
			set retrn= fn_Control_Autoriza(Conid_pet_alias,pet_serial_disp,seleccion,item,c);                       
        end if;
	end if;	  

    if retrn is null then set retrn =0; end if;
    INSERT INTO ics_log  set log_trama = datos,log_rta=concat(retrn,pet_id_Alias),  log_maq = substring(datos,-10);
	select concat(retrn,pet_id_Alias);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_G` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_G`(datos varchar(60))
    DETERMINISTIC
BEGIN
DECLARE pet_id_Alias,pet_serial_disp VARCHAR(15);
    DECLARE Conid_pet_alias INT;
    DECLARE c , planometria, maxValConfig , Cred_Disp, credConfig INT;
    declare tiempoRespuesta int;
    
    set tiempoRespuesta = substring(datos,12,2);		
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,tiempoRespuesta,'G');
  
    SET pet_serial_disp = SUBSTRING(datos, -10);
	SET pet_id_Alias	= substring(datos,2,10);    
	SET Conid_pet_alias =  CAST(pet_id_Alias as UNSIGNED);
	
	SET c = (SELECT cli_id_cliente FROM vi_ics_cliente_maq WHERE maq_serial_maq = pet_serial_disp LIMIT 1 );
	-- si esta habilitado para consumo por teclado
	
	IF (select IdA_sistalternativo from ics_idalias_usuario where IdA_Numero_Alias = Conid_pet_alias and IdA_cl = c) = 1 then
		
		IF( SELECT udis_Estado FROM ics_usu_dispensadora WHERE udis_idUsuario=Conid_pet_alias AND udis_Serial_Dispensadora =pet_serial_disp LIMIT 1)=1 then 			-- valida si el usuario esta activo en la dispensadora
			SET Cred_Disp =( select Cve_Credito from ics_controlventas WHERE Cve_IdUsuario = Conid_pet_alias and Cve_cl=c);

			if Cred_Disp is null then	set Cred_Disp =0;	END IF;		
				
				set pet_serial_disp =substring(datos,-10);            
				set planometria = (select Fk_pla_id_plan from  ics_maq_planometria where Fk_pla_id_maq = pet_serial_disp and pla_estado = 1 limit 1);		
				set maxValConfig =(select max( cast(ite_valor as UNSIGNED) ) from ics_item where ite_id_item in (select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = planometria)); -- Mayor valor de bebida en una dispensadora
			
			
			set credConfig = (select config_valormax from ics_config_transac where config_maquina = pet_serial_disp and config_est =1 limit 1);
			
			if Cred_Disp>=maxValConfig then	-- puede consumir						
					
					INSERT INTO ics_log set log_trama= datos,log_rta= concat('1',LPAD(credConfig,5,'0'),pet_id_Alias),log_maq= substring(datos,-10);
					select concat('1',LPAD(credConfig,5,'0'),pet_id_Alias) ;
			else
				INSERT INTO ics_log set log_trama= datos, log_rta= concat('1','00000',pet_id_Alias), log_maq= substring(datos,-10);
				select concat('1','00000',pet_id_Alias) ;
			end if;
		ELSE
			INSERT INTO ics_log set log_trama = datos, log_rta= CONCAT('0','00000',pet_id_Alias), log_maq = substring(datos,-10);
			select CONCAT('0','00000',pet_id_Alias) a ; -- no esta habilitado en la maquina
		END IF;	
	else
		INSERT INTO ics_log set log_trama = datos, log_rta= CONCAT('0','00000',pet_id_Alias), log_maq = substring(datos,-10);
			select CONCAT('0','00000',pet_id_Alias) b ; -- no esta habilitado en la maquina
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_H` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_H`(datos VARCHAR(60))
BEGIN


DECLARE pet_id_Alias VARCHAR(15);
DECLARE Conid_pet_alias INT;
DECLARE pet_num_sel VARCHAR(2);
DECLARE pet_serial_disp, CC_USR VARCHAR(15);
DECLARE c, pet_Plano INT;
DECLARE item, subsecc , SECCION INT;
DECLARE N_PROD VARCHAR(165);
DECLARE credConfig INT;
DECLARE anio,mes , dia VARCHAR(2);
DECLARE fechaIcs DATETIME;
DECLARE pet_estadoSd INT;
DECLARE tiempoRespuesta INT;

set tiempoRespuesta = substring(datos,14,2);		
INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'H');

	SET pet_id_Alias= substring(datos,2,10);
	sET Conid_pet_alias = (SELECT CAST(pet_id_Alias as UNSIGNED));
	SET pet_num_sel = substring(datos,12,2);
	SET pet_num_sel     = cast(pet_num_sel as UNSIGNED)   ;
	set pet_serial_disp = substring(datos,-10);

	SET c =(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq= pet_serial_disp limit 1);
	SET pet_Plano 	= (select Fk_pla_id_plan FROM ics_maq_planometria where Fk_pla_id_maq= pet_serial_disp and pla_estado=1);
	SET CC_USR		= (select IdA_Identificacion_Usu FROM ics_idalias_usuario where IdA_cl= c and IdA_Numero_Alias= Conid_pet_alias);
	SET item 		=(select fk_id_item_det FROM ics_detalle_plano where fk_id_plano_det= pet_Plano and det_pln_numero_seleccion= pet_num_sel);

	IF item IS null then set item=1; end if;

	SET N_PROD =(Select ite_nom_item FROM ics_item WHERE ite_id_item= item limit 1);
	SET subsecc = (select fk_maq_punto_maqn from ics_maquinas where maq_serial_maq = pet_serial_disp limit 1);
	SET SECCION= (select sbs_fk_seccion from ics_sub_seccion where sbs_id_subseccion = subsecc limit 1);
	set credConfig = (select config_valormax from ics_config_transac where config_maquina = pet_serial_disp limit 1);

	SET anio= substring(datos,18,2);
	SET mes=  substring(datos,16,2);
	SET dia= substring(datos,14,2);

	IF anio= '00' or mes= '00' or dia= '00' then
	set fechaIcs=now();
	else
	set fechaIcs= concat(anio,'-',mes,'-',dia,' ',substring(datos,20,2), ':', substring(datos,22,2),':', substring(datos,24,2));
	end if;


	INSERT  INTO ics_fulldata
	SET ful_idusu=Conid_pet_alias, ful_numsel= pet_num_sel,  ful_item= item,  ful_valsel=credConfig,
	ful_idmaq= pet_serial_disp, ful_errores=1, ful_planom=pet_Plano, ful_finger=6,ful_cl = c ,ful_cc_usr = CC_USR,ful_ss=subsecc ,ful_nom_it = N_PROD,
	ful_tipoapp=2, ful_seccion= SECCION, ful_fechaics=fechaIcs;

	set pet_estadoSd= substring(datos,22,1);

	IF pet_serial_disp in (select est_nserie from ics_estadoics) then
		update ics_estadoics set est_estadosd=pet_estadoSd,est_fechasd = now() where  est_nserie = pet_serial_disp;				
	ELSE
		INSERT INTO ics_estadoics(est_nserie,est_cliente,est_estadosd)	VALUES(pet_serial_disp,c,pet_estadoSd);
	END IF;  
    
    SELECT 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_K` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_K`(datos  VARCHAR(400))
BEGIN


DECLARE tramaExite INT;
DECLARE pet_serial_disp VARCHAR(12);
DECLARE pet_num_sel VARCHAR(2);
DECLARE item INT;
DECLARE N_PROD VARCHAR(140);
DECLARE pet_valsel,precio ,id_venta , pet_Plano INT;
DECLARE subsecc, SECCION , iva INT;
DECLARE codProd VARCHAR(45);
DECLARE tiempoRespuesta INT;
DECLARE 	costo_producto INT;

	SET pet_serial_disp = SUBSTRING(datos,-10);
	set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and date(log_fecha) = curdate());
	
	set tiempoRespuesta = substring(datos,328,2);
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'K');
    
    if tramaExite = 0 then 
		
        INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = substring(datos,-10);	
		SET pet_Plano	= (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1 limit 1);
		SET pet_num_sel = substring(datos,318,2);
        SET item   		= (select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_Plano and det_pln_numero_seleccion =pet_num_sel  limit 1 );
		IF item IS NULL THEN SET item = 1; END IF;
		SET N_PROD		=(SELECT ite_nom_item FROM ics_item WHERE ite_id_item = item limit 1);
		IF N_PROD IS NULL THEN SET n_prod = 'Desconocido'; END IF;
		
        SET pet_valsel = substring(datos,320,7);
        set costo_producto = (select ite_costo from ics_item where  ite_id_item = item);
			INSERT INTO ics_auth_all
			set 	ics_naut = substring(datos,29,6),
					ics_vaut = substring(datos,40,12),
					ics_iva = substring(datos,57,12),
					ics_biva = substring(datos,74,12),
					ics_ncaj = substring(datos,91,10),
					ics_nrec = substring(datos,106,6),
					ics_rrn = substring(datos,117,6),
					ics_nter = substring(datos,128,8),
					ics_fcb = concat(substring(datos,141,6),substring(datos,152,4)),
					ics_hor = substring(datos,152,4),
					ics_cod_rta = substring(datos,161,2),
					ics_nfra = substring(datos,168,10),
					ics_ttar = substring(datos,183,2),
					ics_ncuo = substring(datos,190,2),
					ics_tar = substring(datos,197,4),
					ics_bin = substring(datos,206,6),
					ics_fvtar = substring(datos,217,4),
					ics_cuc = substring(datos,226,23),
					ics_dest = substring(datos,254,23),
					ics_label = substring(datos,282,2),
					ics_filler = substring(datos,289,12),
					ics_filler2 = substring(datos,306,12),
					ics_PAN = substring(datos,206,6),
					ics_nsel = pet_num_sel,
					ics_vsel = pet_valsel,
					ics_est_tran = substring(datos,327,1),
					ics_nvmc = pet_serial_disp,
					ics_cl 	= (SELECT cli_id_cliente   FROM vi_ics_cliente_maq  WHERE maq_serial_maq = substring(datos,-10) limit 1),
					ics_nomprod= N_PROD,ics_costo = costo_producto     ;

		 -- limita las ventas 
			INSERT INTO db_clientes_ics_3g.ics_credibaco_pan
			SET
			ics_tar_comp= concat(substring(datos,206,6),substring(datos,197,4)),
			ics_seis_tar= concat(substring(datos,206,6),substring(datos,197,4)),
			ics_valor	= pet_valsel;
				
		-- almacena en fuldata
		
			SET subsecc  		= (select fk_maq_punto_maqn  from ics_maquinas    where maq_serial_maq 		= substring(datos,-10) limit 1);
			SET SECCION  		= (select sbs_fk_seccion 	 from ics_sub_seccion where sbs_id_subseccion 	=  subsecc 		  limit 1);			
			             	                 
		 
				INSERT INTO ics_fulldata
				set 
				ful_numsel= pet_num_sel,
				ful_valsel= pet_valsel,
				ful_idmaq = pet_serial_disp,
				ful_item  = item,
				ful_nom_it= N_PROD,
				ful_tipoapp = 4,
				ful_ss =subsecc,
				ful_seccion= SECCION,
                ful_vcosto = costo_producto,
				ful_cl 	  = (SELECT cli_id_cliente   FROM vi_ics_cliente_maq  WHERE maq_serial_maq = substring(datos,-10) limit 1);
                
                set id_venta = last_insert_id();      			
			
		         
          	if pet_serial_disp = '0000000025' then
						
				set precio 	= FLOOR(pet_valsel/1.16);
				set iva		= pet_valsel-precio;
				set codProd = (select ite_codigo from ics_item where ite_id_item =item );					
														
				select concat(
				substring('Nit. 000000001',1,32),(select X'0A0D'),
				substring('INSSA SAS',1,32),(select X'0A0D'),	
				substring('Maquina Dispensadora Candados',1,32),(select X'0A0D'),
				substring('CIIU 5611 Tarifa 13.8x1000',1,32),(select X'0A0D'),
				substring('CIIU 5611 Tarifa 4.14x1000',1,32),(select X'0A0D'),
				substring('REGIMEN COMUN',1,32),(select X'0A0D'),
				substring('Grandes Contribuyentes segun',1,32),(select X'0A0D'),
				substring('Resolucion 000041 de 30-01-2014',1,32),(select X'0A0D'),
				substring('IMPUESTOS INCLUIDOS',1,32),(select X'0A0D'),
				substring('AUTORRETENEDORES DEL CREE',1,32),(select X'0A0D'),
				substring('Resolucion: 310000087954',1,32),(select X'0A0D'),
				substring('Autorizado el: 28/09/2015',1,32),(select X'0A0D'),
				substring('Del: 09-000001 Al: 09-300000',1,32),(select X'0A0D'),
				substring('********CUENTA CERRADA*******',1,32),(select X'0A0D'),
				'Doc. Equivalente No. 09-',LPAD(id_venta,6,'0'),(select X'0A0D'),
				date_format(now(),'%b %d %Y %H:%i:%s'),(select X'0A0D'),    
				'No. de seleccion: ',pet_num_sel,(select X'0A0D'),
				'Cod. Prod: Yal458',(select X'0A0D'),
				 substring(N_PROD,1,32),(select X'0A0D'), -- Nombre del producto
				'Sub-total',LPAD(precio,21,' '),(select X'0A0D'),
				'Impuesto',LPAD(iva,22,' '),(select X'0A0D'),
				'Total',LPAD(replace(format(pet_valsel,0),',','.') ,25,' '),(select X'0A0D'),
				'Detalle Impuestos 16%',(select X'0A0D'),
				'Base: ',precio,' Imptos: ',iva,(select X'0A0D'),
				substring('NombreRazonSocial:_______________________',1,32),(select X'0A0D'),
				substring('C.C.NIT:__________________________',1,32),(select X'0A0D'),             
				substring('NombreRazonSocial:_______________________',1,32),(select X'0A0D'),
				substring('C.C.NIT:__________________________',1,32),(select X'0A0D'),
				'--- Cuenta Cerrada ---',(select X'0A0D'),(select X'0A0D'),(select X'0A0D'),(select X'0A0D'), (select X'1B6D0A0D')
				);
			else 
				select 6;
            end if;
		
	else
		INSERT INTO ics_loglote(log_trama,log_estado) VALUES (datos,'DUPLICADO/ERROR');
        SELECT 6 ;
	end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_L` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_L`(datos varchar(60))
    DETERMINISTIC
BEGIN
	
    DECLARE MAX_NUM_VENTAS,MAX_VALOR_VENTAS,nbin,vcomp,vDisponible INT;
    DECLARE tiempoRespuesta INT(3);
    DECLARE pet_serial_disp VARCHAR(10);
    SET pet_serial_disp = substring(datos,-10);
    set tiempoRespuesta = substring(datos,12,2);
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(pet_serial_disp,tiempoRespuesta,'L');
    
    
    SET MAX_NUM_VENTAS	 =(SELECT  config_ntransacciones FROM ics_config_transac where config_maquina =  substring(datos,-10) and config_est = 1 LIMIT 1);
    SET MAX_VALOR_VENTAS =(SELECT config_valormax 	     FROM  ics_config_transac where config_maquina =  substring(datos,-10) and config_est = 1 LIMIT 1);

	set nbin = (SELECT count(*) FROM db_clientes_ics_3g.ics_credibaco_pan where ics_seis_tar = substring(datos,2,10)  and  date(ics_fecha) = curdate());    
	set vcomp =(SELECT sum(ics_valor) FROM db_clientes_ics_3g.ics_credibaco_pan where ics_seis_tar = substring(datos,2,10) and  date(ics_fecha) = curdate());

	if nbin is null then set nbin =  0 ; end if;
	if vcomp is null then set vcomp = 0; end if;	
  
	IF nbin >= MAX_NUM_VENTAS or  vcomp >= MAX_VALOR_VENTAS  then -- si se repite mas de 3 veces	o si ha llegado  al valor max por dia				
			SELECT '0000000';
	ELSE		 
		set vDisponible = MAX_VALOR_VENTAS - vcomp ;           
		if vDisponible > 0 then
			INSERT INTO ics_log  set log_trama = datos,log_rta=CONCAT('1',LPAD(vDisponible,7,'0')),  log_maq = pet_serial_disp;
			SELECT CONCAT('1',LPAD(vDisponible,7,'0'));
		else
			INSERT INTO ics_log  set log_trama = datos,log_rta='0000000',  log_maq = pet_serial_disp;
			SELECT '0000000';
		end if;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_O_RECARGAR_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TRAMA_O_RECARGAR_DISP`(dispensadora varchar(45), cliente varchar(45), usuario varchar(45))
    DETERMINISTIC
BEGIN
	-- desactivar ordenes de recarga
	-- actualizar control de items
	-- guardar recarga
declare 	planimetria_on 			 varchar(45);
set 		planimetria_on 			 =(select Fk_pla_id_plan from ics_maq_planometria where Fk_pla_id_maq = dispensadora and pla_estado=1 );
UPDATE 		ics_ordencompra 		 set oco_estado   = 0 	 	 where oco_serialmaq = dispensadora and oco_idcliente = cliente ;
UPDATE 		ics_maq_planometria 	 set pla_estado	  = 0 		 where Fk_pla_id_maq = dispensadora;
INSERT INTO ics_maq_planometria 	 set Fk_pla_id_maq= dispensadora, Fk_pla_id_plan = planimetria_on;
INSERT INTO ics_recarga_dispensadora set rec_ser_disp = dispensadora, rec_cliente    = cliente , rec_usr = usuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_P` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_P`(datos blob)
BEGIN

	DECLARE longTrama INT;
	DECLARE anio,mes,dia VARCHAR(2);
	DECLARE tramaExite INT;
	DECLARE idError VARCHAR(10);
	DECLARE fk_men_serial_maq VARCHAR(15);
	DECLARE tiempoRespuesta INT(3);
	SET fk_men_serial_maq = substring(datos,-10);
	set tiempoRespuesta = substring(datos,16,2);    
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama)	VALUES(fk_men_serial_maq,tiempoRespuesta,'P');
    
	set longTrama = length(datos);    

	if longTrama  <= 30 THEN -- TRAMA NORMAL	
		SET anio = substring(datos,7,2);
		SET mes  = substring(datos,5,2);
		SET dia  = substring(datos,3,2);

		IF anio = '00' or mes = '00' or dia = '00' then
			set tramaExite = 0;
		else		
			set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and date(log_fecha) = curdate() ); 
			IF tramaExite = 0 then -- no existe en fuldata
				set tramaExite = (select count(log_trama) from ics_loglote where log_trama = datos and date(log_timestmp)= curdate());                
			end if;            
		end if;  
		if tramaExite = 0 THEN
			
			IF substring(datos,2,1) = 1 THEN  -- PUERTA ABIERTA
				SET idError = '0005';
                  UPDATE ics_maquinas SET maq_est_pue = 0 WHERE maq_serial_maq = fk_men_serial_maq;

			ELSE
				SET idError = '0006';
				UPDATE ics_maquinas SET maq_est_pue = 1 WHERE maq_serial_maq = fk_men_serial_maq;

			END IF;
            
            INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = fk_men_serial_maq;	
            INSERT INTO ics_mensaje set fk_men_error= idError ,fk_men_serial_maq = fk_men_serial_maq, men_estado_de_envio=1;
		END IF;
        SELECT 6;
	ELSE -- TRAMA EN LOTE 
		CALL SP_SEGMENTADORS(datos,longTrama);     
        SELECT 6;
	END IF;
   -- select sleep(25);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_Q` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_Q`(datos BLOB)
BEGIN
	DECLARE  pet_id_Alias VARCHAR(15);
    DECLARE pet_num_sel VARCHAR(3);
    DECLARE pet_serial_disp, CC_USR VARCHAR(15);
    DECLARE c ,tiempoRespuesta  INT;
    
   
    SET tiempoRespuesta = substring(datos,11,2);
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,tiempoRespuesta,'W');
    
	set pet_id_Alias 	= substring(datos,2,6);	
	set pet_num_sel    	= substring(datos,8,3);	
    set pet_num_sel    	= cast(pet_num_sel as unsigned);	
	set pet_serial_disp = substring(datos,-10);
	SET c 				=(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
	SET CC_USR			=(SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);
	call sp_ics_full_peticion(pet_id_Alias,pet_serial_disp,pet_num_sel,3,c,CC_USR,2);	


	INSERT INTO ics_log
	(log_trama,log_rta,log_maq)
	VALUES
	(datos,6,pet_serial_disp);

	SELECT 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_R` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_R`(datos varchar(100))
BEGIN

DECLARE diaSemana VARCHAR(2);
DECLARE pet_serial_disp VARCHAR(15);
DECLARE c int;
DECLARE rturn varchar(25);
DECLARE flag varchar(3);
DECLARE ip varchar(15);
DECLARE puerto varchar(6);
DECLARE manuBilletero varchar(4);
DECLARE serialBilletero varchar(15);
DECLARE modBilletero varchar(15);
DECLARE manuMonedero varchar(15);
DECLARE serialMonedero varchar(15);
DECLARE modMonedero varchar(15); 
DECLARE vpic18f8722 varchar(15);
DECLARE vpic18f4550  varchar(15);
DECLARE intencidad  varchar(15);
DECLARE calidad  varchar(15);
DECLARE longitudTrama int;

DECLARE i , tamSerial int;

DECLARE idMonedero, idBilletero INT;

DECLARE nRegLonMonDisp INT;
DECLARE srialMonAnterior VARCHAR(20);


DECLARE srialBillAnterior VARCHAR(20);
DECLARE nRegLogBilDisp INT;

set pet_serial_disp = substring(datos,-10);

 set flag = ( select flag_actualiza_ip from  db_clientes_ics_3g.cli_dispensadora_catalogo  where dis_c_dispensadora = pet_serial_disp );
   
  IF substring(datos,2,1) = '2' THEN

					UPDATE ics_maquinas SET maq_est_bill = 1 WHERE maq_serial_maq =pet_serial_disp ;

		if flag = '0' then
    
        set c =(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
        
        
        --  Manufactura billetero
	set manuBilletero =	substring(datos,3,3);
			-- Serial billetero
	set serialBilletero =  substring(datos,6,12);
	
    set tamSerial = 12;
     set i = 1;
     while i < 13 do
		if  ascii( substring(serialBilletero, i,1) ) = 32   then
			set tamSerial  = i -1;
				set i = 12;
        end if;
        set i = i+1 ;
     end while;
     
     	set serialBilletero		= substring(serialBilletero,1,tamSerial);
  
  if  serialBilletero = '000000000000' then
  
        set modBilletero		= '000000000000';
  
  else
	  		-- Modelo billetero
		set 	modBilletero	= substring(datos,18,12);

		set tamSerial = 12;
		 set i = 1;
		 while i < 13 do
			if  ascii( substring(modBilletero, i,1) ) = 32   then
				set tamSerial  = i -1;
					set i = 12;
			end if;
			set i = i+1 ;
		 end while;
		 
     	set modBilletero		= substring(modBilletero,1,tamSerial);
  
  end if;  
    
    
			-- Manufactura monedero
	set manuMonedero		= substring(datos,30,3);
			-- Serial monedero
	set 	serialMonedero	= substring(datos,33,12);
    
      set tamSerial = 12;
     set i = 1;
     while i < 13 do
		if  ascii( substring(serialMonedero, i,1) ) = 32   then
			set tamSerial  = i -1;
				set i = 12;
        end if;
        set i = i+1 ;
     end while;
     
     	set serialMonedero		= substring(serialMonedero,1,tamSerial);
  
    
    if serialMonedero = '000000000000' then 
		set modMonedero		= '000000000000';
    else
		   		-- Modelo monedero quirar espacios en blanco al final 
	set modMonedero		= substring(datos,45,12);
    
        set tamSerial = 12;
     set i = 1;
     while i < 13 do
		if  ascii( substring(modMonedero, i,1) ) = 32   then
			set tamSerial  = i-1 ;
				set i = 12;
        end if;
        set i = i+1 ;
     end while;
     
     	set modMonedero = substring(modMonedero,1,tamSerial);
  
    end if;
    
    SET longitudTrama = LENGTH(datos) ;
    
    if longitudTrama < 73 then
						-- Versión FW PIC18F8722 
		set vpic18f8722		= substring(datos,5,2);
				-- Versión FW PIC18F4550
		set vpic18f4550	= substring(datos,3,2);
				-- Intensidad de senal (LAN)
		set intencidad		= substring(datos,9,1);
				-- Calidad de señal (LAN)
		set calidad		= substring(datos,7,2);
		
    else
    
    	-- Versión FW PIC18F8722 
		set vpic18f8722		= substring(datos,57,2);
				-- Versión FW PIC18F4550
		set vpic18f4550	= substring(datos,59,2);
				-- Intensidad de senal (LAN)
		set intencidad		= substring(datos,61,2);
				-- Calidad de señal (LAN)
		set calidad		= substring(datos,63,1);
    
    
    end if;
	
    
	

 -- Identificamos y/o almacenamos el billetero

	if serialBilletero not in(select bill_serial from ics_billetero ) then
		INSERT INTO  ics_billetero
			(bill_serial,
			bill_manufactura,
			bill_modelo)
			VALUES
			(serialBilletero,manuBilletero,modBilletero);
            
          SET   idBilletero = last_insert_id();
            else
            
        SET     idBilletero=(select idics_bill  from ics_billetero where bill_serial = serialBilletero) ;
            
	end if;

-- identificamso y/o almacenamos el monedero

	if serialMonedero not in(select mon_serial from ics_monedero) then
		INSERT INTO       ics_monedero
		(mon_serial,
		mon_manufactura,
		mon_modelo)
		VALUES
		(serialMonedero,manuMonedero,modMonedero);
				
		SET	idMonedero = last_insert_id();
	else
		SET idMonedero  =(select  idics_mon from ics_monedero where  mon_serial = serialMonedero ) ;				
	end if;


        
        
 -- Registro el log de dispositivos en dispensadora si el dispositivo cambia 
 -- monedero
 
  SET srialMonAnterior = (SELECT mon.mon_serial  FROM ics_maquinas m  join ics_monedero mon where mon.idics_mon = m.maq_monedero and m.maq_serial_maq =pet_serial_disp);
 
	if  srialMonAnterior <> 'NA' then
    
       SET  nRegLonMonDisp = (SELECT COUNT(*) FROM ics_log_mon_disp where ics_serial_disp = pet_serial_disp  );
                  INSERT into  errores(mens_error) values( concat(srialMonAnterior,serialMonedero) ); 
  
        if nRegLonMonDisp = 0 then
			insert into ics_log_mon_disp(ics_serial_mon,ics_serial_disp) values(  serialMonedero, pet_serial_disp); 
        else
			if srialMonAnterior <> serialMonedero then
				insert into ics_log_mon_disp(ics_serial_mon,ics_serial_disp) values(  serialMonedero, pet_serial_disp); 
			end if;
        end if;
    
    end if;
     
        
 -- Billetero
  SET srialBillAnterior = (SELECT bil.bill_serial  FROM ics_maquinas m  JOIN ics_billetero bil 
												WHERE bil.idics_bill = m.maq_billetero AND m.maq_serial_maq =pet_serial_disp);
 
	if  srialBillAnterior <> 'NA' then
    
       SET  nRegLogBilDisp = (SELECT COUNT(*) FROM ics_log_bil_disp where ics_serial_disp = pet_serial_disp  );
                  INSERT into  errores(mens_error) values( concat(srialBillAnterior,serialBilletero) ); 
  
        if nRegLogBilDisp = 0 then
			insert into ics_log_bil_disp(ics_serial_bil,ics_serial_disp) values(  serialBilletero, pet_serial_disp); 
        else
			if srialBillAnterior <> serialBilletero then
				insert into ics_log_bil_disp(ics_serial_bil,ics_serial_disp) values(  serialBilletero, pet_serial_disp); 
			end if;
        end if;
    
    end if;
 
	
	
 
 
  -- Actualizo registro de los dispositivos maquina y billetero
	update       ics_maquinas set   maq_billetero =  idBilletero,         maq_monedero = idMonedero 
	where  maq_serial_maq = pet_serial_disp;
        
        
        
        
        -- almacen de version de fw
        if pet_serial_disp in (select est_nserie from ics_estadoics) then
            update ics_estadoics set
            est_cliente = c,
            est_vpic18f4550=vpic18f4550,
            est_vpic18f8722=vpic18f8722
            where est_nserie = pet_serial_disp ;           
        else
            INSERT INTO ics_estadoics(est_nserie,est_cliente)
            VALUES(pet_serial_disp,c);
        end if;
    -- fin almacen de version de fw

    -- almacena calidad intencidad
            INSERT INTO ics_estado_senal
            (ess_calidad,
            ess_intencidad,
            ess_dispensadora)
            VALUES
            (calidad, intencidad,pet_serial_disp);
    -- fin almacena intencidad calidad
        SET diaSemana =  dayofweek((curdate()));
       
        case diaSemana
        when 1 then
            set diaSemana = '07';
        when 2 then
            set diaSemana = '01';
        when 3 then
            set diaSemana = '02';
        when 4 then
            set diaSemana = '03';
        when 5 then
            set diaSemana = '04';
        when 6 then
            set diaSemana = '05';
        when 7 then
            set diaSemana = '06';
        end case;
       
        set rturn = (select concat('2', LPAD(day(curdate()),2,'0'),LPAD(month(curdate()),2,'0'),diaSemana ,
        substring(year(curdate()),-2), LPAD(hour(curtime()),2,0),LPAD(minute(curtime()),2,0),LPAD(second(curtime()),2,0) ));   

        INSERT INTO ics_log  set log_trama = datos,log_rta=rturn,  log_maq = substring(datos,-10);     
        
    else

        set ip =( select dis_direccionservidot from db_clientes_ics_3g.cli_dispensadora_catalogo where dis_c_dispensadora = pet_serial_disp);
        set puerto = ( select dis_puerto from db_clientes_ics_3g.cli_dispensadora_catalogo where dis_c_dispensadora = pet_serial_disp );
       
        set rturn = concat('3', ip ,'*', puerto );

        INSERT INTO ics_log  set log_trama = datos,log_rta=rturn,  log_maq = substring(datos,-10);     
    end if;

    select rturn;
ELSE
	UPDATE ics_maquinas SET maq_est_bill = 1 WHERE maq_serial_maq = pet_serial_disp;
    INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq =pet_serial_disp ;   
    INSERT INTO ics_mensaje set fk_men_error= '0003' ,fk_men_serial_maq=pet_serial_disp,men_estado_de_envio=1;
    INSERT INTO ics_mensaje set fk_men_error= '0008' ,fk_men_serial_maq = pet_serial_disp, men_estado_de_envio=5, men_estado=1;
    select 6;
END IF;  
       
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_S` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_S`(datos blob)
BEGIN

DECLARE longTrama INT;
DECLARE anio, mes, dia INT;
DECLARE fechaIcs DATETIME;
DECLARE tramaExite INT;
DECLARE pet_num_sel INT;
DECLARE pet_valsel, pet_estadoSd ,pet_plano, c, item INT;
DECLARE N_PROD VARCHAR(150);
DECLARE SECCION,subsecc INT;
DECLARE pet_serial_disp VARCHAR(15);
DECLARE mon_50, mon_100, mon_200 , mon_500 , mon_1000 int;
DECLARE id_venta INT;
DECLARE precio, iva INT;
DECLARE codProd VARCHAR(45);
DECLARE tiempoRespuesta INT(3);
DECLARE 	costo_producto INT;
		DECLARE billetes VARCHAR(4);

	SET pet_serial_disp = substring(datos,-10);
	set longTrama = length(datos);	
    IF longTrama <= 52 then -- Trama normal 
		SET tiempoRespuesta = substring(datos,39,2);
		INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,tiempoRespuesta,'S');
		SET anio = substring(datos,30,2);
		SET mes  = substring(datos,28,2);
		SET dia  = substring(datos,26,2);
				
		IF anio = '00' or mes = '00' or dia = '00'  or mes > '12' or dia > '31' then
			set fechaIcs = now();
            set tramaExite = 0;
		else
       		set fechaIcs = concat(anio ,'-',mes,'-',dia,' ',substring(datos,32,2) ,':',substring(datos,34,2),':',substring(datos,36,2));
			set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and  date(log_fecha) = curdate());
            IF tramaExite = 0 then -- no existe en fuldata
				set tramaExite = (select count(log_trama) from ics_loglote where log_trama = datos and date(log_timestmp)= curdate());                
			end if; 
        end if;
		
		-- se consulta si la trama ya fue almacenada anteriormente 			
		IF tramaExite = 0 then 
			
				SET pet_num_sel 	= substring(datos,2,2);
                SET pet_num_sel 	= cast(pet_num_sel as unsigned );
				SET pet_valsel  	= substring(datos,4,7);
				SET pet_estadoSd	= substring(datos,38,1);            

				SET pet_plano		= (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1);

				IF pet_plano 		IS NULL THEN SET pet_plano = 0 ; END IF;
				SET c 			= (select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
				set item 		= (SELECT fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_Plano  and det_pln_numero_seleccion = pet_num_sel );  -- Item actual en esa seleccion  
				IF  item  			IS NULL THEN SET item  = 1; END IF;
				set N_PROD		= (SELECT ite_nom_item	FROM ics_item WHERE ite_id_item = item limit 1);									
				SET subsecc  		= (select fk_maq_punto_maqn  from ics_maquinas    where maq_serial_maq 		= pet_serial_disp limit 1);
				SET SECCION  		= (select sbs_fk_seccion 	 from ics_sub_seccion where sbs_id_subseccion 	=  subsecc 		  limit 1);

			-- Almacenamiento de estado de SD
				IF pet_serial_disp in (select est_nserie from ics_estadoics) then
					update ics_estadoics set est_estadosd=pet_estadoSd,est_fechasd = now() where  est_nserie = pet_serial_disp;							
				ELSE
					INSERT INTO ics_estadoics(est_nserie,est_cliente,est_estadosd)	VALUES(pet_serial_disp,c,pet_estadoSd);
				END IF;
			-- fin almacenamiento  estado de sd
			
			
			-- Almacenamiento de estado de los tubos de monedero 
				set mon_50 = substring(datos,11,3);
                set mon_100 = substring(datos,14,3);
                set mon_200 = substring(datos,17,3);
                set mon_500 = substring(datos,20,3);
                set mon_1000 = substring(datos,23,3);
            
				INSERT INTO ics_estadotubos_monedero
				set	est_disp=pet_serial_disp,est_mon_50=mon_50,est_mon_100=mon_100,est_mon_200=mon_200,est_mon_500=mon_500,est_mon_1000=mon_1000;

			-- Fin estado de los tubos de monedero 			
	        -- Almacena alerta si llegan todos los tubos a < 7 
				
                if mon_50 < 7 and mon_100 < 7 and mon_200< 7 and mon_500 < 7 and mon_1000 <7 then
					INSERT INTO ics_mensaje
					(fk_men_error,fk_men_serial_maq,fk_men_id_peticion,men_estado,men_detalle,men_estado_de_envio)
					VALUES
					('0017',pet_serial_disp,0,1,concat( ': ',mon_50,' monedas de $50, ',mon_100, ' monedas de $100, ',mon_200, ' monedas de $200, ',mon_500, ' monedas de $500, ',mon_1000, ' monedas de $1000 ' ),0);
                end if;
            
            -- fin almacena alerta
				INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = substring(datos,-10);	
			-- Inserta venta en ful data 
            set costo_producto = (select ite_costo from ics_item where  ite_id_item = item);
				INSERT INTO ics_fulldata
				SET 
				ful_numsel		=pet_num_sel,
				ful_valsel		=pet_valsel,
				ful_idmaq		=pet_serial_disp,
				ful_planom 		=pet_plano,
				ful_item		=item,
				ful_cl			=c,
				ful_nom_it		=N_PROD,
				ful_ss 			=subsecc ,
				ful_seccion 	=SECCION,
                ful_vcosto = costo_producto,
				ful_tipoapp		=3,      
				ful_fechaics    =fechaIcs;				
                set id_venta    =last_insert_id();
                SET billetes  = substring(datos,26,3); 
                
                INSERT INTO ics_estado_billetes
				(bll_cantidad,
				bll_serial)
				VALUES
				(billetes,pet_serial_disp);

				
            -- Programacion impresora.    
			if pet_serial_disp = '0000000025' then
						
				set precio 	= FLOOR(pet_valsel/1.16);
				set iva		= pet_valsel-precio;
				set codProd = (select ite_codigo from ics_item where ite_id_item =item );					
														
					select concat(
					substring('Nit. 000000001',1,32),(select X'0A0D'),
					substring('INSSA SAS',1,32),(select X'0A0D'),	
					substring('Maquina Dispensadora Candados',1,32),(select X'0A0D'),
					substring('CIIU 5611 Tarifa 13.8x1000',1,32),(select X'0A0D'),
					substring('CIIU 5611 Tarifa 4.14x1000',1,32),(select X'0A0D'),
					substring('REGIMEN COMUN',1,32),(select X'0A0D'),
					substring('Grandes Contribuyentes segun',1,32),(select X'0A0D'),
					substring('Resolucion 000041 de 30-01-2014',1,32),(select X'0A0D'),
					substring('IMPUESTOS INCLUIDOS',1,32),(select X'0A0D'),
					substring('AUTORRETENEDORES DEL CREE',1,32),(select X'0A0D'),
					substring('Resolucion: 310000087954',1,32),(select X'0A0D'),
					substring('Autorizado el: 28/09/2015',1,32),(select X'0A0D'),
					substring('Del: 09-000001 Al: 09-300000',1,32),(select X'0A0D'),
					substring('********CUENTA CERRADA*******',1,32),(select X'0A0D'),
					'Doc. Equivalente No. 09-',LPAD(id_venta,6,'0'),(select X'0A0D'),
					date_format(now(),'%b %d %Y %H:%i:%s'),(select X'0A0D'),    
					'No. de seleccion: ',pet_num_sel,(select X'0A0D'),
					'Cod. Prod: Yal458',(select X'0A0D'),
					 substring(N_PROD,1,32),(select X'0A0D'), -- Nombre del producto
					'Sub-total',LPAD(precio,21,' '),(select X'0A0D'),
					'Impuesto',LPAD(iva,22,' '),(select X'0A0D'),
					'Total',LPAD(replace(format(pet_valsel,0),',','.') ,25,' '),(select X'0A0D'),
					'Detalle Impuestos 16%',(select X'0A0D'),
					'Base: ',precio,' Imptos: ',iva,(select X'0A0D'),
					substring('NombreRazonSocial:_______________________',1,32),(select X'0A0D'),
					substring('C.C.NIT:__________________________',1,32),(select X'0A0D'),
                    '--- Cuenta Cerrada ---',(select X'0A0D'),(select X'0A0D'),(select X'0A0D'),(select X'0A0D'), (select X'1B6D0A0D')
					);
					
			else				
				select 6;
			end if;
         
		else -- la trama existe 
			INSERT INTO ics_loglote(log_trama,log_estado) VALUES(datos,'DUPLICADO/TCONEXIONOK');		
            SELECT 6;
		END IF;
	ELSE 		
		CALL SP_SEGMENTADORS(datos,longTrama);      
        SELECT 6;
	END IF;        

   --  select sleep(15);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_T` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_T`(datos blob)
BEGIN

	DECLARE longTrama INT;
	DECLARE anio, mes, dia varchar(2);
	DECLARE tramaExite   INT;
	DECLARE idError VARCHAR(45);
	DECLARE fk_men_serial_maq VARCHAR(15);
	DECLARE tiempoRespuesta INT(3);
	
    SET fk_men_serial_maq = substring(datos,-10);
    SET tiempoRespuesta = substring(datos,16,2);
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(fk_men_serial_maq,tiempoRespuesta,'T');
 
set longTrama = length(datos);          
	if longTrama <= 30 THEN  -- TRAMA NORMAL  	
    
		
		SET anio = substring(datos,7,2);
		SET mes = substring(datos,5,2);
		SET dia = substring(datos,3,2);
			
		IF anio = '00' or mes = '00' or dia = '00' then
			set tramaExite = 0;
		else		
			set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and date(log_fecha) = curdate() ); 
			IF tramaExite = 0 then -- no existe en fuldata
				set tramaExite = (select count(log_trama) from ics_loglote where log_trama = datos and date(log_timestmp)= curdate());                
			end if;            
		end if;
        
		if tramaExite = 0 THEN
			if substring(datos,2,1) = '1' then
				SET idError = '0008';
			else if substring(datos,2,1) = '2' then
				SET idError = '0011';
			else if substring(datos,2,1) ='3' THEN
				SET idError = '0012';
			else if substring(datos,2,1) ='4' THEN
				SET idError = '0013';
			else if substring(datos,2,1) ='5' THEN
				SET idError = '0014';
			else if substring(datos,2,1) = '0' THEN
				SET idError = '0010';
			ELSE
				SET idError = '5000';
			END if;
			END if;
			END if;
			END if;
			END if;
			END if;
            
            IF idError = '0008' THEN
					UPDATE ics_maquinas SET maq_est_bill = 1 WHERE maq_serial_maq = fk_men_serial_maq;
			ELSE
					UPDATE ics_maquinas SET maq_est_bill = 0 WHERE maq_serial_maq = fk_men_serial_maq;
            END IF ;
            
            INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = fk_men_serial_maq;	
            INSERT INTO ics_mensaje set fk_men_error= idError ,fk_men_serial_maq = fk_men_serial_maq, men_estado_de_envio=1;
			select 6;
		ELSE
			INSERT INTO ics_loglote(log_trama,log_estado) VALUES(datos,'DUPLICADO/TCONEXIONOK');		
            select 6;
		END IF;
	ELSE 
		CALL SP_SEGMENTADORS(datos,longTrama);   -- TRAMA EN LOTE   
        select 6;
	END IF;
	-- select sleep(45);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_U` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_U`(datos blob)
BEGIN
DECLARE longTrama INT;
DECLARE anio, mes, dia INT;
DECLARE fechaIcs DATETIME;
DECLARE tramaExite INT;
DECLARE pet_num_sel INT;
DECLARE pet_valsel, pet_estadoSd ,pet_plano, c, item INT;
DECLARE N_PROD VARCHAR(150);
DECLARE SECCION,subsecc INT;
DECLARE pet_serial_disp VARCHAR(15);
DECLARE mon_50, mon_100, mon_200 , mon_500 , mon_1000 int;
DECLARE id_venta INT;
DECLARE precio, iva INT;
DECLARE codProd VARCHAR(45);
DECLARE tiempoRespuesta INT(3);
 
	set longTrama = length(datos);
	SET pet_serial_disp = substring(datos,-10);
	
    IF longTrama < 50 then -- Trama normal 
    SET tiempoRespuesta = substring(datos,40,2);
    
		INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,tiempoRespuesta,'U');
		SET anio = substring(datos,31,2);
		SET mes  = substring(datos,29,2);
		SET dia  = substring(datos,27,2);
				
		IF anio = '00' or mes = '00' or dia = '00' then
			set fechaIcs = now();
            set tramaExite = 0;
		else
       		set fechaIcs = concat(anio ,'-',mes,'-',dia,' ',substring(datos,33,2) ,':',substring(datos,35,2),':',substring(datos,37,2));
			set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and  date(log_fecha) = curdate());
            IF tramaExite = 0 then -- no existe en fuldata
				set tramaExite = (select count(log_trama) from ics_loglote where log_trama = datos and date(log_timestmp)= curdate());                
			end if; 
        end if;
		
		-- se consulta si la trama ya fue almacenada anteriormente 			
		IF tramaExite = 0 then 
			
				SET pet_num_sel 	= substring(datos,2,3);
                SET pet_num_sel 	= cast(pet_num_sel as unsigned);
				SET pet_valsel  	= substring(datos,5,7);
				SET pet_estadoSd	= substring(datos,39,1);            
				
               
				SET pet_plano		= (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1);
				IF pet_plano 		IS NULL THEN SET pet_plano = 0 ; END IF;
				SET c 			= (select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
				set item 		= (SELECT fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_Plano  and det_pln_numero_seleccion = pet_num_sel );  -- Item actual en esa seleccion  
				
                IF  item  			IS NULL THEN SET item  = 1; END IF;
				set N_PROD		= (SELECT ite_nom_item	FROM ics_item WHERE ite_id_item = item limit 1);									
				SET subsecc  		= (select fk_maq_punto_maqn  from ics_maquinas    where maq_serial_maq 		= pet_serial_disp limit 1);
				SET SECCION  		= (select sbs_fk_seccion 	 from ics_sub_seccion where sbs_id_subseccion 	=  subsecc 		  limit 1);

			-- Almacenamiento de estado de SD
				IF pet_serial_disp in (select est_nserie from ics_estadoics) then
					update ics_estadoics set est_estadosd=pet_estadoSd,est_fechasd = now() where  est_nserie = pet_serial_disp;							
				ELSE
					INSERT INTO ics_estadoics(est_nserie,est_cliente,est_estadosd)	VALUES(pet_serial_disp,c,pet_estadoSd);
				END IF;
			-- fin almacenamiento  estado de sd
			
			
			-- Almacenamiento de estado de los tubos de monedero 
				set mon_50 = substring(datos,12,3);
                set mon_100 = substring(datos,15,3);
                set mon_200 = substring(datos,18,3);
                set mon_500 = substring(datos,21,3);
                set mon_1000 = substring(datos,24,3);
            
				INSERT INTO ics_estadotubos_monedero
				set	est_disp=pet_serial_disp,est_mon_50=mon_50,est_mon_100=mon_100,est_mon_200=mon_200,est_mon_500=mon_500,est_mon_1000=mon_1000;

			-- Fin estado de los tubos de monedero 			
	        -- Almacena alerta si llegan todos los tubos a < 7 
				
                if mon_50 < 7 and mon_100 < 7 and mon_200< 7 and mon_500 < 7 and mon_1000 <7 then
					INSERT INTO ics_mensaje
					(fk_men_error,fk_men_serial_maq,fk_men_id_peticion,men_estado,men_detalle,men_estado_de_envio)
					VALUES
					('0017',pet_serial_disp,0,1,concat( ': ',mon_50,' monedas de $50, ',mon_100, ' monedas de $100, ',mon_200, ' monedas de $200, ',mon_500, ' monedas de $500, ',mon_1000, ' monedas de $1000 ' ),0);
                end if;
            
            -- fin almacena alerta
				
			-- Inserta venta en ful data 
				INSERT INTO ics_fulldata
				SET 
				ful_numsel = pet_num_sel,
				ful_valsel		=pet_valsel,
				ful_idmaq		=pet_serial_disp,
				ful_planom 		=pet_plano,
				ful_item		=item,
				ful_cl			=c,
				ful_nom_it		=N_PROD,
				ful_ss 			=subsecc ,
				ful_seccion 	=SECCION,
				ful_tipoapp		=3,      
				ful_fechaics    =fechaIcs;				
                set id_venta    =last_insert_id();

	/*
            -- Programacion impresora.    
			if pet_serial_disp = '0000000022' then
						
				set precio 	= FLOOR(pet_valsel/1.16);
				set iva		= pet_valsel-precio;
				set codProd = (select ite_codigo from ics_item where ite_id_item =item );					
														
					select concat(
					substring('Nit. 000000001',1,32),(select X'0A0D'),
					substring('INSSA SAS',1,32),(select X'0A0D'),	
					substring('Maquina Dispensadora Candados',1,32),(select X'0A0D'),
					substring('CIIU 5611 Tarifa 13.8x1000',1,32),(select X'0A0D'),
					substring('CIIU 5611 Tarifa 4.14x1000',1,32),(select X'0A0D'),
					substring('REGIMEN COMUN',1,32),(select X'0A0D'),
					substring('Grandes Contribuyentes segun',1,32),(select X'0A0D'),
					substring('Resolucion 000041 de 30-01-2014',1,32),(select X'0A0D'),
					substring('IMPUESTOS INCLUIDOS',1,32),(select X'0A0D'),
					substring('AUTORRETENEDORES DEL CREE',1,32),(select X'0A0D'),
					substring('Resolucion: 310000087954',1,32),(select X'0A0D'),
					substring('Autorizado el: 28/09/2015',1,32),(select X'0A0D'),
					substring('Del: 09-000001 Al: 09-300000',1,32),(select X'0A0D'),
					substring('********CUENTA CERRADA*******',1,32),(select X'0A0D'),
					'Doc. Equivalente No. 09-',LPAD(id_venta,6,'0'),(select X'0A0D'),
					date_format(now(),'%b %d %Y %H:%i:%s'),(select X'0A0D'),    
					'No. de seleccion: ',pet_num_sel,(select X'0A0D'),
					'Cod. Prod: Yal458',(select X'0A0D'),
					 substring(N_PROD,1,32),(select X'0A0D'), -- Nombre del producto
					'Sub-total',LPAD(precio,21,' '),(select X'0A0D'),
					'Impuesto',LPAD(iva,22,' '),(select X'0A0D'),
					'Total',LPAD(replace(format(pet_valsel,0),',','.') ,25,' '),(select X'0A0D'),
					'Detalle Impuestos 16%',(select X'0A0D'),
					'Base: ',precio,' Imptos: ',iva,(select X'0A0D'),
					substring('NombreRazonSocial:_______________________',1,32),(select X'0A0D'),
					substring('C.C.NIT:__________________________',1,32),(select X'0A0D'),
                    '--- Cuenta Cerrada ---',(select X'0A0D'),(select X'0A0D'),(select X'0A0D'),(select X'0A0D'), (select X'1B6D0A0D')
					);
					
			else				
				select 6;
			end if;*/
            INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = substring(datos,-10);	
		else -- la trama existe 
			INSERT INTO ics_loglote(log_trama,log_estado) VALUES(datos,'DUPLICADO/TCONEXIONOK');		
            SELECT 6;
		END IF;
	ELSE 		
		CALL SP_SEGMENTADORS(datos,longTrama);      
        SELECT 6;
	END IF;      


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_V` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_V`(datos varchar(40))
BEGIN
	DECLARE anio , mes,dia int;
	DECLARE tramaExite , c INT;
	DECLARE pet_serial_disp,CC_USR VARCHAR(15);

	DECLARE tiempoRespuesta INT(3);	
    
    
    set pet_serial_disp = substring(datos,-10);			
    SET tiempoRespuesta = substring(datos,27,2);
    INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,tiempoRespuesta,'V');
 

	SET anio = substring(datos,19,2);
	SET mes = substring(datos,17,2);
	SET dia = substring(datos,15,2);

	IF anio = '00' or mes = '00' or dia = '00' then
		set tramaExite = 0;
	else		
		set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and date(log_fecha) = curdate() ); 
		IF tramaExite = 0 then -- no existe en fuldata
			set tramaExite = (select count(log_trama) from ics_loglote where log_trama = datos and date(log_timestmp)= curdate());                
		end if;            
	end if;  
      
	IF tramaExite = 0  THEN		
		
		SET c 				=(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
		SET CC_USR			=(SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = substring(datos,2,6));
		-- inserta recarga
        INSERT INTO ics_log(log_trama,log_maq,log_rta) VALUES(datos,pet_serial_disp,6);

		call sp_ics_usuario_recarga(substring(datos,2,6),substring(datos,8,7),1,pet_serial_disp,CC_USR,c);
     ELSE
		INSERT INTO ics_loglote(log_trama,log_estado) VALUES (datos,'DUPLICADO/ERROR');
     END IF;   
    -- select sleep(25);
	select 6 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_W` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_W`(datos varchar(45))
BEGIN

	DECLARE  pet_id_Alias VARCHAR(15);
    DECLARE pet_num_sel VARCHAR(2);
    DECLARE pet_serial_disp, CC_USR VARCHAR(15);
    DECLARE c INT;
    DECLARE iditem VARCHAR(4);
	DECLARE  det_plano varchar(4);
    
	set pet_id_Alias 	= substring(datos,2,6);	
	set pet_num_sel    	= substring(datos,8,2);	
    set pet_num_sel    	= cast(pet_num_sel as unsigned);	
	set pet_serial_disp = substring(datos,-10);
    set det_plano 		=(SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1);
    SET iditem			=(select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = det_plano and det_pln_numero_seleccion = pet_num_sel);
	SET c 				=(select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
	SET CC_USR			=(SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);
	call sp_ics_full_peticion(pet_id_Alias,pet_serial_disp,pet_num_sel,3,c,CC_USR,2,iditem);	
	SELECT 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_X` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_X`(datos BLOB)
BEGIN
	DECLARE  indx CHAR(1);
DECLARE pet_id_Alias VARCHAR(20);
DECLARE pet_num_sel VARCHAR(3);
DECLARE pet_serial_disp VARCHAR(12);
DECLARE c INT;
DECLARE pet_Plano INT;
DECLARE CC_USR VARCHAR(20);
DECLARE item INT;
DECLARE N_PROD VARCHAR(140);
DECLARE subsecc INT;
DECLARE SECCION INT;
DECLARE anio, mes, dia VARCHAR(2); 
DECLARE pet_valsel INT;
DECLARE fechaIcs DATETIME;
DECLARE pet_estadoSd INT;

SET indx = substring(datos,1,1);

SET pet_id_Alias    = substring(datos,2,6);
SET pet_num_sel     = substring(datos,8,3); -- 2  
SET pet_num_sel     = cast(pet_num_sel as UNSIGNED)   ;
SET pet_serial_disp = substring(datos,-10); 
SET c	    		= (select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
SET pet_Plano   	= (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1);
SET CC_USR  		= (SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);    
SET item    		= (select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_Plano and det_pln_numero_seleccion = pet_num_sel);    
SET N_PROD   		= (SELECT ite_nom_item FROM ics_item WHERE ite_id_item = item limit 1);
SET subsecc  		= (select fk_maq_punto_maqn from ics_maquinas where maq_serial_maq = pet_serial_disp limit 1 );
SET SECCION  		= (select sbs_fk_seccion from ics_sub_seccion where sbs_id_subseccion =  subsecc limit 1);

IF item IS NULL THEN SET item = 1; END IF;    

  	
    if ascii(indx) = 88 then   
		SET pet_valsel      = substring(datos,11,7); -- 5  			
		CALL sp_ics_full_data_in(pet_id_Alias,pet_num_sel,item,pet_valsel,pet_serial_disp,1,pet_Plano,substring(datos,5,1),c,CC_USR,subsecc,SECCION, N_PROD,2);		
        INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = pet_serial_disp;	
	/*else   -- horeca
		if length(datos) < 38 then -- trama normal
        
		   SET pet_valsel      = (select config_valormax from ics_config_transac where config_maquina = pet_serial_disp limit 1);
				
           SET anio = substring(datos,14,2);
		   SET mes  = substring(datos,12,2);
		   SET dia  = substring(datos,10,2);
					
			IF anio = '00' or mes = '00' or dia = '00' then
				set fechaIcs = now();
				else
				set fechaIcs = concat(anio ,'-',mes,'-',dia,' ',substring(datos,16,2) ,':',substring(datos,18,2),':',substring(datos,20,2));
			end if;
            
		-- 	set fechaIcs = concat(substring(datos,19,2) ,'-',substring(datos,17,2),'-',substring(datos,18,2),' ',substring(datos,20,2) ,':',substring(datos,23,2),':',substring(datos,25,2));

			INSERT INTO ics_fulldata
			SET ful_idusu = pet_id_Alias,	 ful_numsel= pet_num_sel,	  ful_item	= item,	 ful_valsel=pet_valsel,
			ful_idmaq =pet_serial_disp,	 	ful_errores= 1,	 ful_planom =pet_Plano,	 ful_finger=6, 
			ful_cl = c ,		ful_cc_usr = CC_USR, ful_ss =subsecc,	ful_nom_it=N_PROD,
			ful_tipoapp = 2, ful_seccion = SECCION, ful_fechaics =fechaIcs;
			
			set pet_estadoSd = substring(datos,22,1) ;
			
			IF pet_serial_disp in (select est_nserie from ics_estadoics) then
				update ics_estadoics set est_estadosd=pet_estadoSd,est_fechasd = now() where  est_nserie = pet_serial_disp;				
			ELSE
				INSERT INTO ics_estadoics(est_nserie,est_cliente,est_estadosd)	VALUES(pet_serial_disp,c,pet_estadoSd);
			END IF;	
            
			INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = pet_serial_disp;	
		else
			-- TRAMAS EN LOTE PARA HORECA STAND ALONE
           call SP_SEGMENTADORS(datos,length(datos));
        end if;		  */
   end if;
 select 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_Y` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_Y`(datos BLOB)
BEGIN
DECLARE  indx CHAR(1);
DECLARE pet_id_Alias VARCHAR(20);
DECLARE pet_num_sel VARCHAR(2);
DECLARE pet_serial_disp VARCHAR(12);
DECLARE c INT;
DECLARE pet_Plano INT;
DECLARE CC_USR VARCHAR(20);
DECLARE item INT;
DECLARE N_PROD VARCHAR(140);
DECLARE subsecc INT;
DECLARE SECCION INT;
DECLARE anio, mes, dia VARCHAR(2); 
DECLARE pet_valsel INT;
DECLARE fechaIcs DATETIME;
DECLARE pet_estadoSd INT;
DECLARE tramaExite INT;
DECLARE 	costo_producto INT;

SET indx = substring(datos,1,1);

SET pet_id_Alias    = substring(datos,2,6);
SET pet_num_sel     = substring(datos,8,2); -- 2  
SET pet_num_sel     = cast(pet_num_sel as UNSIGNED)   ;
SET pet_serial_disp = substring(datos,-10); 
SET c	    		= (select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
SET pet_Plano   	= (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1);
SET CC_USR  		= (SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);    
SET item    		= (select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_Plano and det_pln_numero_seleccion = pet_num_sel);    
SET N_PROD   		= (SELECT ite_nom_item FROM ics_item WHERE ite_id_item = item limit 1);
SET subsecc  		= (select fk_maq_punto_maqn from ics_maquinas where maq_serial_maq = pet_serial_disp limit 1 );
SET SECCION  		= (select sbs_fk_seccion from ics_sub_seccion where sbs_id_subseccion =  subsecc limit 1);

IF item IS NULL THEN SET item = 1; END IF;    
   
    if ascii(indx) = 89 then  
INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,substring(datos,29,2),'Y');
 
		set tramaExite = (select count(log_trama) from ics_log where log_trama = datos and  date(log_fecha) = curdate());
		-- 	insert into errores(mens_error) values (tramaExite);
		IF tramaExite = 0 then -- no existe en fuldata
		SET pet_valsel      = substring(datos,10,7); -- 5  			
		CALL sp_ics_full_data_in(pet_id_Alias,pet_num_sel,item,pet_valsel,pet_serial_disp,1,pet_Plano,substring(datos,5,1),c,CC_USR,subsecc,SECCION, N_PROD,2);		
        INSERT INTO ics_log  set log_trama = datos,log_rta=6,  log_maq = pet_serial_disp;	
        end if;
	else   -- horeca
		if length(datos) < 38 then -- trama normal
        
		  SET pet_id_Alias    = substring(datos,2,6);
			SET pet_num_sel     = substring(datos,8,2);
            SET pet_num_sel  = cast(pet_num_sel  as UNSIGNED);
            SET pet_serial_disp = substring(datos,-10); 			
			
			SET c    		= (select cli_id_cliente from vi_ics_cliente_maq where maq_serial_maq = pet_serial_disp limit 1);
			SET pet_Plano   = (SELECT Fk_pla_id_plan FROM ics_maq_planometria WHERE Fk_pla_id_maq = pet_serial_disp and pla_estado=1);                      
			SET CC_USR  	= (SELECT IdA_Identificacion_Usu FROM ics_idalias_usuario WHERE IdA_cl = c AND IdA_Numero_Alias = pet_id_Alias);
			SET item    	= (select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = pet_Plano and det_pln_numero_seleccion = pet_num_sel);			           

			IF item IS NULL THEN SET item = 1; END IF;
			
            SET pet_valsel  = (select ite_valor from ics_item where ite_id_item = item);	
            
			SET N_PROD   = (SELECT ite_nom_item FROM ics_item WHERE ite_id_item = item limit 1);
			SET subsecc  = (select fk_maq_punto_maqn from ics_maquinas where maq_serial_maq = pet_serial_disp limit 1 );
			SET SECCION  = (select sbs_fk_seccion from ics_sub_seccion where sbs_id_subseccion =  subsecc limit 1);
			
           SET anio = substring(datos,14,2);
		   SET mes  = substring(datos,12,2);
		   SET dia  = substring(datos,10,2);
					
		
			set fechaIcs = concat(anio ,'-',mes,'-',dia,' ',substring(datos,16,2) ,':',substring(datos,18,2),':',substring(datos,20,2));		
            set costo_producto = (select ite_costo from ics_item where  ite_id_item = item);
			INSERT INTO ics_fulldata
			SET ful_idusu = pet_id_Alias,	 ful_numsel= pet_num_sel,	  ful_item	= item,	 ful_valsel=pet_valsel,
			ful_idmaq =pet_serial_disp,	 	ful_errores= 1,	 ful_planom =pet_Plano,	 ful_finger=6, 
			ful_cl = c ,		ful_cc_usr = CC_USR, ful_ss =subsecc,	ful_nom_it=N_PROD,
			ful_tipoapp = 2, ful_seccion = SECCION, ful_fechaics =fechaIcs, ful_vcosto = costo_producto;
			
			set pet_estadoSd = substring(datos,22,1) ;
			
			IF pet_serial_disp in (select est_nserie from ics_estadoics) then
				update ics_estadoics set est_estadosd=pet_estadoSd,est_fechasd = now() where  est_nserie = pet_serial_disp;				
			ELSE
				INSERT INTO ics_estadoics(est_nserie,est_cliente,est_estadosd)	VALUES(pet_serial_disp,c,pet_estadoSd);
			END IF;	
		else
			-- TRAMAS EN LOTE PARA HORECA STAND ALONE
           call SP_SEGMENTADORS(datos,length(datos));
        end if;		    
   end if;   
 select 6;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TRAMA_Z` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_TRAMA_Z`(datos varchar(25))
    DETERMINISTIC
BEGIN

	DECLARE pet_id_Alias VARCHAR(15);
	DECLARE pet_serial_disp VARCHAR(15);
	DECLARE idTrama VARCHAR(2);
	DECLARE Cred_Disp VARCHAR(10);
	DECLARE planometria INT;
	DECLARE credConfig INT;
	DECLARE maxValConfig INT;

	DECLARE tiempoRespuesta INT(3);	
	


	SET pet_id_Alias    = substring(datos,2,6);    -- ID USUARIO CONFORMADO 
	SET pet_serial_disp = substring(datos,-10);     -- serial de maquina. 
	SET idTrama 		= substring(datos,1,1);  

	SET tiempoRespuesta = substring(datos,8,2);
	INSERT INTO ics_tiempo_rta(tre_dispensadora,tre_tiempo,tre_trama) VALUES(pet_serial_disp,tiempoRespuesta,'Z');
  	
SET Cred_Disp 	=(select Cve_Credito 	  FROM ics_controlventas   WHERE Cve_IdUsuario  = pet_id_Alias 	  AND  Cve_cl = (SELECT cli_id_cliente   FROM vi_ics_cliente_maq  WHERE maq_serial_maq = pet_serial_disp LIMIT 1));

if ascii(idTrama) = 90 then -- Trama Biometria Vending
    
		IF (SELECT udis_Estado FROM ics_usu_dispensadora WHERE udis_idUsuario =  pet_id_Alias AND udis_Serial_Dispensadora  =pet_serial_disp LIMIT 1) = 1 then
			
			
			if Cred_Disp is not null then 
				IF Cred_Disp < 65000  THEN 			 
					set Cred_Disp  = lpad(Cred_Disp,7,'0');       -- agrega cantidad de 0 correspondientes para el valor del credito  	                    
				ELSE
					set Cred_Disp='0065000';
				END IF;			
			ELSE
				set Cred_Disp = '0000000'; 
			END IF; 
			INSERT INTO ics_log  set log_trama = datos,log_rta=CONCAT('1',Cred_Disp,pet_id_Alias),  log_maq = substring(datos,-10);
			
            select CONCAT('1',Cred_Disp,pet_id_Alias);      			
            -- select sleep(5);
		ELSE
			 INSERT INTO ics_log  set log_trama = datos,log_rta= CONCAT('0','0000000',pet_id_Alias),  log_maq = substring(datos,-10);
			select CONCAT('0','0000000',pet_id_Alias); 
		END IF;
   	
	else  
 
	 	IF (SELECT udis_Estado FROM ics_usu_dispensadora WHERE udis_idUsuario =  pet_id_Alias AND udis_Serial_Dispensadora  =pet_serial_disp LIMIT 1) = 1 then
			IF Cred_Disp is  null then  set Cred_Disp = 0; END IF;             
            set planometria = (select Fk_pla_id_plan from  ics_maq_planometria where Fk_pla_id_maq = pet_serial_disp and pla_estado = 1 limit 1);		        
			set credConfig = (select config_valormax from ics_config_transac where config_maquina = pet_serial_disp and config_est =1 limit 1);
            set maxValConfig =(select max( cast(ite_valor as UNSIGNED) ) from ics_item where ite_id_item in (select fk_id_item_det from ics_detalle_plano where fk_id_plano_det = planometria)); -- Mayor valor de bebida en una dispensadora
				            
			if Cred_Disp >=  maxValConfig then 
				set Cred_Disp = lpad(credConfig,5,'0'); 
			else
                set Cred_Disp = '000000'; 
			end if;
					
			INSERT INTO ics_log  set log_trama = datos,log_rta=CONCAT('1',Cred_Disp,pet_id_Alias),  log_maq = pet_serial_disp;
			select CONCAT('1',Cred_Disp,pet_id_Alias);      
			
		ELSE
			INSERT INTO ics_log  set log_trama = datos,log_rta= CONCAT('0','00000',pet_id_Alias),  log_maq = pet_serial_disp;
			select CONCAT('0','00000',pet_id_Alias); 
			
		END IF;  
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATEHUELLAUSUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_UPDATEHUELLAUSUARIO`(idCliente VARCHAR(10),idHuella varchar(6), idHuellaNueva varchar(6),
acumulable varchar(1), perfil varchar(100), credito varchar(100), creditoNuevo VARCHAR(100) ,  estado int , 
UsuarioCreador varchar(255))
BEGIN

DECLARE nPerfil int;
DECLARE idPerfil int;
DECLARE nombrePerfil VARCHAR(255);
DECLARE nVentas int;
DECLARE nCredito INT;
DECLARE nIDHuella int;
DECLARE finger VARCHAR(1);

-- se valida si la huella es diferente a la nueva huella para proceder a realizar el cambio de ID
	IF idHuella != idHuellaNueva THEN
    
		-- se valida si el idHuellaNueva existe 
		set nIDHuella = (select count(*) from ics_idalias_usuario where IdA_Numero_Alias = idHuellaNueva and IdA_cl = idCliente);

		-- si es 0 significa que se puede realizar el cambio de ID
		IF nIDHuella = 0 THEN
			
            -- se obtienen el numero de ventas del ID antiguo, si tiene ventas no se puede cambiar el ID nuevo
			SET nVentas = (SELECT COUNT(*) FROM ics_fulldata WHERE ful_idusu = idHuella AND ful_cl = idCliente);
			
            -- se valida el numero de ventas
			IF nVentas = 0 THEN
            
            -- se segmenta el numero de dedo de el ID de huella nueva
				set finger = (select substring(idHuellaNueva,4,1));
        
				UPDATE ics_idalias_usuario 
				SET IdA_Estado_Usuario = estado, IdA_acom = acumulable, IdA_Numero_Alias =  idHuellaNueva ,IdA_Finger = finger
				WHERE IdA_Numero_Alias = idHuella AND IdA_cl = idCliente;
                
                -- actualiza el estado en todas las dispensadoras
                UPDATE ics_usu_dispensadora,ics_maquinas SET udis_Estado = estado 
                WHERE udis_Serial_Dispensadora = maq_serial_maq AND  maq_cl = idCliente AND udis_idUsuario = idHuella ;
        
			-- se valida si el perfil ya existe 
				set nPerfil = (SELECT count(*) FROM ics_perfil WHERE per_nombre_perf = perfil);
    
				IF nPerfil = 0 THEN
					-- se crea el nuevo perfil
					INSERT INTO 
					ics_perfil 
					(per_periodo_recarga, per_nombre_perf,per_cliente,per_tipo)
					VALUES
					('0',perfil,'1','1');
		
				END IF;

				-- se obtiene el id del perfil 
				set idPerfil = (SELECT per_id_perfil FROM ics_perfil WHERE per_nombre_perf = perfil LIMIT 1);
				-- se verifica si el perfil es diferente al nuevo 
				SET nombrePerfil = (SELECT COUNT(*) FROM ics_usu_per WHERE usp_fk_id_usu = idHuella 
									AND  usp_fk_id_perfil = idPerfil and usp_cl = idCliente);
        
				IF nombrePerfil = 0 THEN
        
					UPDATE ics_usu_per SET usp_estado = 0 WHERE usp_fk_id_usu = idHuella AND usp_cl = idCliente;
        
					-- se inserta el nuevo perfil de la huella
					INSERT INTO ics_usu_per 
					( usp_fk_id_usu,usp_fk_id_perfil,usp_cl,usp_tipo)
					VALUES
					(idHuellaNueva,idPerfil,idCliente,'1');
				ELSE
					
                    UPDATE ics_usu_per SET usp_fk_id_usu = idHuellaNueva WHERE usp_fk_id_usu = idHuella AND usp_cl = idCliente;
                
				END IF;
        
			-- se actualiza el ID nuevo en la tabla de dispensadoras
				UPDATE ics_usu_dispensadora SET udis_idUsuario = idHuellaNueva WHERE udis_idUsuario = idhuella  ;
            
				IF credito <> creditoNuevo THEN
            
					UPDATE ics_controlventas SET Cve_IdUsuario = idHuellaNueva , Cve_Credito = creditoNuevo WHERE Cve_IdUsuario = idHuella AND Cve_cl = idCliente;
					INSERT INTO ics_usuario_recarga_gui (ics_urg_idhuella,ics_urg_credito_anterior,ics_urg_credito,ics_urg_usuariocreador)
					VALUES (idhuellaNueva,credito,creditoNuevo,UsuarioCreador); 
            
				ELSE 
                
					UPDATE ics_controlventas SET Cve_IdUsuario = idHuellaNueva WHERE Cve_IdUsuario = idHuella AND Cve_cl = idCliente;
            
				END IF;
            
				UPDATE ics_usuario_recarga SET Ure_Id_Usuario = idHuellaNueva WHERE Ure_Id_Usuario = idHuella AND Ure_cli = idCliente ;
				
				SELECT 1 AS RESPUESTA;
            
            ELSE
            
            -- NO SE PUEDE ACTUALIZAR EL USUARIO POR QUE EL ID TIENE VENTAS ANTIGUAS
				SELECT 3 AS RESPUESTA;
            
            END IF;
        
        ELSE 
        
        -- EL ID YA EXISTE EN LA BASE DE DATOS
        SELECT 2 AS RESPUESTA;
        
        END IF;

	ELSE 
    
		UPDATE ics_idalias_usuario 
        SET IdA_Estado_Usuario = estado, IdA_acom = acumulable 
        WHERE IdA_Numero_Alias = idHuella AND IdA_cl = idCliente;
        
        -- actualiza el estado en todas las dispensadoras
        UPDATE ics_usu_dispensadora,ics_maquinas SET udis_Estado = estado 
		WHERE udis_Serial_Dispensadora = maq_serial_maq AND  maq_cl = idCliente AND udis_idUsuario = idHuella ;
        
        -- se valida si el perfil ya existe
		set nPerfil = (SELECT count(*) FROM ics_perfil WHERE per_nombre_perf = perfil  );
    
		IF nPerfil = 0 THEN
		
			INSERT INTO 
			ics_perfil 
			(per_periodo_recarga, per_nombre_perf,per_cliente,per_tipo)
			VALUES
			('0',perfil,'1','1');
    
		END IF;

			set idPerfil = (SELECT per_id_perfil FROM ics_perfil WHERE per_nombre_perf = perfil LIMIT 1);
        
			UPDATE ics_usu_per SET usp_estado = 0 WHERE usp_fk_id_usu = idHuella AND usp_cl = idCliente;
        
		-- se inserta el nuevo perfil de la huella
			INSERT INTO ics_usu_per 
			( usp_fk_id_usu,usp_fk_id_perfil,usp_cl,usp_tipo)
			VALUES
			(idHuella,idPerfil,idCliente,'1');
            
	
            
				UPDATE ics_controlventas SET Cve_Credito = creditoNuevo WHERE Cve_IdUsuario = idHuella AND Cve_cl = idCliente;
                INSERT INTO ics_usuario_recarga_gui (ics_urg_idhuella,ics_urg_credito_anterior,ics_urg_credito,ics_urg_usuariocreador)
				VALUES (idhuella,credito,creditoNuevo,UsuarioCreador); 
            
            
        SELECT 1 AS RESPUESTA;

	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_blob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_blob`(res varchar(45), minucia blob)
    DETERMINISTIC
BEGIN
 UPDATE  ics_idalias_usuario
 set
 `IdA_Minucia` = minucia ,
 `IdA_Estado_Enrolamiento` = 1
 WHERE `IdA_Numero_Alias` = res;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_SELECCION_PLANIMETRIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_UPDATE_SELECCION_PLANIMETRIA`(producto varchar(255), seleccion varchar(3), maximo varchar(3), minimo varchar(3), idPlanimetria varchar(10),
costoProducto varchar(100), tipoProducto varchar(250), precioProducto varchar(255))
BEGIN

declare idproducto int;
declare nSeleccion int;
declare idTipoProducto int;

if producto not in (select ite_nom_item from ics_item) then

	set idTipoProducto = (SELECT idics_tipo_producto FROM ics_tipo_producto WHERE tip_nombre = tipoProducto);

	INSERT INTO ics_item
	(ite_nom_item,ite_tipo_producto,ite_costo)
	VALUES
	(producto,idTipoProducto,costoProducto);

end if;

set idproducto = (select ite_id_item from ics_item where ite_nom_item = producto LIMIT 1);

set nSeleccion = (SELECT COUNT(*) FROM ics_detalle_plano WHERE det_pln_numero_seleccion = seleccion AND fk_id_plano_det = idPlanimetria);

if nSeleccion > 0 then
	UPDATE ics_detalle_plano 
	SET 
		det_maximo_item = maximo,
		det_minimo_item = minimo,
		fk_id_item_det = idproducto,
        det_pln_precio = precioProducto
	WHERE
		det_pln_numero_seleccion = seleccion
			AND fk_id_plano_det = idPlanimetria;
	
ELSE 

	INSERT INTO ics_detalle_plano 
		(det_pln_id_seleccion ,det_pln_numero_seleccion,det_maximo_item,det_minimo_item,fk_id_item_det,fk_id_plano_det,det_pln_precio)
	VALUES
		('0',seleccion,maximo,minimo,idproducto,idPlanimetria,precioProducto);

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Update_Usr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Update_Usr`(a varchar(6))
    DETERMINISTIC
BEGIN
UPDATE ics_idalias_usuario
SET
IdA_Estado_Usuario = 0
WHERE IdA_Numero_Alias = a ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_USUARIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_UPDATE_USUARIO`(idCliente VARCHAR(10), centroCostos VARCHAR(255), departamento VARCHAR(255),
 cargo VARCHAR(255), nombre varchar(255), cc varchar(255), ccNueva varchar(255), estado VARCHAR(1))
BEGIN

DECLARE nCentroCostos int;
DECLARE idCentroCostos INT;
DECLARE nDepartamento int;
DECLARE idDepartamento INT;
DECLARE nCargo INT;
DECLARE idCargo INT;
DECLARE nDocumento INT;

SET nCentroCostos = (SELECT count(*) FROM ics_centro_costos WHERE cc_nombre = centroCostos AND cc_cl = '1');
																														  
	IF nCentroCostos =0 THEN

		INSERT INTO ics_centro_costos (cc_nombre,cc_cl) VALUES(centroCostos,'1');

	END IF;

SET idCentroCostos = (SELECT idics_centro_costos FROM ics_centro_costos WHERE cc_nombre = centroCostos AND cc_cl = '1' LIMIT 1);

SET  nDepartamento = (SELECT count(*) FROM ics_departamentos WHERE de_nombre = departamento AND de_cl = '1');

	IF nDepartamento = 0 THEN

		INSERT INTO ics_departamentos (de_nombre,de_cl,fk_centro_costo) VALUES (departamento, '1', '1');

	END IF;

SET idDepartamento = (SELECT idics_departamentos FROM ics_departamentos WHERE de_nombre = departamento AND de_cl = '1' LIMIT 1);

SET nCargo =  (SELECT COUNT(*) FROM ics_cargos WHERE car_nombre = cargo);
    
    IF nCargo = 0 THEN

		INSERT INTO ics_cargos (car_nombre,car_cliente)  
		VALUES 
		(cargo,'1');
    
    END IF;
    
set idCargo = (SELECT id_cargos FROM ics_cargos WHERE car_nombre = cargo LIMIT 1) ;
    
UPDATE ics_usuario_cargo SET uc_Estado = '0' WHERE fk_cedula_usuario = cc;
    
INSERT INTO ics_usuario_cargo(fk_id_cargo,fk_cedula_usuario)
VALUES
(idCargo,cc);
    
	IF cc <> ccNueva THEN
    
		SET nDocumento = (SELECT count(*) FROM ics_usuario where usu_id_usuario_opera = ccNueva AND usu_client_creador = idCliente);
    
		IF nDocumento = 0 THEN
        
			UPDATE ics_usuario 
			SET 
				usu_nombre = nombre,
				usu_centro_Costo = idCentroCostos,
				usu_departamento = idDepartamento,
				usu_id_usuario_opera = ccNueva,
                usu_estado = estado
			WHERE
			usu_id_usuario_opera = cc;
		
			UPDATE ics_idalias_usuario SET IdA_Identificacion_Usu = ccNueva WHERE IdA_Identificacion_Usu = cc;
			UPDATE ics_usuario_cargo SET fk_cedula_usuario = ccNueva WHERE fk_cedula_usuario = cc;
			UPDATE ics_usuario_recarga SET Ure_cc = ccNueva WHERE Ure_cc = cc;
            
            UPDATE ics_usu_dispensadora,ics_idalias_usuario SET udis_Estado = estado 
            WHERE 
            IdA_Numero_Alias = udis_idUsuario AND IdA_cl = idCliente AND IdA_Identificacion_Usu = cc;
            
            SELECT 1 AS RESPUESTA;

		ELSE 
        
			SELECT 2 AS RESPUESTA;

		END IF;
    
    ELSE
    
    UPDATE ics_usuario 
	
    SET 
		usu_nombre = nombre,
		usu_centro_Costo = idCentroCostos,
		usu_departamento = idDepartamento,
		usu_id_usuario_opera = cc,
        usu_estado = estado
	WHERE
		usu_id_usuario_opera = cc;
    
	SELECT 1 AS RESPUESTA;
    
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UP_CONF_DISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UP_CONF_DISP`(dispensadora varchar(45),MAX varchar(45), MIN varchar(45))
    DETERMINISTIC
BEGIN

	UPDATE ics_maxmin_temp
	SET
	mmt_estado = 0
	WHERE fk_mmt_id_disp =dispensadora;

	UPDATE ics_maxmin_temp
	SET
	mmt_max_temp = MAX,
	mmt_min_temp =MIN	
	where fk_mmt_id_disp = dispensadora;
	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UP_USR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UP_USR`( COR VARCHAR(45),CC VARCHAR(65),IDH VARCHAR(7), EST VARCHAR(45), NOMCAR VARCHAR(14), CL VARCHAR(45))
    DETERMINISTIC
BEGIN
	DECLARE VIDCAR VARCHAR(10);
	DECLARE IDCAR VARCHAR(45);
	-- ACTUALIZAR DATOS ACTUALIZABLES DESDE GUI DE UN USUARIO 
	-- llega cedula de usuario , nombre del cargo correo del usuario   Y ESTADO DE HUELLA 
	UPDATE ics_usuario SET usu_correo = COR WHERE usu_id_usuario_opera = CC;
	UPDATE ics_idalias_usuario  SET IdA_Estado_Usuario= EST WHERE IdA_Numero_Alias= IDH AND IdA_cl = CL;
	
	SET IDCAR = (SELECT id_cargos FROM ics_cargos WHERE car_nombre = NOMCAR AND car_cliente = CL);
	IF IDCAR IS NULL THEN 
		INSERT INTO ics_cargos SET car_nombre = NOMCAR ,car_cliente=CL;
		SET VIDCAR = LAST_INSERT_ID();
	END IF;

	SET VIDCAR  = (SELECT fk_id_cargo FROM ics_usuario_cargo WHERE fk_cedula_usuario = CC AND uc_Estado = 1);
	IF VIDCAR IS NULL OR VIDCAR != IDCAR
	THEN 
		INSERT INTO ics_usuario_cargo SET fk_id_cargo = IDCAR ,  fk_cedula_usuario = CC ;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UP_USU_PER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_UP_USU_PER`(u varchar(45), c varchar(45) , tipoapp varchar(45))
    DETERMINISTIC
BEGIN
if tipoapp = 1 then set tipoapp = 2;
else
set tipoapp = 1;
end if;
 UPDATE ics_usu_per SET usp_estado = 0  WHERE usp_fk_id_usu = u and usp_cl = c and usp_tipo = tipoapp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USR_SIST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USR_SIST`(PSS VARCHAR(45), USS VARCHAR(45))
    DETERMINISTIC
BEGIN
	DECLARE NAMEUS VARCHAR(45);
	DECLARE PASSUS VARCHAR(45);
	
	SET PASSUS =(SELECT ust_nombre FROM ics_usuariosistema WHERE  ust_pass = PSS AND ust_usuario = USS);
	IF PASSUS IS NOT NULL 
	THEN
		SELECT USIS.ust_idususis, 
			USIS.ust_perfil ,
			USIS.ust_usuario,
			USIS.ust_id_cliente,
			USIS.ust_id_administrador,
			CONFSIS.conf_tipo, 
			c.`cli_documento`
		FROM ics_usuariosistema   USIS
		JOIN ics_sistem_conf 	  CONFSIS ON CONFSIS.conf_cliente = USIS.ust_id_cliente AND CONFSIS.conf_estado = 1
		JOIN ics_clientes c on c.cli_id_cliente = USIS.ust_id_cliente
		WHERE ust_pass = PSS 	  AND ust_usuario = USS;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIOBIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_USUARIOBIO`(idCliente varchar(3), cc varchar(15), nombre varchar(255),
 centroCostos varchar(255), departamento varchar(255), cargo varchar(255), idHuella varchar(6), acumulable varchar(1), perfil varchar(100))
BEGIN

DECLARE idCentroCostos int;
DECLARE nDepartamento int;
DECLARE idDepartamento int;
DECLARE nCC int;
DECLARE nCentrosCostos int;

DECLARE finger varchar(1);
DECLARE nPerfil int;
DECLARE idPerfil int;
DECLARE nCargo int;
DECLARE idCargo int;
DECLARE NDocumento int;


-- se segmenta el numero de dedo de el ID de huella
set finger = (select substring(idHuella,4,1));
-- se valida si el idHuella existe 
set nCC = (select count(*) from ics_idalias_usuario where IdA_Numero_Alias = idHuella and IdA_cl = idCliente);

IF nCC = 0 THEN
-- el codigo no existe y se procede a crear
	INSERT INTO 
	ics_idalias_usuario
	(IdA_Numero_Alias,IdA_Identificacion_Usu,IdA_Finger,IdA_cl,IdA_acom) 
	VALUES
	(idHuella,cc,finger,idCliente,acumulable);
	-- se valida si el perfil ya existe
    set nPerfil = (SELECT count(*) FROM ics_perfil WHERE per_nombre_perf = perfil AND per_cliente = '1');
    
    IF nPerfil = 0 THEN
		
		INSERT INTO 
        ics_perfil 
        (per_periodo_recarga, per_nombre_perf,per_cliente,per_tipo)
		VALUES
		('0',perfil,'1','1');
    
    END IF;

-- se selecciona el id del perfil 
	set idPerfil = (SELECT per_id_perfil FROM ics_perfil WHERE per_nombre_perf = perfil AND per_cliente = '1' LIMIT 1);

-- se inserta el nuevo perfil de la huella
	INSERT INTO ics_usu_per 
    ( usp_fk_id_usu,usp_fk_id_perfil,usp_cl,usp_tipo)
	VALUES
	(idHuella,idPerfil,idCliente,'1');
    
    -- se habilita la huella para todas las dipensadoras del cliente seleccionado
    INSERT INTO ics_usu_dispensadora
	(
	udis_idUsuario,
	udis_Serial_Dispensadora)
	SELECT idHuella , maq_serial_maq FROM ics_maquinas WHERE maq_cl = idCliente;
    
    SET nCentrosCostos = (SELECT count(*) FROM ics_centro_costos WHERE cc_nombre = centroCostos AND cc_cl = '1');
																														  
	IF nCentrosCostos =0 THEN

		INSERT INTO ics_centro_costos (cc_nombre,cc_cl) VALUES(centroCostos,'1');

	END IF;

	SET idCentroCostos = (SELECT idics_centro_costos FROM ics_centro_costos WHERE cc_nombre = centroCostos AND cc_cl = '1' LIMIT 1);

	SET  nDepartamento = (SELECT count(*) FROM ics_departamentos WHERE de_nombre = departamento AND de_cl = '1');

	IF nDepartamento = 0 THEN

		INSERT INTO ics_departamentos (de_nombre,de_cl,fk_centro_costo) VALUES (departamento, '1', '1');

	END IF;

	SET idDepartamento = (SELECT idics_departamentos FROM ics_departamentos WHERE de_nombre = departamento AND de_cl = '1' LIMIT 1);

	SET nDocumento = (SELECT count(*) FROM ics_usuario where usu_id_usuario_opera = cc AND usu_client_creador = idCliente);
    
    IF nDocumento = 0 THEN

	INSERT INTO 
	ics_usuario (usu_id_usuario_opera,usu_nombre,usu_centro_Costo,usu_departamento,usu_client_creador)
	values
	(cc, nombre, idCentroCostos, idDepartamento, idCliente);
    
    END IF;
    
    SET nCargo =  (SELECT COUNT(*) FROM ics_cargos WHERE car_nombre = cargo);
    
    IF nCargo = 0 THEN

		INSERT INTO ics_cargos (car_nombre,car_cliente)  
		VALUES 
		(cargo,'1');
    
    END IF;
    
    set idCargo = (SELECT id_cargos FROM ics_cargos WHERE car_nombre = cargo LIMIT 1) ;
    
    UPDATE ics_usuario_cargo SET uc_Estado = '0' WHERE fk_cedula_usuario = cc;
    
    INSERT INTO ics_usuario_cargo(fk_id_cargo,fk_cedula_usuario)
	VALUES
	(idCargo,cc);

	SELECT 1 AS RESPUESTA;

ELSE
-- el codigo ya existe y no se puede crear
	SELECT 2 AS RESPUESTA;

END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIO_DISPENSADORA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_USUARIO_DISPENSADORA`(idHuella VARCHAR(6), serialDispensadora VARCHAR(15), estado VARCHAR(1))
BEGIN

DECLARE nDispensadora int;

SET nDispensadora = (SELECT COUNT(*) FROM ics_usu_dispensadora WHERE udis_idUsuario = idHuella AND udis_Serial_Dispensadora = serialDispensadora);

IF nDispensadora = 0 THEN

	INSERT INTO ics_usu_dispensadora 
    (udis_idUsuario,udis_Serial_Dispensadora) 
    VALUES 
    (idHuella, serialDispensadora);

ELSE

	UPDATE ics_usu_dispensadora 
    SET udis_Estado = estado 
    WHERE udis_idUsuario = idHuella 
    AND udis_Serial_Dispensadora = serialDispensadora;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_usu_disp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usu_disp`(usu  varchar(15), maq varchar(10))
    DETERMINISTIC
BEGIN
Insert into ics_usu_dispensadora set udis_idUsuario = usu,udis_Serial_Dispensadora=maq;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_V11_CONSSUBS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_V11_CONSSUBS`(FI varchar(45), FF varchar(45), CL VARCHAR(45), AREA VARCHAR(245),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN


DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;


IF AREA = 'NA' THEN  -- sin filtro

	if substring(FI,1,10) = '0000-00-00' THEN
    
		IF num_rows = 1 THEN
			SELECT count(distinct(FDT.ful_ss)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL;        
        ELSE

			SELECT ss.sbs_nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN ics_sub_seccion  ss ON FDT.ful_ss=ss.sbs_id_subseccion
			WHERE FDT.ful_cl = CL   
			GROUP BY FDT.ful_ss
			ORDER BY SUM(FDT.ful_valsel) DESC LIMIT LIMITE, HASTA;
		END IF;
	else -- con filtro de fecha
    
		IF num_rows = 1 THEN
    
			select count(distinct(FDT.ful_ss)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF ;
    
		ELSE   
			SELECT ss.sbs_nombre, COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN   ics_sub_seccion ss ON FDT.ful_ss=ss.sbs_id_subseccion
			WHERE FDT.ful_cl = CL AND  FDT.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_ss
			ORDER BY SUM(FDT.ful_valsel) desc LIMIT LIMITE, HASTA;
		END IF;
	end if;

ELSE -- con filtro

if  substring(FI,1,10) = '0000-00-00' then -- sin fecha

	IF num_rows = 1 THEN
    
		SELECT 1;
    
    ELSE

		SELECT ss.sbs_nombre, COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0 )) 
		FROM   ics_fulldata FDT
		JOIN   ics_sub_seccion ss ON FDT.ful_ss=ss.sbs_id_subseccion
		WHERE FDT.ful_cl = CL AND FDT.ful_ss=AREA  
		GROUP BY FDT.ful_ss order by SUM(FDT.ful_valsel) DESC LIMIT LIMITE, HASTA ;
        
	END IF;
else

	IF num_rows = 1 then
    
    select 1;
    
    else

		SELECT ss.sbs_nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
		FROM   ics_fulldata FDT
		JOIN    ics_sub_seccion ss ON FDT.ful_ss=ss.sbs_id_subseccion
        
		WHERE FDT.ful_cl = CL AND FDT.ful_ss=AREA AND  FDT.ful_fechacrea BETWEEN FI AND FF 
		GROUP BY FDT.ful_ss order by SUM(FDT.ful_valsel)  desc limit LIMITE, HASTA;
        
	end if;
END if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_V11_CONSSUBS_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_V11_CONSSUBS_SL`(FI varchar(45), FF varchar(45), CL VARCHAR(45), AREA VARCHAR(245),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN


DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;


IF AREA = 'NA' THEN  -- sin filtro

	if  substring(FI,1,10) = '0000-00-00' THEN
    
		IF num_rows = 1 THEN
			SELECT count(distinct(FDT.ful_ss)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL;        
        ELSE

			SELECT ss.sbs_nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN ics_sub_seccion  ss ON FDT.ful_ss=ss.sbs_id_subseccion
			WHERE FDT.ful_cl = CL   
			GROUP BY FDT.ful_ss
			ORDER BY SUM(FDT.ful_valsel) DESC ;
		END IF;
	else -- con filtro de fecha
    
		IF num_rows = 1 THEN
    
			select count(distinct(FDT.ful_ss)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF ;
    
		ELSE   
			SELECT ss.sbs_nombre, COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN   ics_sub_seccion ss ON FDT.ful_ss=ss.sbs_id_subseccion
			WHERE FDT.ful_cl = CL AND  FDT.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_ss
			ORDER BY SUM(FDT.ful_valsel) desc ;
		END IF;
	end if;

ELSE -- con filtro

if substring(FI,1,10) = '0000-00-00' then -- sin fecha

	IF num_rows = 1 THEN
    
		SELECT 1;
    
    ELSE

		SELECT ss.sbs_nombre, COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0 )) 
		FROM   ics_fulldata FDT
		JOIN   ics_sub_seccion ss ON FDT.ful_ss=ss.sbs_id_subseccion
		WHERE FDT.ful_cl = CL AND FDT.ful_ss=AREA  
		GROUP BY FDT.ful_ss order by SUM(FDT.ful_valsel) DESC ;
        
	END IF;
else

	IF num_rows = 1 then
    
    select 1;
    
    else

		SELECT ss.sbs_nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
		FROM   ics_fulldata FDT
		JOIN    ics_sub_seccion ss ON FDT.ful_ss=ss.sbs_id_subseccion
        
		WHERE FDT.ful_cl = CL AND FDT.ful_ss=AREA AND  FDT.ful_fechacrea BETWEEN FI AND FF 
		GROUP BY FDT.ful_ss order by SUM(FDT.ful_valsel)  desc ;
        
	end if;
END if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_V15_CONSXAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_V15_CONSXAREA`(CL VARCHAR(45), AREA VARCHAR(145))
    DETERMINISTIC
BEGIN
IF AREA = 'NA' THEN
		SELECT  monthname(`ful_fechacrea`) MES ,s.sec_Nombre area ,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		JOIN `ics_maquinas` M 		ON M.maq_serial_maq       = FD.ful_idmaq
		JOIN `ics_sub_seccion` SS 	ON SS.`sbs_id_subseccion` = M.`fk_maq_punto_maqn`
		join `ics_seccion` s 	ON s.`sec_id_seccion` 	  = SS.`sbs_fk_seccion`
		WHERE FD.ful_cl = CL  and  year(ful_fechacrea) 		  = year(curdate())
		GROUP BY monthname(`ful_fechacrea`),s.sec_Nombre ;
ELSE	
SELECT  monthname(`ful_fechacrea`) MES ,s.sec_Nombre area ,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		JOIN `ics_maquinas` M 		ON M.maq_serial_maq       = FD.ful_idmaq
		JOIN `ics_sub_seccion` SS 	ON SS.`sbs_id_subseccion` = M.`fk_maq_punto_maqn`
		join `ics_seccion` s 	ON s.`sec_id_seccion` 	  = SS.`sbs_fk_seccion`
		WHERE FD.ful_cl = CL  and S.`sec_id_seccion`= AREA AND  year(ful_fechacrea) 		  = year(curdate())
		GROUP BY monthname(`ful_fechacrea`),s.sec_Nombre ;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_V16_CONSXSUBAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_V16_CONSXSUBAREA`(CL VARCHAR(45), SAREA VARCHAR(145))
    DETERMINISTIC
BEGIN
IF SAREA = 'NA' THEN
		SELECT  monthname(`ful_fechacrea`) MES ,SS.sbs_nombre  SS,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		JOIN `ics_maquinas` 	M 		ON M.maq_serial_maq       = FD.ful_idmaq
		JOIN `ics_sub_seccion` SS 	ON SS.`sbs_id_subseccion` = M.`fk_maq_punto_maqn`
		WHERE FD.ful_cl = CL  and  year(ful_fechacrea) 		  = year(curdate())
		GROUP BY monthname(`ful_fechacrea`),SS.sbs_nombre  ;
ELSE	
SELECT  monthname(`ful_fechacrea`) MES ,SS.sbs_nombre  SS ,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		JOIN `ics_maquinas` 	M 		ON M.maq_serial_maq       = FD.ful_idmaq
		JOIN `ics_sub_seccion` SS 	ON SS.`sbs_id_subseccion` = M.`fk_maq_punto_maqn`
		WHERE FD.ful_cl = CL  and SS.`sbs_id_subseccion`= SAREA AND  year(ful_fechacrea)= year(curdate())
		GROUP BY monthname(`ful_fechacrea`),s.sec_Nombre ;

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VALOR_PRODUCTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VALOR_PRODUCTO`(idproducto varchar(145))
    DETERMINISTIC
BEGIN
select `ite_valor` from `ics_item_c` where `ite_id_item` = idproducto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VENTA_CATERING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VENTA_CATERING`(huella varchar(45), producto varchar(225), valorunit varchar(245), cantidad varchar(5) , maquina varchar(45) )
    DETERMINISTIC
BEGIN
-- validar producto
declare subsecc,cedula,idproducto varchar(145);
declare cliente int;
declare i int;
set cliente = (SELECT MAQ_CL FROM  ics_maquinas WHERE maq_serial_maq = maquina LIMIT 1);

if producto in (select ite_nom_item from ics_item_c ) then 
	set idproducto = (select ite_id_item from ics_item_c where ite_nom_item = producto );
update ics_item_c set ite_valor = valorunit where ite_id_item=idproducto;

else
	insert into ics_item_c set ite_nom_item =producto , ite_valor=valorunit, fk_proveedor_ite = 1;
	set idproducto = last_insert_id();
end if;

set cedula 	 =(select IdA_Identificacion_Usu from ics_idalias_usuario where IdA_Numero_Alias= huella and IdA_cl=cliente limit 1);
set subsecc	 =(select fk_maq_punto_maqn from ics_maquinas where maq_serial_maq = maquina limit 1 );

set i =0;
while i < cantidad do 
	insert into ics_fulldata
	set ful_idusu 	=huella ,
	ful_valsel 		=valorunit ,
	ful_idmaq 		=maquina ,
	ful_finger 		=substring(huella,4,1),
	ful_item        =idproducto,
	ful_cl 			=cliente,
	ful_cc_usr		=cedula,
	ful_ss			=subsecc,
	ful_nom_it		=producto,
	ful_numsel 		=0 , 
    ful_tipoapp = 5;

	set i = i +1;
end while;

	 (SELECT Cve_Credito from ics_controlventas where Cve_IdUsuario = huella and Cve_cl = cliente LIMIT 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI10_TOTDISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI10_TOTDISP`(CL VARCHAR(45), FF varchar(45), FI varchar(45))
    DETERMINISTIC
BEGIN
if substring(FI,1,10) = '0000-00-00' then
	SELECT COUNT(ful_numsel), concat('$',FORMAT(SUM(ful_valsel),0))
	FROM ics_fulldata WHERE ful_cl = CL ;
else
	SELECT COUNT(ful_numsel), concat('$',format (SUM(ful_valsel),0))
	FROM ics_fulldata WHERE ful_cl = CL AND ful_fechacrea BETWEEN FI AND FF;
	
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI12_ERR_COMP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI12_ERR_COMP`(cl varchar(45),tp varchar(45), fi varchar(45) , ff varchar(45))
    DETERMINISTIC
BEGIN

if fi = '0000-00-00' then
select 
    count(*) as a,
    (select 
            count(*) 
        from
            ics_full_peticion_
        where
            fpe_estado_peticion = 3
                and fpe_cliente =cl and fpe_tipo = tp ) b,
	 (select 
            count(*) 
        from
            ics_full_peticion_
        where
            fpe_estado_peticion = 1
                and fpe_cliente =cl and fpe_tipo = tp ) c
from
    ics_full_peticion_
where
    fpe_estado_peticion = 2
        and fpe_cliente = cl and fpe_tipo = tp;


else

select 
    count(*) as a,
    (select 
            count(*) 
        from
            ics_full_peticion_
        where
            fpe_estado_peticion = 3
                and fpe_cliente =cl and fpe_tipo = tp and date(fpe_fecha) between fi and ff) b,
	 (select 
            count(*) 
        from
            ics_full_peticion_
        where
            fpe_estado_peticion = 1
                and fpe_cliente =cl and fpe_tipo = tp and date(fpe_fecha) between fi and ff) c
from
    ics_full_peticion_
where
    fpe_estado_peticion = 2
        and fpe_cliente = cl and fpe_tipo = tp and date(fpe_fecha) between fi and ff;

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI13_PRODXMES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI13_PRODXMES`(CL VARCHAR(45), ITEM VARCHAR(45))
    DETERMINISTIC
BEGIN
IF ITEM  ='NA' THEN
		SELECT  monthname(`ful_fechacrea`) MES ,FD.ful_nom_it ITEM ,COUNT(FD.ful_nom_it ) CANT
		FROM ics_fulldata FD 
		WHERE FD.ful_cl = CL  and  year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(`ful_fechacrea`),ful_item ORDER BY COUNT(FD.ful_nom_it ) DESC LIMIT 10 ;
ELSE
		SELECT  monthname(`ful_fechacrea`) MES ,FD.ful_nom_it ITEM ,COUNT(FD.ful_nom_it ) CANT
		FROM ics_fulldata FD 
		WHERE FD.ful_cl = CL  and FD.ful_item = ITEM AND year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(FD.ful_fechacrea),FD.ful_item ORDER BY COUNT(FD.ful_nom_it ) DESC LIMIT 10;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI14_USRXMES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI14_USRXMES`(CL VARCHAR(45), CC VARCHAR(45))
    DETERMINISTIC
BEGIN
	IF CC  ='NA' THEN
		SELECT  monthname(`ful_fechacrea`) MES ,U.usu_nombre USR ,SUM(FD.ful_valsel) TOT
		FROM ics_fulldata FD 
		JOIN ics_usuario U ON U.usu_id_usuario_opera = FD.ful_cc_usr
		WHERE FD.ful_cl = CL  and  year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(`ful_fechacrea`),FD.ful_cc_usr ORDER BY SUM(FD.ful_valsel) DESC LIMIT 10 ;
ELSE
		SELECT  monthname(`ful_fechacrea`) MES ,U.usu_nombre USR ,SUM(FD.ful_valsel) TOT
		FROM ics_fulldata FD 
		JOIN ics_usuario U ON U.usu_id_usuario_opera = FD.ful_cc_usr
		WHERE FD.ful_cl = CL  and FD.ful_cc_usr = CC AND year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(`ful_fechacrea`),FD.ful_cc_usr ORDER BY SUM(FD.ful_valsel) DESC LIMIT 10 ;
END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI17_XSELEMES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI17_XSELEMES`(CL VARCHAR(45), maq VARCHAR(45))
    DETERMINISTIC
BEGIN
IF maq  ='NA' THEN
		SELECT  monthname(`ful_fechacrea`) MES ,fd.ful_idmaq maq, FD.ful_numsel sel ,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		WHERE FD.ful_cl = CL  and  year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(ful_fechacrea), 	fd.ful_idmaq	,      fd.ful_numsel ORDER BY sum(FD.ful_valsel) DESC LIMIT 10 ;
ELSE
		SELECT  monthname(ful_fechacrea) MES ,fd.ful_idmaq maq,FD.ful_numsel sel ,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		WHERE FD.ful_cl = CL  and fd.ful_idmaq = maq and  year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(ful_fechacrea), 	fd.ful_idmaq	,      fd.ful_numsel ORDER BY sum(FD.ful_valsel) DESC LIMIT 10 ;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI18_XTIPAPP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI18_XTIPAPP`(CL VARCHAR(45))
    DETERMINISTIC
BEGIN

		SELECT  monthname(`ful_fechacrea`) MES , tpp.`tapp_nombre`,sum(FD.ful_valsel) tot
		FROM ics_fulldata FD 
		join ics_tipo_app tpp on tpp.idics_tipo_app = FD.ful_tipoapp
		WHERE FD.ful_cl = CL  and  year(ful_fechacrea) = year(curdate())
		GROUP BY monthname(ful_fechacrea), 	tpp.`tapp_nombre`  ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI19_TOTDISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI19_TOTDISP`(DI VARCHAR(45))
    DETERMINISTIC
BEGIN
	SELECT ful_idmaq , COUNT(ful_numsel), concat('$',FORMAT(SUM(ful_valsel),0)),c.cli_razon_social ,c.cli_correo ,p.pun_nombre,c.cli_persona_contacto
	FROM ics_fulldata 
		join vi_ics_cliente_maq cm  on cm.maq_serial_maq = DI
		join ics_clientes c 		on cm.cli_id_cliente = c.cli_id_cliente
		 join  ics_puntos p on cm.fk_maq_punto_maqn = p.pun_id_punto
	WHERE ful_idmaq = DI and date(ful_fechacrea) = curdate()
	GROUP BY ful_idmaq;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI1_VENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI1_VENT`(TIPO VARCHAR(5), FI varchar(45), FF varchar(45),CL VARCHAR(45), USER VARCHAR(45), PARAM_PAG INT, NUM_REG INT)
    DETERMINISTIC
BEGIN
DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*12);
end if;
SET HASTA = 12;

CASE TIPO
WHEN  1 -- EAS(CASHLESS)
THEN
	IF substring(FI,1,10) = '0000-00-00' THEN
	
		IF USER = 'NA' THEN 
			       
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
		ELSE
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;	
		END IF;
	ELSE -- con filtro de fecha
    
    IF USER = 'NA' THEN 
			       
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC; 
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC LIMIT LIMITE , HASTA;  
		END IF;
	else -- con usuario
		IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF  AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
    
    
    
    end if;
	END IF;
	
	
WHEN 2 -- VENDING (CASHLESS )
THEN
	IF substring(FI,1,10) = '0000-00-00' THEN
	
		IF USER = 'NA' THEN 
			       
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
		ELSE
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
		
		
		END IF;
	ELSE -- con filtro de fecha
    
    IF USER = 'NA' THEN 
			       
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC; 
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned) v, FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC LIMIT LIMITE , HASTA;  
		END IF;
	else -- con usuario
		IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF  AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
    
    
    
    end if;
	END IF;
WHEN 3 -- EFECTIVO
THEN

	IF substring(FI,1,10) = '0000-00-00' THEN
		IF NUM_REG = 1 THEN
			SELECT count(*)
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL  order by FDT.ful_fechacrea DESC;  
		else
			SELECT FDT.ful_idmaq ,FDT.ful_nom_it,FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL  order by FDT.ful_fechacrea DESC LIMIT LIMITE , HASTA;  
		end if;
	ELSE
		IF NUM_REG = 1 THEN
			SELECT count(*)
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC ;
		else
			SELECT  FDT.ful_idmaq ,FDT.ful_nom_it,FDT.ful_numsel,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;
		end  if;
	END IF;
WHEN 5 -- VENDING (CATERING )
THEN
	IF substring(FI,1,10) = '0000-00-00' THEN
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_nom_it,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
		END IF;
	ELSE
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC; 
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_nom_it,cast(FDT.ful_valsel as unsigned), FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC LIMIT LIMITE , HASTA;  
		END IF;
	END IF;
WHEN 6 -- DATAFONO
THEN 
IF substring(FI,1,10) = '0000-00-00' THEN
	
		IF USER = 'NA' THEN -- MAQUINA
			       
			IF NUM_REG = 1 THEN

				SELECT COUNT(*) FROM ics_auth where ics_cl = CL;

			ELSE
            
				SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),concat('$',FORMAT(ics_vaut,0)),ics_nter,REPLACE(ics_nfra, '0', ''), 
				concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
				ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
				FROM ics_auth where ics_cl = CL order by ics_ftmp desc LIMIT LIMITE, HASTA ; 

			END IF;
		ELSE -- con filtro de maquina
        
			IF NUM_REG = 1 THEN
            
            
				SELECT COUNT(*) FROM ics_auth where ics_cl = CL and ics_nvmc = USER;
            
			ELSE
			
				SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),concat('$',FORMAT(ics_vaut,0)),ics_nter,REPLACE(ics_nfra, '0', ''), 
				concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
				ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
				FROM ics_auth where ics_cl = CL and ics_nvmc = USER  order by ics_ftmp desc LIMIT LIMITE, HASTA ;      
				
            END IF;
		
		END IF;
        
	ELSE -- con filtro de fecha
    
    IF USER = 'NA' THEN 
			       
		IF NUM_REG = 1 THEN
        
			SELECT COUNT(*) FROM ics_auth where ics_cl = CL and ics_ftmp BETWEEN FI AND FF ;
            
		ELSE
				SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),concat('$',FORMAT(ics_vaut,0)),ics_nter,REPLACE(ics_nfra, '0', ''), 
				concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
				ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
				FROM ics_auth where ics_cl = CL and ics_ftmp BETWEEN FI AND FF order by ics_ftmp desc LIMIT LIMITE, HASTA ;         
			
		END IF;
	else -- con DISPENSADORA Y FECHAS 
		IF NUM_REG = 1 THEN
        
			SELECT COUNT(*) FROM ics_auth where ics_cl = CL and ics_nvmc = USER  AND ics_ftmp BETWEEN FI AND FF ;
            
		ELSE
        
			SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),concat('$',FORMAT(ics_vaut,0)),ics_nter,REPLACE(ics_nfra, '0', ''), 
			concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
			ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
			FROM ics_auth where ics_cl = CL and  ics_nvmc = USER  AND  ics_ftmp BETWEEN FI AND FF order by ics_ftmp desc LIMIT LIMITE, HASTA ;  
			
		END IF;   
    
    end if;
	END IF;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI1_VENT_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI1_VENT_SL`(TIPO VARCHAR(5), FI varchar(45), FF varchar(45),CL VARCHAR(45),USER VARCHAR(145), PARAM_PAG INT, NUM_REG INT)
    DETERMINISTIC
BEGIN
DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*12);
end if;
SET HASTA = 12;

CASE TIPO
WHEN  1 -- EAS(CASHLESS)
THEN
	IF substring(FI,1,10) = '0000-00-00' THEN
	
		IF USER = 'NA' THEN 
			       
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,concat('$', FORMAT(FDT.ful_valsel,0)), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
		ELSE
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,concat('$', FORMAT(FDT.ful_valsel,0)), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;	
		END IF;
	ELSE -- con filtro de fecha
    
    IF USER = 'NA' THEN 
			       
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC; 
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,concat('$', FORMAT(FDT.ful_valsel,0)), FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC LIMIT LIMITE , HASTA;  
		END IF;
	else -- con usuario
		IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF  AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,concat('$', FORMAT(FDT.ful_valsel,0)), FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 1  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC LIMIT LIMITE ,HASTA;  
			END IF;
    
    
    
    end if;
	END IF;
	
	
WHEN 2 -- VENDING (CASHLESS )
THEN
	IF substring(FI,1,10) = '0000-00-00' THEN
	
		IF USER = 'NA' THEN 
			       
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,FDT.ful_valsel, FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
			END IF;
		ELSE
			IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,FDT.ful_valsel, FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC;  
			END IF;
		
		
		END IF;
	ELSE -- con filtro de fecha
    
    IF USER = 'NA' THEN 
			       
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC; 
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,FDT.ful_valsel, FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC ;  
		END IF;
	else -- con usuario
		IF NUM_REG = 1 THEN
				SELECT COUNT(*)
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF  AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			ELSE
				SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it, FDT.ful_numsel,FDT.ful_valsel, FDT.ful_fechacrea 
				FROM   ics_fulldata   FDT 
				JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
				WHERE  FDT.ful_tipoapp = 2  AND FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF AND FDT.ful_cc_usr= USER order by FDT.ful_fechacrea DESC ;  
			END IF;
    
    
    
    end if;
	END IF;
WHEN 3 -- EFECTIVO
THEN

	IF substring(FI,1,10) = '0000-00-00' THEN
		IF NUM_REG = 1 THEN
			SELECT count(*)
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL  order by FDT.ful_fechacrea DESC;  
		else
			SELECT FDT.ful_idmaq ,FDT.ful_nom_it,FDT.ful_numsel,FDT.ful_valsel, FDT.ful_fechacrea
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL  order by FDT.ful_fechacrea DESC;  
		end if;
	ELSE
		IF NUM_REG = 1 THEN
			SELECT count(*)
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC ;
		else
			SELECT  FDT.ful_idmaq ,FDT.ful_nom_it,FDT.ful_numsel,FDT.ful_valsel, FDT.ful_fechacrea
			FROM   ics_fulldata   FDT 
			WHERE  FDT.ful_tipoapp = 3  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC;
		end  if;
	END IF;
WHEN 5 -- VENDING (CATERING )
THEN
	IF substring(FI,1,10) = '0000-00-00' THEN
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it,FDT.ful_valsel, FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL order by FDT.ful_fechacrea DESC ;  
		END IF;
	ELSE
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC; 
		ELSE
			SELECT FDT.ful_cc_usr, U.usu_nombre, FDT.ful_idusu, FDT.ful_idmaq, FDT.ful_nom_it,FDT.ful_valsel, FDT.ful_fechacrea 
			FROM   ics_fulldata   FDT 
			JOIN   ics_usuario	  U	 ON U.usu_id_usuario_opera	= FDT.ful_cc_usr and U.usu_client_creador =  CL
			WHERE  FDT.ful_tipoapp = 5  AND FDT.ful_cl = CL AND FDT.ful_fechacrea BETWEEN FI AND FF order by FDT.ful_fechacrea DESC ;  
		END IF;
	END IF;
WHEN 6 -- DATAFONO
THEN 
IF substring(FI,1,10) = '0000-00-00' THEN
	
		IF USER = 'NA' THEN -- MAQUINA
			       
			IF NUM_REG = 1 THEN

				SELECT COUNT(*) FROM ics_auth where ics_cl = CL;

			ELSE
            
				SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),ics_vaut,ics_nter,REPLACE(ics_nfra, '0', ''), 
				concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
				ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
				FROM ics_auth where ics_cl = CL order by ics_ftmp desc  ; 

			END IF;
		ELSE -- con filtro de maquina
        
			IF NUM_REG = 1 THEN
            
            
				SELECT COUNT(*) FROM ics_auth where ics_cl = CL and ics_nvmc = USER;
            
			ELSE
			
				SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),ics_vaut,ics_nter,REPLACE(ics_nfra, '0', ''), 
				concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
				ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
				FROM ics_auth where ics_cl = CL and ics_nvmc = USER  order by ics_ftmp desc  ;      
				
            END IF;
		
		END IF;
        
	ELSE -- con filtro de fecha
    
    IF USER = 'NA' THEN 
			       
		IF NUM_REG = 1 THEN
        
			SELECT COUNT(*) FROM ics_auth where ics_cl = CL and ics_ftmp BETWEEN FI AND FF ;
            
		ELSE
				SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),ics_vaut,ics_nter,REPLACE(ics_nfra, '0', ''), 
				concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
				ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
				FROM ics_auth where ics_cl = CL and ics_ftmp BETWEEN FI AND FF order by ics_ftmp desc ;         
			
		END IF;
	else -- con DISPENSADORA Y FECHAS 
		IF NUM_REG = 1 THEN
        
			SELECT COUNT(*) FROM ics_auth where ics_cl = CL and ics_nvmc = USER  AND ics_ftmp BETWEEN FI AND FF ;
            
		ELSE
        
			SELECT ics_naut,ics_nrec,CONCAT('***',ics_tar),ics_vaut,ics_nter,REPLACE(ics_nfra, '0', ''), 
			concat('20',substring(ics_fcb,1,2),'-',substring(ics_fcb,3,2),'-',substring(ics_fcb,5,2),' ',substring(ics_fcb,7,2),':',substring(ics_fcb,9,2)),
			ics_nvmc,ics_nsel,ics_nomprod,ics_stsdisp,ics_ftmp
			FROM ics_auth where ics_cl = CL and  ics_nvmc = USER  AND  ics_ftmp BETWEEN FI AND FF order by ics_ftmp desc  ;  
			
		END IF;   
    END IF;
END IF;
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI2_1_XDISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI2_1_XDISP`(cl varchar(45), disp varchar(45))
    DETERMINISTIC
BEGIN

if disp !=  'NA' then
		SELECT  monthname(`ful_fechacrea`) mes ,FD.ful_idmaq maq , m.maq_ref_maq ref, CONCAT(format(SUM(FD.ful_valsel),0)) tot
		FROM ics_fulldata FD 
		JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
		WHERE FD.ful_cl = cl  and FD.ful_idmaq = disp and  year(`ful_fechacrea`) = year(curdate())
		GROUP BY 		monthname(`ful_fechacrea`),		FD.ful_idmaq;
else
	SELECT  monthname(`ful_fechacrea`) mes ,FD.ful_idmaq maq , m.maq_ref_maq ref, concat(FORMAT(SUM(FD.ful_valsel),0)) tot
		FROM ics_fulldata FD 
		JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
		WHERE FD.ful_cl = cl   and  year(`ful_fechacrea`) = year(curdate())
		GROUP BY 		monthname(`ful_fechacrea`),		FD.ful_idmaq;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI2_XDISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI2_XDISP`(FI varchar(45), FF varchar(45),CL VARCHAR(45),dispe varchar(255),PARAM_PAG int, num_rows varchar(25))
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;
declare disp varchar(45);


IF dispe != 'NA' THEN
	set disp = lpad(dispe,10,'0');
else
	set disp = dispe;
END IF;


if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;

IF disp = 'NA' THEN
	if substring(FI,1,10)= '0000-00-00' then
    
		IF num_rows = 1 --  pidiendo numero de registros
        then
        
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL;
		else
    
			SELECT FD.ful_idmaq, m.maq_ref_maq, COUNT(FD.ful_idmaq), concat('$', FORMAT(SUM(FD.ful_valsel),0))
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL  
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel) DESC  LIMIT LIMITE, HASTA ;
		end if;

	else -- con fecha
		IF num_rows = 1 then
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL and ful_fechacrea between FI  and FF ;
        else
       
			SELECT FD.ful_idmaq, m.maq_ref_maq, COUNT(FD.ful_idmaq), concat('$', FORMAT(SUM(FD.ful_valsel),0))
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL AND FD.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel) DESC   LIMIT LIMITE, HASTA;
        
        end if;
	end if;
ELSE -- con dispensadora
	if substring(FI,1,10 ) = '0000-00-00' then
    
		IF num_rows = 1 --  pidiendo numero de registros
        then           

			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL and ful_idmaq = disp;
		else
			SELECT FD.ful_idmaq,m.maq_ref_maq, COUNT(FD.ful_idmaq), concat('$', FORMAT(SUM(FD.ful_valsel),0))
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL AND FD.ful_idmaq =disp
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel) DESC  LIMIT LIMITE, HASTA ;
		end if;
	else
		IF num_rows = 1 then         
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL and ful_idmaq = disp and ful_fechacrea between FI  and FF ;        
        else		
			SELECT FD.ful_idmaq,m.maq_ref_maq, COUNT(FD.ful_idmaq),concat('$', FORMAT(SUM(FD.ful_valsel),0))
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL AND FD.ful_idmaq =disp AND FD.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel)  DESC LIMIT LIMITE, HASTA ;
		end if;
	end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI2_XDISP_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_VI2_XDISP_SL`(FI varchar(45), FF varchar(45),CL VARCHAR(45),dispe varchar(255),PARAM_PAG int, num_rows varchar(25))
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;
declare disp varchar(45);


IF dispe != 'NA' THEN
	set disp = lpad(dispe,10,'0');
else
	set disp = dispe;
END IF;


if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;

IF disp = 'NA' THEN
	if substring(FI,1,10) = '0000-00-00' then
    
		IF num_rows = 1 --  pidiendo numero de registros
        then
        
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL;
		else
    
			SELECT FD.ful_idmaq, m.maq_ref_maq, COUNT(FD.ful_idmaq), SUM(FD.ful_valsel)
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL  
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel) DESC  ;
		end if;

	else -- con fecha
		IF num_rows = 1 then
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL and ful_fechacrea between FI  and FF ;
        else
       
			SELECT FD.ful_idmaq, m.maq_ref_maq, COUNT(FD.ful_idmaq), SUM(FD.ful_valsel)
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL AND FD.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel) DESC ;
        
        end if;
	end if;
ELSE -- con dispensadora
	if substring(FI,1,10) = '0000-00-00' then
    
		IF num_rows = 1 --  pidiendo numero de registros
        then        
       
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL and ful_idmaq = disp;
		else
			SELECT FD.ful_idmaq,m.maq_ref_maq, COUNT(FD.ful_idmaq), SUM(FD.ful_valsel)
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL AND FD.ful_idmaq =disp
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel) DESC ;
		end if;
	else
		IF num_rows = 1 then         
			select count(distinct(ful_idmaq)) from ics_fulldata where ful_cl = CL and ful_idmaq = disp and ful_fechacrea between FI  and FF ;        
        else		
			SELECT FD.ful_idmaq,m.maq_ref_maq, COUNT(FD.ful_idmaq),SUM(FD.ful_valsel)
			FROM ics_fulldata FD 
			JOIN ics_maquinas m on  FD.ful_idmaq = m.maq_serial_maq
			WHERE FD.ful_cl = CL AND FD.ful_idmaq =disp AND FD.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FD.ful_idmaq order by SUM(FD.ful_valsel)  DESC ;
		end if;
	end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI3_1_CONSESP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI3_1_CONSESP`(FI varchar(45),FF varchar(45),CL VARCHAR(45), sele VARCHAR(225))
    DETERMINISTIC
BEGIN
IF sele = 'NA' THEN

	if FI = '0000-00-00' then
		SELECT ful_idmaq,	ful_numsel , COUNT(ful_numsel),concat('$', FORMAT( SUM(ful_valsel),0 ))
		FROM 	ics_fulldata WHERE ful_cl = CL 
		GROUP BY ful_idmaq, ful_numsel order by  SUM(ful_valsel)  desc;
	else
		SELECT ful_idmaq,	ful_numsel , COUNT(ful_numsel), SUM(ful_valsel) 
		FROM 	ics_fulldata WHERE ful_cl = CL AND DATE(ful_fechacrea) BETWEEN FI AND  FF
		GROUP BY ful_idmaq, ful_numsel order by  SUM(ful_valsel)  desc;
	end If;
ELSE
	IF FI = '0000-00-00' then
		SELECT ful_idmaq,	ful_numsel , COUNT(ful_numsel), concat('$', FORMAT(SUM(ful_valsel),0)) 
		FROM 	ics_fulldata WHERE ful_cl = CL AND ful_numsel in (sele) 
		GROUP BY ful_idmaq, ful_numsel order by  SUM(ful_valsel)  desc;
	ELSE
	 	SELECT ful_idmaq,	ful_numsel , COUNT(ful_numsel), concat('$', FORMAT(SUM(ful_valsel),0)) 
		FROM 	ics_fulldata WHERE ful_cl = CL AND ful_numsel in (sele) AND DATE(ful_fechacrea) BETWEEN FI AND  FF
		GROUP BY ful_idmaq, ful_numsel order by  SUM(ful_valsel)  desc;
	END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI3_CONSPROD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI3_CONSPROD`(FI varchar(45), FF varchar(45), CL VARCHAR(45), ITEMS  VARCHAR(225),PARAM_PAG INT, NUM_REG INT)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*12);
end if;
SET HASTA = 12;

IF ITEMS = 'NA' THEN
	if substring(FI,1,10) = '0000-00-00' THEN -- sin fecha 
    
		IF NUM_REG = 1 then -- conteo de registros
        
			select count(distinct(ful_item)) from  ics_fulldata WHERE ful_cl = CL;
            
         ELSE   
            
			SELECT ful_nom_it , COUNT(ful_item), concat('$', FORMAT(SUM(ful_valsel),0) )
			FROM ics_fulldata WHERE ful_cl = CL 
			GROUP  BY  ful_item ORDER BY SUM(ful_valsel) desc LIMIT LIMITE, HASTA;
            
		END IF;
	ELSE -- con fecha
    
		if NUM_REG  =1 then 
        
			select count(distinct(ful_item)) from  ics_fulldata WHERE ful_cl = CL  AND  ful_fechacrea BETWEEN FI AND  FF;
            
		else
        
			SELECT ful_nom_it , COUNT(ful_item), concat('$', FORMAT (SUM(ful_valsel) ,0))
			FROM ics_fulldata WHERE ful_cl = CL AND  ful_fechacrea BETWEEN FI AND  FF
			GROUP  BY  ful_item ORDER BY SUM(ful_valsel) desc LIMIT LIMITE, HASTA;
            
        end if;
	END IF;
ELSE -- con filtro de un producto -- no se aplica
	if substring(FI,1,10)  = '0000-00-00' THEN
    
		IF NUM_REG = 1 then -- conteo de registros   
        
			SELECT 1            ;
         ELSE      
			SELECT ful_nom_it , COUNT(ful_item), concat('$', FORMAT (SUM(ful_valsel) ,0))
			FROM ics_fulldata WHERE ful_cl = CL AND ful_item =ITEMS
			GROUP  BY  ful_item; -- ORDER BY SUM(ful_valsel) DESC ;
		END IF;
	else
    
		IF NUM_REG = 1 THEN
			SELECT 1;                  
        ELSE           
			SELECT ful_nom_it , COUNT(ful_item),concat('$', format(SUM(ful_valsel) ,0))
			FROM ics_fulldata WHERE ful_cl = CL AND ful_item = ITEMS AND ful_fechacrea BETWEEN FI AND  FF
			GROUP  BY  ful_item ; --  ORDER BY SUM(ful_valsel)  DESC;
		END IF;
	end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI3_CONSPROD_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI3_CONSPROD_SL`(FI varchar(45), FF varchar(45), CL VARCHAR(45), ITEMS  VARCHAR(225),PARAM_PAG INT, NUM_REG INT)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*12);
end if;
SET HASTA = 12;

IF ITEMS = 'NA' THEN
	if substring(FI,1,10)  = '0000-00-00' THEN -- sin fecha 
    
		IF NUM_REG = 1 then -- conteo de registros
        
			select count(distinct(ful_item)) from  ics_fulldata WHERE ful_cl = CL;
            
         ELSE   
            
			SELECT ful_nom_it , COUNT(ful_item), concat('$', FORMAT(SUM(ful_valsel),0) )
			FROM ics_fulldata WHERE ful_cl = CL 
			GROUP  BY  ful_item ORDER BY SUM(ful_valsel) desc;
            
		END IF;
	ELSE -- con fecha
    
		if NUM_REG  =1 then 
        
			select count(distinct(ful_item)) from  ics_fulldata WHERE ful_cl = CL  AND  ful_fechacrea BETWEEN FI AND  FF;
            
		else
        
			SELECT ful_nom_it , COUNT(ful_item), concat('$', FORMAT (SUM(ful_valsel) ,0))
			FROM ics_fulldata WHERE ful_cl = CL AND  ful_fechacrea BETWEEN FI AND  FF
			GROUP  BY  ful_item ORDER BY SUM(ful_valsel) desc ;
            
        end if;
	END IF;
ELSE -- con filtro de un producto -- no se aplica
	if substring(FI,1,10)  = '0000-00-00' THEN
    
		IF NUM_REG = 1 then -- conteo de registros   
        
			SELECT 1            ;
         ELSE      
			SELECT ful_nom_it , COUNT(ful_item), concat('$', FORMAT (SUM(ful_valsel) ,0))
			FROM ics_fulldata WHERE ful_cl = CL AND ful_item =ITEMS
			GROUP  BY  ful_item; -- ORDER BY SUM(ful_valsel) DESC ;
		END IF;
	else
    
		IF NUM_REG = 1 THEN
			SELECT 1;                  
        ELSE           
			SELECT ful_nom_it , COUNT(ful_item),concat('$', format(SUM(ful_valsel) ,0))
			FROM ics_fulldata WHERE ful_cl = CL AND ful_item = ITEMS AND ful_fechacrea BETWEEN FI AND  FF
			GROUP  BY  ful_item ; --  ORDER BY SUM(ful_valsel)  DESC;
		END IF;
	end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI4_XUSR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI4_XUSR`(FI varchar(45), FF varchar(45), CL VARCHAR(45), VALOR VARCHAR(245),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN


DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;

IF VALOR = 'NA' THEN -- sin  filtro
	IF SUBSTRING(FI,1,10) = '0000-00-00' then
    
		IF num_rows = 1 then 
			SELECT count(distinct FDT.ful_idusu) FROM ics_fulldata FDT WHERE FDT.ful_cl = CL;
        ELSE		
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0))
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL  
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel) DESC LIMIT LIMITE, HASTA;        
        END IF;
	else
		IF num_rows = 1 then 
			 SELECT count(distinct FDT.ful_idusu) FROM ics_fulldata FDT WHERE FDT.ful_cl = CL  AND  ful_fechacrea BETWEEN FI AND FF ;
            -- select 69;
		ELSE	
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0))
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL AND  ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel) DESC LIMIT LIMITE, HASTA ;
		END IF;
	end if;
ELSE -- confiltro
	IF SUBSTRING(FI,1,10) = '0000-00-00' then
	
		if num_rows = 1 then 
        
         SELECT   COUNT(DISTINCT FDT.ful_idusu) FROM  ics_fulldata FDT WHERE    FDT.ful_cl = CL        AND FDT.ful_cc_usr = VALOR ;
        else
    
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0))
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL AND (FDT.ful_cc_usr IN (VALOR) OR FDT.ful_idusu IN (VALOR)) 
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel);
		
        end if;
        
	else
		
        if num_rows = 1 then
        
			SELECT COUNT(DISTINCT FDT.ful_idusu) FROM ics_fulldata FDT WHERE   FDT.ful_cl = CL  AND FDT.ful_cc_usr = VALOR  AND ful_fechacrea BETWEEN FI AND FF;
        
        else
    
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0))
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL AND (FDT.ful_cc_usr IN (VALOR) OR FDT.ful_idusu IN (VALOR)) AND ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel);
            
		end if;
	end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI4_XUSR_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI4_XUSR_SL`(FI varchar(45), FF varchar(45), CL VARCHAR(45), VALOR VARCHAR(245),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN


DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;

IF VALOR = 'NA' THEN -- sin  filtro
	IF substring(FI,1,10) = '0000-00-00' then
    
		IF num_rows = 1 then 
			SELECT count(distinct FDT.ful_idusu) FROM ics_fulldata FDT WHERE FDT.ful_cl = CL;
        ELSE		
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel), SUM(FDT.ful_valsel)
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL  
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel) DESC ;        
        END IF;
	else
		IF num_rows = 1 then 
			 SELECT count(distinct FDT.ful_idusu) FROM ics_fulldata FDT WHERE FDT.ful_cl = CL  AND  ful_fechacrea BETWEEN FI AND FF ;
            -- select 69;
		ELSE	
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),SUM(FDT.ful_valsel)
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL AND  ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel) DESC  ;
		END IF;
	end if;
ELSE -- confiltro
	IF substring(FI,1,10)  = '0000-00-00' then
	
		if num_rows = 1 then 
        
         SELECT   COUNT(DISTINCT FDT.ful_idusu) FROM  ics_fulldata FDT WHERE    FDT.ful_cl = CL        AND FDT.ful_cc_usr = VALOR ;
        else
    
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),SUM(FDT.ful_valsel)
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL AND (FDT.ful_cc_usr IN (VALOR) OR FDT.ful_idusu IN (VALOR)) 
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel);
		
        end if;
        
	else
		
        if num_rows = 1 then
        
			SELECT COUNT(DISTINCT FDT.ful_idusu) FROM ics_fulldata FDT WHERE   FDT.ful_cl = CL  AND FDT.ful_cc_usr = VALOR  AND ful_fechacrea BETWEEN FI AND FF;
        
        else
    
			SELECT FDT.ful_cc_usr,U.usu_nombre,FDT.ful_idusu,COUNT(FDT.ful_numsel),SUM(FDT.ful_valsel)
			FROM ics_fulldata FDT
			JOIN ics_usuario U ON U.usu_id_usuario_opera =FDT.ful_cc_usr and U.usu_client_creador= CL
			WHERE FDT.ful_cl = CL AND (FDT.ful_cc_usr IN (VALOR) OR FDT.ful_idusu IN (VALOR)) AND ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_idusu
			ORDER BY SUM(FDT.ful_valsel);
            
		end if;
	end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI50_LISTUSER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_VI50_LISTUSER`(CL VARCHAR(45), USR VARCHAR(254),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;


-- insert into errores(mens_cliente,variablex,paginicio,nurows) values (CL,USR,PARAM_PAG,num_rows);
if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;

if num_rows = 3 then

				SELECT U.usu_id_usuario_opera,U.usu_nombre,ID.IdA_Numero_Alias,CAR.car_nombre,CCS.cc_nombre
				FROM ics_usuario U
				JOIN ics_idalias_usuario ID ON U.usu_id_usuario_opera=ID.IdA_Identificacion_Usu
				JOIN ics_centro_costos CCS ON U.usu_centro_Costo=CCS.idics_centro_costos
				JOIN ics_usuario_cargo USCAR ON U.usu_id_usuario_opera=USCAR.fk_cedula_usuario 
				JOIN ics_cargos CAR ON USCAR.fk_id_cargo=CAR.id_cargos and USCAR.uc_Estado=1
				WHERE U.usu_client_creador=CL;
else
	IF USR = 'NA' THEN -- si no se filtra por usuario

		 if num_rows = 1 then
				SELECT count(*) FROM ics_idalias_usuario where IdA_cl=CL;
		 else
			SELECT U.usu_id_usuario_opera,U.usu_nombre,ID.IdA_Numero_Alias,CAR.car_nombre,CCS.cc_nombre
				FROM ics_usuario U
				JOIN ics_idalias_usuario ID ON U.usu_id_usuario_opera=ID.IdA_Identificacion_Usu
				JOIN ics_centro_costos CCS ON U.usu_centro_Costo=CCS.idics_centro_costos
				JOIN ics_usuario_cargo USCAR ON U.usu_id_usuario_opera=USCAR.fk_cedula_usuario 
				JOIN ics_cargos CAR ON USCAR.fk_id_cargo=CAR.id_cargos and USCAR.uc_Estado=1
				WHERE U.usu_client_creador=CL  ORDER BY U.usu_nombre ASC limit LIMITE, HASTA;
		end if;
	ELSE
		 if num_rows = 1 then
				SELECT count(*) FROM ics_idalias_usuario where IdA_cl=CL;
			 else
			SELECT U.usu_id_usuario_opera,U.usu_nombre,ID.IdA_Numero_Alias,CAR.car_nombre,CCS.cc_nombre
				FROM ics_usuario U
				JOIN ics_idalias_usuario ID ON U.usu_id_usuario_opera=ID.IdA_Identificacion_Usu
				JOIN ics_centro_costos CCS ON U.usu_centro_Costo=CCS.idics_centro_costos
				JOIN ics_usuario_cargo USCAR ON U.usu_id_usuario_opera=USCAR.fk_cedula_usuario 
				JOIN ics_cargos CAR ON USCAR.fk_id_cargo=CAR.id_cargos and USCAR.uc_Estado=1
				WHERE U.usu_client_creador=CL AND (ID.IdA_Numero_Alias IN (USR) OR U.usu_id_usuario_opera IN (USR)) ORDER BY U.usu_nombre ASC limit LIMITE, HASTA;
                
			END IF;
	end if;
    
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI5_CONSAREA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI5_CONSAREA`(FI varchar(45), FF varchar(45), CL VARCHAR(45), AREA VARCHAR(245),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN


DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;


IF AREA = 'NA' THEN  -- sin filtro

	if substring(FI,1,10) = '0000-00-00' THEN
    
		IF num_rows = 1 THEN
			SELECT count(distinct(FDT.ful_seccion)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL;        
        ELSE

			SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
			WHERE  FDT.ful_cl = CL   
			GROUP BY FDT.ful_seccion
			ORDER BY SUM(FDT.ful_valsel) DESC LIMIT LIMITE, HASTA;
		END IF;
	else -- con filtro de fecha
    
		IF num_rows = 1 THEN
    
			select count(distinct(FDT.ful_seccion)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF ;
    
		ELSE   
			SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
			WHERE FDT.ful_cl = CL AND  FDT.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_seccion
			ORDER BY SUM(FDT.ful_valsel) desc LIMIT LIMITE, HASTA;
		END IF;
	end if;

ELSE -- con filtro

if substring(FI,1,10) = '0000-00-00' then -- sin fecha

	IF num_rows = 1 THEN
    
		SELECT 1;
    
    ELSE

		SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0 )) 
		FROM   ics_fulldata FDT
		JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
		WHERE FDT.ful_cl = CL AND FDT.ful_seccion =AREA  
		GROUP BY FDT.ful_seccion order by SUM(FDT.ful_valsel) DESC LIMIT LIMITE, HASTA ;
        
	END IF;
else

	IF num_rows = 1 then
    
    select 1;
    
    else

		SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
		FROM   ics_fulldata FDT
		JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
		WHERE FDT.ful_cl = CL AND FDT.ful_seccion =AREA AND  FDT.ful_fechacrea BETWEEN FI AND FF 
		GROUP BY FDT.ful_seccion order by SUM(FDT.ful_valsel)  desc limit LIMITE, HASTA;
        
	end if;
END if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI5_CONSAREA_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`%` PROCEDURE `SP_VI5_CONSAREA_SL`(FI varchar(45), FF varchar(45), CL VARCHAR(45), AREA VARCHAR(245),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;


IF AREA = 'NA' THEN  -- sin filtro

	if substring(FI,1,10)= '0000-00-00' THEN
    
		IF num_rows = 1 THEN
			SELECT count(distinct(FDT.ful_seccion)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL;        
        ELSE

			SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
			WHERE  FDT.ful_cl = CL   
			GROUP BY FDT.ful_seccion
			ORDER BY SUM(FDT.ful_valsel) DESC ;
		END IF;
	else -- con filtro de fecha
    
		IF num_rows = 1 THEN
    
			select count(distinct(FDT.ful_seccion)) FROM   ics_fulldata FDT	WHERE FDT.ful_cl = CL and  FDT.ful_fechacrea BETWEEN FI AND FF ;
    
		ELSE   
			SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
			FROM   ics_fulldata FDT
			JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
			WHERE FDT.ful_cl = CL AND  FDT.ful_fechacrea BETWEEN FI AND FF 
			GROUP BY FDT.ful_seccion
			ORDER BY SUM(FDT.ful_valsel) desc ;
		END IF;
	end if;

ELSE -- con filtro

if substring(FI,1,10) = '0000-00-00' then -- sin fecha

	IF num_rows = 1 THEN
    
		SELECT 1;
    
    ELSE

		SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel),0 )) 
		FROM   ics_fulldata FDT
		JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
		WHERE FDT.ful_cl = CL AND FDT.ful_seccion =AREA  
		GROUP BY FDT.ful_seccion order by SUM(FDT.ful_valsel) DESC ;
        
	END IF;
else

	IF num_rows = 1 then
    
    select 1;
    
    else

		SELECT A.sec_Nombre , COUNT(FDT.ful_numsel),concat('$', FORMAT(SUM(FDT.ful_valsel)  ,0))
		FROM   ics_fulldata FDT
		JOIN   ics_seccion A ON FDT.ful_seccion=A.sec_id_seccion
		WHERE FDT.ful_cl = CL AND FDT.ful_seccion =AREA AND  FDT.ful_fechacrea BETWEEN FI AND FF 
		GROUP BY FDT.ful_seccion order by SUM(FDT.ful_valsel)  desc ;
        
	end if;
END if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI6_REC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI6_REC`(TIPO VARCHAR(45) ,FI varchar(45), FF varchar(45), CL VARCHAR(45), USUARIO VARCHAR(45),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;


CASE TIPO
WHEN 1	-- RECARGAS 
THEN

	if  substring(FI,1,10) = '0000-00-00' then

		SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Dispensadora,concat('$',FORMAT(ur.Ure_Valor_Recarga,0)), ur.Ure_Fecha
		FROM   ics_usuario_recarga ur
		JOIN ics_usuario u on u.usu_id_usuario_opera = ur.Ure_cc
		WHERE  ur.Ure_cli =  CL 
		ORDER BY ur.Ure_Valor_Recarga desc ;
	else
		SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.åUre_Dispensadora, concat('$',FORMAT(ur.Ure_Valor_Recarga,0)), ur.Ure_Fecha
		FROM   ics_usuario_recarga ur
		JOIN ics_usuario u on u.usu_id_usuario_opera = ur.Ure_cc
		WHERE  ur.Ure_cli =  CL and Ure_Fecha BETWEEN FI AND FF ORDER BY  ur.Ure_Valor_Recarga DESC;
	end if;
WHEN 2 -- RECARGAS CONSOLIDADO X USUARIO
THEN	

	if num_rows = 1 -- si solicita el numero de registros totales unicamente
    then 
		
    
			if substring(FI,1,10)  = '0000-00-00' then
            
				IF USUARIO != 'NA' THEN
				
						SELECT count(*)
					FROM   ics_usuario_recarga ur
					JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
					WHERE  ur.Ure_cli =  CL AND  u.usu_id_usuario_opera = USUARIO and  u.usu_client_creador = CL
					order by  ur.Ure_Fecha DESC ;
					
				ELSE
                
					SELECT count(*)
					FROM   ics_usuario_recarga ur
					JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
					WHERE  ur.Ure_cli =  CL and u.usu_client_creador = CL
					order by  ur.Ure_Fecha DESC ;
				
                END IF;
			
            else
            
				IF USUARIO != 'NA' THEN
				
					SELECT count(*)
					FROM   ics_usuario_recarga ur
					JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
					WHERE  ur.Ure_cli =  CL and u.usu_client_creador = CL AND  
                    Ure_Fecha BETWEEN FI AND FF and  u.usu_id_usuario_opera = USUARIO                     
					order by  ur.Ure_Fecha DESC ;       
					
				ELSE
					
                    	SELECT count(*)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  Ure_Fecha BETWEEN FI AND FF
				order by  ur.Ure_Fecha DESC            ;       
                    
				end if;
		
			END IF;
	else    
		if substring(FI,1,10)  = '0000-00-00' THEN
        
			IF USUARIO != 'NA' THEN 
                        
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Fecha,cast( ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  u.usu_id_usuario_opera = USUARIO
				order by  ur.Ure_Fecha DESC LIMIT LIMITE, HASTA;
				               
            ELSE    
        
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario, ur.Ure_Fecha, cast(ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
				order by  ur.Ure_Fecha DESC LIMIT LIMITE, HASTA;
                
			END IF;
            
		ELSE
			
            IF USUARIO = 'NA' THEN
        
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Fecha, cast(ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  Ure_Fecha BETWEEN FI AND FF
				order by  ur.Ure_Fecha DESC LIMIT LIMITE, HASTA;  
				
               
			ELSE
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Fecha, cast( ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  Ure_Fecha BETWEEN FI AND FF and  u.usu_id_usuario_opera = USUARIO 
				order by  ur.Ure_Fecha DESC LIMIT LIMITE, HASTA ;       
                
                
            END IF;
		end if;	
    end if;    
    
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI6_REC_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI6_REC_SL`(TIPO VARCHAR(45) ,FI varchar(45), FF varchar(45), CL VARCHAR(45), USUARIO VARCHAR(45),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;


CASE TIPO
WHEN 1	-- RECARGAS 
THEN

	if  substring(FI,1,10) = '0000-00-00' then

		SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Dispensadora,concat('$',FORMAT(ur.Ure_Valor_Recarga,0)), ur.Ure_Fecha
		FROM   ics_usuario_recarga ur
		JOIN ics_usuario u on u.usu_id_usuario_opera = ur.Ure_cc
		WHERE  ur.Ure_cli =  CL 
		ORDER BY ur.Ure_Valor_Recarga desc ;
	else
		SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Dispensadora,concat('$',FORMAT(ur.Ure_Valor_Recarga,0)), ur.Ure_Fecha
		FROM   ics_usuario_recarga ur
		JOIN ics_usuario u on u.usu_id_usuario_opera = ur.Ure_cc
		WHERE  ur.Ure_cli =  CL and Ure_Fecha BETWEEN FI AND FF ORDER BY  ur.Ure_Valor_Recarga DESC;
	end if;
WHEN 2 -- RECARGAS CONSOLIDADO X USUARIO
THEN	

	if num_rows = 1 -- si solicita el numero de registros totales unicamente
    then 
		
    
			if substring(FI,1,10)  = '0000-00-00' then
            
				IF USUARIO != 'NA' THEN
				
						SELECT count(*)
					FROM   ics_usuario_recarga ur
					JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
					WHERE  ur.Ure_cli =  CL 
                    and u.usu_client_creador = CL
                    AND  u.usu_id_usuario_opera = USUARIO
					order by  ur.Ure_Fecha DESC ;
					
				ELSE
                
					SELECT count(*)
					FROM   ics_usuario_recarga ur
					JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
					WHERE  ur.Ure_cli =  CL 
                    and u.usu_client_creador = CL
					order by  ur.Ure_Fecha DESC ;
				
                END IF;
			
            else
            
				IF USUARIO != 'NA' THEN
				
					SELECT count(*)
					FROM   ics_usuario_recarga ur
					JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
					WHERE  ur.Ure_cli =  CL 
                    and u.usu_client_creador = CL
                    AND  Ure_Fecha BETWEEN FI AND FF and  u.usu_id_usuario_opera = USUARIO 
					order by  ur.Ure_Fecha DESC ;       
					
				ELSE
					
                    	SELECT count(*)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  Ure_Fecha BETWEEN FI AND FF
				order by  ur.Ure_Fecha DESC            ;       
                    
				end if;
		
			END IF;
	else    
		if substring(FI,1,10)  = '0000-00-00' THEN
        
			IF USUARIO != 'NA' THEN 
                        
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Fecha,cast( ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  u.usu_id_usuario_opera = USUARIO
				order by  ur.Ure_Fecha DESC;
				               
            ELSE    
        
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario, ur.Ure_Fecha, cast(ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
				order by  ur.Ure_Fecha DESC ;
                
			END IF;
            
		ELSE
			
            IF USUARIO = 'NA' THEN
        
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Fecha, cast(ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  Ure_Fecha BETWEEN FI AND FF
				order by  ur.Ure_Fecha DESC ;  
				
               
			ELSE
				SELECT u.usu_id_usuario_opera,u.usu_nombre,ur.Ure_Id_Usuario,ur.Ure_Fecha, cast( ur.Ure_Valor_Recarga as unsigned)
				FROM   ics_usuario_recarga ur
				JOIN ics_usuario   u on u.usu_id_usuario_opera = ur.Ure_cc
				WHERE  ur.Ure_cli =  CL 
                and u.usu_client_creador = CL
                AND  Ure_Fecha BETWEEN FI AND FF and  u.usu_id_usuario_opera = USUARIO 
				order by  ur.Ure_Fecha DESC ;       
                
                
            END IF;
		end if;	
    end if;    
    
END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI7_CREDDISP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI7_CREDDISP`(CL VARCHAR(45), USR VARCHAR(254),PARAM_PAG int, num_rows int)
    DETERMINISTIC
BEGIN

DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 
then 
	set LIMITE =0; 
else 
	SET LIMITE = (PARAM_PAG*12);
end if;

SET HASTA = 12;

if num_rows = 3 then

SELECT U.usu_id_usuario_opera, U.usu_nombre , CV.Cve_IdUsuario,p.per_nombre_perf as perfil,CV.Cve_Credito
		FROM ics_controlventas CV
		JOIN ics_idalias_usuario ia ON ia.IdA_Numero_Alias	  = CV.Cve_IdUsuario 	and IdA_cl = CL
		JOIN ics_usuario U 			ON U.usu_id_usuario_opera = ia.IdA_Identificacion_Usu and usu_client_creador = CL        
        JOIN ics_usu_per up on ia.IdA_Numero_Alias = up. usp_fk_id_usu and usp_cl = CL
        JOIN ics_perfil p on p.per_id_perfil  = up.usp_fk_id_perfil and up.usp_estado = 1   and   per_cliente=CL
		WHERE CV.Cve_cl = CL ORDER BY U.usu_nombre ASC ;
else
	IF USR = 'NA' THEN -- si no se filtra por usuario

		 if num_rows = 1 then
				SELECT count(*) FROM ics_controlventas where Cve_cl =CL;
		 else
			SELECT U.usu_id_usuario_opera, U.usu_nombre , CV.Cve_IdUsuario,concat('$', FORMAT(p.per_nombre_perf,0)) as perfil,concat('$', FORMAT(CV.Cve_Credito,0 ))
			FROM ics_controlventas CV
			JOIN ics_idalias_usuario ia ON ia.IdA_Numero_Alias	  = CV.Cve_IdUsuario 	and IdA_cl = CL
			JOIN ics_usuario U 			ON U.usu_id_usuario_opera = ia.IdA_Identificacion_Usu and usu_client_creador = CL        
			JOIN ics_usu_per up on ia.IdA_Numero_Alias = up. usp_fk_id_usu and usp_cl = CL
			JOIN ics_perfil p on p.per_id_perfil  = up.usp_fk_id_perfil and up.usp_estado = 1   and   per_cliente=CL
			WHERE CV.Cve_cl = CL ORDER BY U.usu_nombre ASC limit LIMITE, HASTA;
		end if;
	ELSE
		 if num_rows = 1 then
				SELECT count(*) FROM ics_controlventas where Cve_cl =CL;
			 else
				SELECT U.usu_id_usuario_opera, U.usu_nombre , CV.Cve_IdUsuario,concat('$', FORMAT(p.per_nombre_perf,0)) as perfil,concat('$', FORMAT(CV.Cve_Credito,0 ))
			FROM ics_controlventas CV
			JOIN ics_idalias_usuario ia ON ia.IdA_Numero_Alias	  = CV.Cve_IdUsuario 	and IdA_cl = CL
			JOIN ics_usuario U 			ON U.usu_id_usuario_opera = ia.IdA_Identificacion_Usu and usu_client_creador = CL        
			JOIN ics_usu_per up on ia.IdA_Numero_Alias = up. usp_fk_id_usu and usp_cl = CL
			JOIN ics_perfil p on p.per_id_perfil  = up.usp_fk_id_perfil and up.usp_estado = 1   and   per_cliente=CL
			WHERE CV.Cve_cl = CL AND (CV.Cve_IdUsuario IN (USR) OR U.usu_id_usuario_opera IN (USR)) ORDER BY U.usu_nombre ASC   limit LIMITE, HASTA;
		END IF;
	end if;
    
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI8_PET` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI8_PET`(FI varchar(45), FF varchar(45), CL varchar(45), USR VARCHAR(225), PARAM_PAG INT,NUM_REG INT, tapp varchar(45))
    DETERMINISTIC
BEGIN
DECLARE LIMITE INT;
DECLARE HASTA INT;
if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*5)+1;
end if;
SET HASTA = 5;
if tapp = 3 -- eas 
then 

-- TRUNCA TABLA DE RECARGA 
TRUNCATE TABLE ics_recargas;

-- INSERT TABLA RECARGA
	
	INSERT INTO `ics_recargas`
(`usuario`,`cc`,`id`,`credito`)
(select up.usp_fk_id_usu , p.per_nombre_perf, u.usu_nombre, u.usu_id_usuario_opera   from ics_usu_per up
join ics_perfil p on  up.usp_fk_id_perfil  = p.per_id_perfil and usp_estado = 1
join ics_idalias_usuario au on up.usp_fk_id_usu = au.IdA_Numero_Alias 
join ics_usuario u on au. IdA_Identificacion_Usu = u. usu_id_usuario_opera);

-- 
IF USR = 'NA' THEN 
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE `fpe_cliente` = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) and `fpe_tipo` =1 ; -- eas ;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`,p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p 
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE `fpe_cliente` = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) and `fpe_tipo` =1 order by u.`usu_nombre` LIMIT LIMITE ,HASTA ;
		END IF;
	else
		if NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND DATE(`fpe_fecha`) BETWEEN FI and FF ;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`, p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL AND  (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) and DATE(`fpe_fecha`) BETWEEN FI and FF order by u.`usu_nombre` LIMIT LIMITE ,HASTA ;

		END IF;
	end if;
ELSE
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) ;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`, p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) order by u.`usu_nombre` LIMIT LIMITE ,HASTA ;
		END IF;
	else
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) AND DATE(`fpe_fecha`) BETWEEN FI and FF;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`, p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p
			join `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) AND DATE(`fpe_fecha`) BETWEEN FI and FF order by u.`usu_nombre` LIMIT LIMITE ,HASTA ;
		END IF;
	end if;
END IF;
else -- vend

IF USR = 'NA' THEN 
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  ;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp, P.pet_estad 	
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  LIMIT LIMITE ,HASTA ;
		END IF;
	else
		if NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  AND DATE(pet_fecha) BETWEEN FI and FF ;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp, P.pet_estad 	
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  AND DATE(pet_fecha) BETWEEN FI and FF order by U.`usu_nombre` LIMIT LIMITE ,HASTA ;

		END IF;
	end if;
ELSE
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) ;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp,P.pet_estad
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) order by U.`usu_nombre`  LIMIT LIMITE ,HASTA ;
		END IF;
	else
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) AND DATE(pet_fecha) BETWEEN FI and FF;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp, P.pet_estad
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) AND DATE(pet_fecha) BETWEEN FI and FF order by U.`usu_nombre` LIMIT LIMITE ,HASTA ;
		END IF;
	end if;
END IF;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI8_PET_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI8_PET_SL`(FI varchar(45), FF varchar(45), CL varchar(45), USR VARCHAR(225), PARAM_PAG INT,NUM_REG INT, tapp varchar(45))
    DETERMINISTIC
BEGIN
DECLARE LIMITE INT;
DECLARE HASTA INT;
if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*5)+1;
end if;
SET HASTA = 5;
if tapp = 3 -- eas 
then 
IF USR = 'NA' THEN 
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE `fpe_cliente` = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) and `fpe_tipo` =1 ; -- eas ;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`,p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p 
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE `fpe_cliente` = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) and `fpe_tipo` =1 order by u.`usu_nombre`  ;
		END IF;
	else
		if NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND DATE(`fpe_fecha`) BETWEEN FI and FF ;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`, p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL AND  (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) and DATE(`fpe_fecha`) BETWEEN FI and FF order by u.`usu_nombre`  ;

		END IF;
	end if;
ELSE
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) ;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`, p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) order by u.`usu_nombre`  ;
		END IF;
	else
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM `ics_full_peticion_` p
			join  `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) AND DATE(`fpe_fecha`) BETWEEN FI and FF;
		ELSE
			SELECT u.`usu_nombre`,p.`fpe_cc_usr`, p.`fk_fpe_id_usuario_pet`, p.`fk_fpe_serial_maq_pet`, p.`fpe_estado_peticion`
			FROM `ics_full_peticion_` p
			join `ics_usuario` u on u.`usu_id_usuario_opera` = p.fpe_cc_usr
			WHERE fpe_cliente = CL and (fpe_estado_peticion = 1 or fpe_estado_peticion = 0) AND (fk_fpe_id_usuario_pet IN (USR) OR fpe_cc_usr IN(USR)) AND DATE(`fpe_fecha`) BETWEEN FI and FF order by u.`usu_nombre` ;
		END IF;
	end if;
END IF;
else -- vend

IF USR = 'NA' THEN 
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  ;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp, P.pet_estad 	
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  LIMIT LIMITE ,HASTA ;
		END IF;
	else
		if NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  AND DATE(pet_fecha) BETWEEN FI and FF ;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp, P.pet_estad 	
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL  AND DATE(pet_fecha) BETWEEN FI and FF order by U.`usu_nombre` ;

		END IF;
	end if;
ELSE
	if FI = '0000-00-00' then
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) ;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp,P.pet_estad
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) order by U.`usu_nombre`   ;
		END IF;
	else
		IF NUM_REG = 1 THEN
			SELECT COUNT(*)
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) AND DATE(pet_fecha) BETWEEN FI and FF;
		ELSE
			SELECT U.usu_nombre,P.pet_cc_usuario,P.pet_id_usuario, P.pet_disp, P.pet_estad
			FROM ics_peticiones_huella P
			JOIN ics_usuario U on U.usu_id_usuario_opera = P.pet_cc_usuario
			WHERE pet_cl = CL AND (pet_id_usuario IN (USR) OR pet_cc_usuario IN(USR)) AND DATE(pet_fecha) BETWEEN FI and FF order by U.`usu_nombre` ;
		END IF;
	end if;
END IF;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI9_PETFALL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI9_PETFALL`(fi varchar(45), ff varchar(45),cl varchar(45), DISP VARCHAR(225), PARAM_PAG INT, numreg int)
    DETERMINISTIC
BEGIN
DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*12)+1;
end if;
SET HASTA = 12;

IF DISP  = 'NA' THEN
	if  SUBSTRING(fi,1,10) ='0000-00-00' then

		if numreg = 1 then
			select count(*)	
			from ics_full_peticion_ fp
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) ;	
		else
			select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
			from ics_full_peticion_ fp 
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) order by fp.fpe_fecha LIMIT LIMITE ,HASTA;	
		end if;
	else
		if numreg = 1 then
			select count(*)
			from ics_full_peticion_ fp 
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3)  and  fpe_fecha between fi and ff ;	
		else
			select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
			from ics_full_peticion_ fp 
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and  fpe_fecha between fi and ff order by fp.fpe_fecha  LIMIT LIMITE ,HASTA;	
		end if;
	end if;

ELSE 

if SUBSTRING(fi,1,10)  ='0000-00-00' then

	if numreg  = 1 then
		select count(*) from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and fp.fpe_cc_usr =DISP;
	else
		select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
		from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and fp.fpe_cc_usr =DISP order by fp.fpe_fecha  LIMIT LIMITE ,HASTA;
	end if;
else
	if numreg  = 1 then
			select COUNT(*)
		from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and fp.fpe_cc_usr =DISP AND  fpe_fecha between fi and ff ;
	ELSE
		select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
		from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and  fp.fpe_cc_usr =DISP AND  fpe_fecha between fi and ff order by fp.fpe_fecha  LIMIT LIMITE ,HASTA;
	END IF;
end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI9_PETFALL_SL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Userics`@`localhost` PROCEDURE `SP_VI9_PETFALL_SL`(fi varchar(45), ff varchar(45),cl varchar(45), DISP VARCHAR(225), PARAM_PAG INT, numreg int)
    DETERMINISTIC
BEGIN
DECLARE LIMITE INT;
DECLARE HASTA INT;

if PARAM_PAG = 0 then set LIMITE =0; else 
SET LIMITE = (PARAM_PAG*12)+1;
end if;
SET HASTA = 12;

IF DISP  = 'NA' THEN
	if SUBSTRING(fi,1,10) ='0000-00-00' then

		if numreg = 1 then
			select count(*)	
			from ics_full_peticion_ fp
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) ;	
		else
			select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
			from ics_full_peticion_ fp 
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) order by fp.fpe_fecha ;	
		end if;
	else
		if numreg = 1 then
			select count(*)
			from ics_full_peticion_ fp 
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3)  and  fpe_fecha between fi and ff ;	
		else
			select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
			from ics_full_peticion_ fp 
			join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
			where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and  fpe_fecha between fi and ff order by fp.fpe_fecha  ;	
		end if;
	end if;

ELSE 

if SUBSTRING(fi,1,10) ='0000-00-00' then

	if numreg  = 1 then
		select count(*) from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and fp.fpe_cc_usr =DISP;
	else
		select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
		from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and fp.fpe_cc_usr =DISP order by fp.fpe_fecha ;
	end if;
else
	if numreg  = 1 then
			select COUNT(*)
		from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and fp.fpe_cc_usr =DISP AND  fpe_fecha between fi and ff ;
	ELSE
		select fp.fpe_cc_usr AS cc,u.usu_nombre AS n,fp.fk_fpe_id_usuario_pet AS id,  fp.fk_fpe_serial_maq_pet AS m, fp.fpe_num_seleccion AS s, fp.fpe_fecha AS f
		from ics_full_peticion_ fp 
		join ics_usuario u ON u.usu_id_usuario_opera = fp.fpe_cc_usr	AND u.usu_client_creador = cl
		where fp.fpe_cliente = cl and (fpe_estado_peticion = 2 or fpe_estado_peticion = 3) and  fp.fpe_cc_usr =DISP AND  fpe_fecha between fi and ff order by fp.fpe_fecha ;
	END IF;
end if;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VI_ICS_MENSAJES_CLIENTES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VI_ICS_MENSAJES_CLIENTES`(m varchar(45))
    DETERMINISTIC
BEGIN

 select m.men_id_mensaje AS men_id_mensaje,mm.mme_nombre AS mme_nombre,mm.mme_descripcion_mens AS mme_descripcion_mens,c.Cat_Nombre_Categoria AS Cat_Nombre_Categoria,mq.maq_cl AS fk_dme_id_cliente,m.fk_men_serial_maq AS fk_men_serial_maq,m.men_fecha AS men_fecha,m.men_detalle AS men_detalle 
from ics_mensaje m 
join ics_maquinas mq 			on mq.maq_serial_maq 	= m.fk_men_serial_maq 
join ics_m_mensaje mm 			on m.fk_men_error 		= mm.mme_codigo 
join ics_categoria_mensaje c 	on c.idics_cate_mens 	= mm.mme_categoria 


join ics_det_mensaje dm on dm.fk_dme_serial_dispens = m.fk_men_serial_maq and dm.fk_dme_id_m_mensaje = mm.mme_id_m_mensaje and dm.dme_estado = 1 where m.men_estado = 1 and m.men_estado_de_envio = 0 and m.fk_men_serial_maq = m;

update ics_mensaje set men_estado_de_envio = 1 where fk_men_serial_maq = m;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vi_centro_costos`
--

/*!50001 DROP VIEW IF EXISTS `vi_centro_costos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_centro_costos` AS select `ics_centro_costos`.`idics_centro_costos` AS `idcentro`,`ics_centro_costos`.`cc_nombre` AS `nombrecentro`,`ics_centro_costos`.`cc_cl` AS `cliente` from `ics_centro_costos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_client_tipoapp`
--

/*!50001 DROP VIEW IF EXISTS `vi_client_tipoapp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_client_tipoapp` AS select `ics_sistem_conf`.`conf_tipo` AS `TIPO`,`ics_sistem_conf`.`conf_cliente` AS `IDCLIENT` from `ics_sistem_conf` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vi_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_clientes` AS select `ics_clientes`.`cli_id_cliente` AS `cli_id_cliente`,`ics_clientes`.`cli_nombre` AS `cli_nombre` from `ics_clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_compras_bi`
--

/*!50001 DROP VIEW IF EXISTS `vi_compras_bi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_compras_bi` AS select `fd`.`ful_idusu` AS `HUELLA`,`fd`.`ful_cc_usr` AS `CC`,`u`.`usu_nombre` AS `NOMBRE`,`ss`.`sbs_nombre` AS `SUBSECCION`,`s`.`sec_Nombre` AS `Area`,`fd`.`ful_numsel` AS `SELECCIóN`,`fd`.`ful_nom_it` AS `PRODUCTO`,`fd`.`ful_errores` AS `CANTIDAD`,cast(`fd`.`ful_valsel` as decimal(10,0)) AS `COSTO UNIT`,cast(`fd`.`ful_valsel` as decimal(10,0)) AS `COSTO TOTAL`,`fd`.`ful_idmaq` AS `DISPENSADORA`,`fd`.`ful_fechacrea` AS `FECHAC`,cast(`fd`.`ful_fechacrea` as date) AS `FECHA`,cast(`fd`.`ful_fechacrea` as time) AS `HORA` from (((`ics_fulldata` `fd` join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `fd`.`ful_cc_usr`))) join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `fd`.`ful_ss`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_consxuser`
--

/*!50001 DROP VIEW IF EXISTS `vi_consxuser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Userics`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_consxuser` AS select `fdt`.`ful_cc_usr` AS `ful_cc_usr`,`u`.`usu_nombre` AS `usu_nombre`,`fdt`.`ful_idusu` AS `ful_idusu`,`u`.`usu_departamento` AS `usu_departamento`,`u`.`usu_centro_Costo` AS `usu_centro_Costo`,count(`fdt`.`ful_numsel`) AS `cantidad`,sum(`fdt`.`ful_valsel`) AS `valor`,`fdt`.`ful_cl` AS `ful_cl` from (`ics_fulldata` `fdt` join `ics_usuario` `u` on(((`u`.`usu_id_usuario_opera` = `fdt`.`ful_cc_usr`) and (`u`.`usu_client_creador` = `fdt`.`ful_cl`)))) group by `fdt`.`ful_idusu` order by sum(`fdt`.`ful_valsel`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_departamentos`
--

/*!50001 DROP VIEW IF EXISTS `vi_departamentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_departamentos` AS select `ics_departamentos`.`idics_departamentos` AS `iddep`,`ics_departamentos`.`de_nombre` AS `nombredep`,`ics_departamentos`.`fk_centro_costo` AS `ccdep` from `ics_departamentos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_dispensadoras_1p`
--

/*!50001 DROP VIEW IF EXISTS `vi_dispensadoras_1p`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_dispensadoras_1p` AS select `fd`.`ful_idmaq` AS `ful_idmaq`,`mm`.`mar_descrip` AS `mar_descrip`,`ss`.`sbs_nombre` AS `sbs_nombre`,`fd`.`ful_valsel` AS `valor_sel`,`fd`.`ful_fechacrea` AS `ful_fechacrea`,`p`.`fk_punt_id_clien` AS `id_cliente` from (((((((`ics_fulldata` `fd` join `ics_maquinas` `m` on((`m`.`maq_serial_maq` = `fd`.`ful_idmaq`))) join `ics_marca_maq_` `mm` on((`mm`.`mar_id_marca_maq` = `m`.`fk_maq_marca_maqn`))) join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `m`.`fk_maq_punto_maqn`))) join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = `fd`.`ful_planom`) and (`dp`.`det_pln_numero_seleccion` = `fd`.`ful_numsel`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) join `ics_puntos` `p` on((`p`.`pun_id_punto` = `s`.`sec_fk_punto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_dispensadoras_2`
--

/*!50001 DROP VIEW IF EXISTS `vi_dispensadoras_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_dispensadoras_2` AS select `fd`.`ful_numsel` AS `ful_numsel`,`i`.`ite_id_item` AS `ite_id_item`,`i`.`ite_nom_item` AS `ite_nom_item`,`i`.`ite_valor` AS `ite_valor`,count(`fd`.`ful_numsel`) AS `cantidad`,(count(`fd`.`ful_numsel`) * `i`.`ite_valor`) AS `total`,max(`fd`.`ful_fechacrea`) AS `fecha`,`fd`.`ful_idmaq` AS `ful_idmaq`,`p`.`fk_punt_id_clien` AS `id_cliente` from ((((((`ics_fulldata` `fd` join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = `fd`.`ful_planom`) and (`dp`.`det_pln_numero_seleccion` = `fd`.`ful_numsel`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) join `ics_maquinas` `m` on((`m`.`maq_serial_maq` = `fd`.`ful_idmaq`))) join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `m`.`fk_maq_punto_maqn`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) join `ics_puntos` `p` on((`p`.`pun_id_punto` = `s`.`sec_fk_punto`))) group by `fd`.`ful_planom`,`fd`.`ful_numsel`,`fd`.`ful_idmaq` order by `cantidad` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_estado_maquina`
--

/*!50001 DROP VIEW IF EXISTS `vi_estado_maquina`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_estado_maquina` AS select `ci`.`cit_seleccion` AS `cit_seleccion`,`ci`.`cit_itemrestante` AS `cit_itemrestante`,`dp`.`det_minimo_item` AS `det_minimo_item`,`dp`.`det_maximo_item` AS `det_maximo_item`,((`ci`.`cit_itemrestante` * 100) / `dp`.`det_maximo_item`) AS `porcent`,`ci`.`fk_cit_iditem` AS `fk_cit_iditem`,`ci`.`fk_cit_idmaq` AS `maquina`,`ci`.`fk_cit_idplanometria` AS `planometria`,`i`.`ite_nom_item` AS `ite_nom_item` from ((`ics_control_items` `ci` join `ics_item` `i` on((`i`.`ite_id_item` = `ci`.`fk_cit_iditem`))) join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = `ci`.`fk_cit_idplanometria`) and (`dp`.`det_pln_numero_seleccion` = `ci`.`cit_seleccion`)))) where (`ci`.`cit_estado` = 1) order by cast(`ci`.`cit_seleccion` as unsigned) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_full_data`
--

/*!50001 DROP VIEW IF EXISTS `vi_full_data`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_full_data` AS select `fd`.`ful_idusu` AS `ful_idusu`,`fd`.`ful_numsel` AS `ful_numsel`,`i`.`ite_nom_item` AS `ite_nom_item`,`fd`.`ful_valsel` AS `ful_valsel`,`fd`.`ful_idmaq` AS `ful_idmaq`,`fd`.`ful_fechacrea` AS `ful_fechacrea`,`fd`.`ful_cl` AS `fk_punt_id_clien`,`u`.`usu_nombre` AS `usu_nombre` from ((`ics_fulldata` `fd` join `ics_item` `i` on((`i`.`ite_id_item` = `fd`.`ful_item`))) join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `fd`.`ful_cc_usr`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_cliente` AS select distinct `p`.`fk_punt_id_clien` AS `cli`,`m`.`maq_serial_maq` AS `ser_maq` from (((`ics_puntos` `p` join `ics_seccion` `s` on((`s`.`sec_fk_punto` = `p`.`pun_id_punto`))) join `ics_sub_seccion` `ss` on((`ss`.`sbs_fk_seccion` = `s`.`sec_id_seccion`))) join `ics_maquinas` `m` on((`m`.`fk_maq_punto_maqn` = `ss`.`sbs_id_subseccion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_cliente_maq`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_cliente_maq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Userics`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_cliente_maq` AS select `m`.`maq_serial_maq` AS `maq_serial_maq`,`m`.`maq_ref_maq` AS `maq_ref_maq`,`m`.`fk_maq_punto_maqn` AS `fk_maq_punto_maqn`,`c`.`cli_razon_social` AS `cli_razon_social`,`m`.`maq_cl` AS `cli_id_cliente`,`ics_marca_maq_`.`mar_descrip` AS `mar_descrip`,`ics_tipos_maq_`.`tip_descripcion_tipo` AS `tip_descripcion_tipo` from (((`ics_maquinas` `m` join `ics_clientes` `c` on((`c`.`cli_id_cliente` = `m`.`maq_cl`))) join `ics_marca_maq_` on((`m`.`fk_maq_marca_maqn` = `ics_marca_maq_`.`mar_id_marca_maq`))) join `ics_tipos_maq_` on((`m`.`fk_maq_tipo_maqn` = `ics_tipos_maq_`.`tip_id_tipo_maq`))) where (`m`.`maq_estado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_deta_planome`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_deta_planome`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_deta_planome` AS select `ics_detalle_plano`.`det_pln_numero_seleccion` AS `seleccion`,`ics_detalle_plano`.`det_maximo_item` AS `max_items`,`ics_detalle_plano`.`fk_id_item_det` AS `id_item`,`ics_detalle_plano`.`fk_id_plano_det` AS `idplano` from `ics_detalle_plano` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_firm_tarj`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_firm_tarj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_firm_tarj` AS select `f`.`fir_version` AS `version`,`f`.`fir_id_frirmware` AS `firm`,`t`.`fk_id_maquina` AS `maq` from (`ics_firmware` `f` join `ics_tarjetas_` `t` on((`t`.`fk_id_firmware` = `f`.`fir_id_frirmware`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_huella_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_huella_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_huella_perfil` AS select `u`.`usu_id_usuario` AS `usu_id_usuario`,`u`.`usu_id_usuario_opera` AS `usu_id_usuario_opera`,`u`.`usu_nombre` AS `usu_nombre`,`u`.`usu_codigo` AS `usu_codigo`,`c`.`id_cargos` AS `usu_cargo`,`a`.`IdA_Numero_Alias` AS `IdA_Numero_Alias`,`a`.`IdA_Estado_Enrolamiento` AS `IdA_Estado_Enrolamiento`,`a`.`IdA_Estado_Usuario` AS `IdA_Estado_Usuario`,`u`.`usu_correo` AS `usu_correo`,`a`.`IdA_cl` AS `cliente`,`u`.`usu_client_creador` AS `usu_client_creador`,`u`.`usu_centro_Costo` AS `usu_centro_Costo`,`u`.`usu_departamento` AS `usu_departamento` from (((`ics_usuario` `u` join `ics_idalias_usuario` `a` on((`a`.`IdA_Identificacion_Usu` = `u`.`usu_id_usuario_opera`))) join `ics_usuario_cargo` `uc` on(((`uc`.`fk_cedula_usuario` = `u`.`usu_id_usuario_opera`) and (`uc`.`uc_Estado` = 1)))) join `ics_cargos` `c` on((`c`.`id_cargos` = `uc`.`fk_id_cargo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_idalias`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_idalias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_idalias` AS select `ics_idalias_usuario`.`IdA_Identificacion_Usu` AS `IdA_Identificacion_Usu`,`ics_idalias_usuario`.`IdA_Numero_Alias` AS `IdA_Numero_Alias` from `ics_idalias_usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_item_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_item_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_item_perfil` AS select `dp`.`fk_det_id_item` AS `items`,`p`.`usp_fk_id_usu` AS `usuario` from (`ics_deta_perfil` `dp` join `ics_usu_per` `p` on(((`p`.`usp_fk_id_perfil` = `dp`.`fk_det_id_perf`) and (`p`.`usp_estado` = 1)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_item_usu`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_item_usu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_item_usu` AS select distinct `c`.`cit_itemrestante` AS `citem`,`c`.`fk_cit_idmaq` AS `maquinita`,`c`.`cit_seleccion` AS `seleccioni`,`mp`.`pla_estado` AS `estpla` from (`ics_control_items` `c` join `ics_maq_planometria` `mp` on(((`mp`.`Fk_pla_id_maq` = `c`.`fk_cit_idmaq`) and (`mp`.`pla_estado` = 1)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_maq_items`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_maq_items`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_maq_items` AS select `mp`.`Fk_pla_id_maq` AS `idmaquinna`,`dp`.`fk_id_item_det` AS `idtem` from (`ics_maq_planometria` `mp` join `ics_detalle_plano` `dp` on((`dp`.`fk_id_plano_det` = `mp`.`Fk_pla_id_plan`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_maq_tarj`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_maq_tarj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_maq_tarj` AS select `ics_tarjetas_`.`tar_id_tarjetas` AS `inter`,`ics_tarjetas_`.`fk_id_maquina` AS `maq` from `ics_tarjetas_` where (`ics_tarjetas_`.`fk_tipo_tarjeta` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_mensaj_clientes_desc`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_mensaj_clientes_desc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Userics`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_mensaj_clientes_desc` AS select `mm`.`mme_nombre` AS `mme_nombre`,`mm`.`mme_descripcion_mens` AS `mme_descripcion_mens`,`c`.`Cat_Nombre_Categoria` AS `Cat_Nombre_Categoria`,`mq`.`maq_cl` AS `fk_dme_id_cliente`,`m`.`fk_men_serial_maq` AS `fk_men_serial_maq`,`m`.`men_fecha` AS `men_fecha`,`m`.`men_detalle` AS `men_detalle` from ((((`ics_mensaje` `m` join `ics_maquinas` `mq` on((`mq`.`maq_serial_maq` = `m`.`fk_men_serial_maq`))) join `ics_m_mensaje` `mm` on((`m`.`fk_men_error` = `mm`.`mme_codigo`))) join `ics_categoria_mensaje` `c` on((`c`.`idics_cate_mens` = `mm`.`mme_categoria`))) join `ics_det_mensaje` `dm` on(((`dm`.`fk_dme_serial_dispens` = `m`.`fk_men_serial_maq`) and (`dm`.`fk_dme_id_m_mensaje` = `mm`.`mme_id_m_mensaje`) and (`dm`.`dme_estado` = 1)))) where (`m`.`men_estado` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_mensajes_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_mensajes_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_mensajes_clientes` AS select `m`.`men_id_mensaje` AS `men_id_mensaje`,`mm`.`mme_nombre` AS `mme_nombre`,`mm`.`mme_descripcion_mens` AS `mme_descripcion_mens`,`c`.`Cat_Nombre_Categoria` AS `Cat_Nombre_Categoria`,`mq`.`maq_cl` AS `fk_dme_id_cliente`,`m`.`fk_men_serial_maq` AS `fk_men_serial_maq`,`m`.`men_fecha` AS `men_fecha`,`m`.`men_detalle` AS `men_detalle` from ((((`ics_mensaje` `m` join `ics_maquinas` `mq` on((`mq`.`maq_serial_maq` = `m`.`fk_men_serial_maq`))) join `ics_m_mensaje` `mm` on((`m`.`fk_men_error` = `mm`.`mme_codigo`))) join `ics_categoria_mensaje` `c` on((`c`.`idics_cate_mens` = `mm`.`mme_categoria`))) join `ics_det_mensaje` `dm` on(((`dm`.`fk_dme_serial_dispens` = `m`.`fk_men_serial_maq`) and (`dm`.`fk_dme_id_m_mensaje` = `mm`.`mme_id_m_mensaje`) and (`dm`.`dme_estado` = 1)))) where (`m`.`men_estado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_min_esp`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_min_esp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_min_esp` AS select `dp`.`fk_id_plano_det` AS `planomet`,`dp`.`det_pln_numero_seleccion` AS `sel`,`dp`.`det_minimo_item` AS `min_item`,`mp`.`Fk_pla_id_maq` AS `maq`,`dp`.`det_maximo_item` AS `max` from (`ics_detalle_plano` `dp` join `ics_maq_planometria` `mp` on((`mp`.`Fk_pla_id_plan` = `dp`.`fk_id_plano_det`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_orden_compras`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_orden_compras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_orden_compras` AS select `ics_ordencompra`.`oco_idordenco` AS `id_orden_comp`,`ics_ordencompra`.`oco_tipoorden` AS `tipo_orden`,`ics_ordencompra`.`oco_serialmaq` AS `serial_mq`,`ics_ordencompra`.`oco_idcliente` AS `id_clie` from `ics_ordencompra` order by `ics_ordencompra`.`oco_idordenco` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_sel_perf`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_sel_perf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_sel_perf` AS select `ics_perfil`.`per_id_perfil` AS `per_id_perfil`,`ics_perfil`.`per_nombre_perf` AS `per_nombre_perf`,`ics_perfil`.`per_cliente` AS `per_cliente`,`ics_perfil`.`per_tipo` AS `per_tipo` from `ics_perfil` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ics_sum_item`
--

/*!50001 DROP VIEW IF EXISTS `vi_ics_sum_item`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ics_sum_item` AS select `c`.`cit_itemrestante` AS `suma`,`c`.`fk_cit_idplanometria` AS `planom`,`c`.`fk_cit_idmaq` AS `maquin` from (`ics_control_items` `c` join `ics_maq_planometria` `mp` on((`mp`.`Fk_pla_id_maq` = `c`.`fk_cit_idmaq`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_id_nom_items`
--

/*!50001 DROP VIEW IF EXISTS `vi_id_nom_items`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_id_nom_items` AS select `ics_item`.`ite_id_item` AS `ite_id_item`,`ics_item`.`ite_nom_item` AS `ite_nom_item` from `ics_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_item_dispensados`
--

/*!50001 DROP VIEW IF EXISTS `vi_item_dispensados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_item_dispensados` AS select `dp`.`fk_id_item_det` AS `fk_id_item_det`,count(`dp`.`fk_id_item_det`) AS `cantidad`,`i`.`ite_nom_item` AS `ite_nom_item`,`i`.`ite_valor` AS `ite_valor`,(count(`dp`.`fk_id_item_det`) * `i`.`ite_valor`) AS `Total`,max(`fd`.`ful_fechacrea`) AS `Fecha_Ultima_Disp`,`i`.`ite_cliente` AS `id_cliente`,`fd`.`ful_idmaq` AS `ful_idmaq`,max(`fd`.`ful_fechacrea`) AS `Fecha` from ((`ics_detalle_plano` `dp` join `ics_fulldata` `fd` on(((`fd`.`ful_planom` = `dp`.`fk_id_plano_det`) and (`fd`.`ful_numsel` = `dp`.`det_pln_numero_seleccion`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) group by `dp`.`fk_id_item_det`,`fd`.`ful_idmaq` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_item_menos_disp`
--

/*!50001 DROP VIEW IF EXISTS `vi_item_menos_disp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_item_menos_disp` AS select `fd`.`ful_idusu` AS `id_usuario`,`fd`.`ful_numsel` AS `numeroseleecio`,count(`fd`.`ful_numsel`) AS `suma`,`fd`.`ful_idmaq` AS `Maquina`,substr(`fd`.`ful_idusu`,1,2) AS `Cliente`,`m`.`fk_maq_punto_maqn` AS `punto`,(select `ics_control_items`.`fk_cit_iditem` from `ics_control_items` where (`ics_control_items`.`cit_seleccion` = `fd`.`ful_numsel`) group by `ics_control_items`.`cit_seleccion`) AS `Item`,(select `ics_item`.`ite_nom_item` from `ics_item` where (`ics_item`.`ite_id_item` = `Item`)) AS `Nombre_Item` from (`ics_fulldata` `fd` join `ics_maquinas` `m` on((`fd`.`ful_idmaq` = `m`.`maq_serial_maq`))) group by `fd`.`ful_numsel` order by sum(`fd`.`ful_numsel`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_item_prov`
--

/*!50001 DROP VIEW IF EXISTS `vi_item_prov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_item_prov` AS select `ics_item`.`ite_id_item` AS `ite_id_item`,`ics_item`.`ite_nom_item` AS `ite_nom_item`,`ics_item`.`ite_valor` AS `ite_valor`,`ics_item`.`fk_proveedor_ite` AS `fk_proveedor_ite` from `ics_item` group by `ics_item`.`ite_nom_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_maq_pun_clie`
--

/*!50001 DROP VIEW IF EXISTS `vi_maq_pun_clie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_maq_pun_clie` AS select `m`.`maq_serial_maq` AS `maq_serial_maq`,`m`.`maq_ref_maq` AS `maq_ref_maq`,`m`.`fk_maq_tipo_maqn` AS `fk_maq_tipo_maqn`,`m`.`fk_maq_marca_maqn` AS `fk_maq_marca_maqn`,`m`.`fk_maq_punto_maqn` AS `subseccion`,`m`.`maq_estado` AS `maq_estado`,`m`.`maq_img` AS `maq_img`,`ss`.`sbs_id_subseccion` AS `sbs_id_subseccion`,`ss`.`sbs_nombre` AS `sbs_nombre`,`p`.`fk_punt_id_clien` AS `fk_punt_id_clien`,`mm`.`mar_descrip` AS `mar_descrip`,`tm`.`tip_descripcion_tipo` AS `tip_descripcion_tipo` from (((((`ics_maquinas` `m` join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `m`.`fk_maq_punto_maqn`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) join `ics_puntos` `p` on((`s`.`sec_fk_punto` = `p`.`pun_id_punto`))) join `ics_marca_maq_` `mm` on((`m`.`fk_maq_marca_maqn` = `mm`.`mar_id_marca_maq`))) join `ics_tipos_maq_` `tm` on((`m`.`fk_maq_tipo_maqn` = `tm`.`tip_id_tipo_maq`))) where (`m`.`maq_estado` = 1) order by `ss`.`sbs_nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_maq_punto_cli`
--

/*!50001 DROP VIEW IF EXISTS `vi_maq_punto_cli`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_maq_punto_cli` AS select sum(`fd`.`ful_valsel`) AS `suma`,`fd`.`ful_idmaq` AS `maquina`,`m`.`maq_cl` AS `Cliente`,`m`.`fk_maq_punto_maqn` AS `punto` from (`ics_fulldata` `fd` join `ics_maquinas` `m` on((`fd`.`ful_idmaq` = `m`.`maq_serial_maq`))) group by `fd`.`ful_idmaq` order by sum(`fd`.`ful_valsel`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_maq_punto_cli_men`
--

/*!50001 DROP VIEW IF EXISTS `vi_maq_punto_cli_men`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_maq_punto_cli_men` AS select sum(`fd`.`ful_valsel`) AS `suma`,`fd`.`ful_idmaq` AS `maquina`,`m`.`maq_cl` AS `Cliente`,`m`.`fk_maq_punto_maqn` AS `punto` from (`ics_fulldata` `fd` join `ics_maquinas` `m` on((`fd`.`ful_idmaq` = `m`.`maq_serial_maq`))) group by `fd`.`ful_idmaq` order by sum(`fd`.`ful_valsel`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_maquina_producto`
--

/*!50001 DROP VIEW IF EXISTS `vi_maquina_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_maquina_producto` AS select `fd`.`ful_idmaq` AS `ful_idmaq`,count(`fd`.`ful_numsel`) AS `cantidad`,`fd`.`ful_numsel` AS `ful_numsel`,`fd`.`ful_valsel` AS `ite_valor`,(count(`fd`.`ful_numsel`) * `fd`.`ful_valsel`) AS `valor_total`,`i`.`ite_nom_item` AS `ite_nom_item`,max(`fd`.`ful_fechacrea`) AS `fecha`,`i`.`ite_cliente` AS `id_cliente` from ((`ics_fulldata` `fd` join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = (select `ics_maq_planometria`.`Fk_pla_id_plan` from `ics_maq_planometria` where ((`ics_maq_planometria`.`Fk_pla_id_maq` = `fd`.`ful_idmaq`) and (`ics_maq_planometria`.`pla_estado` = 1)))) and (`dp`.`det_pln_numero_seleccion` = `fd`.`ful_numsel`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) group by `fd`.`ful_numsel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_marca_maq`
--

/*!50001 DROP VIEW IF EXISTS `vi_marca_maq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_marca_maq` AS select `ics_marca_maq_`.`mar_descrip` AS `mar_descrip`,`ics_maquinas`.`maq_serial_maq` AS `maq_serial_maq`,`ics_maquinas`.`maq_ref_maq` AS `maq_ref_maq`,`ics_clientes`.`cli_nombre` AS `cli_nombre`,`ics_clientes`.`cli_documento` AS `cli_documento`,`ics_puntos`.`pun_nombre` AS `pun_nombre`,`ics_puntos`.`pun_id_punto` AS `pun_id_punto` from (((`ics_marca_maq_` join `ics_maquinas` on((`ics_maquinas`.`fk_maq_marca_maqn` = `ics_marca_maq_`.`mar_id_marca_maq`))) join `ics_puntos` on((`ics_puntos`.`pun_id_punto` = `ics_maquinas`.`fk_maq_punto_maqn`))) join `ics_clientes` on((`ics_clientes`.`cli_id_cliente` = `ics_puntos`.`fk_punt_id_clien`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_mens_configurados`
--

/*!50001 DROP VIEW IF EXISTS `vi_mens_configurados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_mens_configurados` AS select `mm`.`mme_codigo` AS `mme_codigo`,`dm`.`dme_id_det_mensaje` AS `dme_id_det_mensaje`,`dm`.`fk_dme_serial_dispens` AS `seriald` from (`ics_det_mensaje` `dm` join `ics_m_mensaje` `mm` on((`dm`.`fk_dme_id_m_mensaje` = `mm`.`mme_id_m_mensaje`))) where (`dm`.`dme_estado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_prod_xcl`
--

/*!50001 DROP VIEW IF EXISTS `vi_prod_xcl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_prod_xcl` AS select `ics_item`.`ite_id_item` AS `ite_id_item`,`ics_item`.`ite_nom_item` AS `ite_nom_item`,`ics_item`.`ite_cliente` AS `ite_cliente` from `ics_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_productos_1`
--

/*!50001 DROP VIEW IF EXISTS `vi_productos_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_productos_1` AS select `i`.`ite_nom_item` AS `ite_nom_item`,`i`.`ite_valor` AS `ite_valor`,count(`i`.`ite_id_item`) AS `cantidad`,(`i`.`ite_valor` * count(`i`.`ite_id_item`)) AS `total`,`fd`.`ful_fechacrea` AS `Fecha` from ((`ics_fulldata` `fd` join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = `fd`.`ful_planom`) and (`dp`.`det_pln_numero_seleccion` = `fd`.`ful_numsel`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) group by `i`.`ite_id_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_productos_1p`
--

/*!50001 DROP VIEW IF EXISTS `vi_productos_1p`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_productos_1p` AS select `i`.`ite_nom_item` AS `ite_nom_item`,`i`.`ite_valor` AS `ite_valor`,`i`.`ite_id_item` AS `ite_id_item`,`fd`.`ful_fechacrea` AS `Fecha`,`i`.`ite_cliente` AS `cliente`,`fd`.`ful_idmaq` AS `ful_idmaq` from ((`ics_fulldata` `fd` join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = `fd`.`ful_planom`) and (`dp`.`det_pln_numero_seleccion` = `fd`.`ful_numsel`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_productos_caterin`
--

/*!50001 DROP VIEW IF EXISTS `vi_productos_caterin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_productos_caterin` AS select `ics_item_c`.`ite_id_item` AS `ite_id_item`,`ics_item_c`.`ite_nom_item` AS `ite_nom_item` from `ics_item_c` order by `ics_item_c`.`ite_nom_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_prov_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vi_prov_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_prov_cliente` AS select `ics_item`.`ite_id_item` AS `ite_id_item`,`ics_item`.`ite_nom_item` AS `ite_nom_item`,`ics_item`.`fk_proveedor_ite` AS `fk_proveedor_ite`,`ics_perfil`.`per_cliente` AS `per_cliente` from ((`ics_item` join `ics_deta_perfil` on((`ics_item`.`ite_id_item` = `ics_deta_perfil`.`fk_det_id_item`))) join `ics_perfil` on((`ics_perfil`.`per_id_perfil` = `ics_deta_perfil`.`fk_det_id_perf`))) group by `ics_item`.`ite_id_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_prov_maq_usu`
--

/*!50001 DROP VIEW IF EXISTS `vi_prov_maq_usu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_prov_maq_usu` AS select `ics_proveedor_maq_`.`pro_maq_id_proveedor` AS `ID_proveedor`,`ics_proveedor_maq_`.`pro_maq_nombre` AS `Nombre_provee`,`ics_clientes`.`cli_id_cliente` AS `cliente` from ((((`ics_proveedor_maq_` join `ics_marca_maq_` on((`ics_marca_maq_`.`fk_mar_id_proveedor` = `ics_proveedor_maq_`.`pro_maq_id_proveedor`))) join `ics_maquinas` on((`ics_maquinas`.`fk_maq_marca_maqn` = `ics_marca_maq_`.`mar_id_marca_maq`))) join `ics_puntos` on((`ics_puntos`.`pun_id_punto` = `ics_maquinas`.`fk_maq_punto_maqn`))) join `ics_clientes` on((`ics_clientes`.`cli_id_cliente` = `ics_puntos`.`fk_punt_id_clien`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_provedores_maq`
--

/*!50001 DROP VIEW IF EXISTS `vi_provedores_maq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_provedores_maq` AS select `ics_proveedor_maq_`.`pro_maq_id_proveedor` AS `idprovee`,`ics_proveedor_maq_`.`pro_maq_razon_soc` AS `razon` from `ics_proveedor_maq_` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_puntos`
--

/*!50001 DROP VIEW IF EXISTS `vi_puntos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_puntos` AS select `ics_puntos`.`pun_id_punto` AS `idpun`,`ics_puntos`.`pun_nombre` AS `nombre` from `ics_puntos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_seccion_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vi_seccion_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_seccion_cliente` AS select `s`.`sec_id_seccion` AS `ID_SECCION`,`s`.`sec_Nombre` AS `NOM_SECCION`,`p`.`fk_punt_id_clien` AS `ID_CLIENTE` from (`ics_seccion` `s` join `ics_puntos` `p` on((`p`.`pun_id_punto` = `s`.`sec_fk_punto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_seccion_us_bi`
--

/*!50001 DROP VIEW IF EXISTS `vi_seccion_us_bi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_seccion_us_bi` AS select `fd`.`ful_cc_usr` AS `USUARIO`,`s`.`sec_Nombre` AS `SECCION`,`fd`.`ful_fechacrea` AS `FECHA` from ((`ics_fulldata` `fd` join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `fd`.`ful_ss`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_status_bi`
--

/*!50001 DROP VIEW IF EXISTS `vi_status_bi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_status_bi` AS select sum(`p`.`pla_nivel_max`) AS `x`,(select count(0) from `ics_fulldata` `fd` where ((month(`fd`.`ful_fechacrea`) = month((curdate() - interval 1 month))) and (year(`fd`.`ful_fechacrea`) = year((curdate() - interval 1 month))))) AS `CANTIDAD_V`,round(((select count(0) from `ics_fulldata` `fd` where ((month(`fd`.`ful_fechacrea`) = month((curdate() - interval 1 month))) and ((year(`fd`.`ful_fechacrea`) = year((curdate() - interval 1 month))) * 100))) / sum(`p`.`pla_nivel_max`)),0) AS `PORC_VENT_OK`,(select count(0) from `ics_full_peticion_` `fp` where ((month(`fp`.`fpe_fecha`) = month((curdate() - interval 1 month))) and (year(`fp`.`fpe_fecha`) = year((curdate() - interval 1 month))))) AS `CANTIDAD_F`,round(((select count(0) from `ics_full_peticion_` `fp` where ((month(`fp`.`fpe_fecha`) = month((curdate() - interval 1 month))) and ((year(`fp`.`fpe_fecha`) = year((curdate() - interval 1 month))) * 100))) / sum(`p`.`pla_nivel_max`)),0) AS `PORC_VENT_FALL`,(select count(`ics_idalias_usuario`.`IdA_Numero_Alias`) from `ics_idalias_usuario` where (`ics_idalias_usuario`.`IdA_Estado_Usuario` = 1)) AS `CANT_USR`,(select count(distinct `ics_fulldata`.`ful_idusu`) from `ics_fulldata` where ((month(`ics_fulldata`.`ful_fechacrea`) = month((curdate() - interval 1 month))) and (year(`ics_fulldata`.`ful_fechacrea`) = year((curdate() - interval 1 month))))) AS `CANT_USR_CONS`,round((((select count(distinct `ics_fulldata`.`ful_idusu`) from `ics_fulldata` where ((month(`ics_fulldata`.`ful_fechacrea`) = month((curdate() - interval 1 month))) and (year(`ics_fulldata`.`ful_fechacrea`) = year((curdate() - interval 1 month))))) * 100) / (select count(`ics_idalias_usuario`.`IdA_Numero_Alias`) from `ics_idalias_usuario` where (`ics_idalias_usuario`.`IdA_Estado_Usuario` = 1))),0) AS `PORC_USR` from (`ics_planometria` `p` join `ics_maq_planometria` `mpl` on(((`mpl`.`Fk_pla_id_plan` = `p`.`idics_planometria`) and (`mpl`.`pla_estado` = 1) and `mpl`.`Fk_pla_id_maq`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_status_ma_bi`
--

/*!50001 DROP VIEW IF EXISTS `vi_status_ma_bi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_status_ma_bi` AS select sum(`p`.`pla_nivel_max`) AS `x`,(select count(0) from `ics_fulldata` `fd` where ((month(`fd`.`ful_fechacrea`) = month(curdate())) and (year(`fd`.`ful_fechacrea`) = year(curdate())))) AS `CANTIDAD_V`,round(((select count(0) from `ics_fulldata` `fd` where ((month(`fd`.`ful_fechacrea`) = month(curdate())) and ((year(`fd`.`ful_fechacrea`) = year(curdate())) * 100))) / sum(`p`.`pla_nivel_max`)),0) AS `PORC_VENT_OK`,(select count(0) from `ics_full_peticion_` `fp` where ((month(`fp`.`fpe_fecha`) = month(curdate())) and (year(`fp`.`fpe_fecha`) = year(curdate())))) AS `CANTIDAD_F`,round(((select count(0) from `ics_full_peticion_` `fp` where ((month(`fp`.`fpe_fecha`) = month(curdate())) and ((year(`fp`.`fpe_fecha`) = year(curdate())) * 100))) / sum(`p`.`pla_nivel_max`)),0) AS `PORC_VENT_FALL`,(select count(`ics_idalias_usuario`.`IdA_Numero_Alias`) from `ics_idalias_usuario` where (`ics_idalias_usuario`.`IdA_Estado_Usuario` = 1)) AS `CANT_USR`,(select count(distinct `ics_fulldata`.`ful_idusu`) from `ics_fulldata` where ((month(`ics_fulldata`.`ful_fechacrea`) = month(curdate())) and (year(`ics_fulldata`.`ful_fechacrea`) = year(curdate())))) AS `CANT_USR_CONS`,round((((select count(distinct `ics_fulldata`.`ful_idusu`) from `ics_fulldata` where ((month(`ics_fulldata`.`ful_fechacrea`) = month(curdate())) and (year(`ics_fulldata`.`ful_fechacrea`) = year(curdate())))) * 100) / (select count(`ics_idalias_usuario`.`IdA_Numero_Alias`) from `ics_idalias_usuario` where (`ics_idalias_usuario`.`IdA_Estado_Usuario` = 1))),0) AS `PORC_USR` from (`ics_planometria` `p` join `ics_maq_planometria` `mpl` on(((`mpl`.`Fk_pla_id_plan` = `p`.`idics_planometria`) and (`mpl`.`pla_estado` = 1) and `mpl`.`Fk_pla_id_maq`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_subseccion_1`
--

/*!50001 DROP VIEW IF EXISTS `vi_subseccion_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_subseccion_1` AS select `fd`.`ful_idmaq` AS `ful_idmaq`,`ss`.`sbs_nombre` AS `sbs_nombre`,`ss`.`sbs_id_subseccion` AS `sbs_id_subseccion`,`fd`.`ful_idusu` AS `ful_idusu`,`fd`.`ful_valsel` AS `valor`,`u`.`usu_nombre` AS `usu_nombre`,`i`.`ite_nom_item` AS `ite_nom_item`,`p`.`fk_punt_id_clien` AS `id_cliente`,`fd`.`ful_fechacrea` AS `ful_fechacrea` from ((((((((`ics_fulldata` `fd` join `ics_maquinas` `m` on((`m`.`maq_serial_maq` = `fd`.`ful_idmaq`))) join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `m`.`fk_maq_punto_maqn`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) join `ics_puntos` `p` on((`p`.`pun_id_punto` = `s`.`sec_fk_punto`))) join `ics_detalle_plano` `dp` on(((`dp`.`fk_id_plano_det` = `fd`.`ful_planom`) and (`dp`.`det_pln_numero_seleccion` = `fd`.`ful_numsel`)))) join `ics_item` `i` on((`i`.`ite_id_item` = `dp`.`fk_id_item_det`))) join `ics_idalias_usuario` `au` on((`au`.`IdA_Numero_Alias` = `fd`.`ful_idusu`))) join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `au`.`IdA_Identificacion_Usu`))) order by `fd`.`ful_idmaq`,`ss`.`sbs_nombre` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_tar_maq`
--

/*!50001 DROP VIEW IF EXISTS `vi_tar_maq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_tar_maq` AS select `ics_tarjetas_`.`tar_id_tarjetas` AS `tar_id_tarjetas`,`ics_tarjetas_`.`fk_id_maquina` AS `fk_id_maquina`,`p`.`pun_id_punto` AS `punto`,`c`.`cli_id_cliente` AS `cli_id_cliente` from (((`ics_tarjetas_` join `ics_maquinas` `m` on((`ics_tarjetas_`.`fk_id_maquina` = `m`.`maq_serial_maq`))) join `ics_puntos` `p` on((`p`.`pun_id_punto` = `m`.`fk_maq_punto_maqn`))) join `ics_clientes` `c` on((`c`.`cli_id_cliente` = `p`.`fk_punt_id_clien`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ult_trama`
--

/*!50001 DROP VIEW IF EXISTS `vi_ult_trama`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Userics`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ult_trama` AS select `ics_log`.`log_maq` AS `nserie`,max(`ics_log`.`log_fecha`) AS `ult_fecha` from `ics_log` group by `ics_log`.`log_maq` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usu_cl_punto_maq`
--

/*!50001 DROP VIEW IF EXISTS `vi_usu_cl_punto_maq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usu_cl_punto_maq` AS select `fd`.`ful_idusu` AS `id_usuario`,sum(`fd`.`ful_valsel`) AS `suma`,`fd`.`ful_idmaq` AS `Maquina`,`m`.`maq_cl` AS `Cliente`,`m`.`fk_maq_punto_maqn` AS `punto` from (`ics_fulldata` `fd` join `ics_maquinas` `m` on((`fd`.`ful_idmaq` = `m`.`maq_serial_maq`))) group by `fd`.`ful_idusu` order by sum(`fd`.`ful_valsel`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usu_desac_up`
--

/*!50001 DROP VIEW IF EXISTS `vi_usu_desac_up`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usu_desac_up` AS select `au`.`IdA_Numero_Alias` AS `IdA_Numero_Alias`,`u`.`usu_id_usuario_opera` AS `usu_id_usuario_opera`,`u`.`usu_nombre` AS `usu_nombre`,`c`.`car_nombre` AS `car_nombre` from (((`ics_usuario` `u` join `ics_idalias_usuario` `au` on((`au`.`IdA_Identificacion_Usu` = `u`.`usu_id_usuario_opera`))) join `ics_usuario_cargo` `uc` on((`uc`.`fk_cedula_usuario` = `u`.`usu_id_usuario_opera`))) join `ics_cargos` `c` on(((`c`.`id_cargos` = `uc`.`fk_id_cargo`) and (`uc`.`uc_Estado` = 1)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usu_men_cl_punto_maq`
--

/*!50001 DROP VIEW IF EXISTS `vi_usu_men_cl_punto_maq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usu_men_cl_punto_maq` AS select `fd`.`ful_idusu` AS `id_usuario`,sum(`fd`.`ful_valsel`) AS `suma`,`fd`.`ful_idmaq` AS `Maquina`,`m`.`maq_cl` AS `Cliente`,`m`.`fk_maq_punto_maqn` AS `punto` from (`ics_fulldata` `fd` join `ics_maquinas` `m` on((`fd`.`ful_idmaq` = `m`.`maq_serial_maq`))) group by `fd`.`ful_idusu` order by sum(`fd`.`ful_valsel`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usuario_items`
--

/*!50001 DROP VIEW IF EXISTS `vi_usuario_items`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usuario_items` AS select `fd`.`ful_idusu` AS `ful_idusu`,`fd`.`ful_idmaq` AS `ful_idmaq`,`fd`.`ful_numsel` AS `sel`,`fd`.`ful_fechacrea` AS `ful_fechacrea`,`au`.`IdA_Identificacion_Usu` AS `IdA_Identificacion_Usu`,`u`.`usu_nombre` AS `usu_nombre`,`u`.`usu_id_usuario_opera` AS `cc`,`u`.`usu_client_creador` AS `id_cliente` from ((`ics_fulldata` `fd` join `ics_idalias_usuario` `au` on((`au`.`IdA_Numero_Alias` = `fd`.`ful_idusu`))) join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `au`.`IdA_Identificacion_Usu`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usuario_items2`
--

/*!50001 DROP VIEW IF EXISTS `vi_usuario_items2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usuario_items2` AS select `fd`.`ful_idusu` AS `ful_idusu`,`fd`.`ful_idmaq` AS `ful_idmaq`,`fd`.`ful_numsel` AS `sel`,`fd`.`ful_fechacrea` AS `ful_fechacrea`,`au`.`IdA_Identificacion_Usu` AS `IdA_Identificacion_Usu`,`u`.`usu_nombre` AS `usu_nombre`,`u`.`usu_id_usuario_opera` AS `cc`,`u`.`usu_client_creador` AS `id_cliente`,`i`.`ite_nom_item` AS `ite_nom_item` from (((`ics_fulldata` `fd` join `ics_idalias_usuario` `au` on((`au`.`IdA_Numero_Alias` = `fd`.`ful_idusu`))) join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `au`.`IdA_Identificacion_Usu`))) join `ics_item` `i` on((`i`.`ite_id_item` = `fd`.`ful_item`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usuario_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vi_usuario_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usuario_perfil` AS select `u`.`usu_id_usuario_opera` AS `usu_id_usuario_opera`,`u`.`usu_nombre` AS `usu_nombre`,`u`.`usu_centro_Costo` AS `usu_centro_Costo`,`p`.`per_nombre_perf` AS `per_nombre_perf` from ((`ics_usuario` `u` join `ics_usu_per` `up` on((`up`.`usp_fk_id_usu` = `u`.`usu_id_usuario_opera`))) join `ics_perfil` `p` on((`p`.`per_id_perfil` = `up`.`usp_fk_id_perfil`))) where (`up`.`usp_estado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_usuarios_opera`
--

/*!50001 DROP VIEW IF EXISTS `vi_usuarios_opera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_usuarios_opera` AS select `ics_idalias_usuario`.`IdA_Numero_Alias` AS `usu_id_usuario_opera` from `ics_idalias_usuario` where (`ics_idalias_usuario`.`IdA_Estado_Usuario` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_venta_fall`
--

/*!50001 DROP VIEW IF EXISTS `vi_venta_fall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_venta_fall` AS select `u`.`usu_nombre` AS `n`,`fp`.`fk_fpe_id_usuario_pet` AS `id`,`fp`.`fpe_num_seleccion` AS `s`,`fp`.`fk_fpe_serial_maq_pet` AS `m`,`fp`.`fpe_cliente` AS `cl`,`fp`.`fpe_cc_usr` AS `cc`,`fp`.`fpe_fecha` AS `f` from (`ics_full_peticion_` `fp` join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `fp`.`fpe_cc_usr`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ventas_bi`
--

/*!50001 DROP VIEW IF EXISTS `vi_ventas_bi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ventas_bi` AS select `ss`.`sbs_nombre` AS `SUB_AREA`,`s`.`sec_Nombre` AS `AREA`,`fd`.`ful_numsel` AS `SELECCIÓN`,`fd`.`ful_nom_it` AS `DESCRIPCION`,`fd`.`ful_errores` AS `CANTIDAD`,cast(`fd`.`ful_valsel` as decimal(10,0)) AS `COSTO_UNIT`,`fd`.`ful_idmaq` AS `DISPENSADORA`,cast(`fd`.`ful_fechacrea` as date) AS `FECHA`,`fd`.`ful_fechacrea` AS `FECHAC`,`fd`.`ful_cl` AS `CL`,`fd`.`ful_tipoapp` AS `TAPP`,`i`.`ite_codigo` AS `CODIGO` from (((`ics_fulldata` `fd` join `ics_item` `i` on((`i`.`ite_id_item` = `fd`.`ful_item`))) join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `fd`.`ful_ss`))) join `ics_seccion` `s` on((`s`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vi_ventas_eas`
--

/*!50001 DROP VIEW IF EXISTS `vi_ventas_eas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_ventas_eas` AS select `ss`.`sbs_nombre` AS `SUBSECCION`,`a`.`sec_Nombre` AS `Area`,`f`.`ful_numsel` AS `SELECCIÓN`,`f`.`ful_nom_it` AS `DESCRIPCION`,`f`.`ful_errores` AS `CANTIDAD`,cast(`f`.`ful_valsel` as decimal(10,0)) AS `COSTO_UNIT`,`f`.`ful_idmaq` AS `DISPENSADORA`,cast(`f`.`ful_fechacrea` as date) AS `FECHA`,`f`.`ful_fechacrea` AS `FECHAC`,`f`.`ful_cl` AS `CL`,`f`.`ful_tipoapp` AS `TAPP`,`u`.`usu_nombre` AS `NOMBRE`,`f`.`ful_cc_usr` AS `CEDULA`,`f`.`ful_idusu` AS `ID_HUELLA` from (((`ics_fulldata` `f` join `ics_sub_seccion` `ss` on((`ss`.`sbs_id_subseccion` = `f`.`ful_ss`))) join `ics_seccion` `a` on((`a`.`sec_id_seccion` = `ss`.`sbs_fk_seccion`))) join `ics_usuario` `u` on((`u`.`usu_id_usuario_opera` = `f`.`ful_cc_usr`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vis_cantid_trans`
--

/*!50001 DROP VIEW IF EXISTS `vis_cantid_trans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vis_cantid_trans` AS select `ics_fulldata`.`ful_idusu` AS `usu`,`ics_fulldata`.`ful_idmaq` AS `maq` from `ics_fulldata` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vis_ics_item_restante`
--

/*!50001 DROP VIEW IF EXISTS `vis_ics_item_restante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vis_ics_item_restante` AS select `ci`.`cit_idcontrol` AS `idcontro`,`ci`.`cit_itemrestante` AS `nitem`,`ci`.`fk_cit_idmaq` AS `maq`,`ci`.`cit_seleccion` AS `selec` from `ics_control_items` `ci` where (`ci`.`cit_estado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vis_ics_oco_doc`
--

/*!50001 DROP VIEW IF EXISTS `vis_ics_oco_doc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vis_ics_oco_doc` AS select `doc`.`doc_numseleccion` AS `sele`,`doc`.`fk_doc_iditem` AS `iditem`,`doc`.`doc_iddetalleoc` AS `id_detalle_oc`,`oco`.`oco_serialmaq` AS `serialmaq` from (`ics_det_ordencompra` `doc` join `ics_ordencompra` `oco` on((`doc`.`fk_doc_orden_compra` = `oco`.`oco_idordenco`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-27 13:39:10
