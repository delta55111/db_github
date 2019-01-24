CREATE TABLE `All trainings` (
	trainings_id INT(9) AUTO_INCREMENT NOT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Duration` int(11) NOT NULL,  
  PRIMARY KEY (`trainings_id`),
  KEY `fk_gene_modorg1` (`train_id`)
  FOREIGN KEY (manufacturer, kit_name)
  REFERENCES Suplier(supplier_name)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `All lab members` (
  `Name` varchar(45) DEFAULT NULL,
  `Lastname` varchar(45) DEFAULT NULL,
  `Birth_date` DATE(DD-MM-YYY) NOT NULL,
  `Training` varchar(45) DEFAULT NULL,  --#komt van table 'all trainings', make cross ref table, containg foreign keys to reference to. 
  PRIMARY KEY (`lab_members_id`),
  KEY `fk_gene_modorg1` (`lab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `All equipment` (
  `Name` varchar(45) DEFAULT NULL, -- can come from lab members?
  `Performed_by` varchar(45) DEFAULT NULL,
  `Equipment_used` varchar(45) DEFAULT NULL,
  `Date` DATE(DD-MM-YYY) NOT NULL,  
  PRIMARY KEY (`equipment_id`),
  KEY `fk_gene_modorg1` (`mo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `All results` (
  `Directory` varchar(45) DEFAULT NULL,
  `Experiment` varchar(45) DEFAULT NULL,
  `Status` ENUM(45) DEFAULT NULL,  
  PRIMARY KEY (`results_id`),
  KEY `fk_gene_modorg1` (`mo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES 
(1,'Bacteria'),(2,'Fungi'),(3,'Roundworms'),(4,'Insects'),
(5,'Mammals'),(6,'Aliens');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;


-- PRIMARY, FOREIGN AND REFERENCES
CREATE TABLE lab_members (
	id INT(9) AUTO_INCREMENT NOT NULL,
	....
	PRIMARY KEY (id)
);

CREATE TABLE experiments (
	...
	FOREIGN KEY (performed_by) -->
	REFERENCES lab_members(id) -->primary key from 'leb_members' referenced here
);