USE CarDealershipDatabase;

#1 Get all dealerships
SELECT * FROM dealerships;
    

#2 Find all vehicles for a specific dealership -> Due to lack of specific instructions, I will be going off the assumption of dealership by name
SELECT * FROM vehicles
	WHERE vin IN 
		(SELECT vin FROM inventory
			WHERE dealership_id =
				(SELECT dealership_id FROM dealerships
					WHERE name = 'D & B Used Cars'));


#3 Find a car by VIN
SELECT * FROM vehicles
	WHERE vin = 37846;


#4 Find the dealership where a certain car is located, by VIN
SELECT * FROM dealerships
	WHERE dealership_id = 
		(SELECT dealership_id FROM inventory
			WHERE vin = 37846);


#5 Find all dealerships that have a certain car type (i.e. Red Ford Mustang) **I apologize as the database was not made with duplicates so it will only return one or none**
SELECT * FROM dealerships
	WHERE dealership_id IN 
		(SELECT dealership_id FROM inventory
			WHERE vin IN 
				(SELECT vin FROM vehicles
                WHERE make = 'Ford' AND model = 'Ranger' AND color = 'Yellow'));


#6 Get all sales information for a specific dealer for a specific range
SELECT * FROM sales_contracts
	WHERE vin IN 
		(SELECT vin FROM inventory
			WHERE dealership_id = 
				(SELECT dealership_id FROM dealerships
					WHERE name = 'Batman Used Cars'));