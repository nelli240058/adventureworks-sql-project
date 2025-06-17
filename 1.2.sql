SELECT 
  p.productid,
  p.name,
  p.productnumber,
  p.size,
  p.color,
  p.productsubcategoryid,
  ps.name AS product_subcategory_name,
  pc.name AS product_category_name
FROM 
  `tc-da-1.adwentureworks_db.product` AS p
JOIN 
  `tc-da-1.adwentureworks_db.productsubcategory` AS ps
ON 
  p.productsubcategoryid = ps.productsubcategoryid
JOIN 
  `tc-da-1.adwentureworks_db.productcategory` AS pc
ON 
  ps.productcategoryid = pc.productcategoryid
ORDER BY 
  pc.name