-- MySQL dump 10.13  Distrib 5.6.23, for Linux (x86_64)
--
-- Host: localhost    Database: employees
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Temporary view structure for view `current_dept_emp`
--

DROP TABLE IF EXISTS `current_dept_emp`;
/*!50001 DROP VIEW IF EXISTS `current_dept_emp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `current_dept_emp` AS SELECT 
 1 AS `emp_no`,
 1 AS `dept_no`,
 1 AS `from_date`,
 1 AS `to_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--
-- WHERE:  true limit 100

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('d009','Customer Service'),('d005','Development'),('d002','Finance'),('d003','Human Resources'),('d001','Marketing'),('d004','Production'),('d006','Quality Management'),('d008','Research'),('d007','Sales');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_emp`
--

DROP TABLE IF EXISTS `dept_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_emp`
--
-- WHERE:  true limit 100

LOCK TABLES `dept_emp` WRITE;
/*!40000 ALTER TABLE `dept_emp` DISABLE KEYS */;
INSERT INTO `dept_emp` VALUES (10001,'d005','1986-06-26','9999-01-01'),(10002,'d007','1996-08-03','9999-01-01'),(10003,'d004','1995-12-03','9999-01-01'),(10004,'d004','1986-12-01','9999-01-01'),(10005,'d003','1989-09-12','9999-01-01'),(10006,'d005','1990-08-05','9999-01-01'),(10007,'d008','1989-02-10','9999-01-01'),(10008,'d005','1998-03-11','2000-07-31'),(10009,'d006','1985-02-18','9999-01-01'),(10010,'d004','1996-11-24','2000-06-26'),(10010,'d006','2000-06-26','9999-01-01'),(10011,'d009','1990-01-22','1996-11-09'),(10012,'d005','1992-12-18','9999-01-01'),(10013,'d003','1985-10-20','9999-01-01'),(10014,'d005','1993-12-29','9999-01-01'),(10015,'d008','1992-09-19','1993-08-22'),(10016,'d007','1998-02-11','9999-01-01'),(10017,'d001','1993-08-03','9999-01-01'),(10018,'d004','1992-07-29','9999-01-01'),(10018,'d005','1987-04-03','1992-07-29'),(10019,'d008','1999-04-30','9999-01-01'),(10020,'d004','1997-12-30','9999-01-01'),(10021,'d005','1988-02-10','2002-07-15'),(10022,'d005','1999-09-03','9999-01-01'),(10023,'d005','1999-09-27','9999-01-01'),(10024,'d004','1998-06-14','9999-01-01'),(10025,'d005','1987-08-17','1997-10-15'),(10026,'d004','1995-03-20','9999-01-01'),(10027,'d005','1995-04-02','9999-01-01'),(10028,'d005','1991-10-22','1998-04-06'),(10029,'d004','1991-09-18','1999-07-08'),(10029,'d006','1999-07-08','9999-01-01'),(10030,'d004','1994-02-17','9999-01-01'),(10031,'d005','1991-09-01','9999-01-01'),(10032,'d004','1990-06-20','9999-01-01'),(10033,'d006','1987-03-18','1993-03-24'),(10034,'d007','1995-04-12','1999-10-31'),(10035,'d004','1988-09-05','9999-01-01'),(10036,'d003','1992-04-28','9999-01-01'),(10037,'d005','1990-12-05','9999-01-01'),(10038,'d009','1989-09-20','9999-01-01'),(10039,'d003','1988-01-19','9999-01-01'),(10040,'d005','1993-02-14','2002-01-22'),(10040,'d008','2002-01-22','9999-01-01'),(10041,'d007','1989-11-12','9999-01-01'),(10042,'d002','1993-03-21','2000-08-10'),(10043,'d005','1990-10-20','9999-01-01'),(10044,'d004','1994-05-21','9999-01-01'),(10045,'d004','1996-11-16','9999-01-01'),(10046,'d008','1992-06-20','9999-01-01'),(10047,'d004','1989-03-31','9999-01-01'),(10048,'d005','1985-02-24','1987-01-27'),(10049,'d009','1992-05-04','9999-01-01'),(10050,'d002','1990-12-25','1992-11-05'),(10050,'d007','1992-11-05','9999-01-01'),(10051,'d004','1992-10-15','9999-01-01'),(10052,'d008','1997-01-31','9999-01-01'),(10053,'d007','1994-11-13','9999-01-01'),(10054,'d003','1995-07-29','9999-01-01'),(10055,'d001','1992-04-27','1995-07-22'),(10056,'d005','1990-02-01','9999-01-01'),(10057,'d005','1992-01-15','9999-01-01'),(10058,'d001','1988-04-25','9999-01-01'),(10059,'d002','1991-06-26','9999-01-01'),(10060,'d007','1989-05-28','1992-11-11'),(10060,'d009','1992-11-11','9999-01-01'),(10061,'d007','1989-12-02','9999-01-01'),(10062,'d005','1991-08-30','9999-01-01'),(10063,'d004','1989-04-08','9999-01-01'),(10064,'d008','1985-11-20','1992-03-02'),(10065,'d005','1998-05-24','9999-01-01'),(10066,'d005','1986-02-26','9999-01-01'),(10067,'d006','1987-03-04','9999-01-01'),(10068,'d007','1987-08-07','9999-01-01'),(10069,'d004','1992-06-14','9999-01-01'),(10070,'d005','1985-10-14','1995-10-18'),(10070,'d008','1995-10-18','9999-01-01'),(10071,'d003','1995-08-05','9999-01-01'),(10072,'d005','1989-05-21','9999-01-01'),(10073,'d006','1998-02-02','1998-02-22'),(10074,'d005','1990-08-13','9999-01-01'),(10075,'d005','1988-05-17','2001-01-15'),(10076,'d005','1996-07-15','9999-01-01'),(10077,'d003','1994-12-23','9999-01-01'),(10078,'d005','1994-09-29','9999-01-01'),(10079,'d005','1995-12-13','9999-01-01'),(10080,'d002','1994-09-28','1997-07-09'),(10080,'d003','1997-07-09','9999-01-01'),(10081,'d004','1986-10-30','9999-01-01'),(10082,'d008','1990-01-03','1990-01-15'),(10083,'d004','1987-03-31','9999-01-01'),(10084,'d004','1995-12-15','9999-01-01'),(10085,'d004','1994-04-09','9999-01-01'),(10086,'d003','1992-02-19','9999-01-01'),(10087,'d007','1997-05-08','2001-01-09'),(10088,'d007','1988-09-02','1992-03-21'),(10088,'d009','1992-03-21','9999-01-01'),(10089,'d007','1989-01-10','9999-01-01'),(10090,'d005','1986-03-14','1999-05-07'),(10091,'d005','1992-11-18','9999-01-01');
/*!40000 ALTER TABLE `dept_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dept_emp_latest_date`
--

DROP TABLE IF EXISTS `dept_emp_latest_date`;
/*!50001 DROP VIEW IF EXISTS `dept_emp_latest_date`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dept_emp_latest_date` AS SELECT 
 1 AS `emp_no`,
 1 AS `from_date`,
 1 AS `to_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dept_manager`
--

DROP TABLE IF EXISTS `dept_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_manager`
--
-- WHERE:  true limit 100

LOCK TABLES `dept_manager` WRITE;
/*!40000 ALTER TABLE `dept_manager` DISABLE KEYS */;
INSERT INTO `dept_manager` VALUES (110022,'d001','1985-01-01','1991-10-01'),(110039,'d001','1991-10-01','9999-01-01'),(110085,'d002','1985-01-01','1989-12-17'),(110114,'d002','1989-12-17','9999-01-01'),(110183,'d003','1985-01-01','1992-03-21'),(110228,'d003','1992-03-21','9999-01-01'),(110303,'d004','1985-01-01','1988-09-09'),(110344,'d004','1988-09-09','1992-08-02'),(110386,'d004','1992-08-02','1996-08-30'),(110420,'d004','1996-08-30','9999-01-01'),(110511,'d005','1985-01-01','1992-04-25'),(110567,'d005','1992-04-25','9999-01-01'),(110725,'d006','1985-01-01','1989-05-06'),(110765,'d006','1989-05-06','1991-09-12'),(110800,'d006','1991-09-12','1994-06-28'),(110854,'d006','1994-06-28','9999-01-01'),(111035,'d007','1985-01-01','1991-03-07'),(111133,'d007','1991-03-07','9999-01-01'),(111400,'d008','1985-01-01','1991-04-08'),(111534,'d008','1991-04-08','9999-01-01'),(111692,'d009','1985-01-01','1988-10-17'),(111784,'d009','1988-10-17','1992-09-08'),(111877,'d009','1992-09-08','1996-01-03'),(111939,'d009','1996-01-03','9999-01-01');
/*!40000 ALTER TABLE `dept_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--
-- WHERE:  true limit 100

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (10001,'1953-09-02','Georgi','Facello','M','1986-06-26'),(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'),(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'),(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'),(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24'),(10011,'1953-11-07','Mary','Sluis','F','1990-01-22'),(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18'),(10013,'1963-06-07','Eberhardt','Terkki','M','1985-10-20'),(10014,'1956-02-12','Berni','Genin','M','1987-03-11'),(10015,'1959-08-19','Guoxiang','Nooteboom','M','1987-07-02'),(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27'),(10017,'1958-07-06','Cristinel','Bouloucos','F','1993-08-03'),(10018,'1954-06-19','Kazuhide','Peha','F','1987-04-03'),(10019,'1953-01-23','Lillian','Haddadi','M','1999-04-30'),(10020,'1952-12-24','Mayuko','Warwick','M','1991-01-26'),(10021,'1960-02-20','Ramzi','Erde','M','1988-02-10'),(10022,'1952-07-08','Shahaf','Famili','M','1995-08-22'),(10023,'1953-09-29','Bojan','Montemayor','F','1989-12-17'),(10024,'1958-09-05','Suzette','Pettey','F','1997-05-19'),(10025,'1958-10-31','Prasadram','Heyers','M','1987-08-17'),(10026,'1953-04-03','Yongqiao','Berztiss','M','1995-03-20'),(10027,'1962-07-10','Divier','Reistad','F','1989-07-07'),(10028,'1963-11-26','Domenick','Tempesti','M','1991-10-22'),(10029,'1956-12-13','Otmar','Herbst','M','1985-11-20'),(10030,'1958-07-14','Elvis','Demeyer','M','1994-02-17'),(10031,'1959-01-27','Karsten','Joslin','M','1991-09-01'),(10032,'1960-08-09','Jeong','Reistad','F','1990-06-20'),(10033,'1956-11-14','Arif','Merlo','M','1987-03-18'),(10034,'1962-12-29','Bader','Swan','M','1988-09-21'),(10035,'1953-02-08','Alain','Chappelet','M','1988-09-05'),(10036,'1959-08-10','Adamantios','Portugali','M','1992-01-03'),(10037,'1963-07-22','Pradeep','Makrucki','M','1990-12-05'),(10038,'1960-07-20','Huan','Lortz','M','1989-09-20'),(10039,'1959-10-01','Alejandro','Brender','M','1988-01-19'),(10040,'1959-09-13','Weiyi','Meriste','F','1993-02-14'),(10041,'1959-08-27','Uri','Lenart','F','1989-11-12'),(10042,'1956-02-26','Magy','Stamatiou','F','1993-03-21'),(10043,'1960-09-19','Yishay','Tzvieli','M','1990-10-20'),(10044,'1961-09-21','Mingsen','Casley','F','1994-05-21'),(10045,'1957-08-14','Moss','Shanbhogue','M','1989-09-02'),(10046,'1960-07-23','Lucien','Rosenbaum','M','1992-06-20'),(10047,'1952-06-29','Zvonko','Nyanchama','M','1989-03-31'),(10048,'1963-07-11','Florian','Syrotiuk','M','1985-02-24'),(10049,'1961-04-24','Basil','Tramer','F','1992-05-04'),(10050,'1958-05-21','Yinghua','Dredge','M','1990-12-25'),(10051,'1953-07-28','Hidefumi','Caine','M','1992-10-15'),(10052,'1961-02-26','Heping','Nitsch','M','1988-05-21'),(10053,'1954-09-13','Sanjiv','Zschoche','F','1986-02-04'),(10054,'1957-04-04','Mayumi','Schueller','M','1995-03-13'),(10055,'1956-06-06','Georgy','Dredge','M','1992-04-27'),(10056,'1961-09-01','Brendon','Bernini','F','1990-02-01'),(10057,'1954-05-30','Ebbe','Callaway','F','1992-01-15'),(10058,'1954-10-01','Berhard','McFarlin','M','1987-04-13'),(10059,'1953-09-19','Alejandro','McAlpine','F','1991-06-26'),(10060,'1961-10-15','Breannda','Billingsley','M','1987-11-02'),(10061,'1962-10-19','Tse','Herber','M','1985-09-17'),(10062,'1961-11-02','Anoosh','Peyn','M','1991-08-30'),(10063,'1952-08-06','Gino','Leonhardt','F','1989-04-08'),(10064,'1959-04-07','Udi','Jansch','M','1985-11-20'),(10065,'1963-04-14','Satosi','Awdeh','M','1988-05-18'),(10066,'1952-11-13','Kwee','Schusler','M','1986-02-26'),(10067,'1953-01-07','Claudi','Stavenow','M','1987-03-04'),(10068,'1962-11-26','Charlene','Brattka','M','1987-08-07'),(10069,'1960-09-06','Margareta','Bierman','F','1989-11-05'),(10070,'1955-08-20','Reuven','Garigliano','M','1985-10-14'),(10071,'1958-01-21','Hisao','Lipner','M','1987-10-01'),(10072,'1952-05-15','Hironoby','Sidou','F','1988-07-21'),(10073,'1954-02-23','Shir','McClurg','M','1991-12-01'),(10074,'1955-08-28','Mokhtar','Bernatsky','F','1990-08-13'),(10075,'1960-03-09','Gao','Dolinsky','F','1987-03-19'),(10076,'1952-06-13','Erez','Ritzmann','F','1985-07-09'),(10077,'1964-04-18','Mona','Azuma','M','1990-03-02'),(10078,'1959-12-25','Danel','Mondadori','F','1987-05-26'),(10079,'1961-10-05','Kshitij','Gils','F','1986-03-27'),(10080,'1957-12-03','Premal','Baek','M','1985-11-19'),(10081,'1960-12-17','Zhongwei','Rosen','M','1986-10-30'),(10082,'1963-09-09','Parviz','Lortz','M','1990-01-03'),(10083,'1959-07-23','Vishv','Zockler','M','1987-03-31'),(10084,'1960-05-25','Tuval','Kalloufi','M','1995-12-15'),(10085,'1962-11-07','Kenroku','Malabarba','M','1994-04-09'),(10086,'1962-11-19','Somnath','Foote','M','1990-02-16'),(10087,'1959-07-23','Xinglin','Eugenio','F','1986-09-08'),(10088,'1954-02-25','Jungsoon','Syrzycki','F','1988-09-02'),(10089,'1963-03-21','Sudharsan','Flasterstein','F','1986-08-12'),(10090,'1961-05-30','Kendra','Hofting','M','1986-03-14'),(10091,'1955-10-04','Amabile','Gomatam','M','1992-11-18'),(10092,'1964-10-18','Valdiodio','Niizuma','F','1989-09-22'),(10093,'1964-06-11','Sailaja','Desikan','M','1996-11-05'),(10094,'1957-05-25','Arumugam','Ossenbruggen','F','1987-04-18'),(10095,'1965-01-03','Hilari','Morton','M','1986-07-15'),(10096,'1954-09-16','Jayson','Mandell','M','1990-01-14'),(10097,'1952-02-27','Remzi','Waschkowski','M','1990-09-15'),(10098,'1961-09-23','Sreekrishna','Servieres','F','1985-05-13'),(10099,'1956-05-25','Valter','Sullins','F','1988-10-18'),(10100,'1953-04-21','Hironobu','Haraldson','F','1987-09-21');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`from_date`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--
-- WHERE:  true limit 100

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (10001,60117,'1986-06-26','1987-06-26'),(10001,62102,'1987-06-26','1988-06-25'),(10001,66074,'1988-06-25','1989-06-25'),(10001,66596,'1989-06-25','1990-06-25'),(10001,66961,'1990-06-25','1991-06-25'),(10001,71046,'1991-06-25','1992-06-24'),(10001,74333,'1992-06-24','1993-06-24'),(10001,75286,'1993-06-24','1994-06-24'),(10001,75994,'1994-06-24','1995-06-24'),(10001,76884,'1995-06-24','1996-06-23'),(10001,80013,'1996-06-23','1997-06-23'),(10001,81025,'1997-06-23','1998-06-23'),(10001,81097,'1998-06-23','1999-06-23'),(10001,84917,'1999-06-23','2000-06-22'),(10001,85112,'2000-06-22','2001-06-22'),(10001,85097,'2001-06-22','2002-06-22'),(10001,88958,'2002-06-22','9999-01-01'),(10002,65828,'1996-08-03','1997-08-03'),(10002,65909,'1997-08-03','1998-08-03'),(10002,67534,'1998-08-03','1999-08-03'),(10002,69366,'1999-08-03','2000-08-02'),(10002,71963,'2000-08-02','2001-08-02'),(10002,72527,'2001-08-02','9999-01-01'),(10003,40006,'1995-12-03','1996-12-02'),(10003,43616,'1996-12-02','1997-12-02'),(10003,43466,'1997-12-02','1998-12-02'),(10003,43636,'1998-12-02','1999-12-02'),(10003,43478,'1999-12-02','2000-12-01'),(10003,43699,'2000-12-01','2001-12-01'),(10003,43311,'2001-12-01','9999-01-01'),(10004,40054,'1986-12-01','1987-12-01'),(10004,42283,'1987-12-01','1988-11-30'),(10004,42542,'1988-11-30','1989-11-30'),(10004,46065,'1989-11-30','1990-11-30'),(10004,48271,'1990-11-30','1991-11-30'),(10004,50594,'1991-11-30','1992-11-29'),(10004,52119,'1992-11-29','1993-11-29'),(10004,54693,'1993-11-29','1994-11-29'),(10004,58326,'1994-11-29','1995-11-29'),(10004,60770,'1995-11-29','1996-11-28'),(10004,62566,'1996-11-28','1997-11-28'),(10004,64340,'1997-11-28','1998-11-28'),(10004,67096,'1998-11-28','1999-11-28'),(10004,69722,'1999-11-28','2000-11-27'),(10004,70698,'2000-11-27','2001-11-27'),(10004,74057,'2001-11-27','9999-01-01'),(10005,78228,'1989-09-12','1990-09-12'),(10005,82621,'1990-09-12','1991-09-12'),(10005,83735,'1991-09-12','1992-09-11'),(10005,85572,'1992-09-11','1993-09-11'),(10005,85076,'1993-09-11','1994-09-11'),(10005,86050,'1994-09-11','1995-09-11'),(10005,88448,'1995-09-11','1996-09-10'),(10005,88063,'1996-09-10','1997-09-10'),(10005,89724,'1997-09-10','1998-09-10'),(10005,90392,'1998-09-10','1999-09-10'),(10005,90531,'1999-09-10','2000-09-09'),(10005,91453,'2000-09-09','2001-09-09'),(10005,94692,'2001-09-09','9999-01-01'),(10006,40000,'1990-08-05','1991-08-05'),(10006,42085,'1991-08-05','1992-08-04'),(10006,42629,'1992-08-04','1993-08-04'),(10006,45844,'1993-08-04','1994-08-04'),(10006,47518,'1994-08-04','1995-08-04'),(10006,47917,'1995-08-04','1996-08-03'),(10006,52255,'1996-08-03','1997-08-03'),(10006,53747,'1997-08-03','1998-08-03'),(10006,56032,'1998-08-03','1999-08-03'),(10006,58299,'1999-08-03','2000-08-02'),(10006,60098,'2000-08-02','2001-08-02'),(10006,59755,'2001-08-02','9999-01-01'),(10007,56724,'1989-02-10','1990-02-10'),(10007,60740,'1990-02-10','1991-02-10'),(10007,62745,'1991-02-10','1992-02-10'),(10007,63475,'1992-02-10','1993-02-09'),(10007,63208,'1993-02-09','1994-02-09'),(10007,64563,'1994-02-09','1995-02-09'),(10007,68833,'1995-02-09','1996-02-09'),(10007,70220,'1996-02-09','1997-02-08'),(10007,73362,'1997-02-08','1998-02-08'),(10007,75582,'1998-02-08','1999-02-08'),(10007,79513,'1999-02-08','2000-02-08'),(10007,80083,'2000-02-08','2001-02-07'),(10007,84456,'2001-02-07','2002-02-07'),(10007,88070,'2002-02-07','9999-01-01'),(10008,46671,'1998-03-11','1999-03-11'),(10008,48584,'1999-03-11','2000-03-10'),(10008,52668,'2000-03-10','2000-07-31'),(10009,60929,'1985-02-18','1986-02-18'),(10009,64604,'1986-02-18','1987-02-18'),(10009,64780,'1987-02-18','1988-02-18'),(10009,66302,'1988-02-18','1989-02-17'),(10009,69042,'1989-02-17','1990-02-17'),(10009,70889,'1990-02-17','1991-02-17'),(10009,71434,'1991-02-17','1992-02-17'),(10009,74612,'1992-02-17','1993-02-16'),(10009,76518,'1993-02-16','1994-02-16'),(10009,78335,'1994-02-16','1995-02-16'),(10009,80944,'1995-02-16','1996-02-16'),(10009,82507,'1996-02-16','1997-02-15');
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`title`,`from_date`),
  CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--
-- WHERE:  true limit 100

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES (10001,'Senior Engineer','1986-06-26','9999-01-01'),(10002,'Staff','1996-08-03','9999-01-01'),(10003,'Senior Engineer','1995-12-03','9999-01-01'),(10004,'Engineer','1986-12-01','1995-12-01'),(10004,'Senior Engineer','1995-12-01','9999-01-01'),(10005,'Senior Staff','1996-09-12','9999-01-01'),(10005,'Staff','1989-09-12','1996-09-12'),(10006,'Senior Engineer','1990-08-05','9999-01-01'),(10007,'Senior Staff','1996-02-11','9999-01-01'),(10007,'Staff','1989-02-10','1996-02-11'),(10008,'Assistant Engineer','1998-03-11','2000-07-31'),(10009,'Assistant Engineer','1985-02-18','1990-02-18'),(10009,'Engineer','1990-02-18','1995-02-18'),(10009,'Senior Engineer','1995-02-18','9999-01-01'),(10010,'Engineer','1996-11-24','9999-01-01'),(10011,'Staff','1990-01-22','1996-11-09'),(10012,'Engineer','1992-12-18','2000-12-18'),(10012,'Senior Engineer','2000-12-18','9999-01-01'),(10013,'Senior Staff','1985-10-20','9999-01-01'),(10014,'Engineer','1993-12-29','9999-01-01'),(10015,'Senior Staff','1992-09-19','1993-08-22'),(10016,'Staff','1998-02-11','9999-01-01'),(10017,'Senior Staff','2000-08-03','9999-01-01'),(10017,'Staff','1993-08-03','2000-08-03'),(10018,'Engineer','1987-04-03','1995-04-03'),(10018,'Senior Engineer','1995-04-03','9999-01-01'),(10019,'Staff','1999-04-30','9999-01-01'),(10020,'Engineer','1997-12-30','9999-01-01'),(10021,'Technique Leader','1988-02-10','2002-07-15'),(10022,'Engineer','1999-09-03','9999-01-01'),(10023,'Engineer','1999-09-27','9999-01-01'),(10024,'Assistant Engineer','1998-06-14','9999-01-01'),(10025,'Technique Leader','1987-08-17','1997-10-15'),(10026,'Engineer','1995-03-20','2001-03-19'),(10026,'Senior Engineer','2001-03-19','9999-01-01'),(10027,'Engineer','1995-04-02','2001-04-01'),(10027,'Senior Engineer','2001-04-01','9999-01-01'),(10028,'Engineer','1991-10-22','1998-04-06'),(10029,'Engineer','1991-09-18','2000-09-17'),(10029,'Senior Engineer','2000-09-17','9999-01-01'),(10030,'Engineer','1994-02-17','2001-02-17'),(10030,'Senior Engineer','2001-02-17','9999-01-01'),(10031,'Engineer','1991-09-01','1998-09-01'),(10031,'Senior Engineer','1998-09-01','9999-01-01'),(10032,'Engineer','1990-06-20','1995-06-20'),(10032,'Senior Engineer','1995-06-20','9999-01-01'),(10033,'Technique Leader','1987-03-18','1993-03-24'),(10034,'Staff','1995-04-12','1999-10-31'),(10035,'Engineer','1988-09-05','1996-09-05'),(10035,'Senior Engineer','1996-09-05','9999-01-01'),(10036,'Senior Staff','1992-04-28','9999-01-01'),(10037,'Engineer','1990-12-05','1995-12-05'),(10037,'Senior Engineer','1995-12-05','9999-01-01'),(10038,'Senior Staff','1996-09-20','9999-01-01'),(10038,'Staff','1989-09-20','1996-09-20'),(10039,'Senior Staff','1997-01-18','9999-01-01'),(10039,'Staff','1988-01-19','1997-01-18'),(10040,'Engineer','1993-02-14','1999-02-14'),(10040,'Senior Engineer','1999-02-14','9999-01-01'),(10041,'Senior Staff','1998-11-12','9999-01-01'),(10041,'Staff','1989-11-12','1998-11-12'),(10042,'Senior Staff','2000-03-21','2000-08-10'),(10042,'Staff','1993-03-21','2000-03-21'),(10043,'Engineer','1990-10-20','1997-10-20'),(10043,'Senior Engineer','1997-10-20','9999-01-01'),(10044,'Technique Leader','1994-05-21','9999-01-01'),(10045,'Engineer','1996-11-16','9999-01-01'),(10046,'Senior Staff','2000-06-20','9999-01-01'),(10046,'Staff','1992-06-20','2000-06-20'),(10047,'Engineer','1989-03-31','1998-03-31'),(10047,'Senior Engineer','1998-03-31','9999-01-01'),(10048,'Engineer','1985-02-24','1987-01-27'),(10049,'Senior Staff','2000-05-04','9999-01-01'),(10049,'Staff','1992-05-04','2000-05-04'),(10050,'Senior Staff','1999-12-25','9999-01-01'),(10050,'Staff','1990-12-25','1999-12-25'),(10051,'Engineer','1992-10-15','1998-10-15'),(10051,'Senior Engineer','1998-10-15','9999-01-01'),(10052,'Senior Staff','2002-01-31','9999-01-01'),(10052,'Staff','1997-01-31','2002-01-31'),(10053,'Senior Staff','1994-11-13','9999-01-01'),(10054,'Senior Staff','2000-07-28','9999-01-01'),(10054,'Staff','1995-07-29','2000-07-28'),(10055,'Staff','1992-04-27','1995-07-22'),(10056,'Engineer','1990-02-01','1999-02-01'),(10056,'Senior Engineer','1999-02-01','9999-01-01'),(10057,'Engineer','1992-01-15','2000-01-15'),(10057,'Senior Engineer','2000-01-15','9999-01-01'),(10058,'Senior Staff','1988-04-25','9999-01-01'),(10059,'Senior Staff','1991-06-26','9999-01-01'),(10060,'Senior Staff','1996-05-28','9999-01-01'),(10060,'Staff','1989-05-28','1996-05-28'),(10061,'Senior Staff','1989-12-02','9999-01-01'),(10062,'Engineer','1991-08-30','1999-08-30'),(10062,'Senior Engineer','1999-08-30','9999-01-01'),(10063,'Senior Engineer','1989-04-08','9999-01-01'),(10064,'Staff','1985-11-20','1992-03-02'),(10065,'Engineer','1998-05-24','9999-01-01'),(10066,'Assistant Engineer','1986-02-26','1992-02-26'),(10066,'Engineer','1992-02-26','1998-02-25');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `current_dept_emp`
--

/*!50001 DROP VIEW IF EXISTS `current_dept_emp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_dept_emp` AS select `l`.`emp_no` AS `emp_no`,`d`.`dept_no` AS `dept_no`,`l`.`from_date` AS `from_date`,`l`.`to_date` AS `to_date` from (`dept_emp` `d` join `dept_emp_latest_date` `l` on(((`d`.`emp_no` = `l`.`emp_no`) and (`d`.`from_date` = `l`.`from_date`) and (`l`.`to_date` = `d`.`to_date`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dept_emp_latest_date`
--

/*!50001 DROP VIEW IF EXISTS `dept_emp_latest_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dept_emp_latest_date` AS select `dept_emp`.`emp_no` AS `emp_no`,max(`dept_emp`.`from_date`) AS `from_date`,max(`dept_emp`.`to_date`) AS `to_date` from `dept_emp` group by `dept_emp`.`emp_no` */;
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

-- Dump completed on 2015-12-16 20:56:59
