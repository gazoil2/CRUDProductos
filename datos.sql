CREATE DATABASE  IF NOT EXISTS `box_beni_piza_joaquin_v2` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `box_beni_piza_joaquin_v2`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: box_beni_piza_joaquin_v2
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `IDArticulo` varchar(45) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `Tipo` int NOT NULL,
  `Valor` decimal(12,2) NOT NULL,
  `Clase` int NOT NULL,
  `UnidadMedida` varchar(5) NOT NULL,
  `Estado` int NOT NULL,
  `Stock` decimal(12,2) NOT NULL,
  `StockMin` decimal(12,2) NOT NULL,
  `FechaAlta` date NOT NULL,
  PRIMARY KEY (`IDArticulo`),
  KEY `FKID_Articulo_Clase_idx` (`Clase`),
  KEY `FKID_Articulo_Estado_idx` (`Estado`),
  KEY `FKID_Articulo_Tipo_idx` (`Tipo`),
  KEY `FKID_Articulo_UnidadMediad_idx` (`UnidadMedida`),
  CONSTRAINT `FKID_Articulo_Clase` FOREIGN KEY (`Clase`) REFERENCES `clase_articulo` (`IDClase`),
  CONSTRAINT `FKID_Articulo_Estado` FOREIGN KEY (`Estado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `FKID_Articulo_Tipo` FOREIGN KEY (`Tipo`) REFERENCES `tipoproducto` (`idTipo`),
  CONSTRAINT `FKID_Articulo_UnidadMediad` FOREIGN KEY (`UnidadMedida`) REFERENCES `unidadmedida` (`IDUnidadMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES ('AGUA','Agua',6,100.00,25,'LTS',1,0.00,0.00,'2007-01-01'),('BC10038-25','Base Cerejeira 100x38x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('BICAZ1','Birome BIC AZUL GRUESO',5,25.00,5,'CU',1,35.00,5.00,'2007-01-01'),('BICNG1','Birome BIC NEGRO GRUESO',5,25.00,5,'CU',1,21.00,5.00,'2007-01-01'),('BICRO1','Birome BIC ROJO GRUESO',5,25.00,5,'CU',1,18.00,5.00,'2007-01-01'),('BICTGAZUL','Bic trazo grueso Azul',5,15.00,5,'CU',1,8.00,15.00,'2021-10-10'),('BICTGNEGRA','Bic trazo grueso Negra',5,15.00,5,'CU',1,30.00,15.00,'2021-11-10'),('BICTGROJO','Bic trazo grueso Rojo',5,15.00,5,'CU',1,55.00,15.00,'2021-10-10'),('BOGLOGO','Logo Bogner',4,0.00,20,'CU',1,30.00,15.00,'2018-08-02'),('BP10038-25','Base Pino 100x38x2,5',4,250.00,2,'CU',1,15.00,5.00,'2010-08-01'),('BP11038-25','Base Pino 110x38x2,5',4,120.00,2,'CU',1,30.00,5.00,'2010-08-02'),('BP12038-25','Base Pino 120x38x2,5',4,220.00,2,'CU',1,20.00,5.00,'2010-04-20'),('BROCHES10','Broches 10',5,11.00,5,'CU',1,5.00,5.00,'2021-11-10'),('BROCHES15','Broches 15',5,11.80,5,'CU',1,16.00,5.00,'2021-10-20'),('CHAPF-P1000','Chapa Apoyo Sup. Fender P1000',4,380.00,21,'CU',1,40.00,5.00,'2010-04-10'),('CHAPFDER-HR','Chapa Apoyo Sup. Fender HR',4,280.00,21,'CU',1,100.00,20.00,'2019-04-10'),('CHAPMBHN','Chapa Apoyo Sup. MB Head - Negro',4,400.00,21,'CU',1,33.00,5.00,'2010-04-10'),('COLA_MADERA','Cola Madera',4,90.00,3,'CM3',1,16000.00,4000.00,'2013-02-08'),('CUAD-ESPIRAL-CUA-80','CUADERNO Espiralado 80h Cuadriculado',5,80.00,5,'CU',1,10.00,10.00,'2018-08-08'),('CUAD-ESPIRAL-RAY-80','CUADERNO Espiralado 80h Rayado',5,85.00,5,'CU',1,12.00,10.00,'2018-08-08'),('CUEFDER-BK','Cuerina Fender Negro',4,150.00,16,'M2',1,180.00,10.00,'2010-11-03'),('CUEMBC','Cuerina MB Caoba',4,320.00,16,'M2',1,38.50,10.00,'2010-03-08'),('CUEMBCREAM','Cuerina MB Cream',4,350.00,16,'M2',1,45.00,10.00,'2010-10-02'),('CUEMBN','Cuerina MB Negro',4,150.00,16,'M2',1,180.00,10.00,'2010-03-11'),('CUEVIB SLO','Cuerina Vibora Soldano Custom 1',4,600.00,16,'M2',1,80.00,20.00,'2020-01-01'),('ENERGIA','Energía Electrica',6,1200.00,24,'KWH',1,0.00,0.00,'2007-01-01'),('ESQUIFDERA-BK','Esquinas Fender Acetato - Negro',4,60.00,2,'CU',1,100.00,20.00,'2018-08-04'),('ESQUIMBAHN','Esquinas MB Acetato Head - Negro',4,600.00,2,'CU',1,100.00,20.00,'2018-08-04'),('FC9520-25','Fondo Cerejerira 95x20x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('FDERLOGO1','Logo Fender 1',4,0.00,20,'CU',1,130.00,40.00,'2018-08-02'),('FDERLOGO2','Logo Fender 2',4,0.00,20,'CU',1,50.00,10.00,'2018-08-02'),('FDERLOGO3','Logo Fender 3',4,0.00,20,'CU',1,1000.00,200.00,'2018-08-02'),('FP10535-25','Fondo Pino 105x30x2,5',4,100.00,2,'CU',1,14.00,5.00,'2018-08-04'),('FP11525-25','Fondo Pino 115x25x2,5',4,100.00,2,'CU',1,13.00,5.00,'2018-08-08'),('FP1557225','Frente Pino 1x12 W 155x72x2,5',4,200.00,2,'CU',1,16.00,5.00,'2010-08-08'),('FP9520-25','Fondo Pino 95x20x2,5',4,400.00,2,'CU',1,13.00,5.00,'2012-08-08'),('FREZ1506N','Frezado 1,5x0,6 - Negro',4,0.30,1,'CU',1,98.00,150.00,'2012-08-08'),('FREZ1506P','Frezado 1,5x0,6 - Plata',4,0.40,1,'CU',1,480.00,150.00,'2012-08-08'),('FREZ206P','Frezado 2x0,6 - Plata',4,0.35,1,'CU',1,500.00,100.00,'2012-08-08'),('FTEC9520-25','Frente Cerejerira 95x20x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('FTEP1210545-25','Frente Pino 1x12 105x45x2,5',4,100.00,1,'CU',1,11.00,5.00,'2012-08-08'),('FTEP1211550-25','Frente Pino 1x12 115x50x2,5',4,220.00,2,'CU',1,12.00,5.00,'2018-06-08'),('FTEP9520-25','Frente Pino 95x20x2,5',4,130.00,2,'CU',1,19.00,5.00,'2010-07-08'),('GAS','Gas',6,900.00,25,'CM3',1,0.00,0.00,'2007-01-01'),('HP12A','TONER 12A HP',5,3000.00,17,'CU',1,5.00,5.00,'2018-08-08'),('HP78A','TONER 78A HP',5,3000.00,17,'CU',1,5.00,1.00,'2021-10-08'),('LACA-MR-BR','Laca Marina Brillante',4,205.00,14,'CM3',1,1920.00,4000.00,'2019-08-05'),('LACA-MR-SM','Laca Marina Semi-Mate',4,134.00,14,'CM3',1,8000.00,4000.00,'2019-03-01'),('LCD3840-25','Lateral Der Cerejeira Forma 38x40x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('LCI3840-25','Lateral Izq Cerejerira Forma 38x40x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('LPD3840-25','Lateral Der Pino Forma 38x40x2,5',4,370.00,2,'CU',1,20.00,5.00,'2010-08-08'),('LPD3855-25','Lateral Der Pino Forma 38x55x2,5',4,300.00,2,'CU',1,19.00,5.00,'2010-09-08'),('LPI3840-25','Lateral Izq Pino Forma 38x40x2,5',4,120.00,2,'CU',1,18.00,5.00,'2012-08-08'),('LPI3855-25','Lateral Izq Pino Forma 38x55x2,5',4,140.00,2,'CU',1,22.00,5.00,'2012-08-08'),('MANITFDER-BK','Manija Transp. Fender - Negro',4,140.00,8,'CU',1,60.00,20.00,'2018-08-08'),('MANITMBCN','Manija Transp. Heavy MB - Negro',4,450.00,8,'CU',1,35.00,15.00,'2012-08-08'),('MANITMBN','Manija Transp. MB - Negro',4,340.00,8,'CU',1,30.00,15.00,'2018-08-08'),('MARLOGO','Logo Marshall',4,0.00,20,'CU',1,200.00,50.00,'2017-08-03'),('MBLOGO1','Logo Boogie',4,0.00,20,'CU',1,20.00,20.00,'2018-02-06'),('MBLOGO2','Logo Boogie Cream',4,0.00,20,'CU',1,150.00,30.00,'2013-02-08'),('MECHAMAD10','Mecha madera 10mm',5,45.00,4,'CU',1,3.00,5.00,'2018-01-10'),('MECHAMAD4','Mecha madera 4mm',5,35.00,4,'CU',1,12.00,5.00,'2018-08-03'),('MECHAMAD5','Mecha madera 5mm',5,35.00,4,'CU',1,8.00,5.00,'2018-01-12'),('MECHAMAD6','Mecha madera 6mm',5,35.00,4,'CU',1,14.00,5.00,'2018-08-03'),('PARK205N','Parker 2x0,5 - Negro',4,400.00,1,'CU',1,220.00,100.00,'2013-08-08'),('PARK2505N','Parker 2,5x0,5 - Negro',4,350.00,1,'CU',1,250.00,120.00,'2018-08-06'),('PEGA-CTO','Pegamento de Contacto',4,295.00,3,'CM3',1,12000.00,2000.00,'2020-08-12'),('PEGA-CTO_TR','Pegamento de Contacto Tranparente',4,290.00,3,'CM3',1,20000.00,2000.00,'2020-10-03'),('PLASTICOLA 200GRS','Plasticola 200 gramos blanca',5,145.00,5,'CU',1,12.00,10.00,'2019-08-08'),('REGAFDERSTD-BKN','Regaton Fender STD - Negro',4,22.00,9,'CU',1,180.00,50.00,'2018-08-06'),('REGAMBHN','Regaton MB Head - Negro',4,122.00,9,'CU',1,97.00,50.00,'2018-08-06'),('REGUNV35','Regaton UNIV 35mm- Negro',4,75.00,9,'CU',1,650.00,100.00,'2018-08-06'),('REGUNV40','Regaton UNIV 40mm- Negro',4,80.00,9,'CU',1,450.00,100.00,'2018-08-06'),('RESMA-A4-75GR','Resma A4 500 x 75grs',5,455.00,5,'CU',1,25.00,20.00,'2020-08-08'),('RESMA-CARTA-80GR','Resma CARTA 500 x 80grs',5,498.00,5,'CU',1,15.00,15.00,'2020-08-08'),('RESMAA480G','Resma A4 80grs',5,90.00,5,'CU',1,25.00,15.00,'2021-10-10'),('RESMALT80G','Resma LT 80grs',5,95.00,5,'CU',1,15.00,10.00,'2021-10-10'),('RIVLOGO','Logo Rivera',4,0.00,20,'CU',1,100.00,30.00,'2020-10-03'),('RUED 45-AZUL','Ruedas 45mm diam Azul',4,230.00,18,'CU',1,80.00,20.00,'2017-08-10'),('RUED 60-BK','Ruedas 60mm diam Negra',4,268.00,18,'CU',1,120.00,20.00,'2017-08-10'),('SEGURIDAD','Servicio de Seguridad',6,1050.00,25,'CU',1,0.00,0.00,'2007-01-01'),('SEGUROS','Seguros',6,3000.00,25,'CU',1,0.00,0.00,'2007-01-01'),('SLOLOGO','Logo Soldano',4,0.00,20,'CU',1,78.00,20.00,'2019-03-14'),('TARM1020','Tarugos Mad. 10x20',4,8.00,19,'CU',1,405.00,150.00,'2014-02-05'),('TARM1030','Tarugos Mad. 10x30',4,8.00,19,'CU',1,605.00,150.00,'2014-08-04'),('TC10028-25','Tapa Cerejeira 100x28x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('TELAFDER-BD','Tela Blues Deville Fender',4,125.80,13,'M2',1,100.00,40.00,'2019-08-02'),('TOPFONC20-25x25','Tope Fondo Cerejerira 20x2,5x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('TOPFONP20-25x25','Tope Fondo Pino 20x2,5x2,5',4,270.00,2,'CU',1,12.00,10.00,'2014-08-08'),('TOPFONP25-25x25','Tope Fondo Pino 25x2,5x2,5',4,290.00,2,'CU',1,14.00,10.00,'2014-02-08'),('TOPFONP30-25x25','Tope Fondo Pino 30x2,5x2,5',4,400.00,2,'CU',1,16.00,10.00,'2014-08-10'),('TOPFREC20-25x25','Tope Frente Cerejerira 20x2,5x2,5',4,100.00,2,'CU',1,100.00,50.00,'2016-03-10'),('TOPFREP20-25x25','Tope Frente Pino 20x2,5x2,5',4,300.00,2,'CU',1,12.00,10.00,'2014-08-10'),('TOPFREP38-25x25','Tope Frente Pino 38x2,5x2,5',4,210.00,2,'CU',1,14.00,10.00,'2017-08-18'),('TOPFREP50-25x25','Tope Frente Pino 50x2,5x2,5',4,125.00,2,'CU',1,16.00,15.00,'2017-08-10'),('TP10028-25','Tapa Pino 100x28x2,5',4,189.00,2,'CU',1,24.00,15.00,'2017-08-04'),('TP11028-25','Tapa Pino 110x28x2,5',4,167.00,2,'CU',1,23.00,15.00,'2017-08-03'),('TP12038-25','Tapa Pino 120x38x2,5',4,380.00,2,'CU',1,22.00,15.00,'2017-08-03'),('VINIL','Peg. Vinilico Contacto',4,124.00,12,'CM3',1,20000.00,1500.00,'2018-08-02'),('VINIL-ESP','Peg. Vinilico Contacto Especial',4,450.00,12,'CM3',1,2500.30,5000.00,'2019-08-02'),('VINIL-NG','Peg. Vinilico Contacto Negro',4,100.00,12,'CM3',1,4560.00,5000.00,'2019-08-01');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo/proveedor`
--

DROP TABLE IF EXISTS `articulo/proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo/proveedor` (
  `IDArticulo/Proveedor` int NOT NULL AUTO_INCREMENT,
  `IDProveedor` int NOT NULL,
  `IDArticulo` varchar(45) NOT NULL,
  `Precio` decimal(12,2) NOT NULL,
  PRIMARY KEY (`IDArticulo/Proveedor`),
  KEY `FKID_Proveedor_idx` (`IDProveedor`),
  KEY `FKID_Articulo_idx` (`IDArticulo`),
  CONSTRAINT `FKID_Articulo/Proveedor_Articulo` FOREIGN KEY (`IDArticulo`) REFERENCES `articulo` (`IDArticulo`),
  CONSTRAINT `FKID_Articulo/Proveedor_Proveedor` FOREIGN KEY (`IDProveedor`) REFERENCES `proveedor` (`IDProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo/proveedor`
--

LOCK TABLES `articulo/proveedor` WRITE;
/*!40000 ALTER TABLE `articulo/proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo/proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `idEvent` int NOT NULL AUTO_INCREMENT,
  `idMov` int NOT NULL,
  `DetMov` varchar(80) NOT NULL,
  `Fecha` date NOT NULL,
  `Tiempo` time NOT NULL,
  `idUsr` int NOT NULL,
  `Tabla` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEvent`),
  KEY `idMov_idx` (`idMov`),
  CONSTRAINT `idMov` FOREIGN KEY (`idMov`) REFERENCES `audmov` (`idMov`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,1,'Creacion remito nro 1','2024-08-31','11:21:14',1,'Remito CAB'),(2,1,'Creacion remito nro 2','2024-08-31','11:22:37',1,'Remito CAB'),(3,3,'Se modifico algo: 1','2024-08-31','11:27:04',1,'OrdenFabricacionCAB'),(4,3,'Se modifico algo: 2','2024-08-31','11:27:04',1,'OrdenFabricacionCAB'),(5,3,'Se modifico algo: 1','2024-08-31','11:29:40',1,'OrdenFabricacionCAB'),(6,3,'Se modifico algo: 2','2024-08-31','11:29:40',1,'OrdenFabricacionCAB'),(7,3,'Se modifico algo: 1','2024-08-31','11:39:16',1,'OrdenFabricacionCAB'),(8,3,'Se modifico algo: 2','2024-08-31','11:39:16',1,'OrdenFabricacionCAB'),(9,1,'Creacion remito nro 1','2024-08-31','12:49:52',1,'Remito CAB'),(10,1,'Creacion remito nro 0','2024-08-31','12:59:01',1,'Remito CAB'),(11,3,'Modificacion remito nro 2','2024-09-06','20:35:07',1,'Remito CAB'),(18,1,'Creacion remito nro 1','2024-09-06','21:41:53',1,'Remito CAB');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audmov`
--

DROP TABLE IF EXISTS `audmov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audmov` (
  `idMov` int NOT NULL,
  `Movimiento` varchar(100) NOT NULL,
  PRIMARY KEY (`idMov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audmov`
--

LOCK TABLES `audmov` WRITE;
/*!40000 ALTER TABLE `audmov` DISABLE KEYS */;
INSERT INTO `audmov` VALUES (1,'ALTA'),(2,'BAJA'),(3,'MODIFICACION');
/*!40000 ALTER TABLE `audmov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `IDCargo` int NOT NULL,
  `IDDepartamento` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`IDCargo`),
  KEY `FKID_Departamento_idx` (`IDDepartamento`),
  CONSTRAINT `FKID_Cargo_Departamento` FOREIGN KEY (`IDDepartamento`) REFERENCES `departamento` (`IDDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,1,'Gerente General','Gerente General'),(2,1,'Gerente Comercial','Gerente Comercial'),(3,1,'Gerente de PLanta','Gerente de PLanta'),(4,1,'Gerente de Administración y Finanzas','Gerente de Administración y Finanzas'),(5,1,'Gerente de Compras','Gerente de Compras'),(6,2,'Jefe de I+D','Jefe de I+D'),(7,2,'Ingeniero de Productos','Ingeniero de Productos'),(8,3,'Jefe de Ventas','Jefe de Ventas'),(9,3,'Vendedores','Vendedores'),(10,4,'Cuenta a Cobrar','Cuenta a Cobrar'),(11,4,'Cuentas a Pagar','Cuentas a Pagar'),(12,4,'Tesorero','Tesorero'),(13,4,'Administrativos','Administrativos'),(14,5,'Jefe de Compras ','Jefe de Compras '),(15,5,'Compradores','Compradores'),(16,6,'Jefes de Linea','Jefes de Linea'),(17,6,'Acopio','Acopio'),(18,6,'Ensamblado','Ensamblado'),(19,6,'Tapiceria','Tapiceria'),(20,6,'Pintura','Pintura'),(21,6,'Control de Calidad','Control de Calidad'),(22,6,'Deposito/Expedicion','Deposito/Expedicion'),(23,7,'Jefe de Mantenimiento','Jefe de Mantenimiento'),(24,7,'Operarios','Operarios'),(25,8,'Jefe de Almacen','Jefe de Almacen'),(26,8,'Operarios','Operarios'),(27,9,'Jefe de Expedicion','Jefe de Expedicion'),(28,9,'Personal de Expedicion','Personal de Expedicion');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase_articulo`
--

DROP TABLE IF EXISTS `clase_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clase_articulo` (
  `IDClase` int NOT NULL,
  `ClaseDet` varchar(45) NOT NULL,
  PRIMARY KEY (`IDClase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase_articulo`
--

LOCK TABLES `clase_articulo` WRITE;
/*!40000 ALTER TABLE `clase_articulo` DISABLE KEYS */;
INSERT INTO `clase_articulo` VALUES (1,'TORNILLOS'),(2,'MADERAS'),(3,'PEGAMENTOS'),(4,'HERRAMIENTAS'),(5,'LIBRERIA'),(6,'MAQUINAS ELECT.'),(7,'CLAVOS'),(8,'MANIJAS'),(9,'REGATONES'),(10,'ESQUINEROS'),(11,'CUERINA'),(12,'VINILICOS'),(13,'TELAS'),(14,'LACAS'),(15,'PINTURAS'),(16,'CUEROS'),(17,'TONERS'),(18,'RUEDAS'),(19,'TARUGOS'),(20,'LOGOS'),(21,'CHAPA APOYO'),(22,'CURTIEMBRE'),(23,'MADERA ESPECIAL'),(24,'ELECTRICIDAD'),(25,'VARIOS');
/*!40000 ALTER TABLE `clase_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCliente` int NOT NULL,
  `RazSoc` varchar(45) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `FecIng` date NOT NULL,
  `IdVendedor` int NOT NULL,
  `Estado` int NOT NULL,
  PRIMARY KEY (`IDCliente`),
  KEY `FKID_Cliente_Estado_idx` (`Estado`),
  CONSTRAINT `FKID_Cliente_Estado` FOREIGN KEY (`Estado`) REFERENCES `estados` (`IDEstados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Fender LLC','Fender','2015-01-01',4,1),(2,'Marshall Inc','Marshall','2014-02-10',5,1),(3,'Mesa LLC','Mesa Boogie','2014-01-08',4,1),(4,'Soldano','Soldano','2019-10-10',5,1),(5,'Bogner Amp Inc','Bogner','2018-09-10',4,1),(6,'Rivera Music LLC','Rivera','2017-10-01',5,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `IDContacto` int NOT NULL,
  `TipoContacto` varchar(15) NOT NULL,
  `Contacto` varchar(60) NOT NULL,
  `IDPersona` int NOT NULL,
  `TipoPersona` varchar(45) NOT NULL,
  PRIMARY KEY (`IDContacto`),
  KEY `FKID_Contacto_Cliente_idx` (`IDPersona`),
  CONSTRAINT `FKID_Contacto_Cliente` FOREIGN KEY (`IDPersona`) REFERENCES `cliente` (`IDCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,'Tel_1','1111-2222',1,'Cliente'),(2,'Tel_2','1111-2223',1,'Cliente'),(3,'Tel_3','1111-2224',1,'Cliente'),(4,'Correo','fenderllc@fender.com',1,'Cliente'),(5,'Tel_1','2222-1111',2,'Cliente'),(6,'Tel_2','2222-1112',2,'Cliente'),(7,'Tel_3','2222-1113',2,'Cliente'),(8,'Correo','Marshall@marshall.com',2,'Cliente'),(9,'Tel_1','3333-2211',3,'Cliente'),(10,'Tel_2','3333-2222',3,'Cliente'),(11,'Correo','mesa@mesa.com',3,'Cliente'),(12,'Tel_1','1111-2254',4,'Cliente'),(13,'Tel_2','1111-8989',4,'Cliente'),(14,'Correo','soldano@soldano.com',4,'Cliente'),(15,'Tel_1','2223-5454',5,'Cliente'),(16,'Correo','bogneramp@bogneramp.com',5,'Cliente'),(17,'Tel_1','2233-4455',6,'Cliente'),(18,'Tel_2','2233-5544',6,'Cliente'),(19,'Correo','riverainfo@rivera.com',6,'Cliente');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosempresa`
--

DROP TABLE IF EXISTS `datosempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosempresa` (
  `IDDatosEmpresa` int NOT NULL,
  `Nombre` varchar(6) NOT NULL,
  `CUIT` varchar(11) NOT NULL,
  `InicioActividades` varchar(45) NOT NULL,
  `IngBrutos` varchar(45) NOT NULL,
  `WebsiteHyperlink?` varchar(45) NOT NULL,
  `IVAestado` decimal(3,2) NOT NULL,
  PRIMARY KEY (`IDDatosEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosempresa`
--

LOCK TABLES `datosempresa` WRITE;
/*!40000 ALTER TABLE `datosempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `IDDepartamento` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`IDDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Gerencia Gral.','Gerencia Gral.'),(2,'I+D','Investigacion y Desarollo'),(3,'Ventas','Ventas'),(4,'Administracion','Administracion'),(5,'Compras','Compras'),(6,'Produccion','Produccion'),(7,'Mantenimiento','Mantenimiento'),(8,'Almacen','Almacen'),(9,'Expedicion','Expedicion');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `IDDireccion` int NOT NULL,
  `Calle` varchar(45) NOT NULL,
  `IDPersona` int NOT NULL,
  `TipoPersona` varchar(45) NOT NULL,
  `CalleNro` varchar(45) NOT NULL,
  `CodPos` varchar(45) NOT NULL,
  `Localidad` varchar(45) NOT NULL,
  PRIMARY KEY (`IDDireccion`),
  KEY `FKID_Direccion_Proveedor_idx` (`IDPersona`),
  CONSTRAINT `FKID_Direccion_Cliente` FOREIGN KEY (`IDPersona`) REFERENCES `cliente` (`IDCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'Fleming',1,'Cliente','1234','1234','Florida'),(2,'Corrientes',2,'Cliente','2233','1400','CABA'),(3,'Larrea',3,'Cliente','2211','1405','CABA'),(4,'Mitre',4,'Cliente','4550','2020','San Isidro'),(5,'Cordoba',5,'Cliente','6080','1300','CABA'),(6,'Pasteur',6,'Cliente','1200','1344','CABA');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `IDEmpleado` int NOT NULL,
  `IDCargo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `Salario` varchar(45) NOT NULL,
  `FechaAlta` varchar(45) NOT NULL,
  `IDJefe` int DEFAULT NULL,
  `Estado` varchar(45) NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `FechaNacimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`IDEmpleado`),
  KEY `FKID_Empleado_Cargo` (`IDCargo`),
  KEY `FKID_Empleado_Jefe_idx` (`IDJefe`),
  CONSTRAINT `FKID_Empleado_Cargo` FOREIGN KEY (`IDCargo`) REFERENCES `cargo` (`IDCargo`),
  CONSTRAINT `FKID_Empleado_Jefe` FOREIGN KEY (`IDJefe`) REFERENCES `empleados` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,19,'Peron Juan Domingo','M','450000','1946-6-4',1,'4','12123','2020-12-2'),(2,20,'Menem Carlos Saul','M','500000','1989-7-8',1,'5','123123','2401-4-12');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `IDEstados` int NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(5) NOT NULL,
  `Desc` varchar(32) NOT NULL,
  PRIMARY KEY (`IDEstados`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'A','Aprobado'),(2,'OFP','Orden de Fabricacion Pendiente'),(3,'OFT','Ordern de Fabricacion Terminada'),(4,'DB','Dado de Baja'),(5,'C','Contratadooooo'),(6,'RP','Remito Pendiente'),(7,'RT','Remito Terminado');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturacab`
--

DROP TABLE IF EXISTS `facturacab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturacab` (
  `IDFacturaCAB` int NOT NULL,
  `IDRemitoCAB` int NOT NULL,
  `IDEmpleado` int NOT NULL,
  `Fecha` date NOT NULL,
  `IDDireccion` int NOT NULL,
  `Total` decimal(12,2) NOT NULL,
  `IDCliente` int NOT NULL,
  PRIMARY KEY (`IDFacturaCAB`),
  KEY `FKID_Factura_RemitoCAB_idx` (`IDRemitoCAB`),
  KEY `FKID_Factura_Empleado_idx` (`IDEmpleado`),
  KEY `FKID_Factura_Direccion_idx` (`IDDireccion`),
  KEY `FKID_Factura_Cliente_idx` (`IDCliente`),
  CONSTRAINT `FKID_Factura_Cliente` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`),
  CONSTRAINT `FKID_Factura_Direccion` FOREIGN KEY (`IDDireccion`) REFERENCES `direccion` (`IDDireccion`),
  CONSTRAINT `FKID_Factura_Empleado` FOREIGN KEY (`IDEmpleado`) REFERENCES `empleados` (`IDEmpleado`),
  CONSTRAINT `FKID_Factura_RemitoCAB` FOREIGN KEY (`IDRemitoCAB`) REFERENCES `remitocab` (`IDRemitoCAB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturacab`
--

LOCK TABLES `facturacab` WRITE;
/*!40000 ALTER TABLE `facturacab` DISABLE KEYS */;
INSERT INTO `facturacab` VALUES (1,1,2,'2024-09-06',1,23112.12,2),(2,2,2,'2024-09-06',1,123123.12,2);
/*!40000 ALTER TABLE `facturacab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturadet`
--

DROP TABLE IF EXISTS `facturadet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturadet` (
  `idfacturadet` int NOT NULL AUTO_INCREMENT,
  `IDProducto` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `Unitario` decimal(12,2) NOT NULL,
  `Importe` decimal(12,2) NOT NULL,
  `IDFacturaCAB` int NOT NULL,
  `IDCliente` int NOT NULL,
  PRIMARY KEY (`idfacturadet`),
  KEY `fkid_facturadet_producto_idx` (`IDProducto`),
  KEY `fkid_facturadet_facturacab_idx` (`IDFacturaCAB`),
  KEY `fkid_facturadet_cliente` (`IDCliente`) /*!80000 INVISIBLE */,
  CONSTRAINT `fkid_facturadet_facturacab` FOREIGN KEY (`IDFacturaCAB`) REFERENCES `facturacab` (`IDFacturaCAB`),
  CONSTRAINT `fkid_facturadet_producto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturadet`
--

LOCK TABLES `facturadet` WRITE;
/*!40000 ALTER TABLE `facturadet` DISABLE KEYS */;
INSERT INTO `facturadet` VALUES (1,'BLUED4X10',15,139228.89,208843335.00,1,0),(2,'MVCBO1',4,155627.81,62251124.00,1,0);
/*!40000 ALTER TABLE `facturadet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formaentrega`
--

DROP TABLE IF EXISTS `formaentrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formaentrega` (
  `IDFormaEntrega` int NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Desc` varchar(80) NOT NULL,
  PRIMARY KEY (`IDFormaEntrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formaentrega`
--

LOCK TABLES `formaentrega` WRITE;
/*!40000 ALTER TABLE `formaentrega` DISABLE KEYS */;
INSERT INTO `formaentrega` VALUES (1,'Sin envio','El cliente lo retira'),(2,'Envio Camion','Se realiza un envio al cliente mediante camion');
/*!40000 ALTER TABLE `formaentrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapago`
--

DROP TABLE IF EXISTS `formapago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formapago` (
  `IDPago` int NOT NULL AUTO_INCREMENT,
  `TipoPago` varchar(5) NOT NULL,
  `Descripcion` varchar(32) NOT NULL,
  PRIMARY KEY (`IDPago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapago`
--

LOCK TABLES `formapago` WRITE;
/*!40000 ALTER TABLE `formapago` DISABLE KEYS */;
INSERT INTO `formapago` VALUES (1,'E','Efectivo'),(2,'D','Debito'),(3,'C','Credito');
/*!40000 ALTER TABLE `formapago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movstock`
--

DROP TABLE IF EXISTS `movstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movstock` (
  `IDMovStock` int NOT NULL,
  `IDEmpleado` int NOT NULL,
  `IDArticulo` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  PRIMARY KEY (`IDMovStock`),
  KEY `FKID_Empleado` (`IDEmpleado`) /*!80000 INVISIBLE */,
  KEY `FKID_Articulo` (`IDArticulo`) /*!80000 INVISIBLE */,
  CONSTRAINT `FKID_MovStock_Articulo` FOREIGN KEY (`IDArticulo`) REFERENCES `articulo` (`IDArticulo`),
  CONSTRAINT `FKID_MovStock_Empleado` FOREIGN KEY (`IDEmpleado`) REFERENCES `empleados` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movstock`
--

LOCK TABLES `movstock` WRITE;
/*!40000 ALTER TABLE `movstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `movstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacion` (
  `IDNotificacion` int NOT NULL,
  `IDOrdenFabricacionDET` int NOT NULL,
  `IDEmpleado` int NOT NULL,
  `IDProceso` varchar(5) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`IDNotificacion`),
  KEY `FKID_Empleado` (`IDEmpleado`),
  KEY `FKID_Notificacion_OrdenVentaCAB_idx` (`IDOrdenFabricacionDET`),
  KEY `FKID_Notificacion_Procesos_idx` (`IDProceso`),
  CONSTRAINT `FKID_Notificacion_Empleado` FOREIGN KEY (`IDEmpleado`) REFERENCES `empleados` (`IDEmpleado`),
  CONSTRAINT `FKID_Notificacion_OrdenVentaCAB` FOREIGN KEY (`IDOrdenFabricacionDET`) REFERENCES `ordenfabricaciondet` (`IDOrdenFabricacionDET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
INSERT INTO `notificacion` VALUES (1,1,1,'AC1','2020-04-12','19:20:20',1),(2,1,2,'AC2','2020-08-12','19:20:20',2),(3,2,1,'EN1','2600-12-12','19:12:12',4),(4,2,2,'AC1','2600-12-12','19:12:12',1),(5,1,1,'AC1','2020-04-12','19:20:20',3),(6,1,1,'AC1','2600-12-12','19:12:12',84);
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencompracab`
--

DROP TABLE IF EXISTS `ordencompracab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordencompracab` (
  `IDOrdenCompraCAB` int NOT NULL,
  `IDCreador` int NOT NULL,
  `IDOrdenPedidoCAB` int NOT NULL,
  PRIMARY KEY (`IDOrdenCompraCAB`),
  KEY `FKID_Creador` (`IDCreador`) /*!80000 INVISIBLE */,
  KEY `FKID_OrdenPedidoCAB` (`IDOrdenPedidoCAB`),
  CONSTRAINT `FKID_Creador` FOREIGN KEY (`IDCreador`) REFERENCES `cliente` (`IDCliente`),
  CONSTRAINT `FKID_OrdenPedidoCAB` FOREIGN KEY (`IDOrdenPedidoCAB`) REFERENCES `ordenpedidocab` (`IDOrdenPedidoCAB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencompracab`
--

LOCK TABLES `ordencompracab` WRITE;
/*!40000 ALTER TABLE `ordencompracab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordencompracab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencompradet`
--

DROP TABLE IF EXISTS `ordencompradet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordencompradet` (
  `IDDetalle` int NOT NULL,
  `IDArticulo` varchar(45) NOT NULL,
  `IDOrdenCompraCAB` int NOT NULL,
  `IDFormaPago` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Unitario` decimal(12,2) NOT NULL,
  `Importe` decimal(12,2) NOT NULL,
  PRIMARY KEY (`IDDetalle`),
  KEY `FKID_Articulo` (`IDArticulo`) /*!80000 INVISIBLE */,
  KEY `FKID_OrdenCompraCAB` (`IDOrdenCompraCAB`) /*!80000 INVISIBLE */,
  KEY `FKID_FormaPago` (`IDFormaPago`) /*!80000 INVISIBLE */,
  CONSTRAINT `FKID_OrdenCompraDET_Articulo` FOREIGN KEY (`IDArticulo`) REFERENCES `articulo` (`IDArticulo`),
  CONSTRAINT `FKID_OrdenCompraDET_FormaPago` FOREIGN KEY (`IDFormaPago`) REFERENCES `formapago` (`IDPago`),
  CONSTRAINT `FKID_OrdenCompraDET_OrdenCompraCAB` FOREIGN KEY (`IDOrdenCompraCAB`) REFERENCES `ordenpedidocab` (`IDOrdenPedidoCAB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencompradet`
--

LOCK TABLES `ordencompradet` WRITE;
/*!40000 ALTER TABLE `ordencompradet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordencompradet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenfabricacioncab`
--

DROP TABLE IF EXISTS `ordenfabricacioncab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenfabricacioncab` (
  `IDOrdenFabricacionCAB` int NOT NULL,
  `IDCliente` int NOT NULL,
  `IDEstado` int NOT NULL,
  `FechaBaja` date NOT NULL,
  `FechaAlta` date NOT NULL,
  `IDTipoEntrega` int NOT NULL,
  `IDFormaEntrega` int NOT NULL,
  PRIMARY KEY (`IDOrdenFabricacionCAB`),
  KEY `IDCliente_idx` (`IDCliente`),
  KEY `IDEstado_idx` (`IDEstado`),
  KEY `FK_IDTipoEntrega_idx` (`IDTipoEntrega`),
  KEY `FK_IDTipoEnvio_idx` (`IDFormaEntrega`),
  CONSTRAINT `FK_IDFormaEntrega` FOREIGN KEY (`IDFormaEntrega`) REFERENCES `formaentrega` (`IDFormaEntrega`),
  CONSTRAINT `FK_IDTipoEntrega` FOREIGN KEY (`IDTipoEntrega`) REFERENCES `tipoentrega` (`IDTipoEntrega`),
  CONSTRAINT `OFCAB_IDCliente` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`),
  CONSTRAINT `OFCAB_IDEstado` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenfabricacioncab`
--

LOCK TABLES `ordenfabricacioncab` WRITE;
/*!40000 ALTER TABLE `ordenfabricacioncab` DISABLE KEYS */;
INSERT INTO `ordenfabricacioncab` VALUES (1,1,2,'2007-05-15','2036-10-17',1,1),(2,2,2,'2007-06-07','2010-10-08',2,2);
/*!40000 ALTER TABLE `ordenfabricacioncab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ordenfabricacioncab_BEFORE_INSERT` BEFORE INSERT ON `ordenfabricacioncab` FOR EACH ROW BEGIN
	call insertarRegistro(1, concat("Creacion de orden fabricacion ", new.IDOrdenFabricacionCAB),"OrdenFabricacionCAB",1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ordenfabricacioncab_BEFORE_UPDATE` BEFORE UPDATE ON `ordenfabricacioncab` FOR EACH ROW BEGIN
	call insertarRegistro(3, concat("Se modifico algo: ", new.IDOrdenFabricacionCAB),"OrdenFabricacionCAB",1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ordenfabricaciondet`
--

DROP TABLE IF EXISTS `ordenfabricaciondet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenfabricaciondet` (
  `IDOrdenFabricacionDET` int NOT NULL AUTO_INCREMENT,
  `IDOrdenFabricacionCAB` int NOT NULL,
  `IDVentasDET` int NOT NULL,
  `IDProducto` varchar(45) NOT NULL,
  `IDEstado` int NOT NULL,
  `Qty` decimal(12,2) NOT NULL,
  PRIMARY KEY (`IDOrdenFabricacionDET`),
  KEY `IDProducto_idx` (`IDProducto`),
  KEY `Estado_idx` (`IDEstado`),
  KEY `IDFabricacionCAB_idx` (`IDOrdenFabricacionCAB`),
  KEY `OFDET_IDVentaDET_idx` (`IDVentasDET`),
  CONSTRAINT `ODFDET_Estados` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `ODFDET_IDProducto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`),
  CONSTRAINT `OFDET_IDFabricacionCAB` FOREIGN KEY (`IDOrdenFabricacionCAB`) REFERENCES `ordenfabricacioncab` (`IDOrdenFabricacionCAB`),
  CONSTRAINT `OFDET_IDVentaDET` FOREIGN KEY (`IDVentasDET`) REFERENCES `ordenventadet` (`idOrdenVentaDET`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenfabricaciondet`
--

LOCK TABLES `ordenfabricaciondet` WRITE;
/*!40000 ALTER TABLE `ordenfabricaciondet` DISABLE KEYS */;
INSERT INTO `ordenfabricaciondet` VALUES (1,1,1,'BLUED4X10',2,15.00),(2,1,2,'MVCBO1',2,4.00),(3,2,3,'BLUED4X10',2,10.00);
/*!40000 ALTER TABLE `ordenfabricaciondet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenpedidocab`
--

DROP TABLE IF EXISTS `ordenpedidocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenpedidocab` (
  `IDOrdenPedidoCAB` int NOT NULL AUTO_INCREMENT,
  `IDSolicitante` int NOT NULL,
  `IDAutorizador` int NOT NULL,
  `IDEstado` int NOT NULL,
  `FechaEntrega` date NOT NULL,
  `Observaciones` varchar(60) NOT NULL,
  PRIMARY KEY (`IDOrdenPedidoCAB`),
  KEY `FKID_OrdenPedidoCAB_Autorizador` (`IDAutorizador`),
  KEY `FKID_Solicitante` (`IDSolicitante`) /*!80000 INVISIBLE */,
  KEY `FKID_Estado` (`IDEstado`),
  CONSTRAINT `FKID_OrdenPedidoCAB_Autorizador` FOREIGN KEY (`IDAutorizador`) REFERENCES `empleados` (`IDEmpleado`),
  CONSTRAINT `FKID_OrdenPedidoCAB_Estado` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `FKID_OrdenPedidoCAB_Solicitante` FOREIGN KEY (`IDSolicitante`) REFERENCES `empleados` (`IDEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenpedidocab`
--

LOCK TABLES `ordenpedidocab` WRITE;
/*!40000 ALTER TABLE `ordenpedidocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenpedidocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenpedidodet`
--

DROP TABLE IF EXISTS `ordenpedidodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenpedidodet` (
  `IDOrdenPedidoDET` int NOT NULL,
  `IDOrdenPedidoCAB` int NOT NULL,
  `IDArticulo` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`IDOrdenPedidoDET`),
  KEY `FKID_OrdenPedidoCAB` (`IDOrdenPedidoCAB`),
  KEY `FKID_Articulo` (`IDArticulo`),
  CONSTRAINT `FKID_OrdenPedidoDET_Articulo` FOREIGN KEY (`IDArticulo`) REFERENCES `articulo` (`IDArticulo`),
  CONSTRAINT `FKID_OrdenPedidoDET_OrdenPedidoCAB` FOREIGN KEY (`IDOrdenPedidoCAB`) REFERENCES `ordenpedidocab` (`IDOrdenPedidoCAB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenpedidodet`
--

LOCK TABLES `ordenpedidodet` WRITE;
/*!40000 ALTER TABLE `ordenpedidodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenpedidodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenventacab`
--

DROP TABLE IF EXISTS `ordenventacab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenventacab` (
  `IDOrdenVentaCAB` int NOT NULL,
  `IDCliente` int NOT NULL,
  `IDEstado` int NOT NULL,
  `FechaBaja` date DEFAULT NULL,
  `IDFormaPago` int NOT NULL,
  `TipoEntrega` varchar(45) NOT NULL,
  `FechaAlta` date NOT NULL,
  `ImporteTotal` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`IDOrdenVentaCAB`),
  KEY `FKID_Cliente` (`IDCliente`) /*!80000 INVISIBLE */,
  KEY `FKID_Estado` (`IDEstado`),
  KEY `FKID_OrdenVentaCAB_FormaPago` (`IDFormaPago`),
  CONSTRAINT `FKID_OrdenVentaCAB_Cliente` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`),
  CONSTRAINT `FKID_OrdenVentaCAB_Estado` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `FKID_OrdenVentaCAB_FormaPago` FOREIGN KEY (`IDFormaPago`) REFERENCES `formapago` (`IDPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenventacab`
--

LOCK TABLES `ordenventacab` WRITE;
/*!40000 ALTER TABLE `ordenventacab` DISABLE KEYS */;
INSERT INTO `ordenventacab` VALUES (1,1,2,'2007-05-15',1,'Parcial','2036-10-17',23112.12),(2,2,2,'2007-06-07',1,'Parcial','2010-10-08',123123.12),(3,1,1,NULL,1,'Parcial','2024-10-19',139228.89),(4,1,1,NULL,1,'parcial','2024-10-19',1.00),(5,1,1,NULL,1,'Retira cliente','2024-10-19',137283.18),(6,1,1,NULL,1,'Retira cliente','2024-10-19',139228.89),(7,1,1,NULL,1,'Envio','2024-10-19',139228.89),(8,1,1,NULL,1,'Envio','2024-10-19',139228.89),(9,1,1,NULL,1,'Envio','2024-10-19',139228.89),(10,1,1,NULL,1,'Envio','2024-10-19',137283.18),(11,1,1,NULL,1,'Envio','2024-10-19',139228.89),(12,1,1,NULL,1,'Retira cliente','2024-10-19',151655.98),(13,1,1,NULL,2,'Retira cliente','2024-10-25',139228.89),(14,1,1,NULL,3,'Retira cliente','2024-10-25',428168.05),(15,1,1,NULL,1,'Envio','2024-10-25',428168.05),(16,1,1,NULL,2,'Retira cliente','2024-10-25',139228.89),(17,1,1,NULL,2,'Retira cliente','2024-10-25',428168.05);
/*!40000 ALTER TABLE `ordenventacab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenventadet`
--

DROP TABLE IF EXISTS `ordenventadet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenventadet` (
  `idOrdenVentaDET` int NOT NULL AUTO_INCREMENT,
  `IDOrdenVentaCAB` int NOT NULL,
  `IDProducto` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `PUnitario` decimal(12,2) NOT NULL,
  `Importe` decimal(12,2) NOT NULL,
  PRIMARY KEY (`idOrdenVentaDET`),
  KEY `FKID_OrdenVentaCAB` (`IDOrdenVentaCAB`),
  KEY `FKID_Producto` (`IDProducto`),
  CONSTRAINT `FKID_OrdenVentaCAB` FOREIGN KEY (`IDOrdenVentaCAB`) REFERENCES `ordenventacab` (`IDOrdenVentaCAB`),
  CONSTRAINT `FKID_Producto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenventadet`
--

LOCK TABLES `ordenventadet` WRITE;
/*!40000 ALTER TABLE `ordenventadet` DISABLE KEYS */;
INSERT INTO `ordenventadet` VALUES (1,1,'BLUED4X10',15,139228.89,208843335.00),(2,1,'MVCBO1',4,155627.81,62251124.00),(3,2,'BLUED4X10',10,139228.89,139228890.00),(4,6,'BLUED4X10',1,139228.89,139228.89),(5,7,'BLUED4X10',1,139228.89,139228.89),(6,8,'BLUED4X10',1,139228.89,139228.89),(7,9,'BLUED4X10',1,139228.89,139228.89),(8,10,'FHOTRODDX3',1,137283.18,137283.18),(9,11,'BLUED4X10',1,139228.89,139228.89),(10,12,'PERF1000',1,151655.98,151655.98),(11,13,'BLUED4X10',1,139228.89,139228.89),(12,14,'BLUED4X10',1,139228.89,139228.89),(13,14,'FHOTRODDX3',1,137283.18,137283.18),(14,14,'PERF1000',1,151655.98,151655.98),(15,15,'BLUED4X10',1,139228.89,139228.89),(16,15,'FHOTRODDX3',1,137283.18,137283.18),(17,15,'PERF1000',1,151655.98,151655.98),(18,16,'BLUED4X10',1,139228.89,139228.89),(19,17,'BLUED4X10',1,139228.89,139228.89),(20,17,'FHOTRODDX3',1,137283.18,137283.18),(21,17,'PERF1000',1,151655.98,151655.98);
/*!40000 ALTER TABLE `ordenventadet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagoclientecab`
--

DROP TABLE IF EXISTS `pagoclientecab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagoclientecab` (
  `idpagoclientecab` int NOT NULL,
  `idcliente` int NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`idpagoclientecab`),
  KEY `ID_PCAB_CLIENTE_idx` (`idcliente`),
  CONSTRAINT `ID_PCAB_CLIENTE` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`IDCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagoclientecab`
--

LOCK TABLES `pagoclientecab` WRITE;
/*!40000 ALTER TABLE `pagoclientecab` DISABLE KEYS */;
INSERT INTO `pagoclientecab` VALUES (1,2,'2024-10-01',5000.00),(2,2,'2024-11-01',4000.00),(3,2,'2024-11-01',9000.00);
/*!40000 ALTER TABLE `pagoclientecab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagoclientedet`
--

DROP TABLE IF EXISTS `pagoclientedet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagoclientedet` (
  `idpagoclientedet` int NOT NULL AUTO_INCREMENT,
  `idpagocab` int NOT NULL,
  `idfacturacab` int NOT NULL,
  `valorPagado` decimal(12,2) NOT NULL,
  PRIMARY KEY (`idpagoclientedet`),
  KEY `FKID_DET_CAB_idx` (`idpagocab`),
  KEY `FKID_DET_FACTURA_idx` (`idfacturacab`),
  CONSTRAINT `FKID_DET_CAB` FOREIGN KEY (`idpagocab`) REFERENCES `pagoclientecab` (`idpagoclientecab`),
  CONSTRAINT `FKID_DET_FACTURA` FOREIGN KEY (`idfacturacab`) REFERENCES `facturacab` (`IDFacturaCAB`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagoclientedet`
--

LOCK TABLES `pagoclientedet` WRITE;
/*!40000 ALTER TABLE `pagoclientedet` DISABLE KEYS */;
INSERT INTO `pagoclientedet` VALUES (1,1,2,5000.00),(2,2,2,4000.00),(3,3,1,9000.00);
/*!40000 ALTER TABLE `pagoclientedet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procesos`
--

DROP TABLE IF EXISTS `procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procesos` (
  `IDProceso` varchar(5) NOT NULL,
  `Detalle` varchar(15) NOT NULL,
  `TimeProc` time NOT NULL,
  PRIMARY KEY (`IDProceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procesos`
--

LOCK TABLES `procesos` WRITE;
/*!40000 ALTER TABLE `procesos` DISABLE KEYS */;
INSERT INTO `procesos` VALUES ('AC1','ACOPIO 1','35:00:00'),('AC2','ACOPIO 2','28:00:00'),('CC','CONTROL CALIDAD','15:00:00'),('EN1','ENSAMBLADO 1','60:00:00'),('EN2','ENSAMBLADO 2','40:00:00'),('LUS','LUSTRADO','04:00:00'),('PIN','PINTURA','06:00:00'),('TAP','TAPICERIA','01:30:00');
/*!40000 ALTER TABLE `procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `IDProducto` varchar(45) NOT NULL,
  `IDCliente` int NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `IDTipoProducto` int NOT NULL,
  `Costo` decimal(12,2) DEFAULT NULL,
  `Margen` decimal(12,2) NOT NULL,
  `PUnitario` decimal(12,2) DEFAULT NULL,
  `IDEstado` int NOT NULL,
  `FechaAlta` date NOT NULL,
  PRIMARY KEY (`IDProducto`),
  KEY `FKID_Producto_Cliente` (`IDCliente`),
  KEY `FKID_Producto_TipoProducto_idx` (`IDTipoProducto`),
  KEY `FKID_Producto_Estado_idx` (`IDEstado`),
  CONSTRAINT `FKID_Producto_Cliente` FOREIGN KEY (`IDCliente`) REFERENCES `cliente` (`IDCliente`),
  CONSTRAINT `FKID_Producto_Estado` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `FKID_Producto_TipoProducto` FOREIGN KEY (`IDTipoProducto`) REFERENCES `tipoproducto` (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('BLUED4X10',1,'Blues Deville 4x10 Reissue',1,100890.50,38.00,139228.89,1,'2008-10-10'),('BOGECS-100',5,'Bogner Ecstasy 100-watt Tube Head',2,NULL,29.80,NULL,4,'2011-10-10'),('CT1X12WIDE23',3,'California Tweed1X12 CALIFORNIA TWEED 23',3,110516.70,35.00,149197.55,1,'2010-02-14'),('FHOTRODDX3',1,'Hot Rod Deluxe III',1,100206.70,37.00,137283.18,1,'2018-12-08'),('MJCM900',2,'JCM900 4100',2,NULL,41.00,NULL,4,'2008-03-17'),('MVCAB1+',3,'MARK V+ - Head',2,79545.70,35.00,107386.70,1,'2012-04-03'),('MVCBO1',3,'MARK V - Combo 1x12',1,119713.70,30.00,155627.81,1,'2012-04-03'),('MVS8080',2,'Marshall Valvestate 8080',1,NULL,35.50,NULL,4,'2008-01-10'),('PERF1000',1,'Performer 1000 - Black',1,108325.70,40.00,151655.98,1,'2009-08-14'),('RIV_VENUS 5x12H',6,'Rivera Venus 5 1x12\" 35-watt Tube Combo Amp',2,NULL,43.60,NULL,4,'2015-09-15'),('SLO-100 SO',4,'Soldano SLO-100 Super Lead Overdrive',2,NULL,37.00,NULL,4,'2010-12-18');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productos_detalles`
--

DROP TABLE IF EXISTS `productos_detalles`;
/*!50001 DROP VIEW IF EXISTS `productos_detalles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_detalles` AS SELECT 
 1 AS `IDProducto`,
 1 AS `Descripcion`,
 1 AS `RazSoc`,
 1 AS `QTY Materiales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `IDProveedor` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`IDProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetamateriales`
--

DROP TABLE IF EXISTS `recetamateriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetamateriales` (
  `idRecetaMateriales` int NOT NULL AUTO_INCREMENT,
  `IDProducto` varchar(45) NOT NULL,
  `IDArticulo` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `UnidadMedida` varchar(5) NOT NULL,
  `Secuencia` int NOT NULL,
  PRIMARY KEY (`idRecetaMateriales`),
  KEY `FKID_Articulo` (`IDArticulo`) /*!80000 INVISIBLE */,
  KEY `FKID_UnidadMedida` (`UnidadMedida`) /*!80000 INVISIBLE */,
  KEY `FKID_RecetaMateriales_Producto_idx` (`IDProducto`),
  CONSTRAINT `FKID_RecetaMateriales_Articulo` FOREIGN KEY (`IDArticulo`) REFERENCES `articulo` (`IDArticulo`),
  CONSTRAINT `FKID_RecetaMateriales_Producto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`),
  CONSTRAINT `FKID_RecetaMateriales_UnidadMedida` FOREIGN KEY (`UnidadMedida`) REFERENCES `unidadmedida` (`IDUnidadMedida`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetamateriales`
--

LOCK TABLES `recetamateriales` WRITE;
/*!40000 ALTER TABLE `recetamateriales` DISABLE KEYS */;
INSERT INTO `recetamateriales` VALUES (1,'MVCAB1+','TP10028-25',1,'CU',1),(2,'MVCAB1+','BP10038-25',1,'CU',1),(3,'MVCAB1+','LPD3840-25',1,'CU',1),(4,'MVCAB1+','LPI3840-25',1,'CU',1),(5,'MVCAB1+','FP9520-25',1,'CU',2),(6,'MVCAB1+','FTEP9520-25',1,'CU',2),(7,'MVCAB1+','TOPFREP20-25x25',2,'CU',2),(8,'MVCAB1+','TOPFONP20-25x25',2,'CU',2),(9,'MVCAB1+','REGAMBHN',4,'CU',1),(10,'MVCAB1+','ESQUIMBAHN',6,'CU',1),(11,'MVCAB1+','MANITMBN',1,'CU',2),(12,'MVCAB1+','TARM1020',8,'CU',2),(13,'MVCAB1+','PARK205N',4,'CU',2),(14,'MVCAB1+','PARK2505N',4,'CU',2),(15,'MVCAB1+','FREZ206P',2,'CU',2),(16,'MVCAB1+','CHAPMBHN',2,'CU',1),(17,'MVCAB1+','FREZ1506P',4,'CU',1),(18,'MVCAB1+','CUEMBN',3,'M2',1),(19,'MVCAB1+','VINIL',550,'CM3',1),(20,'MVCAB1+','FREZ1506N',8,'CU',1),(21,'MVCAB1+','MBLOGO1',1,'CU',1),(22,'MVCBO1','TP11028-25',1,'CU',0),(23,'MVCBO1','BP11038-25',1,'CU',1),(24,'MVCBO1','LPD3855-25',1,'CU',1),(25,'MVCBO1','LPI3855-25',1,'CU',1),(26,'MVCBO1','FP10535-25',1,'CU',2),(27,'MVCBO1','TOPFONP30-25x25',2,'CU',2),(28,'MVCBO1','FTEP1210545-25',1,'CU',2),(29,'MVCBO1','TOPFREP38-25x25',2,'CU',2),(30,'MVCBO1','REGAMBHN',4,'CU',1),(31,'MVCBO1','ESQUIMBAHN',5,'CU',1),(32,'MVCBO1','MANITMBN',1,'CU',2),(33,'MVCBO1','TARM1020',8,'CU',2),(34,'MVCBO1','PARK205N',4,'CU',2),(35,'MVCBO1','PARK2505N',4,'CU',2),(36,'MVCBO1','FREZ206P',2,'CU',2),(37,'MVCBO1','CHAPMBHN',2,'CU',1),(38,'MVCBO1','FREZ1506P',4,'CU',1),(39,'MVCBO1','CUEMBN',5,'M2',1),(40,'MVCBO1','VINIL',880,'CM3',1),(41,'MVCBO1','FREZ1506N',8,'CU',1),(42,'MVCBO1','MBLOGO1',1,'CU',1),(43,'CT1X12WIDE23','TP12038-25',1,'CU',1),(44,'CT1X12WIDE23','BP12038-25',1,'CU',1),(45,'CT1X12WIDE23','LPD3855-25',1,'CU',1),(46,'CT1X12WIDE23','LPI3855-25',1,'CU',1),(47,'CT1X12WIDE23','FP11525-25',1,'CU',2),(48,'CT1X12WIDE23','TOPFONP25-25x25',2,'CU',2),(49,'CT1X12WIDE23','TOPFREP50-25x25',2,'CU',2),(50,'CT1X12WIDE23','FTEP1211550-25',1,'CU',2),(51,'CT1X12WIDE23','REGAMBHN',4,'CU',1),(52,'CT1X12WIDE23','ESQUIMBAHN',6,'CU',1),(53,'CT1X12WIDE23','MANITMBCN',1,'CU',2),(54,'CT1X12WIDE23','TARM1020',8,'CU',2),(55,'CT1X12WIDE23','PARK205N',8,'CU',2),(56,'CT1X12WIDE23','PARK2505N',4,'CU',2),(57,'CT1X12WIDE23','FREZ206P',2,'CU',2),(58,'CT1X12WIDE23','CHAPMBHN',2,'CU',2),(59,'CT1X12WIDE23','FREZ1506P',4,'CU',1),(60,'CT1X12WIDE23','CUEMBCREAM',4,'M2',1),(61,'CT1X12WIDE23','VINIL',780,'CM3',1),(62,'CT1X12WIDE23','FREZ1506N',8,'CU',1),(63,'CT1X12WIDE23','FP1557225',1,'CU',1),(64,'CT1X12WIDE23','MBLOGO2',1,'CU',1),(65,'BLUED4X10','TP10028-25',1,'CU',1),(66,'BLUED4X10','BP10038-25',1,'CU',1),(67,'BLUED4X10','LPD3840-25',1,'CU',1),(68,'BLUED4X10','LPI3840-25',1,'CU',1),(69,'BLUED4X10','FP9520-25',1,'CU',2),(70,'BLUED4X10','FTEP9520-25',1,'CU',2),(71,'BLUED4X10','TOPFREP20-25x25',2,'CU',2),(72,'BLUED4X10','TOPFONP20-25x25',2,'CU',2),(73,'BLUED4X10','REGAFDERSTD-BKN',4,'CU',1),(74,'BLUED4X10','MANITFDER-BK',1,'CU',2),(75,'BLUED4X10','TARM1020',8,'CU',2),(76,'BLUED4X10','PARK205N',4,'CU',2),(77,'BLUED4X10','PARK2505N',4,'CU',2),(78,'BLUED4X10','FREZ206P',2,'CU',2),(79,'BLUED4X10','FREZ1506P',4,'CU',1),(80,'BLUED4X10','TELAFDER-BD',6,'M2',1),(81,'BLUED4X10','VINIL',760,'CM3',1),(82,'BLUED4X10','FREZ1506N',8,'CU',1),(83,'BLUED4X10','FDERLOGO1',1,'CU',1),(84,'FHOTRODDX3','TC10028-25',1,'CU',1),(85,'FHOTRODDX3','BC10038-25',1,'CU',1),(86,'FHOTRODDX3','LCD3840-25',1,'CU',1),(87,'FHOTRODDX3','LCI3840-25',1,'CU',1),(88,'FHOTRODDX3','FC9520-25',1,'CU',1),(89,'FHOTRODDX3','FTEC9520-25',1,'CU',1),(90,'FHOTRODDX3','TOPFREC20-25x25',2,'CU',1),(91,'FHOTRODDX3','TOPFONC20-25x25',2,'CU',1),(92,'FHOTRODDX3','REGAFDERSTD-BKN',4,'CU',2),(93,'FHOTRODDX3','ESQUIFDERA-BK',6,'CU',2),(94,'FHOTRODDX3','MANITFDER-BK',1,'CU',2),(95,'FHOTRODDX3','TARM1020',8,'CU',2),(96,'FHOTRODDX3','PARK205N',4,'CU',2),(97,'FHOTRODDX3','PARK2505N',4,'CU',2),(98,'FHOTRODDX3','FREZ206P',2,'CU',2),(99,'FHOTRODDX3','CHAPFDER-HR',2,'CU',2),(100,'FHOTRODDX3','FREZ1506P',4,'CU',1),(101,'FHOTRODDX3','CUEFDER-BK',5,'M2',2),(102,'FHOTRODDX3','VINIL',760,'CM3',2),(103,'FHOTRODDX3','FREZ1506N',8,'CU',1),(104,'FHOTRODDX3','FDERLOGO2',1,'CU',2),(105,'PERF1000','TP10028-25',1,'CU',1),(106,'PERF1000','BP10038-25',1,'CU',1),(107,'PERF1000','LPD3840-25',1,'CU',1),(108,'PERF1000','LPI3840-25',1,'CU',1),(109,'PERF1000','FP9520-25',1,'CU',1),(110,'PERF1000','FTEP9520-25',1,'CU',1),(111,'PERF1000','TOPFREP20-25x25',2,'CU',1),(112,'PERF1000','TOPFONP20-25x25',2,'CU',1),(113,'PERF1000','REGAFDERSTD-BKN',4,'CU',2),(114,'PERF1000','MANITFDER-BK',1,'CU',2),(115,'PERF1000','TARM1020',8,'CU',1),(116,'PERF1000','PARK205N',4,'CU',2),(117,'PERF1000','PARK2505N',4,'CU',2),(118,'PERF1000','FREZ206P',2,'CU',2),(119,'PERF1000','FREZ1506P',4,'CU',2),(120,'PERF1000','CUEFDER-BK',5,'M2',2),(121,'PERF1000','VINIL',820,'CM3',2),(122,'PERF1000','FREZ1506N',8,'CU',2),(123,'PERF1000','FDERLOGO3',1,'CU',2);
/*!40000 ALTER TABLE `recetamateriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetaprocesos`
--

DROP TABLE IF EXISTS `recetaprocesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetaprocesos` (
  `IDRecetaProcesos` int NOT NULL AUTO_INCREMENT,
  `IDProceso` varchar(5) NOT NULL,
  `Secuencia` int NOT NULL,
  `Duracion` time NOT NULL,
  `IDProducto` varchar(45) NOT NULL,
  PRIMARY KEY (`IDRecetaProcesos`),
  KEY `FKID_HojaRuta/RecetaMateriales_HojaRuta_idx` (`IDProceso`),
  KEY `FKID_RecetaProcesos_Producto_idx` (`IDProducto`),
  CONSTRAINT `FKID_HojaRuta/RecetaMateriales_HojaRuta` FOREIGN KEY (`IDProceso`) REFERENCES `procesos` (`IDProceso`),
  CONSTRAINT `FKID_RecetaProcesos_Producto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetaprocesos`
--

LOCK TABLES `recetaprocesos` WRITE;
/*!40000 ALTER TABLE `recetaprocesos` DISABLE KEYS */;
INSERT INTO `recetaprocesos` VALUES (1,'AC1',1,'35:00:00','BLUED4X10'),(2,'EN1',2,'45:00:00','BLUED4X10'),(3,'AC2',3,'28:00:00','BLUED4X10'),(4,'TAP',4,'15:00:00','BLUED4X10'),(5,'EN2',5,'25:00:00','BLUED4X10'),(6,'CC',6,'15:00:00','BLUED4X10'),(7,'AC1',1,'15:00:00','CT1X12WIDE23'),(8,'EN1',2,'35:00:00','CT1X12WIDE23'),(9,'AC2',3,'15:00:00','CT1X12WIDE23'),(10,'TAP',4,'56:00:00','CT1X12WIDE23'),(11,'EN2',5,'14:00:00','CT1X12WIDE23'),(12,'CC',6,'15:00:00','CT1X12WIDE23'),(13,'AC1',1,'20:00:00','FHOTRODDX3'),(14,'EN1',2,'35:00:00','FHOTRODDX3'),(15,'AC2',3,'30:00:00','FHOTRODDX3'),(16,'TAP',4,'68:00:00','FHOTRODDX3'),(17,'EN2',5,'25:00:00','FHOTRODDX3'),(18,'AC1',1,'35:00:00','MVCAB1+'),(19,'EN1',2,'40:00:00','MVCAB1+'),(20,'AC2',3,'15:00:00','MVCAB1+'),(21,'TAP',4,'68:00:00','MVCAB1+'),(22,'EN2',5,'25:00:00','MVCAB1+'),(23,'AC1',1,'35:00:00','MVCBO1'),(24,'EN1',2,'45:00:00','MVCBO1'),(25,'AC2',3,'28:00:00','MVCBO1'),(26,'TAP',4,'78:00:00','MVCBO1'),(27,'EN2',5,'25:00:00','MVCBO1'),(28,'CC',6,'15:00:00','MVCBO1');
/*!40000 ALTER TABLE `recetaprocesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remitocab`
--

DROP TABLE IF EXISTS `remitocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remitocab` (
  `IDRemitoCAB` int NOT NULL AUTO_INCREMENT,
  `IDEstado` int NOT NULL,
  `Fecha` date NOT NULL,
  `IDTipoEntrega` int NOT NULL,
  `IDFormaEntrega` int NOT NULL,
  `IDOrdenVentaCAB` int NOT NULL,
  PRIMARY KEY (`IDRemitoCAB`),
  KEY `FKID_RemitoCAB_Estado` (`IDEstado`),
  KEY `FK_IDTipoEntrega_idx` (`IDTipoEntrega`),
  KEY `FK_IDFormaEntrega_idx` (`IDFormaEntrega`),
  KEY `FKID_RemitoCAB_OrdenVentaCAB_idx` (`IDOrdenVentaCAB`),
  CONSTRAINT `FKID_FormaEntrega` FOREIGN KEY (`IDFormaEntrega`) REFERENCES `formaentrega` (`IDFormaEntrega`),
  CONSTRAINT `FKID_RemitoCAB_Estado` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `FKID_RemitoCAB_OrdenVenta` FOREIGN KEY (`IDOrdenVentaCAB`) REFERENCES `ordenventacab` (`IDOrdenVentaCAB`),
  CONSTRAINT `FKID_TipoEntrega` FOREIGN KEY (`IDTipoEntrega`) REFERENCES `tipoentrega` (`IDTipoEntrega`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitocab`
--

LOCK TABLES `remitocab` WRITE;
/*!40000 ALTER TABLE `remitocab` DISABLE KEYS */;
INSERT INTO `remitocab` VALUES (1,7,'2024-08-31',1,1,2),(2,7,'2024-08-31',1,1,1);
/*!40000 ALTER TABLE `remitocab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remitocab_BEFORE_INSERT` BEFORE INSERT ON `remitocab` FOR EACH ROW BEGIN
	call InsertarRegistro(1,  concat("Creacion remito nro ", new.IDRemitoCAB), "Remito CAB", 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remitocab_BEFORE_UPDATE` BEFORE UPDATE ON `remitocab` FOR EACH ROW BEGIN
	call InsertarRegistro(3,  concat("Modificacion remito nro ", new.idRemitoCAB), "Remito CAB", 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `remitodet`
--

DROP TABLE IF EXISTS `remitodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remitodet` (
  `IDRemitoDET` int NOT NULL AUTO_INCREMENT,
  `IDEstado` int NOT NULL,
  `IDRemitoCAB` int NOT NULL,
  `IDProducto` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `PesoKG` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`IDRemitoDET`),
  KEY `FKID_Estado` (`IDEstado`) /*!80000 INVISIBLE */,
  KEY `FKID_Producto` (`IDProducto`),
  KEY `FKID_RemitoDET_RemitoCAB_idx` (`IDRemitoCAB`),
  CONSTRAINT `FKID_RemitoDET_Estado` FOREIGN KEY (`IDEstado`) REFERENCES `estados` (`IDEstados`),
  CONSTRAINT `FKID_RemitoDET_Producto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`),
  CONSTRAINT `FKID_RemitoDET_RemitoCAB` FOREIGN KEY (`IDRemitoCAB`) REFERENCES `remitocab` (`IDRemitoCAB`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitodet`
--

LOCK TABLES `remitodet` WRITE;
/*!40000 ALTER TABLE `remitodet` DISABLE KEYS */;
INSERT INTO `remitodet` VALUES (1,7,2,'BLUED4X10',15,NULL);
/*!40000 ALTER TABLE `remitodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reposicion`
--

DROP TABLE IF EXISTS `reposicion`;
/*!50001 DROP VIEW IF EXISTS `reposicion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reposicion` AS SELECT 
 1 AS `IDArticulo`,
 1 AS `Descripcion`,
 1 AS `Stock`,
 1 AS `StockMin`,
 1 AS `Diferencia`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reserva_materiales`
--

DROP TABLE IF EXISTS `reserva_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_materiales` (
  `idreserva_materiales` int NOT NULL AUTO_INCREMENT,
  `IDArticulo` varchar(45) NOT NULL,
  `IDVentaCAB` int NOT NULL,
  `IDProducto` varchar(45) NOT NULL,
  `Cantidad` int NOT NULL,
  `Detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`idreserva_materiales`),
  KEY `fk_reserva_articulo_idx` (`IDArticulo`),
  KEY `fk_reserva_producto_idx` (`IDProducto`) /*!80000 INVISIBLE */,
  KEY `fk_reserva_ventacab_idx` (`IDVentaCAB`),
  CONSTRAINT `fk_reserva_articulo` FOREIGN KEY (`IDArticulo`) REFERENCES `articulo` (`IDArticulo`),
  CONSTRAINT `fk_reserva_producto` FOREIGN KEY (`IDProducto`) REFERENCES `producto` (`IDProducto`),
  CONSTRAINT `fk_reserva_ventacab` FOREIGN KEY (`IDVentaCAB`) REFERENCES `ordenventacab` (`IDOrdenVentaCAB`)
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_materiales`
--

LOCK TABLES `reserva_materiales` WRITE;
/*!40000 ALTER TABLE `reserva_materiales` DISABLE KEYS */;
INSERT INTO `reserva_materiales` VALUES (436,'TP10028-25',16,'BLUED4X10',1,'Venta cab: 16'),(437,'BP10038-25',16,'BLUED4X10',1,'Venta cab: 16'),(438,'LPD3840-25',16,'BLUED4X10',1,'Venta cab: 16'),(439,'LPI3840-25',16,'BLUED4X10',1,'Venta cab: 16'),(440,'FP9520-25',16,'BLUED4X10',1,'Venta cab: 16'),(441,'FTEP9520-25',16,'BLUED4X10',1,'Venta cab: 16'),(442,'TOPFREP20-25x25',16,'BLUED4X10',2,'Venta cab: 16'),(443,'TOPFONP20-25x25',16,'BLUED4X10',2,'Venta cab: 16'),(444,'REGAFDERSTD-BKN',16,'BLUED4X10',4,'Venta cab: 16'),(445,'MANITFDER-BK',16,'BLUED4X10',1,'Venta cab: 16'),(446,'TARM1020',16,'BLUED4X10',8,'Venta cab: 16'),(447,'PARK205N',16,'BLUED4X10',4,'Venta cab: 16'),(448,'PARK2505N',16,'BLUED4X10',4,'Venta cab: 16'),(449,'FREZ206P',16,'BLUED4X10',2,'Venta cab: 16'),(450,'FREZ1506P',16,'BLUED4X10',4,'Venta cab: 16'),(451,'TELAFDER-BD',16,'BLUED4X10',6,'Venta cab: 16'),(452,'VINIL',16,'BLUED4X10',760,'Venta cab: 16'),(453,'FREZ1506N',16,'BLUED4X10',8,'Venta cab: 16'),(454,'FDERLOGO1',16,'BLUED4X10',1,'Venta cab: 16'),(455,'TP10028-25',17,'BLUED4X10',1,'Venta cab: 17'),(456,'BP10038-25',17,'BLUED4X10',1,'Venta cab: 17'),(457,'LPD3840-25',17,'BLUED4X10',1,'Venta cab: 17'),(458,'LPI3840-25',17,'BLUED4X10',1,'Venta cab: 17'),(459,'FP9520-25',17,'BLUED4X10',1,'Venta cab: 17'),(460,'FTEP9520-25',17,'BLUED4X10',1,'Venta cab: 17'),(461,'TOPFREP20-25x25',17,'BLUED4X10',2,'Venta cab: 17'),(462,'TOPFONP20-25x25',17,'BLUED4X10',2,'Venta cab: 17'),(463,'REGAFDERSTD-BKN',17,'BLUED4X10',4,'Venta cab: 17'),(464,'MANITFDER-BK',17,'BLUED4X10',1,'Venta cab: 17'),(465,'TARM1020',17,'BLUED4X10',8,'Venta cab: 17'),(466,'PARK205N',17,'BLUED4X10',4,'Venta cab: 17'),(467,'PARK2505N',17,'BLUED4X10',4,'Venta cab: 17'),(468,'FREZ206P',17,'BLUED4X10',2,'Venta cab: 17'),(469,'FREZ1506P',17,'BLUED4X10',4,'Venta cab: 17'),(470,'TELAFDER-BD',17,'BLUED4X10',6,'Venta cab: 17'),(471,'VINIL',17,'BLUED4X10',760,'Venta cab: 17'),(472,'FREZ1506N',17,'BLUED4X10',8,'Venta cab: 17'),(473,'FDERLOGO1',17,'BLUED4X10',1,'Venta cab: 17'),(486,'TC10028-25',17,'FHOTRODDX3',1,'Venta cab: 17'),(487,'BC10038-25',17,'FHOTRODDX3',1,'Venta cab: 17'),(488,'LCD3840-25',17,'FHOTRODDX3',1,'Venta cab: 17'),(489,'LCI3840-25',17,'FHOTRODDX3',1,'Venta cab: 17'),(490,'FC9520-25',17,'FHOTRODDX3',1,'Venta cab: 17'),(491,'FTEC9520-25',17,'FHOTRODDX3',1,'Venta cab: 17'),(492,'TOPFREC20-25x25',17,'FHOTRODDX3',2,'Venta cab: 17'),(493,'TOPFONC20-25x25',17,'FHOTRODDX3',2,'Venta cab: 17'),(494,'REGAFDERSTD-BKN',17,'FHOTRODDX3',4,'Venta cab: 17'),(495,'ESQUIFDERA-BK',17,'FHOTRODDX3',6,'Venta cab: 17'),(496,'MANITFDER-BK',17,'FHOTRODDX3',1,'Venta cab: 17'),(497,'TARM1020',17,'FHOTRODDX3',8,'Venta cab: 17'),(498,'PARK205N',17,'FHOTRODDX3',4,'Venta cab: 17'),(499,'PARK2505N',17,'FHOTRODDX3',4,'Venta cab: 17'),(500,'FREZ206P',17,'FHOTRODDX3',2,'Venta cab: 17'),(501,'CHAPFDER-HR',17,'FHOTRODDX3',2,'Venta cab: 17'),(502,'FREZ1506P',17,'FHOTRODDX3',4,'Venta cab: 17'),(503,'CUEFDER-BK',17,'FHOTRODDX3',5,'Venta cab: 17'),(504,'VINIL',17,'FHOTRODDX3',760,'Venta cab: 17'),(505,'FREZ1506N',17,'FHOTRODDX3',8,'Venta cab: 17'),(506,'FDERLOGO2',17,'FHOTRODDX3',1,'Venta cab: 17'),(517,'TP10028-25',17,'PERF1000',1,'Venta cab: 17'),(518,'BP10038-25',17,'PERF1000',1,'Venta cab: 17'),(519,'LPD3840-25',17,'PERF1000',1,'Venta cab: 17'),(520,'LPI3840-25',17,'PERF1000',1,'Venta cab: 17'),(521,'FP9520-25',17,'PERF1000',1,'Venta cab: 17'),(522,'FTEP9520-25',17,'PERF1000',1,'Venta cab: 17'),(523,'TOPFREP20-25x25',17,'PERF1000',2,'Venta cab: 17'),(524,'TOPFONP20-25x25',17,'PERF1000',2,'Venta cab: 17'),(525,'REGAFDERSTD-BKN',17,'PERF1000',4,'Venta cab: 17'),(526,'MANITFDER-BK',17,'PERF1000',1,'Venta cab: 17'),(527,'TARM1020',17,'PERF1000',8,'Venta cab: 17'),(528,'PARK205N',17,'PERF1000',4,'Venta cab: 17'),(529,'PARK2505N',17,'PERF1000',4,'Venta cab: 17'),(530,'FREZ206P',17,'PERF1000',2,'Venta cab: 17'),(531,'FREZ1506P',17,'PERF1000',4,'Venta cab: 17'),(532,'CUEFDER-BK',17,'PERF1000',5,'Venta cab: 17'),(533,'VINIL',17,'PERF1000',820,'Venta cab: 17'),(534,'FREZ1506N',17,'PERF1000',8,'Venta cab: 17'),(535,'FDERLOGO3',17,'PERF1000',1,'Venta cab: 17');
/*!40000 ALTER TABLE `reserva_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubros`
--

DROP TABLE IF EXISTS `rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubros` (
  `IDRubros` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`IDRubros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubros`
--

LOCK TABLES `rubros` WRITE;
/*!40000 ALTER TABLE `rubros` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoentrega`
--

DROP TABLE IF EXISTS `tipoentrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoentrega` (
  `IDTipoEntrega` int NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Desc` varchar(80) NOT NULL,
  PRIMARY KEY (`IDTipoEntrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoentrega`
--

LOCK TABLES `tipoentrega` WRITE;
/*!40000 ALTER TABLE `tipoentrega` DISABLE KEYS */;
INSERT INTO `tipoentrega` VALUES (1,'Completa','La orden entera se entrega en un solo envio'),(2,'Parcial','La orden se va entregando a medida que se fabrican los productos');
/*!40000 ALTER TABLE `tipoentrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoproducto`
--

DROP TABLE IF EXISTS `tipoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoproducto` (
  `idTipo` int NOT NULL,
  `TipoDetalle` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoproducto`
--

LOCK TABLES `tipoproducto` WRITE;
/*!40000 ALTER TABLE `tipoproducto` DISABLE KEYS */;
INSERT INTO `tipoproducto` VALUES (1,'COMBO'),(2,'CABEZAL'),(3,'CAJA'),(4,'COMPONENTE'),(5,'INSUMO'),(6,'SERVICIOS');
/*!40000 ALTER TABLE `tipoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadmedida`
--

DROP TABLE IF EXISTS `unidadmedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidadmedida` (
  `IDUnidadMedida` varchar(5) NOT NULL,
  `Detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`IDUnidadMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadmedida`
--

LOCK TABLES `unidadmedida` WRITE;
/*!40000 ALTER TABLE `unidadmedida` DISABLE KEYS */;
INSERT INTO `unidadmedida` VALUES ('CM3','CENTIMETROS CUBICOS'),('CU','CADA UNO'),('KG','KILOGRAMO'),('KWH','KILOWATS HORA'),('LTS','LITROS'),('M2','METROS CUADRADOS'),('ML','METROS LINEALES'),('MM','MILIMETROS');
/*!40000 ALTER TABLE `unidadmedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'box_beni_piza_joaquin_v2'
--

--
-- Dumping routines for database 'box_beni_piza_joaquin_v2'
--
/*!50003 DROP FUNCTION IF EXISTS `conseguir_costo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `conseguir_costo`(PIDProducto VARCHAR(45)) RETURNS decimal(12,2)
    NO SQL
    DETERMINISTIC
BEGIN
	DECLARE VCosto Decimal(12,2);
	Select sum(a.valor * rm.cantidad) into VCosto from recetaMateriales rm join articulo a on a.idarticulo = rm.idarticulo  where PIDProducto = IDProducto ;
RETURN VCosto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GET_COSTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GET_COSTO`(PIDProducto VARCHAR(45)) RETURNS decimal(12,2)
    NO SQL
    DETERMINISTIC
BEGIN
	DECLARE VCosto Decimal(12,2);
	Select sum(a.valor * rm.cantidad) into VCosto from recetaMateriales rm join articulo a on a.idarticulo = rm.idarticulo  where PIDProducto = IDProducto ;
RETURN VCosto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `OF_CAB_FINALIZADA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `OF_CAB_FINALIZADA`(p_IDOrdenFabricacionCAB int) RETURNS varchar(1) CHARSET utf8mb3
    DETERMINISTIC
BEGIN

	RETURN if(exists(
    select OF_DET_FINALIZADA(idordenfabricaciondet)
	from OrdenFabricacionDET
	where IDOrdenFabricacionCAB = p_IDOrdenFabricacionCAB  and OF_DET_FINALIZADA(idordenfabricaciondet) = "P"),
    
    "P", "F");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `OF_DET_FINALIZADA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `OF_DET_FINALIZADA`(p_IDOrdenFabricacionDet int) RETURNS varchar(1) CHARSET utf8mb3
    DETERMINISTIC
BEGIN
	declare v_CantidadTerminadaPorProceso int;
	declare v_CantidadPedida decimal(12,2);
	declare v_CantidadProcesos int;
	declare v_IDProducto varchar(45); 

	select sum(c.cantidad) into v_CantidadTerminadaPorProceso
	from ordenfabricaciondet a
	join recetaprocesos b on a.IDProducto = b.IDProducto 
	left join notificacion c on c.IDProceso = b.IDProceso and c.IDOrdenFabricacionDET = a.IDOrdenFabricacionDET
	where a.IDOrdenFabricacionDET = p_IDOrdenFabricacionDet
	group by b.iDPRODUCTO;

	select QTY into v_CantidadPedida from ordenfabricaciondet where IDOrdenFabricacionDET = p_IDOrdenFabricacionDet;

	select idproducto into v_IDProducto from ordenfabricaciondet where IDOrdenFabricacionDET = p_IDOrdenFabricacionDet;

	select count(idproceso) into v_CantidadProcesos from recetaprocesos where IDProducto = v_IDProducto;
	
	
	RETURN if(v_CantidadProcesos * v_CantidadPedida = v_CantidadTerminadaPorProceso, "F", "P");
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Positivo_Negativo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Positivo_Negativo`(PNumero INT) RETURNS varchar(10) CHARSET utf8mb3
    NO SQL
    DETERMINISTIC
BEGIN
    IF PNumero >= 0 THEN
        RETURN 'Positivo';
    ELSE 
        RETURN 'Negativo';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CC_Cliente_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CC_Cliente_2`(in Pcliente int)
BEGIN

    DROP TEMPORARY TABLE IF EXISTS `CCtemp`;
    CREATE TEMPORARY TABLE `CCtemp` (
        `Comprobante` INT NOT NULL DEFAULT 0,
        `tipo` CHAR(2),
        `Fecha` DATE,
        `Debe` DECIMAL(8,2),
        `Haber` DECIMAL(8,2),
        `Saldo` DECIMAL(8,2),
        `Linea` INT NOT NULL AUTO_INCREMENT KEY,
        INDEX `Idx_Fecha` (`Fecha`)
    );
    insert into ccTemp (Comprobante, tipo, Fecha, Debe, Haber)
    select IDFacturaCab,"FC",fecha,total,0 from facturacab where PCliente = idcliente;
    insert into ccTemp(Comprobante, tipo, Fecha, Debe, Haber)
    select d.idfacturacab,"PC",c.fecha,0,c.total from pagoclientecab c join pagoclientedet d on idpagoclientecab = idpagocab where c.idcliente = PCliente;

    call UpdateSaldo();
    
	select * from cctemp order by fecha asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_All_Products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_All_Products`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE current_id VARCHAR(45);
    DECLARE product_cursor CURSOR FOR SELECT IDProducto FROM producto;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN product_cursor;

    read_loop: LOOP
        FETCH product_cursor INTO current_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Call your function or stored procedure here
        -- Assuming you have a function named `Check_Stock_Producto_2`
        call box_beni_piza_joaquin_v2.Put_Costo(current_id); -- Replace `some_quantity` as needed
    END LOOP;

    CLOSE product_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Product_Procesable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Product_Procesable`(IN P_IDProducto varchar(45), IN P_Cantidad INT)
BEGIN
    DECLARE product_exists INT;

    -- Check if the product exists and the stock condition is met
    SELECT COUNT(*)
    INTO product_exists
    FROM producto p 
    JOIN recetaMateriales r ON p.idProducto = r.IdProducto 
    JOIN articulo a ON r.iDArticulo = a.IDArticulo   
    WHERE p.idProducto = P_IDProducto 
      AND a.Stock - r.cantidad * P_Cantidad < 0;

    IF product_exists > 0 THEN
        -- If the product exists and is not processable
        SELECT P_IDProducto, 'N' AS Procesable;
    ELSE
        -- If the product is processable
        SELECT P_IDProducto, 'S',product_exists AS Procesable;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Stock_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Stock_Producto`(PIDProducto VARCHAR(45), PCantidad INT)
BEGIN
    SELECT 
        p.IDProducto,
        r.IDArticulo,
        r.cantidad * PCantidad AS Qty_Necesaria,
        a.Stock - COALESCE((SELECT SUM(m.cantidad) FROM reserva_materiales m WHERE m.idarticulo = r.idarticulo), 0)  AS Stock_Disponible,
        (a.Stock - (r.cantidad * PCantidad)) - COALESCE((SELECT SUM(m.cantidad)  FROM reserva_materiales m WHERE m.idarticulo = r.idarticulo), 0) AS Diff 
    FROM 
        producto p 
    JOIN 
        recetaMateriales r ON p.idProducto = r.IdProducto 
    JOIN 
        articulo a ON r.iDArticulo = a.IDArticulo   
    WHERE 
        p.idProducto = PIDProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Stock_Producto_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Stock_Producto_2`(P_IDProducto varchar(45), P_Cantidad int)
BEGIN
	if exists(
    	Select p.IDProducto
    from producto p join recetaMateriales r on p.idProducto = r.IdProducto 
    join articulo a on r.iDArticulo = a.IDArticulo   
    where p.idProducto = P_IDProducto and (a.Stock - (r.cantidad * P_Cantidad)) - COALESCE((SELECT SUM(m.cantidad) FROM reserva_materiales m WHERE m.idarticulo = r.idarticulo), 0) < 0) then
		select P_IDProducto, "N" as Procesable;
	else 
		select P_IDProducto, "S"  as Procesable;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Estado_OF_Item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Estado_OF_Item`(P_IDOrdenFabricacionCAB int, P_IDProducto Varchar(45))
BEGIN
	Select b.IDOrdenFabricacionCAB as "Orden", b.IDVentasDet as "Item", 
    b.Qty as "Qty Pedida", b.IDEstado, c.IDProceso, c.cantidad as "Qty Procesada",
    c.Fecha,c.Hora,c.IDEmpleado as "Operario"   
    from ordenFabricacionCAB a 
    join ordenFabricacionDET b on b.IDOrdenFabricacionCAB = a.IDOrdenFabricacionCAB
    join notificacion c on b.IDOrdenFabricacionDET = c.IDOrdenFabricacionDET
    WHERE P_IDOrdenFabricacionCAB = a.idOrdenFabricacionCAB and b.IDProducto = P_IDProducto
    order by c.IDProceso;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Estado_OF_Item_CT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Estado_OF_Item_CT`(P_IDOrdenFabricacionCAB int)
BEGIN
	Select b.IDOrdenFabricacionCAB as "Orden", b.IDVentasDet as "Item", b.IDProducto as "Producto",
    b.Qty as "Qty Pedida", c.IDProceso as "Centro", sum(c.cantidad) as "Qty Procesada", b.Qty - sum(c.cantidad) as "Pendiente"
    from ordenFabricacionCAB a 
    join ordenFabricacionDET b on b.IDOrdenFabricacionCAB = a.IDOrdenFabricacionCAB
    join notificacion c on b.IDOrdenFabricacionDET = c.IDOrdenFabricacionDET
    WHERE P_IDOrdenFabricacionCAB = a.idOrdenFabricacionCAB
    GROUP BY c.IDProceso, b.IDProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FACTURA_REMITO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FACTURA_REMITO`(PIDRemito int, PIDUsuario int)
BEGIN
	-- Declare variables
    DECLARE VCliente INT;
    DECLARE VDireccion INT;
    DECLARE VOrdenVentaCAB INT;
    DECLARE VTotal DECIMAL(12,2);
    DECLARE VFacturaCAB INT;


    SELECT IDOrdenVentaCab INTO VOrdenVentaCAB 
    FROM remitocab 
    WHERE PIDRemito = PIDRemito
    limit 1;
	
    SELECT idcliente INTO VCliente 
    FROM ordenventacab 
    WHERE VOrdenVentaCAB = IDOrdenVentaCAB
    limit 1;
	
    SELECT iddireccion INTO VDireccion 
    FROM direccion 
    WHERE idPersona = VCliente
    limit 1;
    
    SELECT ImporteTotal INTO VTotal 
    FROM ordenventacab 
    WHERE IDOrdenVentaCab = VOrdenVentaCAB
    Limit 1;

    IF NOT EXISTS (SELECT * FROM facturacab WHERE IDRemitoCAB = PIDRemito) THEN
        SELECT count(*) + 1 INTO VFacturaCAB 
        FROM facturacab;
        SELECT IDProducto, cantidad, punitario, importe, VFacturaCAB
        FROM ordenventadet 
        WHERE IDOrdenVentaCab = VOrdenVentaCAB;
        INSERT INTO facturacab (IDFacturaCAB, IDRemitoCAB, Fecha, IDDireccion, Total, IDEmpleado) 
        VALUES (VFacturaCAB, PIDRemito , CURDATE(), VDireccion, VTotal, PIDUsuario);
		
        INSERT INTO facturadet (IDProducto, Cantidad ,Unitario, Importe, IDFacturaCAB) 
        SELECT IDProducto, cantidad, punitario, importe, VFacturaCAB
        FROM ordenventadet 
        WHERE IDOrdenVentaCab = VOrdenVentaCAB;
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Costo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Costo`(PIDProducto varchar(45))
BEGIN
	Select rm.idproducto,sum(a.valor * rm.cantidad) as costo from recetaMateriales rm join articulo a on a.idarticulo = rm.idarticulo  where PIDProducto = IDProducto ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarRegistro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarRegistro`(PIDTipo int, PIDDetalle varchar(80), PIDTabla varchar(45), PIDUsuario int)
BEGIN
	INSERT INTO audit (idMov, DetMov, Fecha, Tiempo, idUsr, Tabla) values (PIDTipo,
    PIDDetalle, curdate(), Curtime(),PIDUsuario,PIDTabla);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarVentaCAB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarVentaCAB`(in tipo_pago varchar(45), tipo_entrega varchar(45), pimporte decimal(12,2), razon_cli varchar(45))
BEGIN
	declare vidcliente int;
    declare vidventacab int;
    declare vidpago int;
    select idcliente into vidcliente from cliente where razon_cli = razsoc;
    select idpago into vidpago from formapago where Descripcion = tipo_pago;
    select count(*) + 1 into vidventacab from ordenventacab;
    
    insert into ordenventacab(idordenventacab, idcliente, idestado, idformapago, fechaalta, importetotal, tipoentrega) values (vidventacab,vidcliente,1,vidpago,curdate(),pimporte, tipo_entrega);
    select vidventacab;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarVentaDET` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarVentaDET`(pidventacab int ,pidproducto varchar(45),pcantidad int, ppunitario decimal(12,2))
BEGIN
	DECLARE v_detalle VARCHAR(45);
    SET v_detalle = CONCAT('Venta cab: ', pidventacab);
    INSERT INTO reserva_materiales (IDArticulo, Cantidad, Detalle, IDProducto,IDVentaCab)
    SELECT r.IDArticulo, r.cantidad * pcantidad, v_detalle, pidproducto, pidventacab
    FROM recetaMateriales r
    WHERE r.IDProducto = pidproducto;
	insert into ordenventadet(idordenventacab,idproducto ,cantidad ,punitario  ,importe) values 
							  (pidventacab   ,pidproducto,pcantidad, ppunitario, ppunitario * cantidad);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_venta_cab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_venta_cab`()
BEGIN

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerEstadoCuentaCorriente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerEstadoCuentaCorriente`(
    IN p_idCliente INT
)
BEGIN
	DROP TEMPORARY TABLE IF EXISTS TempMovimientos;
    DROP TEMPORARY TABLE IF EXISTS TempSaldo;
    -- Crear una tabla temporal para almacenar los movimientos
    CREATE TEMPORARY TABLE TempMovimientos (
        ID INT AUTO_INCREMENT PRIMARY KEY,
        Tipo VARCHAR(10),
        IDMovimiento INT,
        Fecha DATE,
        Monto DECIMAL(12, 2),
        Pagado DECIMAL(12, 2),
        Saldo DECIMAL(12, 2) DEFAULT 0
    );

    -- Insertar las facturas del cliente en la tabla temporal
    INSERT INTO TempMovimientos (Tipo, IDMovimiento, Fecha, Monto, Pagado)
    SELECT
        'Factura' AS Tipo,
        f.IDFacturaCAB AS IDMovimiento,
        f.Fecha,
        f.Total AS Monto,
        0 AS Pagado
    FROM
        facturacab f
    WHERE
        f.IDCliente = p_idCliente;

    -- Insertar los pagos del cliente en la tabla temporal
    INSERT INTO TempMovimientos (Tipo, IDMovimiento, Fecha, Monto, Pagado)
    SELECT
        'Pago' AS Tipo,
        p.idpagoclientecab AS IDMovimiento,
        p.fecha,
        0 AS Monto,
        p.total AS Pagado
    FROM
        pagoclientecab p
    WHERE
        p.idcliente = p_idCliente;

    -- Crear una tabla temporal adicional para calcular el saldo acumulado
    CREATE TEMPORARY TABLE TempSaldo (
        ID INT PRIMARY KEY AUTO_INCREMENT,
        Saldo DECIMAL(12, 2)
    );

    -- Inicializar el saldo acumulado
    SET @saldo_acumulado := 0.00;

    -- Calcular el saldo acumulado y almacenarlo en TempSaldo
    INSERT INTO TempSaldo (Saldo)
    SELECT 
        (@saldo_acumulado := @saldo_acumulado + (Monto - Pagado)) AS Saldo
    FROM 
        TempMovimientos
    ORDER BY 
        Fecha ASC;

    -- Actualizar la tabla TempMovimientos con el saldo calculado
    UPDATE TempMovimientos t
    JOIN TempSaldo s ON t.ID = s.ID
    SET t.Saldo = s.Saldo;

    -- Seleccionar todos los registros de la tabla temporal ordenados cronológicamente
    SELECT * FROM TempMovimientos
    ORDER BY Fecha ASC;

    -- Eliminar las tablas temporales después de su uso
   

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prueba_temp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prueba_temp`()
BEGIN
	CREATE TEMPORARY TABLE temp_articulo (
    IDArticulo VARCHAR(45) PRIMARY KEY,
    Stock DECIMAL(12, 2)
	);
	INSERT INTO temp_articulo (IDArticulo, Stock)
            SELECT a.IDArticulo, a.Stock - COALESCE((select sum(cantidad) from reserva_materiales where IDArticulo = a.idarticulo),0) FROM box_beni_piza_joaquin_v2.articulo a;
	
    select * from temp_articulo;
    DROP TEMPORARY TABLE IF EXISTS temp_articulo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Put_Costo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Put_Costo`(P_IDProducto VARCHAR(45))
BEGIN
	declare VPrecio Decimal(12,2);
    DECLARE VPrecioUnitario DECIMAL(12,2);
    declare VMargen Decimal(12,2);
    
	select conseguir_costo(P_IDPRODUCTO) into VPRECIO;
    select margen INTO VMargen from producto where IDProducto = P_IDProducto;

    
    update producto
    set costo = VPrecio, PUnitario = VPrecio * (1 + (VMargen / 100))
    where IDProducto = P_IDProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Receta_Mat_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Receta_Mat_Producto`(PIDProducto varchar(45))
BEGIN

	
	Select rm.idproducto,rm.idarticulo,rm.cantidad,a.stock,a.valor from recetaMateriales rm join articulo a on a.idarticulo = rm.idarticulo  where PIDProducto = IDProducto ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `REMITO_OF` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `REMITO_OF`(p_IDOrdenFabricacionCAB int, p_IDCliente int)
BEGIN
	declare v_IDTipoEntrega int;
	declare v_IDFormaEntrega int;
        
        
	if (exists(select IDOrdenFabricacionCAB from remitocab where IDOrdenFabricacionCAB = p_IDOrdenFabricacionCAB)) then 
		select "El remito ya fue creado";
	elseif (not exists(select IDOrdenFabricacionDET from items_terminados where IDOrdenFabricacionCAB = p_IDOrdenFabricacionCAB)) then
		select "No se completo ni un item de la OF"; 
	else
		select IDTipoEntrega into v_IDTipoEntrega  from OrdenFabricacionCAB where IDOrdenFabricacionCAB = p_IDOrdenFabricacionCAB;
		select IDFormaEntrega into v_IDFormaEntrega  from OrdenFabricacionCAB where IDOrdenFabricacionCAB = p_IDOrdenFabricacionCAB;
    
		
		insert into remitocab(IDOrdenFabricacionCAB, IDEstado, Fecha, IDTipoEntrega, IDFormaEntrega)
        values (p_IDOrdenFabricacionCAB, 7, curdate(), v_IDTipoEntrega, v_IDFormaEntrega);
        
        insert into remitodet(IDEstado, IDRemitoCAB, IDProducto, Cantidad, PesoKG)
		select 7, b.IDRemitoCAB, a.IDProducto, a.qty, null
		from OrdenFabricacionDET a
		join remitocab b on a.IDOrdenFabricacionCAB = b.IDOrdenFabricacionCAB
		where OF_DET_FINALIZADA(a.IDOrdenFabricacionDET) = "F";
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SALDOS_FACTURAS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SALDOS_FACTURAS`(PIDCliente int)
BEGIN
	select  PIDCliente as "Cliente",fc.idfacturacab as "Comprobante",fc.total as "Importe",sum(pc.total) as "Pagos", fc.total - sum(pc.total) as "Saldo"
    from facturacab fc 
	join pagoclientecab pc on fc.idcliente = pc.idcliente
    where fc.idcliente = PIDCliente
    group by fc.idfacturacab;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSaldo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSaldo`()
BEGIN
    DECLARE counter INT;
    declare saldo_calculado Decimal(12,2);
    set counter = 1;
	while counter <= (SELECT COUNT(*) FROM CCtemp) + 1 DO
		SET saldo_calculado = (SELECT sum(Debe) - sum(Haber) 
                               FROM CCtemp 
                               WHERE Linea <= counter);
		update cctemp
        set saldo = saldo_calculado where counter = Linea;
        set counter = counter + 1;
     end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `productos_detalles`
--

/*!50001 DROP VIEW IF EXISTS `productos_detalles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_detalles` AS select `p`.`IDProducto` AS `IDProducto`,`p`.`Descripcion` AS `Descripcion`,`c`.`RazSoc` AS `RazSoc`,count(`b`.`IDProducto`) AS `QTY Materiales` from ((`producto` `p` left join `recetamateriales` `b` on((`p`.`IDProducto` = `b`.`IDProducto`))) join `cliente` `c` on((`c`.`IDCliente` = `p`.`IDCliente`))) group by `p`.`IDProducto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reposicion`
--

/*!50001 DROP VIEW IF EXISTS `reposicion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reposicion` AS select `articulo`.`IDArticulo` AS `IDArticulo`,`articulo`.`Descripcion` AS `Descripcion`,`articulo`.`Stock` AS `Stock`,`articulo`.`StockMin` AS `StockMin`,(`articulo`.`StockMin` - `articulo`.`Stock`) AS `Diferencia` from `articulo` where ((`articulo`.`StockMin` - `articulo`.`Stock`) >= 0) */;
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

-- Dump completed on 2024-10-25 21:45:31
