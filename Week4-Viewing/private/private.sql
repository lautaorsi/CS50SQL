CREATE TABLE "ciphers"(first INT, second INT, third INT);
INSERT INTO ciphers(first, second, third) VALUES (14,98,4);
INSERT INTO ciphers(first, second, third) VALUES (114,3,5);
INSERT INTO ciphers(first, second, third) VALUES (618,72,9);
INSERT INTO ciphers(first, second, third) VALUES (630,7,3);
INSERT INTO ciphers(first, second, third) VALUES (932,12,5);
INSERT INTO ciphers(first, second, third) VALUES (2230,50,7);
INSERT INTO ciphers(first, second, third) VALUES (2346,44,10);
INSERT INTO ciphers(first, second, third) VALUES (3041,14,5);

CREATE VIEW "message" AS SELECT substr("sentence", ciphers.second, ciphers.third) AS "phrase" FROM "sentences" INNER JOIN ciphers ON sentences.id = ciphers.first;
