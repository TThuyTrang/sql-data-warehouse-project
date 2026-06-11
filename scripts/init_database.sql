/* 
=====================================
	create database and schemas
=====================================
Script Purpose: 
	This script creates a new database named 'DataWarehouse' after checking if it already exits/
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'brozen', 'silver' and 'gold'.

Warning: 
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script. 

*/


--Create database 'DataWarehouse'
Use master;
go

--Drop and recreate the 'DataWarehouse' database
If exists ( select 1 from sys.databases where name = 'DataWarehouse')
Begin
	Alter database DataWarehouse set single_user with rollback immediate;
	Drop database DataWarehouse;
End;
Go
-- Create the 'DataWarehouse' database
create database DataWarehouse;
use DataWarehouse;
-- Create Schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go
