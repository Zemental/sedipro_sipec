DROP DATABASE IF EXISTS sedipro;
CREATE DATABASE sedipro;
USE sedipro;

CREATE TABLE Areas
(
	ARE_id 			INT (11) AUTO_INCREMENT,
	ARE_name		VARCHAR (50) NOT NULL,
	ARE_description TEXT NULL,
	ARE_membership  TINYINT (1) NOT NULL,
	ARE_state 		BIT (1) NOT NULL,

	PRIMARY KEY (ARE_id)
);

CREATE TABLE Professions
(
	PRO_id 			INT (11) AUTO_INCREMENT,
	PRO_name 		VARCHAR (50) NOT NULL,
	PRO_state		BIT (1) NOT NULL,

	PRIMARY KEY (PRO_id)
);

CREATE TABLE People
(
	PEO_id 			INT (11) AUTO_INCREMENT,
	PEO_dni			VARCHAR (8) NOT NULL,
	PEO_firstName   VARCHAR (50) NOT NULL,
	PEO_lastName	VARCHAR (50) NOT NULL,
	PEO_birthDate   DATE NOT NULL,
	PEO_address 	VARCHAR (50) NOT NULL,
	PEO_phoneNumber VARCHAR (15) NULL,
	PEO_email		VARCHAR (75) NOT NULL,	
	ARE_id 			INT NOT NULL,
	PRO_id 			INT NOT NULL,
	PEO_cycle 		VARCHAR(5),
	PEO_state		BIT (1) NOT NULL,

	PRIMARY KEY (PEO_id),
	FOREIGN KEY (ARE_id) REFERENCES Areas (ARE_id),
	FOREIGN KEY (PRO_id) REFERENCES Professions (PRO_id)
);

CREATE TABLE Users
(
	PEO_id		 	 INT (11) AUTO_INCREMENT,
	USE_user 	 	 VARCHAR (50) NOT NULL,
	USE_password 	 VARCHAR (50) NOT NULL,	
	USE_creationDate DATETIME NOT NULL,
	USE_deletedDate	 DATETIME NOT NULL,
	USE_state		 BIT (1) NOT NULL,

	PRIMARY KEY (PEO_id),
	FOREIGN KEY (PEO_id) REFERENCES People (PEO_id)
);

CREATE TABLE Access
(
	ACC_id 			INT (11) AUTO_INCREMENT,
	PEO_id 			INT NOT NULL,	
	ACC_loginDate 	DATETIME NOT NULL,
	ACC_logoutDate 	DATETIME NOT NULL,
	ACC_state 		BIT (1) NOT NULL,

	PRIMARY KEY (ACC_id),
	FOREIGN KEY (PEO_id) REFERENCES Users (PEO_id)
);

CREATE TABLE Roles
(
	ROL_id 			INT (11) AUTO_INCREMENT,
	ROL_name		VARCHAR (50) NOT NULL,
	ROL_description VARCHAR (100) NOT NULL,	
	ROL_createDate  DATETIME NOT NULL,
	ROL_state		BIT (1) NOT NULL,

	PRIMARY KEY (ROL_id)
);

CREATE TABLE Users_Roles
(
	USEROL_id 		INT (11) AUTO_INCREMENT,
	USE_id 			INT (11) NOT NULL,
	ROL_id 			INT (11) NOT NULL,
	ROL_state		BIT (1) NOT NULL,

	PRIMARY KEY (USEROL_id),
	FOREIGN KEY (USE_id) REFERENCES Users (USE_id),
	FOREIGN KEY (ROL_id) REFERENCES Roles (ROL_id)
);

CREATE TABLE Resources
(
	RES_id 			INT (11) AUTO_INCREMENT,
	RES_name  		VARCHAR (50) NOT NULL,	
	RES_createDate  DATETIME NOT NULL,
	RES_state 		BIT (1) NOT NULL,

	PRIMARY KEY	(RES_id) 
);

