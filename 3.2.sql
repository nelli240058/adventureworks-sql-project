SELECT  
  a.VendorId AS vendor_id,
  vc.ContactId,
  vc.ContactTypeId,
  a.Name,
  a.CreditRating,
  a.ActiveFlag,
  va.AddressId,
  addr.City
FROM 
  `tc-da-1.adwentureworks_db.vendor` AS a
LEFT JOIN 
  `tc-da-1.adwentureworks_db.vendorcontact` AS vc
ON 
  a.VendorId = vc.VendorId
LEFT JOIN 
  `tc-da-1.adwentureworks_db.vendoraddress` AS va
ON 
  a.VendorId = va.VendorId
LEFT JOIN 
  `tc-da-1.adwentureworks_db.address` AS addr
ON 
  va.AddressId = addr.AddressId