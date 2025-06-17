SELECT 
  wr.locationid,
  l.name AS location_name,
  COUNT(DISTINCT wr.workorderid) AS total_work_orders,
  COUNT(DISTINCT wr.productid) AS total_products,
  SUM(wr.actualcost) AS total_actual_cost,
  AVG(DATE_DIFF(wr.actualenddate, wr.actualstartdate, DAY)) AS avg_duration_days
FROM 
  `tc-da-1.adwentureworks_db.workorderrouting` AS wr
JOIN 
  `tc-da-1.adwentureworks_db.location` AS l
ON 
  wr.locationid = l.locationid
WHERE 
  EXTRACT(YEAR FROM wr.actualstartdate) = 2004 AND EXTRACT(MONTH FROM wr.actualstartdate) = 1
GROUP BY 
  wr.locationid, l.name