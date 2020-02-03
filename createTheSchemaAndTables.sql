CREATE DATABASE `web-employee-tracker` /*!40100 DEFAULT CHARACTER SET big5 */;

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `hr_id` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `photo` blob,
  `jobdiscription` varchar(45) DEFAULT NULL,
  `jobtitle` varchar(45) DEFAULT NULL,
  `dateofbirth` datetime DEFAULT NULL,
  `dateofhiring` datetime DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `photoUrl` varchar(45) DEFAULT NULL,
  `employeeSalary` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `hr_id_idx` (`hr_id`),
  CONSTRAINT `hr_id` FOREIGN KEY (`hr_id`) REFERENCES `hr` (`hr_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=big5;


CREATE TABLE `hr` (
  `hr_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `totalSalaryCost` int(11) DEFAULT NULL,
  PRIMARY KEY (`hr_id`),
  UNIQUE KEY `id_UNIQUE` (`hr_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=big5;
