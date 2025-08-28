CREATE TABLE `users` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    'location_latitude' DOUBLE PRECISION(12,9) NOT NULL,
    'location_longitude' DOUBLE PRECISION(12,9) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `registered_pets` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    'owner_id' INT NOT NULL,
    'species' ENUM('Dog', 'Cat', 'Rabbit', 'Bird', 'Other') NOT NULL,
    `name` VARCHAR(32) NOT NULL,
    `fur color` VARCHAR(32) NOT NULL,
    `breed` VARCHAR(32) NOT NULL,
    'missing' BIT,
    'missing_report_id' INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY ('owner_id') REFERENCES 'users'('id'),
    FOREIGN KEY ('missing_report_id') REFERENCES 'missing_reports'('id')
);


CREATE TABLE `found_pets` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    'user_found_id' INT NOT NULL,
    'species' ENUM('Dog', 'Cat', 'Rabbit', 'Bird', 'Other') NOT NULL,
    `fur color` VARCHAR(32) NOT NULL,
    `breed` VARCHAR(32) NOT NULL,
    'found_date' DATE NOT NULL,
    'found_latitude' DOUBLE PRECISION(12,9) NOT NULL,
    'found_longitude' DOUBLE PRECISION(12,9) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY('user_found_id') REFERENCES 'users'('id')
);


CREATE TABLE 'missing_reports'(
    'id' INT UNSIGNED AUTO_INCREMENT,
    'owner_id' INT NOT NULL,
    'pet_id' INT NOT NULL,
    'lost_date' DATE NOT NULL,
    'last_seen_latitude' DOUBLE PRECISION(12,9) NOT NULL,
    'last_seen_longitude' DOUBLE PRECISION(12,9) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY ('owner_id') REFERENCES 'users'('id'),
    FOREIGN KEY ('pet_id') REFERENCES 'pets'('id')
);
