-- Checking Primary Key Consistency in 2 tables

SELECT id FROM silver.erp_px_cat_g1v2;

SELECT cat_id FROM silver.crm_prd_info;

-- Check for unwanted spaces
SELECT * FROM silver.erp_px_cat_g1v2
WHERE cat!= TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance)

-- Data Standardization & Consistency
SELECT DISTINCT cat FROM silver.erp_px_cat_g1v2;

SELECT DISTINCT subcat FROM silver.erp_px_cat_g1v2;

SELECT DISTINCT maintenance FROM silver.erp_px_cat_g1v2;

-- Final Check
SELECT * FROM silver.erp_px_cat_g1v2
