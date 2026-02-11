
INSERT INTO silver.crm_prd_info (
	prd_id,
	cat_id,
	prd_key,
	prd_nm,
	prd_cost,
	prd_line,
	prd_start_date,
	prd_end_date
)

SELECT
	prd_id, 
	REPLACE(SUBSTRING(prd_key, 1, 5), '-', '_') AS cat_id,		-- Extract Category ID
	SUBSTRING(prd_key, 7, LEN(prd_key)) AS prd_key,				-- Extract Product Key
	prd_nm,
	ISNULL(prd_cost, 0) AS prd_cost,
	CASE WHEN UPPER(TRIM(prd_line)) = 'M' THEN 'Mountain'
		 WHEN UPPER(TRIM(prd_line)) = 'R' THEN 'Road'
		 WHEN UPPER(TRIM(prd_line)) = 'S' THEN 'Other Sales'
		 WHEN UPPER(TRIM(prd_line)) = 'T' THEN 'Touring'
		 ELSE 'n/a'
	END AS prd_line,		-- Map product line codes to descriptive values
	CAST (prd_start_date AS DATE) as prd_start_date,
	CAST (
		  LEAD (prd_start_date) OVER (PARTITION BY prd_key ORDER BY prd_start_date) - 1 AS DATE
		  ) AS prd_end_date		-- Calculate end date as one day before the next start date for rows that has startd date greater than the end date
FROM bronze.crm_prd_info