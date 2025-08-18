CREATE TABLE users(
    "first name" TEXT,
    "last name" TEXT,
    "username" TEXT,
    "password" TEXT,
    "id" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE schools(
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE companies(
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "user connections"(
    "userA ID" INTEGER,
    "userB ID" INTEGER,
    FOREIGN KEY ("userA ID") REFERENCES "users"("id"),
    FOREIGN KEY ("userB ID") REFERENCES "users"("id")
);

CREATE TABLE "company connections"(
    "user ID" INTEGER,
    "company ID" INTEGER,
    "start date" TEXT,
    "final date" TEXT,
    "title" TEXT,
    FOREIGN KEY ("user ID") REFERENCES "users"("id"),
    FOREIGN KEY ("company ID") REFERENCES "companies"("id")
);

CREATE TABLE "school connections"(
    "user ID" INTEGER,
    "school ID" INTEGER,
    "start date" TEXT,
    "final date" TEXT,
    "type" TEXT,
    FOREIGN KEY ("user ID") REFERENCES "users"("id"),
    FOREIGN KEY ("school ID") REFERENCES "schools"("id")
);

