--connect to the USCS server
mysql -u genome -h genome-euro-mysql.soe.ucsc.edu -A -P 3306

--show all available dbs
SHOW DATABASES;

--specify the searching
SHOW DATABASES LIKE 'ory%';

--select the desired db
USE oryCun2;

--check available tables, sometimes the shortened forms are used!!
SHOW TABLES;

--select the repeats that are located on the 10th chromosome from the repeatmasker (rmsk) table
SELECT * FROM rmsk WHERE genoName='chr10;