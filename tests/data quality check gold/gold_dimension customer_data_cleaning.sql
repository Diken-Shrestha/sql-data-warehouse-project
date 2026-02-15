SELECT DISTINCT
	ci.cst_gndr,
	ca.gen,
	CASE WHEN ci.cst_gndr != 'n/a' THEN ci.cst_gndr		-- CRM is the Master for Gender Info
		 ELSE COALESCE(ca.gen, 'n/a')
	END as new_gen
FROM silver.crm_cust_info ci
LEFT JOIN silver.erp_cust_az12 ca
on ci.cst_key = ca.cid
LEFT JOIN silver.erp_loc_a101 la
ON ci.cst_key = la.cid
ORDER BY 1,2 