
-- *** The Lost Letter ***

-- Get the ID of the origin address
SELECT id FROM addresses WHERE address = "900 Somerville Avenue"; --This returns ID 432

-- Get the package ID from the shipment, using said ID
SELECT id, to_address_id FROM packages WHERE from_address_id = 432 AND contents LIKE "%Letter%" ;--This returns 384,854 and 3529,585

-- Get the driver ID for both of those packages
SELECT driver_id FROM scans WHERE address_id = 432 AND (package_id = 384 OR package_id = 3529);

-- Get the destination addresses for both of those package IDs
SELECT address_id FROM scans WHERE action = "Drop" AND (package_id = 384 OR package_id = 3529) AND (driver_id = 1 OR driver_id = 13);
-- The only match is with 384,854 which seems to be correct, we will verify the destination w the address id now

--Per answers.txt we need both the address and the type
SELECT address, type FROM addresses WHERE id = 854;
--This returns the intended destionation and Residential type. The package was delivered

-- *** The Devious Delivery ***
-- We search for the package id and contents without original address and containing something like a duck
SELECT id, contents FROM packages WHERE from_address_id IS NULL AND contents LIKE "%Duck%"; --This returns the ID 5098

-- We search the address id where the package was dropped
SELECT address_id FROM scans WHERE package_id = 5098 AND action = "Drop"; -- This returns the ID 348

-- We search the address
SELECT address, type FROM addresses WHERE id = 348;


-- *** The Forgotten Gift ***

-- We search for the original address id and the destination
SELECT id FROM addresses WHERE address = "728 Maple Place" OR address = "109 Tileston Street"; -- This returns 4983 and 9873

-- We search for the packages sent from 4983 to 9873 which returned nothing, so it is the other way around
SELECT id, contents FROM packages WHERE from_address_id = 9873 and to_address_id = 4983; -- This returns 9523, Flowers

-- We get the destination address id
SELECT driver_id FROM scans WHERE package_id = 9523; -- This returns 7432

-- We get all the info from the address
SELECT name FROM drivers WHERE id = 11 OR id = 17;