CREATE TABLE Roles_Resources
(
	ROLRES_id 		INT (11) AUTO_INCREMENT,
	ROL_id 			INT (11) NOT NULL,
	RES_id 			INT (11) NOT NULL,
	ROLRES_create   TINYINT (1) NOT NULL,
	ROLRES_read     TINYINT (1) NOT NULL,
	ROLRES_update   TINYINT (1) NOT NULL,
	ROLRES_delete   TINYINT (1) NOT NULL,

	PRIMARY KEY (ROLRES_id),
	FOREIGN KEY (ROL_id) REFERENCES Roles (ROL_id),
	FOREIGN KEY (RES_id) REFERENCES Resources (RES_id)
);

CREATE TABLE TypeExams
(
	TYPEXA_id 	 	INT (11) AUTO_INCREMENT,
	TYPEXA_name 	VARCHAR (50) NOT NULL,
	TYPEXA_state 	BIT (1) NOT NULL,

	PRIMARY KEY (TYPEXA_id)
);

CREATE TABLE Exams
(
	EXA_id 				INT (11) AUTO_INCREMENT,
	TYPEXA_id			INT NOT NULL,
	EXA_numberQuestions TINYINT (1) NOT NULL,
	EXA_durationTime 	TIME NOT NULL,
	EXA_state 			BIT (1) NOT NULL,

	PRIMARY KEY (EXA_id),
	FOREIGN KEY (TYPEXA_id) REFERENCES TypeExams (TYPEXA_id)
);

CREATE TABLE ModulesPMBOK
(
	MOD_id 				INT (11) NOT NULL,
	MOD_name 			VARCHAR (50) NOT NULL,
	MOD_state 			BIT (1) NOT NULL,

	PRIMARY KEY (MOD_id)
);

CREATE TABLE Questions 
(
	QUE_id 			INT (11) AUTO_INCREMENT,
	EXA_id 			INT NOT NULL,
	MOD_id 			INT NOT NULL,
	QUE_description TEXT NOT NULL,
	QUE_state 		BIT (1) NOT NULL,

	PRIMARY KEY (QUE_id),
	FOREIGN KEY (EXA_id) REFERENCES Exams (EXA_id),
	FOREIGN KEY (MOD_id) REFERENCES ModulesPMBOK (MOD_id)
);

CREATE TABLE Alternatives
(
	ALT_id 			INT (11) AUTO_INCREMENT,
	QUE_id 			INT NOT NULL,
	ALT_item 		CHAR (1) NOT NULL,
	ALT_description TEXT NOT NULL,
	ALT_state 		BIT (1) NOT NULL,

	PRIMARY KEY (ALT_id),
	FOREIGN KEY (QUE_id) REFERENCES Questions (QUE_id)
);

CREATE TABLE Answers
(
	ANS_id 			INT (11) AUTO_INCREMENT,
	QUE_id 			INT NOT NULL,
	ALT_id 			INT NOT NULL,
	ANS_state 		BIT (1) NOT NULL,

	PRIMARY KEY (ANS_id),
	FOREIGN KEY (QUE_id) REFERENCES Questions (QUE_id),
	FOREIGN KEY (ALT_id) REFERENCES Alternatives (ALT_id)
);

CREATE TABLE PersonalExams
(
	PEREXA_id 			INT (11) AUTO_INCREMENT,
	PEO_id 				INT NOT NULL,
	EXA_id 				INT NOT NULL,
	PEREXA_answered		INT NOT NULL,
	PEREXA_correct 		INT NOT NULL,
	PEREXA_score 		INT NOT NULL,
	PEREXA_date 		DATETIME NOT NULL,
	PEREXA_time 		TIME NOT NULL,
	PEREXA_state 		CHAR (1) NOT NULL,

	PRIMARY KEY	(PEREXA_id),
	FOREIGN KEY (PEO_id) REFERENCES People (PEO_id),
	FOREIGN KEY (EXA_id) REFERENCES Exams (EXA_id)
);


