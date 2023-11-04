-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: luxury_database
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add cart',9,'add_cart'),(34,'Can change cart',9,'change_cart'),(35,'Can delete cart',9,'delete_cart'),(36,'Can view cart',9,'view_cart'),(37,'Can add wishlist',10,'add_wishlist'),(38,'Can change wishlist',10,'change_wishlist'),(39,'Can delete wishlist',10,'delete_wishlist'),(40,'Can view wishlist',10,'view_wishlist'),(41,'Can add order item',11,'add_orderitem'),(42,'Can change order item',11,'change_orderitem'),(43,'Can delete order item',11,'delete_orderitem'),(44,'Can view order item',11,'view_orderitem'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add profile',13,'add_profile'),(50,'Can change profile',13,'change_profile'),(51,'Can delete profile',13,'delete_profile'),(52,'Can view profile',13,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$Pdsfoo6n37wj$vjCy+a35pTXcItSk6jyCug0+3ZO11AIbYRsQPO3apKQ=','2023-07-19 18:24:44.163141',1,'bruno','Bruno Filipe','Reis','brunoreis.br60@gmail.com',1,1,'2023-07-05 23:06:11.090296'),(2,'pbkdf2_sha256$150000$fEn7qtPSKqFX$gZmWn695eeBO/2+8r+O2EDAsic0xx/yUeG3CkpJp1Bc=','2023-07-19 22:50:51.125767',0,'puskas','Bruno Filipe','Reis','brunoreis.br60@gmail.com',0,1,'2023-07-08 17:41:09.455553'),(3,'pbkdf2_sha256$150000$HH6F8mNbZsYG$UrYLNfF7M4rpq/f8eNjSoW480oFX0MTGIiAeMGHo148=','2023-07-19 21:39:58.413221',0,'csousa','cristina ','sousa','c.m.sousa@netcabo.pt',0,1,'2023-07-19 21:39:29.809845'),(4,'pbkdf2_sha256$150000$lieIUrcGPFPd$80/TKzfD3hzziJD9zHoZkOPYMH7TYDkDcgNJEtnI2j4=','2023-07-19 23:37:38.622104',0,'joe','joe','err','joe@gmail.com',0,1,'2023-07-19 22:56:23.133214'),(5,'pbkdf2_sha256$150000$amzrgGFEyjGR$shpwJ/TnuvyixG/RfbtZNqocpPkpqNCeiVLaw10o+kc=','2023-07-19 23:45:58.941643',0,'re','re','re','re@gmail.com',0,1,'2023-07-19 23:39:11.505022');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-07-06 18:26:49.465326','1','Gold Category',1,'[{\"added\": {}}]',8,1),(2,'2023-07-06 18:28:45.990005','2','Silver Category',1,'[{\"added\": {}}]',8,1),(3,'2023-07-06 18:31:46.374113','3','Economic Category',1,'[{\"added\": {}}]',8,1),(4,'2023-07-06 18:32:39.024373','2','Silver Category',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',8,1),(5,'2023-07-06 18:36:00.455094','1','Chevrolet Camaro',1,'[{\"added\": {}}]',7,1),(6,'2023-07-06 18:41:16.488950','2','Citroen C4 Cactus Shine',1,'[{\"added\": {}}]',7,1),(7,'2023-07-06 18:46:01.794036','3','Mata-velhos',1,'[{\"added\": {}}]',7,1),(8,'2023-07-11 02:32:41.142649','1','1 - luxury1753632',3,'',12,1),(9,'2023-07-11 02:32:59.678976','6','6 - luxury4650897',3,'',12,1),(10,'2023-07-11 02:32:59.726062','5','5 - luxury4928345',3,'',12,1),(11,'2023-07-11 02:32:59.726062','4','4 - luxury7528872',3,'',12,1),(12,'2023-07-11 02:32:59.734086','3','3 - luxury2592290',3,'',12,1),(13,'2023-07-11 02:32:59.734086','2','2 - luxury1550134',3,'',12,1),(14,'2023-07-18 19:52:22.653309','3','Ape 50',2,'[{\"changed\": {\"fields\": [\"slug\", \"name\"]}}]',7,1),(15,'2023-07-18 19:52:46.757931','1','Gold Category',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(16,'2023-07-18 19:52:52.426097','2','Silver Category',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(17,'2023-07-18 19:53:02.811974','3','Economic Category',2,'[{\"changed\": {\"fields\": [\"slug\"]}}]',8,1),(18,'2023-07-18 21:16:32.009339','4','2008 Bugatti Veyron 1',1,'[{\"added\": {}}]',7,1),(19,'2023-07-18 21:19:07.787018','5','Bugatti Divo',1,'[{\"added\": {}}]',7,1),(20,'2023-07-18 21:21:15.625526','6','Mercedes Maybach S-Class',1,'[{\"added\": {}}]',7,1),(21,'2023-07-18 21:25:31.917709','7','Rolls Royce Boat Tail',1,'[{\"added\": {}}]',7,1),(22,'2023-07-18 21:28:29.613957','8','2023 Pagani Huayra BC Roadster',1,'[{\"added\": {}}]',7,1),(23,'2023-07-18 21:31:52.345663','9','Lamborghini Huracán STO',1,'[{\"added\": {}}]',7,1),(24,'2023-07-18 21:36:54.367343','1','Chevrolet Camaro',2,'[]',7,1),(25,'2023-07-18 21:47:38.122930','8','2023 Pagani Huayra BC Roadster',2,'[{\"changed\": {\"fields\": [\"product_image\"]}}]',7,1),(26,'2023-07-18 22:14:04.975976','8','Pagani Huayra BC Roadster',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',7,1),(27,'2023-07-19 17:01:07.446982','10','Ferrari F430 Spider',1,'[{\"added\": {}}]',7,1),(28,'2023-07-19 17:06:38.329870','11','Harley Davidson V Rod',1,'[{\"added\": {}}]',7,1),(29,'2023-07-19 17:07:28.070272','3','Ape 50',2,'[{\"changed\": {\"fields\": [\"product_image\", \"trending\"]}}]',7,1),(30,'2023-07-19 17:07:33.287484','2','Citroen C4 Cactus Shine',2,'[{\"changed\": {\"fields\": [\"trending\"]}}]',7,1),(31,'2023-07-19 17:12:46.289201','12','Renault Megane TCE 300',1,'[{\"added\": {}}]',7,1),(32,'2023-07-19 17:14:54.762518','13','Hyundai Tucson',1,'[{\"added\": {}}]',7,1),(33,'2023-07-19 17:16:34.682771','14','Ford Puma ST',1,'[{\"added\": {}}]',7,1),(34,'2023-07-19 17:18:50.950364','15','Volvo XC90',1,'[{\"added\": {}}]',7,1),(35,'2023-07-19 17:22:04.151505','16','Seat Ibiza 1.0 EcoTSI',1,'[{\"added\": {}}]',7,1),(36,'2023-07-19 17:22:11.592596','15','Volvo XC90',2,'[{\"changed\": {\"fields\": [\"selling_price\"]}}]',7,1),(37,'2023-07-19 17:22:18.129576','14','Ford Puma ST',2,'[{\"changed\": {\"fields\": [\"selling_price\"]}}]',7,1),(38,'2023-07-19 17:22:23.577350','13','Hyundai Tucson',2,'[{\"changed\": {\"fields\": [\"selling_price\"]}}]',7,1),(39,'2023-07-19 17:22:27.777211','12','Renault Megane TCE 300',2,'[]',7,1),(40,'2023-07-19 17:25:42.915206','2','Citroen C4 Cactus Shine',2,'[{\"changed\": {\"fields\": [\"selling_price\"]}}]',7,1),(41,'2023-07-19 17:25:47.708082','14','Ford Puma ST',2,'[]',7,1),(42,'2023-07-19 17:27:57.444561','17','Toyota Corolla Hatchback',1,'[{\"added\": {}}]',7,1),(43,'2023-07-19 17:31:57.804458','18','Yamaha YZF R15',1,'[{\"added\": {}}]',7,1),(44,'2023-07-19 17:32:32.342273','16','Seat Ibiza 1.0 EcoTSI',2,'[{\"changed\": {\"fields\": [\"product_image\"]}}]',7,1),(45,'2023-07-19 17:32:55.080176','13','Hyundai Tucson',2,'[{\"changed\": {\"fields\": [\"product_image\"]}}]',7,1),(46,'2023-07-19 17:33:17.654456','10','Ferrari F430 Spider',2,'[{\"changed\": {\"fields\": [\"product_image\"]}}]',7,1),(47,'2023-07-19 17:35:56.814035','19','Alfa Romeo Giulia GTA',1,'[{\"added\": {}}]',7,1),(48,'2023-07-19 18:24:54.357157','3','Ape 50',2,'[{\"changed\": {\"fields\": [\"trending\"]}}]',7,1),(49,'2023-07-19 19:42:25.392118','3','Ape 50',2,'[]',7,1),(50,'2023-07-19 19:44:08.797151','20','Lada Riva',1,'[{\"added\": {}}]',7,1),(51,'2023-07-19 19:48:41.852092','21','Aixam 500 Emotion',1,'[{\"added\": {}}]',7,1),(52,'2023-07-19 19:52:11.503653','22','Fiat Multipla',1,'[{\"added\": {}}]',7,1),(53,'2023-07-19 19:52:53.966181','3','Ape 50',2,'[{\"changed\": {\"fields\": [\"product_image\"]}}]',7,1),(54,'2023-07-19 19:55:28.649576','23','Larus Tuk Tuk',1,'[{\"added\": {}}]',7,1),(55,'2023-07-19 19:57:02.477784','24','Reliant Robin',1,'[{\"added\": {}}]',7,1),(56,'2023-07-19 19:59:20.910809','25','VéloSoleX',1,'[{\"added\": {}}]',7,1),(57,'2023-07-19 20:00:44.751704','26','Peel Trident',1,'[{\"added\": {}}]',7,1),(58,'2023-07-19 20:02:40.441978','27','Volkswagen Type 181',1,'[{\"added\": {}}]',7,1),(59,'2023-07-19 20:05:47.303881','3','Ape 50',2,'[{\"changed\": {\"fields\": [\"trending\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(9,'store','cart'),(8,'store','category'),(12,'store','order'),(11,'store','orderitem'),(7,'store','product'),(13,'store','profile'),(10,'store','wishlist');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-05 21:09:58.331171'),(2,'auth','0001_initial','2023-07-05 21:09:58.442217'),(3,'admin','0001_initial','2023-07-05 21:09:58.788163'),(4,'admin','0002_logentry_remove_auto_add','2023-07-05 21:09:58.859081'),(5,'admin','0003_logentry_add_action_flag_choices','2023-07-05 21:09:58.859081'),(6,'contenttypes','0002_remove_content_type_name','2023-07-05 21:09:58.929358'),(7,'auth','0002_alter_permission_name_max_length','2023-07-05 21:09:58.972517'),(8,'auth','0003_alter_user_email_max_length','2023-07-05 21:09:58.995530'),(9,'auth','0004_alter_user_username_opts','2023-07-05 21:09:59.005550'),(10,'auth','0005_alter_user_last_login_null','2023-07-05 21:09:59.049778'),(11,'auth','0006_require_contenttypes_0002','2023-07-05 21:09:59.052766'),(12,'auth','0007_alter_validators_add_error_messages','2023-07-05 21:09:59.060766'),(13,'auth','0008_alter_user_username_max_length','2023-07-05 21:09:59.112262'),(14,'auth','0009_alter_user_last_name_max_length','2023-07-05 21:09:59.165998'),(15,'auth','0010_alter_group_name_max_length','2023-07-05 21:09:59.185801'),(16,'auth','0011_update_proxy_permissions','2023-07-05 21:09:59.194771'),(17,'sessions','0001_initial','2023-07-05 21:09:59.215516'),(18,'store','0001_initial','2023-07-05 23:03:42.971439'),(19,'store','0002_cart','2023-07-08 22:31:47.096121'),(20,'store','0003_wishlist','2023-07-09 21:02:28.219623'),(21,'store','0004_order_orderitem','2023-07-10 01:59:11.664650'),(22,'store','0005_auto_20230710_1932','2023-07-10 18:32:12.472429'),(23,'store','0006_auto_20230718_2233','2023-07-18 21:33:28.094183'),(24,'store','0007_auto_20230718_2233','2023-07-18 21:33:28.109472'),(25,'store','0008_auto_20230718_2237','2023-07-18 21:37:14.086894'),(26,'store','0009_auto_20230719_1650','2023-07-19 15:50:42.664201'),(27,'store','0010_auto_20230719_1755','2023-07-19 16:55:46.668406'),(28,'store','0011_auto_20230719_1807','2023-07-19 17:07:55.698030'),(29,'store','0012_auto_20230719_1836','2023-07-19 17:36:20.901280'),(30,'store','0013_auto_20230719_1836','2023-07-19 17:36:35.730636'),(31,'store','0014_auto_20230719_2103','2023-07-19 20:03:22.993773'),(32,'store','0015_auto_20230719_2103','2023-07-19 20:03:32.076565'),(33,'store','0016_auto_20230719_2103','2023-07-19 20:03:38.020264'),(34,'store','0017_auto_20230719_2103','2023-07-19 20:04:02.933631'),(35,'store','0018_auto_20230719_2255','2023-07-19 21:55:44.572813'),(36,'store','0019_auto_20230721_1742','2023-07-21 16:42:31.631654');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hp533p4k8hya5k07wadxq24ow0fgb367','ODI3NGJkNTk2ZTE2M2U1ZGJiYjhjNTA3NWIyMDBkZTZlOTQ3OTBmNjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JlOGZlOTQxMWNlNzBkMTQ5ODE2M2YzMzNmMTgyMDEzNGIwMjE0In0=','2023-08-02 23:45:58.945869');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_qty` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart`
--

LOCK TABLES `store_cart` WRITE;
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'gold','Gold Category','uploads/20230706192649depositphotos_1214750-stock-photo-liquid-gold.jpg','Gold category for luxury clients, all cars are 600€',0,0,'Gold','Gold, cars, 600','Gold category for luxury clients, all cars are 600€','2023-07-06 18:26:49.462884'),(2,'silver','Silver Category','uploads/202307061932391000_F_327335409_jQOkTJqZjTZBqmoDBpesknCPVYozPwmz.jpg','Silver category for client looking for comfortable cars, all cars are 250€',0,0,'silver','silver, cars, 250','Silver category for client looking for comfortable cars, all cars are 250€','2023-07-06 18:28:45.988490'),(3,'economic','Economic Category','uploads/20230706193146Screenshot_2023-07-06_193036.png','Economic category for clients with a low budget, all cars are 50€',0,1,'economic','economic, cars, 50','Economic category for clients with a low budget, all cars are 50€','2023-07-06 18:31:46.373109');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(150) NOT NULL,
  `lname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `total_price` double NOT NULL,
  `payment_mode` varchar(150) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `status` varchar(150) NOT NULL,
  `message` longtext,
  `tracking_number` varchar(150) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (7,'Bruno Filipe','Reis','brunoreis.br60@gmail.com','456456','456456','Montijo','Setúbal','Portugal','2870-159',600,'COD',NULL,'Pending',NULL,'luxury5882333','2023-07-11 02:36:12.898572','2023-07-11 02:36:12.898572',2),(8,'Bruno Filipe','Reis','brunoreis.br60@gmail.com','456456','Avenida João XXIII\r\n321 4esq','Montijo','Setúbal','Portugal','2870-159',1400,'COD',NULL,'Pending',NULL,'luxury3940837','2023-07-19 02:21:45.237238','2023-07-19 02:21:45.237238',1),(9,'cristina ','sousa','c.m.sousa@netcabo.pt','962367929','Avenida João XXIII\r\n321 4esq','Montijo','Montijo','Portugal','2870-159',600,'COD',NULL,'Pending',NULL,'luxury6371307','2023-07-19 21:43:53.956443','2023-07-19 21:43:53.956443',3),(10,'cristina ','sousa','c.m.sousa@netcabo.pt','962367929','962367929','Montijo','Montijo','Portugal','2870-159',3400,'COD',NULL,'Pending',NULL,'luxury3114228','2023-07-19 21:52:34.336877','2023-07-19 21:52:34.336877',3),(11,'Bruno Filipe','Reis','brunoreis.br60@gmail.com','456456','456456','Montijo','Setúbal','Portugal','2870-159',3550,'COD',NULL,'Pending',NULL,'luxury2019557','2023-07-19 22:52:50.382922','2023-07-19 22:52:50.382922',2),(12,'joe','err','joe@gmail.com','3245325','gfdsgdsg','dsgdsgds','gdsgdsg','dsgdsg','dsgdsgds',3050,'COD',NULL,'Pending',NULL,'luxury7881089','2023-07-19 22:59:05.219832','2023-07-19 22:59:05.219832',4),(13,'joe','err','joe@gmail.com','3245325','3245325','dsgdsgds','gdsgdsg','dsgdsg','dsgdsgds',2150,'COD',NULL,'Pending',NULL,'luxury8979662','2023-07-19 23:02:06.164359','2023-07-19 23:02:06.164359',4),(14,'joe','err','joe@gmail.com','3245325','3245325','dsgdsgds','gdsgdsg','dsgdsg','dsgdsgds',1200,'COD',NULL,'Pending',NULL,'luxury2591683','2023-07-19 23:08:42.370757','2023-07-19 23:08:42.370757',4),(15,'joe','err','joe@gmail.com','3245325','3245325','dsgdsgds','gdsgdsg','dsgdsg','dsgdsgds',2750,'COD',NULL,'Pending',NULL,'luxury4887047','2023-07-19 23:25:26.636158','2023-07-19 23:25:26.636158',4),(16,'re','re','re@gmail.com','324324','4324324','432432','432432','432432','342432',1200,'COD',NULL,'Pending',NULL,'luxury7012577','2023-07-19 23:40:53.412747','2023-07-19 23:40:53.412747',5),(17,'re','re','re@gmail.com','324324','324324','432432','432432','432432','342432',850,'COD',NULL,'Pending',NULL,'luxury4086663','2023-07-19 23:46:25.240485','2023-07-19 23:46:25.241493',5);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
INSERT INTO `store_orderitem` VALUES (10,600,1,7,1),(11,200,1,8,2),(12,600,1,8,4),(13,600,1,8,7),(14,600,1,9,4),(15,600,4,10,11),(16,600,1,10,6),(17,50,2,10,26),(18,50,1,10,22),(19,250,1,10,19),(20,250,3,11,2),(21,600,1,11,8),(22,600,1,11,10),(23,600,2,11,11),(24,50,1,11,26),(25,50,1,11,24),(26,250,1,11,17),(27,50,1,11,25),(28,600,2,12,4),(29,250,1,12,19),(30,50,3,12,26),(31,600,1,12,8),(32,250,3,12,17),(33,50,1,12,3),(34,50,1,12,22),(35,600,2,13,8),(36,600,1,13,11),(37,250,1,13,19),(38,50,2,13,26),(39,600,1,14,8),(40,50,1,14,26),(41,250,2,14,19),(42,50,1,14,24),(43,600,2,15,8),(44,600,2,15,10),(45,50,1,15,26),(46,250,1,15,19),(47,50,1,15,3),(48,600,1,16,8),(49,600,1,16,10),(50,600,1,17,5),(51,250,1,17,18);
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` varchar(250) NOT NULL,
  `quantity` int NOT NULL,
  `description` longtext NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keywords` varchar(150) NOT NULL,
  `meta_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Camaro','Chevrolet Camaro','uploads/202307061936001f35b75fe8fad7b1b7ee527b437e8a80.jpg','1000hp Twin Turbo Gen 6 Camaro ZL1',0,'2017 Camaro ZL1\r\n6-Speed Manual\r\n960 rwhp (Goal is 1200+)\r\n1090 ft lbs',60000,600,0,1,'chevrolet','chevrolet camaro','camaro, turbo, 2017','1000hp Twin Turbo Gen 6 Camaro ZL1','2023-07-06 18:36:00.453078',1),(2,'Cactus','Citroen C4 Cactus Shine','uploads/202307061941161.jpg','Phase 1 VTi 82 Shine Specs',2,'The C4 Cactus Phase 1 model is a Turismo car manufactured by Citroen, with 5 doors and 5 seats, sold new from year 2014 until 2018, and available after that as a used car.',20000,250,0,0,'cactus','citroen c4 cactus','citroen, c4, cactus','The C4 Cactus Phase 1 model is a Turismo car manufactured by Citroen, with 5 doors and 5 seats, sold new from year 2014 until 2018, and available after that as a used car.','2023-07-06 18:41:16.487949',2),(3,'Ape','Ape 50','uploads/20230719205253images750x1000.png','Single Turbo 2 pax 2 fast 2 furious',4,'It\'s the best vehicle on this planet if you are looking for something to enjoy the roads at low speed.',750,50,0,0,'velho','Mata Velho','Velho, Mata','It\'s the best vehicle on this planet if you are looking for something to enjoy the roads at low speed.','2023-07-06 18:46:01.793035',3),(4,'Veyron','2008 Bugatti Veyron 1','uploads/202307182216312008-bugatti-grand-sport-restoration-exterior-view.jpg','This is a one off color combination of Pearl White with Pearl Gold',6,'2008 Bugatti Veyron with 8120 milesThis is a one off color combination of Pearl White with Pearl Gold. Excellent condition with no paint work, clean Carfax, and a service just 300 miles ago.Both keys and the speed key in the original factory box. Includes factory wheels and tires.16 cylinders of pure speed and luxury.For more info call, email, or just stop in!',1601034,600,0,1,'bugatti','gold bugatti','gold, bugatti, 2008, veyron','2008 Bugatti Veyron with 8120 milesThis is a one off color combination of Pearl White with Pearl Gold. Excellent condition with no paint work, clean Carfax, and a service just 300 miles ago.Both keys and the speed key in the original factory box. Includes factory wheels and tires.16 cylinders of pure speed and luxury.For more info call, email, or just stop in!','2023-07-18 21:16:31.999718',1),(5,'Divo','Bugatti Divo','uploads/20230718221907Bugatti-Divo-3.jpg','Eight-litre W16 engine with a power output of 1,500 PS.',9,'With the Divo, Bugatti has developed a super sports car tuned for agility, nimbleness and optimum handling performance on winding roads. It is powered by Bugatti\'s iconic eight-litre W16 engine with a power output of 1,500 PS.',1000000,600,0,1,'divo','gold, divo','gold, divo, bugatti','eight-litre W16 engine with a power output of 1,500 PS.','2023-07-18 21:19:07.787018',1),(6,'Maybach','Mercedes Maybach S-Class','uploads/20230718222115mercedes-maybach-s-class-by-virgil-abloh-front-three-quarters.jpg','Mercedes‑Maybach stands for timeless luxury. The presentation includes stylish emblems and letterings that document this legend visually.',9,'The new Mercedes‑Maybach S‑Class is also radiant from within. Thanks to the selection of the most exquisite materials and inviting seat variants, in conjunction with the orchestration of innovative technology and high-resolution screens.',500000,600,0,0,'maybach','maybach mercedes','mercedes, maybach, s-class','Mercedes‑Maybach stands for timeless luxury. The presentation includes stylish emblems and letterings that document this legend visually.','2023-07-18 21:21:15.625526',1),(7,'Boat-Tail','Rolls Royce Boat Tail','uploads/20230718222531Rolls-Royce-Boat-Tail-1.jpg','Capturing the client’s personality is fundamental; Coachbuild elevates this principle to its highest plane. It is an artistic skillset only existing at Rolls-Royce.',9,'Coachbuild presents individuals of extraordinary achievement, culture, and vision to craft an entirely original motor car — and stake claim in the marque’s legendary history. With Coachbuild, one realises a dream in partnership with the world’s finest designers, engineers, and artisans.',700000,600,0,1,'rolls royce','rolls, boat, tail','gold, car, rolls','Coachbuild presents individuals of extraordinary achievement, culture, and vision to craft an entirely original motor car — and stake claim in the marque’s legendary history. With Coachbuild, one realises a dream in partnership with the world’s finest designers, engineers, and artisans.','2023-07-18 21:25:31.909468',1),(8,'Pagani','Pagani Huayra BC Roadster','uploads/20230718224738pagani-huayra-dinamica-evo-2023-01-20230324132524-1920x1080.jpg','The AMG-sourced, turbocharged 6.0-litre V12 engine cranks out as much as 791 horsepower.',2,'There\'s serious performance packed within the car\'s frame too. Compared to the Huayra BC coupe, the roadster boasts a new front fascia, more aggressive rear diffuser and other aero tweaks that provide up to 1,100 pounds of downforce at 175 mph.',900000,600,0,1,'pagani','pagani','pagani','The AMG-sourced, turbocharged 6.0-litre V12 engine cranks out as much as 791 horsepower.','2023-07-18 21:28:29.612943',1),(9,'Huracan','Lamborghini Huracán STO','uploads/20230718223152Screenshot_2023-07-18_222951.png','Explore the new Huracán STO through videos, car renderings and much more to enjoy every single detail of the latest Lamborghini V10 creation.',10,'A super-sports car created with a singular purpose, the Huracán STO delivers all the feel and technology of a genuine race car in a road-legal model.\r\nLamborghini’s years-long motorsport know-how, intensified by a winning heritage, is concentrated in the new Huracán STO. Its extreme aerodynamics, track-honed handling dynamics, lightweight contents and the highest-performing V10 engine to date come together, ready to trigger all the emotions of the racetrack in your everyday life.',400000,600,0,0,'lambo','lambo','lambo','Explore the new Huracán STO through videos, car renderings and much more to enjoy every single detail of the latest Lamborghini V10 creation.','2023-07-18 21:31:52.345663',1),(10,'F430','Ferrari F430 Spider','uploads/20230719183317donald-trumps-ferrari-f430-rolls-royce-phantom-are-about-to-hit-th_uL6WfQB.jpg','The Ferrari F430 (Type F131) is a sports car produced by the Italian automobile manufacturer Ferrari from 2004 until 2009 as a successor to the Ferrari 360.',6,'Designed by Pininfarina in collaboration with Frank Stephenson (Director of Ferrari-Maserati Concept Design and Development), the body styling of the F430 was revised from its predecessor, the 360, to improve its aerodynamic efficiency. Although the drag coefficient remained the same, the downforce was greatly enhanced. Despite sharing the same basic Alcoa Aluminium chassis, roofline, doors, and glass, the car looked significantly different from the 360.',650000,600,0,1,'f430','ferrari','gold, ferrari','The Ferrari F430 (Type F131) is a sports car produced by the Italian automobile manufacturer Ferrari from 2004 until 2009 as a successor to the Ferrari 360.','2023-07-19 17:01:07.445988',1),(11,'V-Rod','Harley Davidson V Rod','uploads/202307191806383e0ee00d202d864923a9ad950ed1878c.jpg','The seat height of a Vrod is about 27″. You should be able to securely plant your feet (flat) on the ground while seated on the bike. If you can\'t do that, as a new rider, you\'re going to have trouble',3,'Outlaw Chrome Wheels\r\n18″ x 5,5″ Front Wheel\r\n18″ x 10,5″ Rear Wheel\r\n300/35VR18 Rear Tire\r\n200/50R18 Front Tire\r\n13″ Front Brake\r\nPulley-Rotor',20000,600,0,1,'harley','harley','gold, harley','Outlaw Chrome Wheels\r\n18″ x 5,5″ Front Wheel\r\n18″ x 10,5″ Rear Wheel\r\n300/35VR18 Rear Tire\r\n200/50R18 Front Tire\r\n13″ Front Brake\r\nPulley-Rotor','2023-07-19 17:06:38.328868',1),(12,'Megane','Renault Megane TCE 300','uploads/20230719181246megane-sport.jpg','2019 Renault Megane 1.8’s production started in 2018 and continued in 2018 and 2019. Megane Megane 4 R.S. is a 5 doors Hatchback in Untere Mittelklasse (z.B. Golf).',0,'Automobile weight is 1494 kg with 405 liters trunk loading capacity. Megane R.S. TCe 300 GPF has a 1,8 l Petrol engine. With 1798 cc engine size it produces 300 horsepower and 400 Nm torque. The power is transmitted by a 6 speed Manual gearbox with Front wheel drive. Vehicle can accelerate from zero to 100 km/h (60 mph) in 5.0 seconds. Top speed is limited by 260 km/h (162 mph). The engine has a Euro 6d-TEMP (WLTP) standard. Fuel tank capacity is 50 liters. Automobile is equipped by Start & Stop',50000,250,0,1,'megane','megane','renault, megane','Automobile weight is 1494 kg with 405 liters trunk loading capacity. Megane R.S. TCe 300 GPF has a 1,8 l Petrol engine. With 1798 cc engine size it produces 300 horsepower and 400 Nm torque. The power is transmitted by a 6 speed Manual gearbox with Front wheel drive. Vehicle can accelerate from zero to 100 km/h (60 mph) in 5.0 seconds. Top speed is limited by 260 km/h (162 mph). The engine has a Euro 6d-TEMP (WLTP) standard. Fuel tank capacity is 50 liters. Automobile is equipped by Start & Stop','2023-07-19 17:12:46.288351',2),(13,'Tucson','Hyundai Tucson','uploads/20230719183255hyundai_tucson_hybrid_74_925x520_acf_cropped-925x520.jpeg','The Hyundai Tucson (Korean: 현대 투싼) (pronounced Tu-són) is a compact crossover SUV',10,'South Korean manufacturer Hyundai since 2004. In the brand\'s lineup, the Tucson is positioned below the Santa Fe, and above the Kona and Creta. It is named after the city of Tucson, Arizona. The second-generation model has been marketed as the Hyundai ix35 in several markets, including Europe, Australia and China, before reverting to Tucson for the third generation.',60500,250,0,0,'hyundai','hyundai','hyundai','South Korean manufacturer Hyundai since 2004. In the brand\'s lineup, the Tucson is positioned below the Santa Fe, and above the Kona and Creta. It is named after the city of Tucson, Arizona. The second-generation model has been marketed as the Hyundai ix35 in several markets, including Europe, Australia and China, before reverting to Tucson for the third generation.','2023-07-19 17:14:54.761519',2),(14,'Puma','Ford Puma ST','uploads/20230719181634Ford-Puma_ST-2021-1600-01.jpg','What is Puma ST? Ford Puma ST - Sporty SUV | Ford UK The New Ford Puma ST is our first ever performance SUV in Europe, created with the signature fun-to-drive DNA of the Ford ST range.',10,'A turbocharged 1. 5-litre Ford EcoBoost engine delivers an impressive 200 PS with 320 Nm of torque. The Puma ST is capable of 0-62 mph [0-100 km/h] in just 6.7 seconds.',40000,250,0,1,'ford','ford','ford','A turbocharged 1. 5-litre Ford EcoBoost engine delivers an impressive 200 PS with 320 Nm of torque. The Puma ST is capable of 0-62 mph [0-100 km/h] in just 6.7 seconds.','2023-07-19 17:16:34.681772',2),(15,'XC90','Volvo XC90','uploads/202307191818502024-volvo-xc90-101-649311ffdc60b.jpg','The XC90 mild hybrid has been engineered to deliver smooth take-offs and refined acceleration, making both city and highway journeys more refined',10,'In India, the Volvo XC90 is available in diesel and even tech-laden petrol-electric plug-in hybrid versions. Also, while seven seats are standard, the range-topping XC90 Excellence trims are unique for their four-seat and three-seat configurations.',55000,250,0,0,'volvo','volvo','volvo','In India, the Volvo XC90 is available in diesel and even tech-laden petrol-electric plug-in hybrid versions. Also, while seven seats are standard, the range-topping XC90 Excellence trims are unique for their four-seat and three-seat configurations.','2023-07-19 17:18:50.949359',2),(16,'Ibiza','Seat Ibiza 1.0 EcoTSI','uploads/20230719183232EDN_NCAUTO_23054072-0.jpg','The Seat Ibiza is one of the best small cars you can buy thanks to its tidy handling, roomy interior and low running costs. Go for the 1.0 TSI 95 engine and SE Technology or FR trim to get the best value for money.',10,'You\'ll get a good fuel economy out of them, as the smaller capacity means less fuel is used. This is great if you mainly do a lot of stop/start driving, such as in a city where there are lots of traffic lights, or if you usually make short journeys.',30000,250,0,1,'ibiza','ibiza','ibiza','You\'ll get a good fuel economy out of them, as the smaller capacity means less fuel is used. This is great if you mainly do a lot of stop/start driving, such as in a city where there are lots of traffic lights, or if you usually make short journeys.','2023-07-19 17:22:04.150506',2),(17,'Corolla','Toyota Corolla Hatchback','uploads/20230719182757image.jpg','Compact sedan or four-door hatchback body style.',6,'Instantly recognizable on the road, the Corolla Hatchback offers charisma and character not found in many hatchbacks. Striking design elements include distinctive LED headlights and taillights, chrome tailpipe diffuser, chrome grille surround, and available 18-inch alloy wheels.',25000,250,0,0,'corolla','corolla','corolla','Compact sedan or four-door hatchback body style.','2023-07-19 17:27:57.443286',2),(18,'R15','Yamaha YZF R15','uploads/20230719183157brand-new-yamaha-yzf-r15-ver-4-for-sale-93740.jpeg.500x500_q85_watermark.jpg','What makes R15 special? Yamaha R15 Special Edition (Version 2) Price, Specs & Mileage The motorcycle is powered by a 149cc, liquid cooled and fuel injected engine that produces 16.8 BHP at 8500 rpm and 15 Nm at 7500 rpm.',9,'since i don\'t have enough experience i was looking for a bike with premium looks - linear performance (not scary as a ktm) - light weight body - a good instrument cluster (with gear indication , its so helpful for beginners like me). I strongly believe that r15 v3 is the perfect choice for starters.',15000,250,0,1,'yamaha','yamaha','yamaha','since i don\'t have enough experience i was looking for a bike with premium looks - linear performance (not scary as a ktm) - light weight body - a good instrument cluster (with gear indication , its so helpful for beginners like me). I strongly believe that r15 v3 is the perfect choice for starters.','2023-07-19 17:31:57.801927',2),(19,'Giulia','Alfa Romeo Giulia GTA','uploads/202307191835562021_Alfa_Romeo_Giulia_GTAm_38_925x520_acf_cropped-925x520.jpg','The Giulia is a rear wheel drive 4 door with 5 seats, powered by a 2.9L BI TURBO V6 engine that has 397 kW of power (at 6500 rpm) and 600 Nm of torque (at 2500 rpm) via an Eight-speed Automatic.',4,'The Alfa Romeo GTA moniker is back as a hotter version of the Giulia Quadrifoglio. GTA stands for Gran Turismo Alleggerita or \"Grand Touring Lightened\" in English, and as such, the company sheds 221 pounds (100 kilograms) off this variant in comparison to the existing Quadrifoglio.',30000,250,0,1,'giulia','giulia','giulia','giuliagiuliagiuliagiuliagiuliagiuliagiuliagiuliagiuliagiuliagiuliagiuliagiulia','2023-07-19 17:35:56.813034',2),(20,'Lada','Lada Riva','uploads/20230719204408Lada_2107_aka_Lada_Riva_October_1995_1452cc.jpg','The Lada / VAZ-2105, 2104 and 2107, collectively marketed as Lada Riva for right-hand drive models (in the United Kingdom, Australia and New Zealand), the Lada Nova in Germany, and by multiple other names and markets',10,'Today they are generally referred to as the Lada Classic series, being derived from the original Fiat 124 platform which has been the now-iconic mainstay of the AvtoVAZ lineup since the company\'s foundation in the late 1960s. Russian production at the company\'s main plant at Togliatti ended in September 2012.',5000,50,0,0,'lada','lada','lada','Today they are generally referred to as the Lada Classic series,[7] being derived from the original Fiat 124 platform which has been the now-iconic mainstay of the AvtoVAZ lineup since the company\'s foundation in the late 1960s. Russian production at the company\'s main plant at Togliatti ended in September 2012.','2023-07-19 19:44:08.792136',3),(21,'Aixam','Aixam 500 Emotion','uploads/202307192048412yUtL4rxSse5a1CNG9yQNnBSORRRA20joZ04J8xQ.jpeg','Aixam is the only manufacturer to offer a range of 100% electric cars. 100% silent and ecological, e-Aixam licence-free cars are equipped with the same finishes and options as combustion vehicles.',0,'Aixam 500, a quadricycle which is perfect for those who love motorbikes and only hold a motorbike licence. The Aixam 500 is not considered a car, but more of a bike with features such as it\'s weight of under 400 kilo\'s.',4000,50,0,0,'aixam','aixam','aixam','Aixam 500, a quadricycle which is perfect for those who love motorbikes and only hold a motorbike licence. The Aixam 500 is not considered a car, but more of a bike with features such as it\'s weight of under 400 kilo\'s.','2023-07-19 19:48:41.851091',3),(22,'Multipla','Fiat Multipla','uploads/202307192052111200px-Fiat_Multipla_front_20080825.jpg','The Fiat Multipla (Type 186) is a six-seater car produced by Italian automaker Fiat from 1998 to 2010. Based on the Bravo/Brava, the Multipla was shorter and wider than its rivals',8,'It had two rows of three seats, where its compact MPV competitors had two across front seating. The Multipla is shorter than the three-door Bravo/Brava on which it was based, yet it offered increased seating and cargo volume. Sales commenced in Italy in November 1998.\r\n\r\nIn common with a number of other modern Fiats, the Multipla reused the name of an earlier vehicle, in this case the \"Multipla\" variant of the Fiat 600 produced during the 1950s and 1960s.',4500,50,0,1,'multipla','fiat','fiat','It had two rows of three seats, where its compact MPV competitors had two across front seating. The Multipla is shorter than the three-door Bravo/Brava on which it was based, yet it offered increased seating and cargo volume. Sales commenced in Italy in November 1998.\r\n\r\nIn common with a number of other modern Fiats, the Multipla reused the name of an earlier vehicle, in this case the \"Multipla\" variant of the Fiat 600 produced during the 1950s and 1960s.','2023-07-19 19:52:11.502648',3),(23,'Larus','Larus Tuk Tuk','uploads/20230719205528img-20210709-153752_6_145665-162584154349047.jpeg','The weight of the tuk tuks (unloaded and without passengers) is 350kg.',10,'The tuk tuk has a small passenger cabin that is normally open on the sides or has a canvas covering. It is propelled by a little gasoline or diesel engine. The tuk tuk\'s agile mobility allows it to move through crowded city streets, providing locals and visitors with an easy and economical method of transportation',3000,50,0,1,'Tuk Tuk','Tuk Tuk','Tuk Tuk','Tuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk TukTuk Tuk','2023-07-19 19:55:28.648571',3),(24,'Robin','Reliant Robin','uploads/20230719205702DSC04550.jpg','The Reliant Robin is a small three-wheeled car produced by the Reliant Motor Company in Tamworth, England. It was offered in several versions (Mk1, Mk2 and Mk3) over a period of 30 years.',8,'The Robin was a three-wheeled fiberglass car with a 748-848cc gasoline engine and a four-speed manual transmission. Reliant designed a rear-wheel-drive system for the car, as the single front wheel was used to steer. The Robin weighed a mere 992lbs (450kg) and achieved fuel economy up to 70mpg.',2000,50,0,1,'Robin','Robin','Robin','RobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobinRobin','2023-07-19 19:57:02.476783',3),(25,'VéloSoleX','VéloSoleX','uploads/20230719205920velo-solex.png','VéloSoleX is a moped, or motorised bicycle, usually just referred to as \'Solex\', which was originally produced by the French manufacturer Solex, based in Courbevoie near Paris, France.',9,'Solexity — an electric assisted bicycle which can reach speeds of up to 25 km/h (16 mph) [Pedelec norm] and has a range of up to 60 km (37 mi). e-Solex — an electric bike which can reach speeds of 25–35 km/h (16–22 mph) and has a range of up to 40 km (25 mi).',500,50,0,0,'VéloSoleX','VéloSoleX','VéloSoleX','VéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleXVéloSoleX','2023-07-19 19:59:20.909792',3),(26,'Trident','Peel Trident','uploads/202307192100441965-peel-trident-13-960x600.png','The Peel Trident is the second three-wheeled microcar built by the Peel Engineering Company on the Isle of Man.',0,'The Trident has a monocoque body made from fibreglass, a large Perspex dome offering unrivalled visibility, a flat glass windshield with a wiper, and seating for two. Steering is accomplished with a traditional steering wheel, turning the two coil-sprung, undamped front wheels.',50000,50,0,1,'Trident','Trident','Trident','TridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTridentTrident','2023-07-19 20:00:44.750705',3),(27,'Thing','Volkswagen Type 181','uploads/2023071921024074-vw-thing-caplan.png','The Volkswagen Type 181 is a two-wheel drive, four-door, convertible, manufactured and marketed by Volkswagen from 1968 until 1983',0,'All four doors were removable and interchangeable, the windshield folded flat, and the convertible roof could be removed for al fresco driving. The spartan interior featured vinyl covered bucket seats, painted sheet metal, drain holes and perforated rubber mats. A fiberglass hardtop and trunk-mounted auxiliary heater were offered as individual options.',4300,50,0,1,'Thing','Thing','Thing','ThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThingThing','2023-07-19 20:02:40.439980',3);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_profile`
--

DROP TABLE IF EXISTS `store_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `pincode` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_profile_user_id_d67604a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_profile`
--

LOCK TABLES `store_profile` WRITE;
/*!40000 ALTER TABLE `store_profile` DISABLE KEYS */;
INSERT INTO `store_profile` VALUES (1,'456456','Avenida João XXIII\r\n321 4esq','Montijo','Setúbal','Portugal','2870-159','2023-07-10 18:51:13.248808',2),(2,'456456','Avenida João XXIII\r\n321 4esq','Montijo','Setúbal','Portugal','2870-159','2023-07-19 02:21:45.228696',1),(3,'962367929','Avenida João XXIII\r\n321 4esq','Montijo','Montijo','Portugal','2870-159','2023-07-19 21:43:53.945862',3),(4,'3245325','gfdsgdsg','dsgdsgds','gdsgdsg','dsgdsg','dsgdsgds','2023-07-19 22:59:05.198727',4),(5,'324324','4324324','432432','432432','432432','342432','2023-07-19 23:40:53.401186',5);
/*!40000 ALTER TABLE `store_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_wishlist`
--

DROP TABLE IF EXISTS `store_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_wishlist_product_id_8af1333d_fk_store_product_id` (`product_id`),
  KEY `store_wishlist_user_id_afcc4e88_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_wishlist_product_id_8af1333d_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `store_wishlist_user_id_afcc4e88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_wishlist`
--

LOCK TABLES `store_wishlist` WRITE;
/*!40000 ALTER TABLE `store_wishlist` DISABLE KEYS */;
INSERT INTO `store_wishlist` VALUES (6,'2023-07-17 21:51:07.988251',1,2),(11,'2023-07-19 18:24:25.508987',3,2),(12,'2023-07-19 20:58:32.956947',26,1),(13,'2023-07-19 21:50:17.271300',1,3),(14,'2023-07-19 21:51:33.509244',26,3),(20,'2023-07-19 23:23:53.279512',8,4),(22,'2023-07-19 23:24:39.507392',4,4);
/*!40000 ALTER TABLE `store_wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 18:11:29
