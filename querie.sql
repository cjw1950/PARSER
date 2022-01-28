SELECT * FROM vap_prod WHERE NAME LIKE '%ijoy%';
SELECT * FROM vap_prod WHERE NAME LIKE '%start%';
SELECT * FROM vap_prod WHERE NAME LIKE '%demon%';
SELECT * FROM vap_prod WHERE NAME LIKE '%smok%';
SELECT * FROM vap_prod WHERE NAME LIKE '%800%';
SELECT * FROM vap_prod WHERE NAME LIKE '%Arcti%';
SELECT * FROM vap_prod WHERE NAME LIKE '%100%';
SELECT * FROM vap_prod WHERE NAME LIKE '%iStick%';
SELECT * FROM vap_prod WHERE NAME LIKE '%pico%';
SELECT * FROM vap_prod WHERE NAME LIKE '%saber%';
SELECT * FROM vap_prod WHERE NAME LIKE '60w%';
SELECT * FROM vap_prod WHERE NAME LIKE '%pen%';
#-----------------------------------------------
SELECT distinct * FROM vap_prod 
WHERE retailprice BETWEEN 10 AND 20;

SELECT NAME,retailPrice FROM vap_prod 
WHERE retailprice BETWEEN 20 AND 50;

SELECT NAME,retailPrice FROM vap_prod 
WHERE retailprice BETWEEN 50 AND 150;

SELECT NAME,retailPrice FROM vap_prod 
WHERE retailprice BETWEEN 150 AND 250;

SELECT NAME,retailPrice FROM vap_prod 
WHERE retailprice BETWEEN 300 AND 500;