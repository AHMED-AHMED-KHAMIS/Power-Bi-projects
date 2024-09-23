ALTER VIEW vw_FactOrderDetails AS
SELECT od.SalesOrderID AS OrderID
      ,od.SalesOrderDetailID AS OrderDetailID 
      ,od.ProductID
      ,od.OrderQty
      ,od.UnitPrice 
      ,od.LineTotal

	  ,o.OrderDate
      ,o.DueDate  
      ,o.ShipDate 

      ,o.[Status] StatusID
      ,o.OnlineOrderFlag
      ,o.CustomerID
      ,o.SalesPersonID
      ,o.TerritoryID 
      ,o.ShipMethodID 
	  ,o.SubTotal
      
      ,(CAST(od.[LineTotal] AS DECIMAL(18,5)) / o.SubTotal ) * o.TaxAmt AS TaxAmt
      ,(CAST(od.[LineTotal] AS DECIMAL(18,5)) / o.SubTotal ) * o.Freight AS Freight
      ,(CAST(od.[LineTotal] AS DECIMAL(18,5)) / o.SubTotal ) * o.TotalDue AS TotalDue 
FROM Sales.SalesOrderDetail od
LEFT JOIN Sales.SalesOrderHeader o ON o.SalesOrderID = od.SalesOrderID