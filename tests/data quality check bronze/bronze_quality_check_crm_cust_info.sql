-- Check for nulls or duplicates in Primary Key
-- Expectation: No Result

SELECT cst_id, count(*) FROM bronze.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for unwanted spaces 
-- Expectation: No Results
SELECT cst_gndr
FROM bronze.crm_cust_info
where cst_gndr != TRIM(cst_gndr);

-- Check for Data Standardization & Consistency
-- Expectations:

SELECT DISTINCT cst_gndr 
FROM bronze.crm_cust_info;


SELECT DISTINCT cst_material_status
FROM bronze.crm_cust_info;