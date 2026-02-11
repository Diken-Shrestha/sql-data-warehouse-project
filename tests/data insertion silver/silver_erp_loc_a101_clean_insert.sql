
INSERT INTO silver.erp_loc_a101(
			cid,
			cntry)

SELECT 
	REPLACE(cid, '-', '') cid,
	CASE WHEN TRIM(cntry) = 'DE' THEN 'GERMANY'
		 WHEN TRIM(cntry) IN ('US', 'USA') THEN 'United States'
		 WHEN TRIM(cntry) = '' OR cntry IS NULL THEN 'n/a'
		 ELSE TRIM(cntry)
	END AS cntry		-- Normalize and Handle missing data or blank country codes
FROM bronze.erp_loc_a101;



