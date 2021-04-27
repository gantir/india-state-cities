
-- Create Country
CREATE TABLE IF NOT EXISTS `country` (
	`id` INT(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(60) NOT NULL,
	`iso_code` CHAR(5) NOT NULL,
	`un_code` CHAR(5) NOT NULL,
	`un_num` CHAR(5) NOT NULL,
	`dialing_code` CHAR(5) NOT NULL,
	UNIQUE(`name`),
	UNIQUE(`iso_code`),
	UNIQUE(`un_code`),
	UNIQUE(`un_num`)
	) 
	ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create State
CREATE TABLE IF NOT EXISTS `state` (
	`id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`country_id` INT(3) NOT NULL,
	`state_name` VARCHAR(40) NOT NULL,
	`state_code` CHAR(3) NOT NULL
	) 
	ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create City
CREATE TABLE IF NOT EXISTS `city` (
	`id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`state_id` INT(11) NOT NULL,
	`city_name` varchar(100) NOT NULL
	) 
	ENGINE=InnoDB DEFAULT CHARSET=latin1 ;