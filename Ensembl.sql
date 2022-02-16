--there are two available ports for connecting to the central ensembl db
mysql -h ensembldb.ensembl.org -u anonymous -P 3306
mysql -h ensembldb.ensembl.org -u anonymous -P 5306

--show databases command will list all available dbs. Basically every piece of information is accessible via mysql Ensembl server that are present on the Ensembl webpage
SHOW DATABASES;

--more specific search can be performed by using a masking step, for example to search for every db that are somehow related to mouse
--in this case it will return core,funcgen,cdna,otherfeatures,rnaseq,variation,vega dbs for every mouse strain
SHOW DATABASES LIKE 'mus_musculus%';

--select the desired db
USE mus_musculus_otherfeatures_100_38;

--check available tables
SHOW TABLES;

--more specific search for tables that names start with repeat
--and then it is possible to use any of them
SHOW TABLES LIKE 'repeat%';