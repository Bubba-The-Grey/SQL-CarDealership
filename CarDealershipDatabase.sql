CREATE DATABASE CarDealershipDatabase; # Creating the database
USE CarDealershipDatabase; # Using the created database

# Creates tables
CREATE TABLE `dealerships` (
	`dealership_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR (50) NOT NULL,
    `address` VARCHAR (50) NOT NULL,
    `phone` VARCHAR (12) NOT NULL);


CREATE TABLE `vehicles` (
	`vin` INT NOT NULL PRIMARY KEY,
    `year` INT NOT NULL,
    `make` VARCHAR (20) NOT NULL,
    `model` VARCHAR (20) NOT NULL,
    `type` VARCHAR (10) NOT NULL,
    `color` VARCHAR (20) NOT NULL,
    `mileage` INT NOT NULL,
    `price` FLOAT NOT NULL,
    `sold` BOOLEAN NOT NULL);
    

CREATE TABLE `inventory` (
	`dealership_id` INT NOT NULL,
    `vin` INT NOT NULL);
    

CREATE TABLE `sales_contracts` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date` INT NOT NULL,
    `customer` VARCHAR (100) NOT NULL,
    `customer_email` VARCHAR (100) NOT NULL,
    `vin` INT NOT NULL);
    
#Data population
INSERT INTO dealerships (dealership_id, name, address, phone)
	VALUES (1, 'D & B Used Cars', '111 Old Benbrook Rd', '817-555-5555');
INSERT INTO dealerships (dealership_id, name, address, phone)
	VALUES (2, 'Batman Used Cars', '231 Gotham Alley Dr', '492-420-6969');
INSERT INTO dealerships (dealership_id, name, address, phone)
	VALUES (3, 'Bikini Bottom New Cars', '212 Sandy Bottoms Ln', '543-234-2412');
    

INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (37846, 2001, 'Ford', 'Ranger', 'Truck', 'Yellow', 172544, 1995.00, false);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (44901, 2012, 'Honda', 'Civic', 'SUV', 'Gray', 103221, 6995.00, true);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (54923, 2021, 'Toyota', 'Tacoma', 'Truck', 'Gray', 30000, 23000.00, false);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (67238, 2015, 'Chevrolet', 'Silverado', 'Truck', 'Silver', 85000, 18995.00, true);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (10754, 2014, 'Honda', 'CR-V', 'SUV', 'Silver', 78000, 13995.00, false);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (10112, 1993, 'Clown Car', 'Whoopee', 'SUV', 'Red', 525123, 995.00, false);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (44987, 2012, 'GiggleWagon', 'Snicker', 'Sedan', 'Gray', 103221, 6995.00, true);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (58923, 2021, 'ZanyZepplin', 'Chuckler', 'Truck', 'Gray', 30000, 23000.00, true);
INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold)
	VALUES (67987, 2015, 'SillinessExpress', 'Guffaw', 'Truck', 'Silver', 85000, 18995.00, false);
  
  
INSERT INTO inventory (dealership_id, vin)
	VALUES (1, 37846);
INSERT INTO inventory (dealership_id, vin)
	VALUES (1, 44901);
INSERT INTO inventory (dealership_id, vin)
	VALUES (1, 54923);
INSERT INTO inventory (dealership_id, vin)
	VALUES (2, 67238);
INSERT INTO inventory (dealership_id, vin)
	VALUES (2, 10754);
INSERT INTO inventory (dealership_id, vin)
	VALUES (2, 10112);
INSERT INTO inventory (dealership_id, vin)
	VALUES (3, 44987);
INSERT INTO inventory (dealership_id, vin)
	VALUES (3, 58923);
INSERT INTO inventory (dealership_id, vin)
	VALUES (3, 67987);


INSERT INTO sales_contracts (id, date, customer, customer_email, vin)
	VALUES(1, 20230115, 'Larry Finch', 'lfinch@gmail.com', 44901);
INSERT INTO sales_contracts (id, date, customer, customer_email, vin)
	VALUES(2, 20230223, 'Dana Wyatt', 'dana@texas.com', 67238);
INSERT INTO sales_contracts (id, date, customer, customer_email, vin)
	VALUES(3, 20230928, 'Zachary Westly', 'zach@texas.com', 44987);
INSERT INTO sales_contracts (id, date, customer, customer_email, vin)
	VALUES(4, 20231208, 'Bubba Gump', 'shrimpboat@gump.com', 58923);