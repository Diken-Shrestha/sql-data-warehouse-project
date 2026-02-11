-- Checkig for difference in Primary Key
-- Found dashes as difference
SELECT cid, cntry FROM bronze.erp_loc_a101;

SELECT cst_key FROM silver.crm_cust_info;


-- For check
-- WHERE REPLACE(cid, '-', '') NOT IN 
-- (SELECT cst_key FROM silver.crm_cust_info);

-- Data Standardizatoin & Consistency
SELECT DISTINCT cntry 
FROM bronze.erp_loc_a101
ORDER BY cntry;