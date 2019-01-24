CREATE TABLE All_trainings (
	`Subject` VARCHAR(255),
	`Duration` INT);

CREATE TABLE ALL_lab_members (
	`Name` VARCHAR(255),
	`Lastname` VARCHAR(255),
	`Birth_date` date,
	`Training` VARCHAR(255),
	PRIMARY KEY (Name));

CREATE TABLE All_equipment (
	`Name` VARCHAR(255),
	`Manufacturer` VARCHAR(255),
	`Purchase_date` date,
	PRIMARY KEY (Name));

CREATE TABLE All_experiments (
	`Name` VARCHAR(255),
	`Performed_by` VARCHAR(255),
	`Equipment_used` VARCHAR(255),
	FOREIGN KEY (Name)
	REFERENCES All_equipment (Name),
	FOREIGN KEY (Name)
	REFERENCES ALL_equipment (Name));
   

CREATE TABLE All_results (
	`Directory` VARCHAR(255),
	`Experiment` VARCHAR(255),
	`Status` VARCHAR(255),
	FOREIGN KEY (Name)
	REFERENCES All_experiments (Name));
