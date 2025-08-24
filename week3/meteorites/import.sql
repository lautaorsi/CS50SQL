CREATE TABLE meteorites("id" INTEGER PRIMARY KEY, "name" TEXT, "class" TEXT, "mass" INT, "discovery" TEXT, "year" INT, "lat" INT, "long" INT) ;
.import --csv meteorites.csv temp
DELETE FROM temp WHERE nametype LIKE "Relict";
ALTER TABLE temp DROP COLUMN nametype;
INSERT INTO meteorites(name,class,mass,discovery,year,lat,long) SELECT temp.name,temp.class,ROUND(temp.mass,2),temp.discovery,temp.year,ROUND(temp.lat,2),ROUND(temp.long,2) FROM temp ORDER BY year ASC, name;
UPDATE meteorites SET "year" = NULL WHERE "year" = "";
UPDATE meteorites SET "mass" = NULL WHERE "mass" = "";
UPDATE meteorites SET "lat" = NULL WHERE "lat" = "";
UPDATE meteorites SET "long" = NULL WHERE "long" = "";
DROP TABLE temp;
