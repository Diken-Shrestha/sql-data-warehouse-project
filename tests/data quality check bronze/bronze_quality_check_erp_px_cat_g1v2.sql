-- Checking Primary Key Consistency in 2 tables

SELECT id FROM bronze.erp_px_cat_g1v2;

SELECT cat_id FROM silver.crm_prd_info;

-- Check for unwanted spaces
SELECT * FROM bronze.erp_px_cat_g1v2
WHERE cat!= TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance)

-- Data Standardization & Consistency
SELECT DISTINCT cat FROM bronze.erp_px_cat_g1v2;

SELECT DISTINCT subcat FROM bronze.erp_px_cat_g1v2;

SELECT DISTINCT maintenance FROM bronze.erp_px_cat_g1v2;

