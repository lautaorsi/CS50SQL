CREATE TABLE ingredients(
    "id" INTEGER,
    "name" TEXT,
    "cost" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE donuts(
    "id" INTEGER,
    "name" TEXT,
    "GF" INTEGER,
    "price" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE recipes(
    "donutID" INTEGER,
    "ingredientID" INTEGER,
    FOREIGN KEY ("donutID") REFERENCES "donuts"("id"),
    FOREIGN KEY ("ingredientID") REFERENCES "ingredients"("id")
);

CREATE TABLE customers(
    "id" INTEGER,
    "first name" TEXT,
    "last name" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE purchases(
    "id" INTEGER,
    "customerID" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customerID") REFERENCES "customers"("id")
);

CREATE TABLE "purchased items"(
    "purchaseID" INTEGER,
    "donutID" INTEGER,
    FOREIGN KEY ("purchaseID") REFERENCES "purchases"("id"),
    FOREIGN KEY ("donutID") REFERENCES "donuts"("id")
);

CREATE TABLE "past orders"(
    "customerID" INTEGER,
    "donutID" INTEGER,
    FOREIGN KEY ("customerID") REFERENCES "customers"("id"),
    FOREIGN KEY ("donutID") REFERENCES "donuts"("id")
);
