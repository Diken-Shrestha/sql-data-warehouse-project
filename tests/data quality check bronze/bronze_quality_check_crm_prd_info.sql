-- Check for nulls or duplicates in Primary Key
-- Expectation: No Result

SELECT prd_id, count(*) FROM bronze.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

-- Check for unwanted spaces 
-- Expectation: No Results
SELECT prd_nm
FROM bronze.crm_prd_info
where prd_nm != TRIM(prd_nm);

-- Check for NULLs or Negative Numbers
-- Expectation: No Results
SELECT prd_cost FROM bronze.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

-- Check for Data Standardization & Consistency
-- Expectations:

SELECT DISTINCT prd_line 
FROM bronze.crm_prd_info;

-- Check for Invalid Date Orders
SELECT * FROM bronze.crm_prd_info
WHERE prd_end_date < prd_start_date


