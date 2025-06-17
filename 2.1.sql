SELECT 
  locationid,
  COUNT(DISTINCT workorderid) AS total_work_orders,
  COUNT(DISTINCT productid) AS total_products,
  SUM(actualcost) AS total_actual_cost
FROM 
  `tc-da-1.adwentureworks_db.workorderrouting`
WHERE 
  EXTRACT(YEAR FROM actualstartdate) = 2004 AND EXTRACT(MONTH FROM actualstartdate) = 1
GROUP BY 
  locationid