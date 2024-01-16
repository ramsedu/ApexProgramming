//SOQL
SELECT Id, Name, Phone, Active__c, AnnualRevenue
  FROM Account
  WHERE Name LIKE '%E'
  ORDER BY Active__c DESC NULLS FIRST
  LIMIT 50 
  