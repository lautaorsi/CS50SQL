CREATE TABLE passengers(
    "first name" TEXT,
    "last name" TEXT,
    "age" INTEGER,
    "id" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE flights(
    "id" INTEGER,
    "number" INTEGER,
    "airline" TEXT,
    "origin code" TEXT,
    "destination code" TEXT,
    "departure date" TEXT,
    "departure time" TEXT,
    "arrival date" TEXT,
    "arrival time" TEXT,
    PRIMARY KEY ("id")
);


CREATE TABLE checkins(
    "id" INTEGER,
    "passengerID" INTEGER,
    "flightID" INTEGER,
    "date" TEXT,
    "time" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("passengerID") REFERENCES "passengers"("id")
    FOREIGN KEY ("flightID") REFERENCES "flights"("id")
);


