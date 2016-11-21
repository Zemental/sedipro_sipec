DROP DATABASE IF EXISTS sedipro_sipec;
CREATE DATABASE sedipro_sipec;
USE sedipro_sipec;

CREATE TABLE tb_Users
(
	USE_id		 	 INT (11) AUTO_INCREMENT,
	USE_user	 	 VARCHAR (50) NOT NULL,
	USE_password 	 VARCHAR (50) NOT NULL,	
	USE_creationDate DATETIME NOT NULL,
	USE_deletedDate	 DATETIME NOT NULL,
	USE_state		 BIT (1) NOT NULL,

	PRIMARY KEY (USE_id)
);

CREATE TABLE tb_Roles
(
	ROL_id 			INT (11) AUTO_INCREMENT,
	ROL_name		VARCHAR (50) NOT NULL,
	ROL_description VARCHAR (100) NOT NULL,	
	ROL_createDate  DATETIME NOT NULL,
	ROL_state		BIT (1) NOT NULL,

	PRIMARY KEY (ROL_id)
);

CREATE TABLE tb_Users_Roles
(
	USEROL_id 		INT (11) AUTO_INCREMENT,
	USE_id 			INT (11) NOT NULL,
	ROL_id 			INT (11) NOT NULL,
	ROL_state		BIT (1) NOT NULL,

	PRIMARY KEY (USEROL_id),
	FOREIGN KEY (USE_id) REFERENCES tb_Users (USE_id),
	FOREIGN KEY (ROL_id) REFERENCES tb_Roles (ROL_id)
);