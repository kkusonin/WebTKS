CREATE DATABASE IF NOT EXISTS `tks` 
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;

USE tks;

CREATE TABLE IF NOT EXISTS `orders` (
	`id` int(10) unsigned auto_increment,
	`lead_id` int(9) unsigned NOT NULL default 0, 
	`seq` int(9) unsigned NOT NULL default 1,
	`phone_number` varchar(18) NOT NULL default '',
	`user` varchar(20) NOT NULL default '',
	`full_name` varchar(50) NOT NULL default '',
	`name` varchar(64) NOT NULL default '',
	`surname` varchar(128) NOT NULL default '',
	`patronymic` varchar(128) NOT NULL default '',
	`birthdate` date NOT NULL default 0,
	`phone_mobile` varchar(18) NOT NULL default '',
	`phone_home` varchar(18) NOT NULL default '',
	`client_declared_credit_history` ENUM('GOOD','BAD','NOT EXISTENT ','UNKNOWN'),
	`creation_time` timestamp DEFAULT CURRENT_TIMESTAMP,
	`uuid` char(32) NOT NULL default '0',
	`entry_time` timestamp NOT NULL default '0000-00-00 00:00:00',
	`update_time` timestamp NOT NULL default '0000-00-00 00:00:00',
	`uuid_crc` int(10) unsigned NOT NULL default '0',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `idx_lead_seq` (`lead_id`, `seq`),
	INDEX `idx_uuid_crc` (`uuid_crc`)
) ENGINE=InnoDB;

CREATE USER 'tks'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT, INSERT, UPDATE, DELETE ON tks.* TO 'tks'@'localhost';
	
