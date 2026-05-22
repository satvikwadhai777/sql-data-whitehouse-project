/*
=============================================================
Create Database and Schemas
=============================================================

Script Purpose:
    This script creates the 'DataWarehouse' database.
    If the database already exists, it will be dropped
    and recreated. The script also creates three schemas:
    'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will permanently delete all data
    inside the existing 'DataWarehouse' database.
=============================================================
*/
USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
