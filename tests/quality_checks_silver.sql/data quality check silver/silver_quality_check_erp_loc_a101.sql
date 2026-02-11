-- Checkig for difference in Primary Key
SELECT cid FROM silver.erp_loc_a101;

SELECT cst_key FROM silver.crm_cust_info;


-- Data Standardizatoin & Consistency
SELECT DISTINCT cntry FROM silver.erp_loc_a101
ORDER BY cntry;

-- Final Check

SELECT * FROM silver.erp_loc_a101;