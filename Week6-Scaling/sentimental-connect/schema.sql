CREATE TABLE `users` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(128) NOT NULL,
    `year` YEAR NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `location` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE 'connections'(
    'userA_id' INT NOT NULL,
    'userB_id' INT NOT NULL,
    FOREIGN KEY('userA_id') REFERENCES 'users'('id'),
    FOREIGN KEY('userB_id') REFERENCES 'users'('id')
);

CREATE TABLE 'affiliations'(
    'user_id' INT NOT NULL,
    'school_id' INT NOT NULL,
    'start_date' DATE NOT NULL,
    'end_date' DATE,
    'degree' VARCHAR(32),
    FOREIGN KEY('user_id') REFERENCES 'users'('id'),
    FOREIGN KEY('school_id') REFERENCES 'schools'('id')
);

CREATE TABLE 'employments'(
    'user_id' INT NOT NULL,
    'company_id' INT NOT NULL,
    'start_date' DATE NOT NULL,
    'end_date' DATE,
     FOREIGN KEY('user_id') REFERENCES 'users'('id'),
    FOREIGN KEY('company_id') REFERENCES 'companies'('id')
);


