/*
======================================================================================================
Create Database and Schemas
======================================================================================================

Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is droped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. 
	Proceed with caution and ensure you have proper backups before running this script.
*/


USE master;
go


-- Drop and recreate the 'DataWarehouse' database
if exists (select 1 from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DEOP DATABASE DataWarehouse;
END;
GO



-- Create Database 'DataWarehouse'
CREATE database DataWarehouse;
go

USE DataWarehouse;
go

-- Create Schemas
create schema bronze;
go

create schema silver;
go

create schema gold;
go
