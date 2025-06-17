SELECT *
FROM 
  `tc-da-1.adwentureworks_db.workorderrouting`
WHERE 
  EXTRACT(YEAR FROM actualstartdate) = 2004 
  AND EXTRACT(MONTH FROM actualstartdate) = 1
  AND actualcost > 300