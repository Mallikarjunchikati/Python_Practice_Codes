select * from INFORMATION_SCHEMA.TABLES

select * from Customers
select * from Plans
select * from Transactions
select * from MobileDevices

with getting_iphone as(
    select T.TransactionID,T.CustomerID,T.PlanID,T.TransactionDate,T.Amount,MD.DeviceID,MD.DeviceModel,MD.PurchaseDate,MD.Price,P.PlanName,P.MonthlyFee,P.DataLimit,
    P.TalkMinutes,P.TextLimit from Transactions as T
    inner join MobileDevices as MD 
    on T.PlanID = MD.DeviceID
    inner join Plans as P 
    on P.PlanID = T.PlanID
) select *,C.FirstName,C.LastName,C.Email,C.Phone,C.Address,C.DateJoined from getting_iphone as Gp 
  inner join Customers as C 
  on Gp.CustomerID = C.CustomerID
  where GP.DeviceModel = 'iPhone 13'



