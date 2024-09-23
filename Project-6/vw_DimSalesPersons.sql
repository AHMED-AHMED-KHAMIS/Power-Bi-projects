CREATE VIEW vws_DimSalesPersons AS  
SELECT [BusinessEntityID] AS SalesPersonID  
      ,[Title]  
      ,CONCAT([FirstName], ' ', [MiddleName] + '. ', [LastName]) AS FullName  
      ,[JobTitle]  
      ,[PhoneNumber]  
      ,[PhoneNumberType]  
      ,[EmailAddress]  
      ,[AddressLine1]  
      ,[City]  
      ,[StateProvinceName]  
      ,[PostalCode]  
      ,[CountryRegionName]  
      ,[TerritoryName]   
  FROM [AdventureWorks2012].[Sales].[vSalesPerson];