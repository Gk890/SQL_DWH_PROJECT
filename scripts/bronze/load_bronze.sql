/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

create or alter procedure bronze.load_bronze as
BEGIN

truncate table bronze.crm_cust_info;
    
LOAD DATA INFILE 'C:\Users\gopal\OneDrive\Documents\DA\Excel\SQL PROJECT\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
INTO TABLE  bronze.crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


truncate table bronze.crm_prd_info;

LOAD DATA INFILE 'C:\Users\gopal\OneDrive\Documents\DA\Excel\SQL PROJECT\sql-data-warehouse-project\datasets\source_crm\prd_info.csv '
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


LOAD DATA INFILE 'C:\Users\gopal\OneDrive\Documents\DA\Excel\SQL PROJECT\sql-data-warehouse-project\datasets\source_crm\sales_details.csv '
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


truncate table bronze.erp_cust_az12;

LOAD DATA INFILE 'C:\Users\gopal\OneDrive\Documents\DA\Excel\SQL PROJECT\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv '
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


truncate table bronze.erp_loc_a101;

LOAD DATA INFILE 'C:\Users\gopal\OneDrive\Documents\DA\Excel\SQL PROJECT\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv '
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


truncate table bronze.erp_px_cat_g1v2;

LOAD DATA INFILE 'C:\Users\gopal\OneDrive\Documents\DA\Excel\SQL PROJECT\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

END
