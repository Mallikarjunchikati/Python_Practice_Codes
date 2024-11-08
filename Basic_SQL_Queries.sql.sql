select top 110* from Trips

select * from Trips

select @@VERSION

use FS_University

exec sp_databases

select * from APT_WILLOW_LOFT_211

exec sp_columns 'Trips'
exec sp_columns 'food_data'

exec sp_catalogs 

exec sp_rename 'APT_WILLOW_LOFT_211.Semester','Semesters'

show tables

use FS_University;



USE FS_University ; -- Change to your database name
GO

SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES

SELECT name FROM sys.databases

select table_name from INFORMATION_SCHEMA.tables 

exec sp_rename 'food_data','foodie_data'

select * from INFORMATION_SCHEMA.tables 

select table_name from INFORMATION_SCHEMA.tables 

select name from sys.databases

select * from orders

select distinct( order_status) from orders

select count(distinct (order_status)) from orders
where order_status='closed'

select o.*,oi.* from orders as o 
join 
orderitems as oi
on o.order_id=oi.order_item_id
where Year(order_date) <2014

select distinct (Year(order_date)) from orders 

select count (Month(order_date)) from orders
where Month(order_date) = 7;

select count(distinct (Month(order_date))) from orders 

select count(Day(order_date)) from orders
where Day(order_date) = 25;

select count(distinct(Day(order_date))) from orders
where Day(order_date) = 5;

select count(Day(order_date)) from orders
where Day(order_date) = 5;

select * from orders

select count(*) from orders  where order_status in ('CLOSED','COMPLETE')

select count(*) from orders
where Order_Status = 'CLOSED' and  order_date = '2013-07-25';

select * from orders
where Order_Status = 'CLOSED' and  order_date = '2013-07-25';

select * from orders
where Order_Status = 'CLOSED' or  order_date = '2013-07-25';

select count(*) from orders
where Order_Status = 'CLOSED' or  order_date = '2013-07-25';

select * from orders
where order_status='CLOSED' and (order_date = '2013-07-25' or order_date = '2013-10-07')

select distinct(Day(order_date)) from orders 

select distinct(order_date) from orders
where order_date= '2013-07-24'

select * from customers

select * from [dbo].[student _orders] 

select top 3 *  from orders

select concat(order_status,'--',order_product_id) as Data,concat(order_product_id,' // ',order_date) as dated from orders


select * from [dbo].[employer]
where country is not null

select * from [dbo].[APT_WILLOW_LOFT_211]
WHERE First_Name like 'A%' or Last_Name like '%R'

select * from orders
where order_status like '_____D%'

select * from orders
where order_product_id like '____9%'

select * from orders
where order_product_id like '____9%' and order_date = '2013-07-25'

select count(Month(order_date)) as ordered_date from orders
where Month(order_date) = '07'
Group by Month(order_date)

select Month(order_date),count(*) as ordered_date from orders
where Month(order_date) = '07'
Group by Month(order_date)

select Month(order_date),count(*) as ordered_date from orders
Group by Month(order_date)

select order_status,Min(order_date) as Min_Orders from orders 
Group by order_status 

select table_name from information_schema.TABLES

select * from information_schema.tables 

select * from sys.databases 

select * from INFORMATION_SCHEMA.Tables
where TABLE_NAME = 'orders'

select * from information_schema.columns 
where TABLE_NAME = 'orders'

select * from student_data

alter table student_data
add Subjects varchar(30);

alter table student_data
alter column Subjects varchar(30) not null default 'T';

insert into student_data(Id,firstname,last_name,Status,Subjects) 
values (13,'che','gu','f1','True')

insert into student_data(Subjects) values('nike')

create table dated_orders(
id int,
name varchar(30),
order_status varchar(30),
payment varchar(30)
)

insert into dated_orders values
(1,'Mallikarjun','Confirmed',Null),
(2,'Vamshi_Kumar',Null,'Done'),
(3,'Anudeep','Confirmed','Done'),
(4,'Bhuvan',Null,Null),
(5,'Tejeswar','Confirmed','Done'),
(6,'sumanth','Confirmed','Null')

select * from dated_orders

select * from dated_orders
where order_status is null

select *, ISNULL(order_status,payment) from dated_orders

select * from customers_data 

exec sp_rename 'customers_data.column1','Customer_id'
exec sp_rename 'customers_data.column2','First_Name'
exec sp_rename 'customers_data.column3','Last_Name'

select lower(First_Name) from customers_data


select upper(First_Name) from customers_data

select left(First_Name,2) from customers_data

select Distinct(First_Name) from customers_data
where First_Name like '[aeiouAEIOU]%[aeiouAEIOU]';

select Distinct(First_Name) from Customers_data
where First_Name like '%[aeiouAEIOU]'

select Distinct(First_Name) from Customers_data
where First_Name like '[aeiouAEIOU]%'

SELECT FIRST_NAME from customers_data
where FIRST_NAME NOT LIKE '%[AEIOU]%'

SELECT FIRST_NAME from customers_data
where FIRST_NAME NOT LIKE '[AEIOU]%'

SELECT FIRST_NAME from customers_data
where FIRST_NAME NOT LIKE '%[AEIOU]'

SELECT count(FIRST_NAME) from customers_data
where FIRST_NAME NOT LIKE '[AEIOU]%'

SELECT count(FIRST_NAME) from customers_data
where FIRST_NAME NOT LIKE '%[AEIOU]'

select count(distinct(order_status)) from customers 

select count(order_status)-count(distinct(order_status)) as total_count from customers 

select right(First_Name,3) from customers_data

select * from customers_data

select right(First_Name,3) from customers_data
where Column8='TX'
order by First_Name 

exec sp_rename 'customers','customer_orders'



select * from [dbo].[departments]

create table [dbo].[departments_1](
[id] int not null,
[Types] varchar(200)
)

select * from [dbo].[customer_orders]

select * from [dbo].[customers_data]

select cuo.*,cud.* from customer_orders as cuo
inner join  
customers_data as cud
on cuo.order_id=cud.Customer_id
where cud.column8='TX'
order by cud.First_Name


select count(*) as total_count
from(
select cuo.*,cud.* from customer_orders as cuo
inner join  
customers_data as cud
on cuo.order_id=cud.Customer_id
where cud.column8='TX'
) as Sub_Query_data


create table Triangles (
A int,
B int,
C int
)
insert into Triangles values
(45,45,78),
(20,22,22),
(45,66,77),
(14,9,78),
(45,45,45),
(89,8,9),
(77,66,77),
(8,9,1)

select *,case 
when A=B and (A!=C or B!=C) then 'Isosceles'
when A=B and (A=C or B=C) then 'Equailateral'
when (A!=B or B!=A) and (A!=C or C!=B) then 'Scalane'
else 'Not a triangle'
end as Types_Tringle from Triangles 

select * from triangles

select *,
case
when (A+B<=C) or (B+C<= A) or (A+C<=B) THEN 'NOT A TRIANGLE'
WHEN A=B AND B=C then 'Equal'
When A=B or B=C or A=C then 'Isosceles'
else 'scalne'
end as States from triangles

SELECT *,
    CASE
        WHEN A + B <= C OR B + C <= A OR A + C <= B THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS TypeTriangles
FROM TRIANGLES;



select *,case 
when (A=B or B=C or A=C) and (A!=C or B!=C) then 'Isosceles'
when A=B and (A=C or B=C) then 'Equailateral'
when (A!=B or B!=A) and (A!=C or B!=C) then 'Scalane'
else 'Not a triangle'
end as Types_Tringle from Triangles 

select * from customers_data

select concat(First_Name,'(',left(First_Name,1),')') as Firstly_name from customers_data

select concat(First_Name,'[',left(First_Name,1),']') from customers_data


select sum(round(order_subtotal,2)) as mi from orderitems

select sum(order_subtotal) as my from orderitems

select round(sum(order_subtotal),1) from orderitems 

select sum(round(order_subtotal,2)),sum(round(order_total,2)) from orderitems

SELECT * FROM customers_data
where len(First_Name)=len(Last_Name)

SELECT concat(First_Name,'[',left(First_Name,2),']') FROM customers_data
where len(First_Name)=len(Last_Name)

SELECT concat(First_Name,Last_Name,'[',left(First_Name,2),']') FROM customers_data
where len(First_Name)=len(Last_Name)

SELECT concat(First_Name,'[',left(First_Name,2),']') as FirstName ,concat(Last_Name,'(',left(Last_Name,3),']') as Last_Name  FROM customers_data
where len(First_Name)=len(Last_Name)

SELECT concat(First_Name,Last_Name,'[',left(First_Name,2),']') as FirstName ,concat(Last_Name,'(',left(Last_Name,3),']') as Last_Name  FROM customers_data

SELECT concat(First_Name,'[',left(First_Name,2),']') as FirstName ,concat(Last_Name,'(',left(Last_Name,3),']') as Last_Name  FROM customers_data

select First_Name,concat('(',left(First_Name,2),')') as FirstNamed from customers_data 

select First_Name , concat(First_Name,'(',left(First_Name,3),')') as Named from customers_data

alter table exams
alter column [exams_id] int not null

drop table exams 

create table exams(
[exams_id] int not null primary key,
[exam_name] varchar(100),
[exam_time] varchar(100)
)

insert into exams values
(1234,'Azure_Data_Engineering','2.5_Hours'),
(4567,'Azure_Data_Analytics','1.5_Hours'),
(7891,'Azure_Data_Science','4.5_Hours'),
(1122,'Azure_Data_Devops','2.5_Hours'),
(1133,'Azure_Devops','2.5_Hours'),
(1144,'Azure_Sql_Developer','2.5_Hours'),
(1155,'Azure_Administrator','2.5_Hours'),
(1166,'Azure_Data_Warehouse','2.5_Hours'),
(1177,'Azure_Data_Analyst','2.5_Hours'),
(1188,'Azure_Data_Scientist','2.5_Hours'),
(1150,'Azure_Data_Engineering','2.5_Hours'),
(1160,'Azure_Data_Science','2.5_Hours'),
(1171,'Azure_Data_Analytics','2.5_Hours'),
(1181,'Azure_Data_Scientist','2.5_Hours')


insert into exams values

create table results (
[exams_Results] varchar(100),
[exams_id] int,
Foreign key (exams_id) references exams(exams_id)
)


insert into results values
('Grade-A',1234),
('Grade-A',4567),
('Grade-C',7891),
('Grade-B',1122),
('Grade-A',1133),
('Grade-B',1144),
('Grade-C',1155),
('Grade-B',1166),
('Grade-B',1177),
('Grade-C',1188),
('Grade-B',1150),
('Grade-A',1160),
('Grade-B',1171),
('Grade-C',1181)

delete from results
where exams_id in (1150,1160,1171,1181)

select * from exams
select * from results

select [exam_name] from exams
where exams_id in (select exams_id from results);

select * from customer_orders
select * from customers_data

select count([exam_name]) from exams
where exams_id in (select exams_id from results)

CREATE TABLE Author(
    id INT PRIMARY KEY,
    author_name VARCHAR(50) NOT NULL,
 )
 CREATE TABLE Book (
    id INT PRIMARY KEY,
    book_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    author_id INT NOT NULL
)

INSERT INTO Author VALUES
(1, 'Author1'),
(2, 'Author2'),
(3, 'Author3'),
(4, 'Author4'),
(5, 'Author5'),
(6, 'Author6'),
(7, 'Author7')
 
 INSERT INTO Book VALUES
(1, 'Book1',500, 1),
(2, 'Book2', 300 ,2),
(3, 'Book3',700, 1),
(4, 'Book4',400, 3),
(5, 'Book5',650, 5),
(6, 'Book6',400, 3)

select * from Author
select * from Book


create function author_from_books(@author_id as int)
returns table
as
return
(
select * from book
where id=@author_id
)

select * from author_from_books(1)

SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
CROSS APPLY author_from_books(A.Id) B

SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
outer APPLY author_from_books(A.Id) B




SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
INNER JOIN Book B
ON A.id = B.author_id

SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
LEFT JOIN Book B
ON A.id = B.author_id

SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
Full JOIN Book B
ON A.id = B.author_id

CREATE FUNCTION fnGetBooksByAuthorId(@AuthorId int)
RETURNS TABLE
AS
RETURN
( 
SELECT * FROM Book
WHERE author_id = @AuthorId
)


SELECT * FROM fnGetBooksByAuthorId(5)

SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
INNER JOIN fnGetBooksByAuthorId(A.Id) B
ON A.id = B.author_id

SELECT A.author_name, B.id, B.book_name, B.price
FROM Author A
CROSS APPLY fnGetBooksByAuthorId(A.Id) B



create table Renting_Houses(
Id int,
Name Varchar(15),
Appartment varchar(15),
City varchar(15)
)

insert into Renting_Houses values
(1,'Mallikarjun','Willow_Loft','Fitchburg'),
(2,'Anudeep','willow_loft','fitchburg'),
(3,'sumanth','dilion_hall','fitchburg'),
(4,'Bhanu','mytle_ave','fitchburg'),
(6,'charan','orange_st','atlanta'),
(7,'chary','mech_st','glassbro'),
(9,'vasanth','raniy_for_st','beverton')

create table rent_price(
Id int,
Price decimal(10,2),
Country varchar(10)
)

delete from rent_price
where id = 3

insert into rent_price values
(1,1495.50,'usa'),
(2,1495.50,'usa'),
(3,600.00,'usa'),
(4,2150,'usa'),
(5,2200,'usa'),
(6,1000,'usa'),
(7,2500.00,'usa'),
(8,5500.23,'canada'),
(9,2980.00,'usa'),
(10,1000.00,'usa')

select rh.Name,rh.Appartment,rh.city,rp.Price,rp.country from Renting_Houses as rh
inner join
rent_price as rp
on rh.Id=rp.Id

select rh.Name,rh.Appartment,rh.city,rp.Price,rp.country from Renting_Houses as rh
left join
rent_price as rp
on rh.Id=rp.Id


select rh.Name,rh.Appartment,rh.city,rp.Price,rp.country from Renting_Houses as rh
right join
rent_price as rp
on rh.Id=rp.Id

select rh.Name,rh.Appartment,rh.city,rp.Price,rp.country from Renting_Houses as rh
full join
rent_price as rp
on rh.Id=rp.Id


create function calu(@num as int)
returns int
as
begin
return(
@num+5
)
end

select dbo.calu(5)

create function name_generator(@name as varchar(100))
returns varchar(100)
as 
begin
return(
@name+'Chikatimalla'
)
end

select dbo.name_generator('Mallikarjun ')


create function name_creater(@Name as varchar(10))
returns varchar(10)
as 
begin
return(
@Name+'Arjun'
)
end 

select dbo.name_creater('Mallik')

create function Name_Gen(@Name as varchar(15))
returns varchar(15)
as
begin
return(
@Name+'Chikatimalla'
)
end

select dbo.Name_Gen('Mallikarjun ')



create function Name_inserting(@Name as varchar(200))
returns varchar(200)
as 
begin
return(
@Name+'Chikatimalla'
)
end 

select dbo.Name_inserting('Mallikarjun ')

select * from orders

select concat('There are total of ',count(order_status),' ',lower(order_status),'s') from orders
group by order_status

select * from orderitems

create table sumof(
Id int identity(1,1),
Col decimal(10,5)
)

insert into sumof values
(123.234),
(5634.4568),
(789.444),
(79.2563),
(12.489),
(1.56392),
(223.65892)

select sum(Col) from sumof

select sum(round(col,3)) from sumof

select truncate(sum(col),3) from sumof 

select * from sumof

select concat('The toatl sum of Col column from sumof table is ',sum(Col),' This is Value','s') from sumof


select * from orders

select DATEADD(Day,5,order_date) from orders 
select DATEADD(Month,5,order_date) from orders
select DATEADD(YEAR,5,order_date)from orders 
select DATEADD(Day,-5,order_date) from orders 


create table #Daytain (
id int
)

select * from #Daytain

select * from [airport codes]

create procedure Datafy
as 
begin
select * from [airport codes]
where IATA='ABR' or Country='Canada'
end

exec Datafy

select * from INFORMATION_SCHEMA.tables 

select * from Renting_Houses

select * , concat(City,2,(len(Appartment)-2)) from Renting_Houses

select * ,concat(Name,(len(Name)+100),'Pasword') from Renting_Houses
select * ,concat(left(Name,4),(len(Name)+100),'Pasword') from Renting_Houses

select * ,concat(right(left(Name,4),1),(len(Name)+100),'Pasword') from Renting_Houses


select * from triangles

select *,
case
when 

select * from INFORMATION_SCHEMA.Tables

select * from Renting_Houses

select *, concat(Name,'{',left(Name,1),'&','}') from Renting_Houses
select *, concat(Name,'{',left(Name,1),'}') from Renting_Houses

CREATE TABLE Customers (
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Insert sample data into the Customers table
INSERT INTO Customers (CustomerID, OrderDate, TotalAmount)
VALUES
    (1, '2023-01-05', 150.00),
    (1, '2023-02-15', 75.50),
    (2, '2023-01-10', 200.00),
    (2, '2023-03-20', 125.75),
    (3, '2023-02-08', 300.00),
    (3, '2023-04-12', 180.25);




select *,DATENAME(Month,OrderDate) from Customers
	SELECT
    CustomerID,
    SUM(CASE WHEN EXTRACT(MONTH FROM OrderDate) = 1 THEN TotalAmount ELSE 0 END) AS January,
    SUM(CASE WHEN EXTRACT(MONTH FROM OrderDate) = 2 THEN TotalAmount ELSE 0 END) AS February,
    SUM(CASE WHEN EXTRACT(MONTH FROM OrderDate) = 3 THEN TotalAmount ELSE 0 END) AS March,
    -- Continue this pattern for other months
FROM Customers
GROUP BY CustomerID
ORDER BY CustomerID;

SELECT *
FROM (
    SELECT
        CustomerID,
        DATENAME(MONTH, OrderDate) AS Month,
        TotalAmount
    FROM Customers
) AS SourceTable
PIVOT (
    SUM(TotalAmount)
    FOR Month IN (
        January, February, March, April, May, June,
        July, August, September, October, November, December
    )
) AS PivotTable
ORDER BY CustomerID;


select Name,Doctor,Professor,Singer,Actor from occupations
pivot(
group by(Name)
for occupation in (
Doctor,Professor,singer,actor)) as pivot_table





create table occupations(
Name Varchar(200),
Occupation Varchar(200)
)

insert into occupations values
('samantha','doctor'),
('julia','actor'),
('maria','actor'),
('meera','singer'),
('ashely','professor'),
('ketty','professor'),
('christeen','professor'),
('jane','actor'),
('jenny','doctor'),
('priya','singer')

select *,DATENAME(Month,OrderDate) from Customers
	SELECT
    CustomerID,
    SUM(CASE WHEN EXTRACT(MONTH FROM OrderDate) = 1 THEN TotalAmount ELSE 0 END) AS January,
    SUM(CASE WHEN EXTRACT(MONTH FROM OrderDate) = 2 THEN TotalAmount ELSE 0 END) AS February,
    SUM(CASE WHEN EXTRACT(MONTH FROM OrderDate) = 3 THEN TotalAmount ELSE 0 END) AS March,
    -- Continue this pattern for other months
FROM Customers
GROUP BY CustomerID
ORDER BY CustomerID;

SELECT MAX(CASE WHEN OCCUPATION = 'Doctor' THEN NAME END) as Doctor,
       MAX(CASE WHEN OCCUPATION = 'Professor' THEN NAME END),
       MAX(CASE WHEN OCCUPATION = 'Singer' THEN NAME END),
       MAX(CASE WHEN OCCUPATION = 'Actor' THEN NAME END)
FROM (SELECT ROW_NUMBER() OVER 
     (PARTITION BY OCCUPATION ORDER BY NAME) 
      AS R, NAME, OCCUPATION
      FROM OCCUPATIONS) AS O
GROUP BY R;

select 
max(case when order_status = 'COMPLETE' then order_date end ) as Complete,
max(case when order_status = 'PENDING' then order_date end) as Pending,
max(case when order_status = 'CLOSED' then order_date end) as Closed,
max(case when order_status = 'PAYMENT_REVIEW' then order_date end) as Payment_Review,
max(case when order_status = 'SUSPECTED_FRAUD' then order_date end) as Suspected_Fraud,
max(case when order_status = 'ON_HOLD' then order_date end) as on_hold,
max(case when order_status = 'PROCESSING' then order_date end) as processing,
max(case when order_status = 'CANCELED' then order_date end) as canceled,
max(case when order_status = 'PENDING_PAYMENT' then order_date end) as pending_payment
from (select row_number() over (partition by order_status order by order_date) as d,order_date,order_status from orders) as o
group by d

select row_number() over (partition by order_status order by order_date) as d,* from orders 

select 
max(case when order_status = 'COMPLETE' then order_date end ) as Complete,
max(case when order_status = 'PENDING' then order_date end) as Pending,
max(case when order_status = 'CLOSED' then order_date end) as Closed,
max(case when order_status = 'PAYMENT_REVIEW' then order_date end) as Payment_Review,
max(case when order_status = 'SUSPECTED_FRAUD' then order_date end) as Suspected_Fraud,
max(case when order_status = 'ON_HOLD' then order_date end) as on_hold,
max(case when order_status = 'PROCESSING' then order_date end) as processing,
max(case when order_status = 'CANCELED' then order_date end) as canceled,
max(case when order_status = 'PENDING_PAYMENT' then order_date end) as pending_payment
from orders 
group by order_date

select distinct(order_status) from orders

exec sp_rename 'orders.column1','order_id'
exec sp_rename 'orders.column2','order_date'
exec sp_rename 'orders.column3','order_product_id'
exec sp_rename 'orders.column4','order_status'

select * ,[CLOSED],[PENDING],[COMPLETE],[PAYMENT_REVIEW],[SUSPECTED_FRAUD],[ON_HOLD],[PROCESSING],[CANCELED],[PENDING_PAYMENT] from orders as o
inner join 
orderitems as ot
on o.order_id=ot.order_item_id
pivot(
sum(order_subtotal) 
for order_status in 
(
[CLOSED],
[PENDING],
[COMPLETE],
[PAYMENT_REVIEW],
[SUSPECTED_FRAUD],
[ON_HOLD],
[PROCESSING],
[CANCELED],
[PENDING_PAYMENT]
) 
) as pivot_table

select distinct(product) from febuary

select * from febuary
where product='Flatscreen TV'

select 
max(case when product ='Flatscreen TV' then Order_id end),
max(case when product ='LG Washing Machine' then Order_id end),
max(case when product ='Google Phone' then Order_id end),
max(case when product ='Vareebadd Phone' then Order_id end),
max(case when product ='27in 4K Gaming Monitor' then Order_id end),
max(case when product ='USB-C Charging Cable' then Order_id end),
max(case when product ='Bose SoundSport Headphones' then Order_id end),
max(case when product ='Wired Headphones' then Order_id end),
max(case when product ='ThinkPad Laptop' then Order_id end),
max(case when product ='AA Batteries (4-pack)' then Order_id end),
max(case when product ='AAA Batteries (4-pack)' then Order_id end),
max(case when product ='Apple Airpods Headphones' then Order_id end),
max(case when product ='34in Ultrawide Monitor' then Order_id end),
max(case when product ='20in Monitor' then Order_id end),
max(case when product ='LG Dryer' then Order_id end),
max(case when product ='Macbook Pro Laptop' then Order_id end),
max(case when product ='iPhone' then Order_id end),
max(case when product ='Lightning Charging Cable' then Order_id end),
max(case when product ='27in FHD Monitor' then Order_id end)
from febuary
group by Order_Id
sum(Price_Each)

select 
max(case when product ='Flatscreen TV' then Price_Each end),
max(case when product ='LG Washing Machine' then Price_Each end),
max(case when product ='Google Phone' then Price_Each end),
max(case when product ='Vareebadd Phone' then Price_Each end),
max(case when product ='27in 4K Gaming Monitor' then Price_Each end),
max(case when product ='USB-C Charging Cable' then Price_Each end),
max(case when product ='Bose SoundSport Headphones' then Price_Each end),
max(case when product ='Wired Headphones' then Price_Each end),
max(case when product ='ThinkPad Laptop' then Price_Each end),
max(case when product ='AA Batteries (4-pack)' then Price_Each end),
max(case when product ='AAA Batteries (4-pack)' then Price_Each end),
max(case when product ='Apple Airpods Headphones' then Price_Each end),
max(case when product ='34in Ultrawide Monitor' then Price_Each end),
max(case when product ='20in Monitor' then Price_Each end),
max(case when product ='LG Dryer' then Price_Each end),
max(case when product ='Macbook Pro Laptop' then Price_Each end),
max(case when product ='iPhone' then Price_Each end),
max(case when product ='Lightning Charging Cable' then Price_Each end),
max(case when product ='27in FHD Monitor' then Price_Each end)
from febuary
group by (Price_Each)


select [27in FHD Monitor],[Lightning Charging Cable],[iPhone],[LG Dryer],[Macbook Pro Laptop],[20in Monitor],[34in Ultrawide Monitor],[AAA Batteries (4-pack)],
[Apple Airpods Headphones],[AA Batteries (4-pack)],[ThinkPad Laptop],[Wired Headphones],[Bose SoundSport Headphones],[USB-C Charging Cable],[27in 4K Gaming Monitor],[Vareebadd Phone],[Flatscreen TV],[LG Washing Machine],[Google Phone] from febuary
pivot(
sum(Price_Each) 
for Product in 
(
[27in FHD Monitor],
[Lightning Charging Cable],
[iPhone],
[LG Dryer],
[Macbook Pro Laptop],
[20in Monitor],
[34in Ultrawide Monitor],
[AAA Batteries (4-pack)],
[Apple Airpods Headphones],
[AA Batteries (4-pack)],
[ThinkPad Laptop],
[Wired Headphones],
[Bose SoundSport Headphones],
[USB-C Charging Cable],
[27in 4K Gaming Monitor],
[Vareebadd Phone],
[Flatscreen TV],
[LG Washing Machine],
[Google Phone]
)) as pivot_table

select *, [27in FHD Monitor],[Lightning Charging Cable],[iPhone],[LG Dryer],[Macbook Pro Laptop],[20in Monitor],[34in Ultrawide Monitor],[AAA Batteries (4-pack)],
[Apple Airpods Headphones],[AA Batteries (4-pack)],[ThinkPad Laptop],[Wired Headphones],[Bose SoundSport Headphones],[USB-C Charging Cable],[27in 4K Gaming Monitor],[Vareebadd Phone],[Flatscreen TV],[LG Washing Machine],[Google Phone] from febuary
pivot(
sum(Price_Each) 
for Product in 
(
[27in FHD Monitor],
[Lightning Charging Cable],
[iPhone],
[LG Dryer],
[Macbook Pro Laptop],
[20in Monitor],
[34in Ultrawide Monitor],
[AAA Batteries (4-pack)],
[Apple Airpods Headphones],
[AA Batteries (4-pack)],
[ThinkPad Laptop],
[Wired Headphones],
[Bose SoundSport Headphones],
[USB-C Charging Cable],
[27in 4K Gaming Monitor],
[Vareebadd Phone],
[Flatscreen TV],
[LG Washing Machine],
[Google Phone]
)) as pivot_table

CREATE TABLE SampleData (
    ID INT PRIMARY KEY,
    Category VARCHAR(20),
    Value INT
);

-- Inserting sample data
INSERT INTO SampleData (ID, Category, Value)
VALUES
    (1, 'A', 10),
    (2, 'B', 15),
    (3, 'C', 20),
    (4, 'A', 5),
    (5, 'B', 25),
    (6, 'C', 30),
    (7, 'A', 8),
    (8, 'B', 18),
    (9, 'C', 22),
    (10, 'A', 12),
    (11, 'B', 10),
    (12, 'C', 15),
    (13, 'A', 30),
    (14, 'B', 8),
    (15, 'C', 10),
    (16, 'A', 15),
    (17, 'B', 20),
    (18, 'C', 12),
    (19, 'A', 25),
    (20, 'B', 30),
    (21, 'C', 5),
    (22, 'A', 18),
    (23, 'B', 12),
    (24, 'C', 8),
    (25, 'A', 20),
    (26, 'B', 10),
    (27, 'C', 18),
    (28, 'A', 22),
    (29, 'B', 28),
    (30, 'C', 25),
    (31, 'A', 12),
    (32, 'B', 15),
    (33, 'C', 8),
    (34, 'A', 30),
    (35, 'B', 20),
    (36, 'C', 15),
    (37, 'A', 5),
    (38, 'B', 10),
    (39, 'C', 12),
    (40, 'A', 8),
    (41, 'B', 22),
    (42, 'C', 18),
    (43, 'A', 20),
    (44, 'B', 25),
    (45, 'C', 30),
    (46, 'A', 18),
    (47, 'B', 10),
    (48, 'C', 12),
    (49, 'A', 15),
    (50, 'B', 8);

select * from SampleData

select A,B,C from SampleData
pivot
(
sum(Value)
for Category in 
(A,B,C)
) as pivot_table

select * from occupations

select [Name],[occupation] from Occupations
pivot(
order by (Name)
for Occupation in
    (
        [Doctor],[Professor],[Singer],[Actor] 
    )
)as piovt_table 

CREATE TABLE Customers22 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    RegistrationDate DATE,
    TotalPurchases DECIMAL(10, 2)
);


INSERT INTO Customers22 (CustomerID, FirstName, LastName, Country, RegistrationDate, TotalPurchases)
VALUES
    (1, 'John', 'Doe', 'USA', '2020-05-15', 5000.00),
    (2, 'Jane', 'Smith', 'USA', '2021-03-10', 3500.50),
    (3, 'Alice', 'Johnson', 'Canada', '2022-01-20', 4200.75),
    (4, 'Bob', 'Brown', 'Canada', '2019-11-05', 6000.25),
    (5, 'Eva', 'Garcia', 'Spain', '2020-09-30', 3000.00),
    (6, 'Michael', 'Wang', 'Spain', '2021-12-15', 2800.20),
    (7, 'Sophia', 'Kim', 'South Korea', '2022-07-22', 4500.60),
    (8, 'William', 'Chen', 'South Korea', '2021-04-02', 3900.30);

INSERT INTO Customers22 
values    
(9, 'Sophiay', 'Kirm', 'USA', '2022-07-22', 4500.60),
(10, 'Williame', 'Chein', 'USA', '2021-04-02', 3900.30);


SELECT FirstName, LastName
FROM Customers22
WHERE Country = (SELECT max(Country) FROM Customers22 );


SELECT * FROM Customers22

select * from data5

CREATE TABLE guests (
guest_id int, 
first_name varchar(30),
last_name varchar(30),
guest_type varchar(15),
membership_type varchar(30),
membership_cost decimal(5,2), 
total_visits int,
PRIMARY KEY (guest_id)
);

INSERT INTO guests
(guest_id, first_name, last_name, guest_type, membership_type, membership_cost, total_visits)
VALUES
(1, 'Judy', 'Hopps', 'Adult', 'Resident Premium Pass', 110.0, 168),
(2, 'Nick', 'Wilde', 'Adult', 'Day Pass', 62.0, 1),
(3, 'Duke', 'Weaselton', 'Adult', 'Resident Pass', 85.0, 4),
(4, 'Tommy', 'Yax', 'Child', 'Youth Pass', 67.0, 30),
(5, 'Lizzie', 'Yax', 'Adult', 'Guardian Pass', 209.0, 30),
(6, 'Jenny', 'Bellwether', 'Adult', 'Resident Premium Pass', 110.0, 20),
(7, 'Idris', 'Bogo', 'Child', 'Youth Pass', 67.0, 79),
(8, 'Gideon', 'Grey', 'Child', 'Youth Pass', 67.0, 100),
(9, 'Nangi', 'Reddy', 'Adult', 'Guardian Champion', 400.0, 241),
(10, 'Octavia', 'Otterton', 'Adult', 'Resident Pass', 85.0, 11),
(11, 'Calvin', 'Roo', 'Adult', 'Resident Premium Pass', 110.0, 173), 
(12, 'Maurice', 'Big', 'Adult', 'Guardian Champion', 400.0, 2), 
(13, 'J.K.', 'Lionheart', 'Child', 'Day Pass', 52.0, 1), 
(14, 'Priscilla', 'Bell', 'Child', 'Day Pass', 104.0, 2),
(15, 'Tommy', 'Finnick', 'Adult', 'Day Pass', 62.0, 1);

select * from guests

select first_name,last_name,membership_cost from guests 
where membership_cost =(select max(membership_cost) from guests)


SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES

select column_name,data_type from INFORMATION_SCHEMA.COLUMNS
where table_name= 'data'

select column_name,data_type from INFORMATION_SCHEMA.columns 
where table_name = 'data1'

select column_name,data_type from INFORMATION_SCHEMA.columns
where table_name = 'data2'

select column_name,data_type from INFORMATION_SCHEMA.columns
where table_name = 'data3'

select column_name,data_type from INFORMATION_SCHEMA.columns
where table_name = 'data4'

select column_name,data_type from INFORMATION_SCHEMA.columns
where table_name = 'data5'

select * from data5

drop table [dbo].[ecdc1]

create table [dbo].[ecdc1](
[country] varchar(200),
[country_code] varchar(200),
[year_week] datetime,
[age_group] varchar(50),
[new_cases] varchar(50),
[population] varchar(50),
[rate_14_day_per_100k] bigint null,
[source]  varchar(50)
)

alter table [dbo].[ecdc1]
alter column [year_week] varchar(50)

alter table [dbo].[ecdc1]
alter column[age_group] varchar(50)

insert into [dbo].[ecdc1] select * from data5

select distinct(country),population from data5
where population = (select max(population) from data5);

select distinct(country),population from data5

select distinct(country) from data5

select  * from data5

select distinct(country),population from data5
where population = (select max(population) from data5 where population < (select max(population) from data5));

select COUNT(*) from data
select top 3 * from data1
select top 3 * from data2
select top 3 * from data3
select top 3 * from data4
select top 3 * from data5


select d2.country,d1.ReportingCountry,d3.continent,d1.YearWeekISO,d1.Denominator,d1.NumberDosesReceived,d1.NumberDosesExported,d1.FirstDose,d1.FirstDoseRefused,d1.SecondDose,d1.DoseAdditional1,
d1.DoseAdditional2,d1.DoseAdditional3,d1.DoseAdditional4,d1.DoseAdditional5,d1.UnknownDose,d1.TargetGroup,d1.Vaccine,d1.Population,d2.year_week,d2.source,d2.new_cases,d2.number_sequenced,
d2.percent_cases_sequenced,d2.valid_denominator,d2.variant,d2.number_detections_variant,d2.number_sequenced_known_variant,d2.percent_variant,d3.indicator,d3.weekly_count,d3.rate_14_day,d3.cumulative_count,d3.source,d4.source,
d3.note,d4.indicator,d4.date,d4.value,d4.url,d5.year_week,d5.level,d5.new_cases,d5.tests_done,d5.testing_rate,d5.positivity_rate,d5.testing_data_source,d6.age_group,d6.rate_14_day_per_100k
from data as d1
inner join 
data1 as d2 
on d1.ReportingCountry = d2.country_code
inner join 
data2 as d3
on d2.country_code = d3.country_code
inner join
data3 as d4
on d3.country = d4.country
inner join
data4 as d5
on d4.country = d5.country
inner join
data5 as d6
on d5.country = d6.country

select * from orders
select * from orderitems

WITH myorderscte
AS
(
select o.*,od.* from orders as o 
inner join
orderitems as od
on o.order_id =od.order_item_id
)
Select M.*,C.* from myorderscte as M
inner join 
Customers22 as C
on O.order_id=C.CustomerID

select * from sales

  SELECT
    branch,
    date,
    MAX(unit_price) AS highest_price
  FROM sales
  GROUP BY branch, date

WITH highest AS (
  SELECT
    branch,
    date,
    MAX(unit_price) AS highest_price
  FROM sales
  GROUP BY branch, date
)
SELECT
  sales.*,
  h.highest_price
FROM sales
JOIN highest h
  ON sales.branch = h.branch
    AND sales.date = h.date

 SELECT
    DATEPART(MONTH,[date]) as month,
    SUM(unit_price * quantity) AS revenue
  FROM sales
  WHERE DATEPART(YEAR,[date]) = 2021
    AND branch = 'London-1'
  GROUP BY DATEPART(MONTH,[date])

SELECT *,DATEPART(MONTH,[DATE]) AS MONTH FROM SALES 
SELECT *, MONTH(DATE) FROM SALES 

select * from guests

select *,
case 
when guest_type = 'Adult' then 'Youth'
when guest_type= 'child' then 'Kids'
else 'No'
end as columnn
from guests

select *,
case
when (A+B<=C) or (B+C<= A) or (A+C<=B) THEN 'NOT A TRIANGLE'
WHEN A=B AND B=C then 'Equal'
When A=B or B=C or A=C then 'Isosceles'
else 'scalne'
end as States from triangles


create table customers(
Id int identity(1,1),
First_Name Varchar(200),
Last_Name Varchar(200),
Email Varchar(200),
Phone Varchar(200),
address varchar(200),
Gender Varchar(200),
Age int,
registered datetime,
orders int,
spent decimal(10,2),
Job varchar(200),
Hobbies varchar(200),
Marital_Status int
)

select * from customers

select *, STRING_SPLIT(address,',') as State_Zip_Code from Customers
select *,CONCAT_WS(' ',First_Name,Last_Name) as full_name from customers 
select CHARINDEX('a',First_Name) from customers 
select Concat(First_Name,'[',len(First_Name),']') as First_Name_Len from customers 

with cutsomer_cte as 
(
SELECT *,ROW_NUMBER() over(partition by Id order by Id) as row_number 
FROM Customers 
CROSS APPLY STRING_SPLIT(address, ',')
)
select * from cutsomer_cte 
PIVOT
(max(value)
for row_number in ([1],[2])) as pvt

select *  from occupations

select  [actor],[doctor],[professor],[singer] from Occupations
pivot(
for Occupation in 
([actor],[doctor],[professor],[singer])
) as pivot_table 

select Occupation, count(Occupation) from occupations
Group by(Occupation)

CREATE TABLE Grades(
  [Student] VARCHAR(50),
  [Subject] VARCHAR(50),
  [Marks]   INT
)
GO
 
INSERT INTO Grades VALUES 
('Jacob','Mathematics',100),
('Jacob','Science',95),
('Jacob','Geography',90),
('Amilee','Mathematics',90),
('Amilee','Science',90),
('Amilee','Geography',100)
GO

select * from grades 

select Student, [Mathematics],[Science],[Geography] from grades
pivot(
Sum(Marks) for Subject 
in ([Mathematics],[Science],[Geography])) as pivoted

select Student, [Mathematics],[Science],[Geography] from
(
select Student,Subject,Marks
from grades
)studentresults
pivot(
Sum(Marks) for Subject 
in ([Mathematics],[Science],[Geography])) as pivoted


CREATE PROCEDURE dbo.DynamicPivotTableInSql
  @ColumnToPivot  NVARCHAR(255),
  @ListToPivot    NVARCHAR(255)
AS
BEGIN
 
  DECLARE @SqlStatement NVARCHAR(MAX)
  SET @SqlStatement = N'
    SELECT * FROM (
      SELECT
        [Student],
        [Subject],
        [Marks]
      FROM Grades
    ) StudentResults
    PIVOT (
      SUM([Marks])
      FOR ['+@ColumnToPivot+']
      IN (
        '+@ListToPivot+'
      )
    ) AS PivotTable
  ';
 
  EXEC(@SqlStatement)
 
END

EXEC dbo.DynamicPivotTableInSql
  N'Subject'
  ,N'[Mathematics],[Science],[Geography]'

  

create table customers321(
Id int,
First_Name Varchar(200),
Last_Name Varchar(200),
Email Varchar(200),
Phone Varchar(200),
address varchar(200),
City VARCHAR(200),
State Varchar(200),
Zip_code int
)
insert into customers321 select * from customer_data

select * from customers321
select * from orders
select * from orderitems

create table Joineddata(
Id int,
First_Name Varchar(200),
Last_Name Varchar(200),
Email Varchar(200),
Phone Varchar(200),
address varchar(200),
City VARCHAR(200),
State Varchar(200),
Zip_code int,
Order_id int,
Order_date date,
order_product_id int,
order_status varchar(200),
order_item_id int,
order_item_order_id int,
order_item_product_id int,
order_quanity int,
order_subtotal decimal(10,2),
order_total decimal(10,2)
);
Insert into Joineddata
select c.*,o.*,ot.* from customers321 as c
inner join orders as o
on c.Id=o.order_id
inner join orderitems as ot
on o.order_id=ot.order_item_id

SELECT count(*) FROM JOINEDDATA

DELETE FROM Joineddata
WHERE
Id NOT IN (SELECT TOP 3000 Id FROM Joineddata ORDER BY First_Name);

create table joined_orders(
Order_Id int,
Order_Date date,
Order_Product_id int,
Order_Status Varchar(200),
Order_item_order_id int,
Order_Quantity int,
Order_Subtotal decimal (10,2)
)
insert into joined_orders 
select o.Order_Id,o.Order_Date,o.Order_Product_id,o.Order_Status,oi.Order_item_order_id,oi.Order_Quantity,oi.Order_Subtotal
from orders as o
inner join orderitems as oi
on o.order_id=oi.order_item_id

Declare @query nvarchar(max),
        @columns nvarchar(max)
set @columns =
STUFF(
(
select distinct ','+ quotename(order_status) as order_status 
from orders 
for xml path(''),Type
).value('.','NVARCHAR(MAX)'),1,1,'');

set @query = 
'select 
    order_id,order_product_id,' +@columns 
	+'
from 
(
select 
order_id,
order_product_id,
order_status,
order_date
from orders
) as D
PIVOT 
(
     MAX(order_date) for [order_status] in ('+ @columns + ')
) as p
order by order_id;'

exec sp_executesql @query;


declare @query nvarchar(MAX),
@columns nvarchar(Max)

set @columns =
stuff(
(
select distinct ','+ quotename(Order_Status) as order_status 
from joined_orders
for xml path(''),Type
).value('.','nvarchar(max)'),1,1,'');

set @query=
'select order_id,Order_Product_id,Order_Quantity,'+@columns
+'
from
(
select order_id,Order_date,Order_Product_id,Order_Quantity,Order_Subtotal,Order_Status from joined_orders
) as D
Pivot
(
      Sum(Order_Subtotal) for [Order_Status] in ('+@columns + ')
) as p
order by order_id;'

exec sp_executesql @query;

select * from joined_orders 

declare @query nvarchar(max),@columns nvarchar(max)

set @columns=
stuff
(
(
select distinct 
             ','+QUOTENAME(Order_Status) from joined_orders
			 for xml path(''),Type
).value('.','nvarchar(max)'),1,1,'');

set @query =
'select 
       Order_Id,Order_Date,Order_Quantity,' + @columns 
	   +'
from
(select
Order_Id,
Order_Date,
Order_Quantity,
Order_Subtotal,
Order_Status
from joined_orders
)as D
PIVOT
(
	SUM(Order_Subtotal) for [Order_Status] in ('+@columns+')
) as P
order by order_id;'

exec sp_executesql @query;
select * from Joineddata


declare @query nvarchar(max),@columns nvarchar(max)
set @columns =
stuff(
(
select distinct 
	           ','+QuoteName(State) from joineddata
			   for xml path(''),Type
).value('.','NVARCHAR(MAX)'),1,1,'');

set @query =
'select 
[First_Name],[Last_Name],[Email],[Phone],[Address],[City],[Zip_code],[Order_date],' +@columns
	+'
from
(
select 
[Id],[First_Name],[Last_Name],[Email],[Phone],[Address],[City],[State],[Zip_code],[Order_date],[order_product_id],[order_status],[order_item_order_id],
[order_item_product_id],[order_quanity],[order_subtotal],[order_total] from joineddata
) as D
Pivot
(
sum(order_total) for [State] in (' +@columns+ ')
)
as q
order by City;'

exec sp_executesql @query

select * from joineddata




declare @query nvarchar(Max),@columns nvarchar(max)

set @columns=
stuff(
(
select distinct ','+quotename(Job) from customers
				for xml path(''),Type
).value('.','NVARCHAR(MAX)'),1,1,'')

set @query =
'select Id,First_Name,Last_Name,address,' + @columns 
+'
from(
select [Id],[First_Name],[Last_Name],[Email],[Phone],[address],[Gender],[Age],[registered],[orders],[spent],[Job],[Hobbies],[Marital_Status] from customers
) as D
Pivot
(
max(age) for [job] in ('+ @columns +')
)as P
order by First_Name;'

exec sp_executesql @query;
declare @query nvarchar(max),@columns nvarchar(max)

set @columns=
stuff(
(
select distinct 
				','+quotename(State) from [airport codes] 
				for xml path(''),Type
).value('.','NVARCHAR(MAX)'),1,1,'')

set @query =
'select City,IATA,' + @columns
+'
from
(
select City,State,Country,IATA from [airport codes] 
)as D
Pivot
(
Max(Country) for [State] in ('+ @columns +')
) as P
order By City;'

exec sp_executesql @query


select * from customers321

with customers_cte 
as 
(
select * ,ROW_NUMBER() over(partition by id order by id) as Naming from customers
cross apply string_split(address,' ')
)
select * customers_cte
pivot
(max(value) for Naming in ([1],[2],[3],[4],[5],[6],[7],[8])) as pvt




with cutsomer_cte as 
(
SELECT *,ROW_NUMBER() over(partition by Id order by Id) as row_numbers
FROM Customers 
CROSS APPLY STRING_SPLIT(address, ',')
)
select
Id,First_Name,Last_Name,Email,Phone,address,Gender,Age,registered,orders,spent,Job,Hobbies,Marital_Status,[1] as Address_1,[2] as Address_2 
from cutsomer_cte 
PIVOT
(max(value)
for row_numbers in ([1],[2])) as pvt



with cutsomer_cte as 
(
SELECT *,ROW_NUMBER() over(partition by Id order by Id) as row_numbers
FROM Customers 
CROSS APPLY STRING_SPLIT(address, ',')
)
select
Id,First_Name,Last_Name,Email,Phone,address,Gender,Age,registered,orders,spent,Job,Hobbies,Marital_Status,[1] as Address_1,[2] as Address_2 
from cutsomer_cte 
PIVOT
(max(value)
for row_numbers in ([1],[2])) as pvt



select * from customers
cross apply string_split(address,',')

SELECT
    Address,
    CASE
        WHEN CHARINDEX('AA ', Address) > 0 THEN
            SUBSTRING(Address, CHARINDEX('AA ', Address) + 3, 5)
        WHEN CHARINDEX('KS ', Address) > 0 THEN
            SUBSTRING(Address, CHARINDEX('KS ', Address) + 3, 5)
        ELSE
            NULL
    END AS ZipCode
FROM customers;

-- Update the existing table
UPDATE customers
SET ZipCodeColumn = 
    CASE
        WHEN CHARINDEX('AA ', AddressColumn) > 0 THEN
            SUBSTRING(AddressColumn, CHARINDEX('AA ', AddressColumn) + 3, 5)
        WHEN CHARINDEX('KS ', AddressColumn) > 0 THEN
            SUBSTRING(AddressColumn, CHARINDEX('KS ', AddressColumn) + 3, 5)
        ELSE
            NULL
    END;

create function calu(@num as int)
returns int
as
begin
return(
@num+5
)
end

select dbo.calu(5)

create function calucat(@num as int)
returns int
as
begin
return(
@num+10
)
end 

create function cali(@num as int)
returns int
as 
begin
return
(
@num+10
)
end

select dbo.cali(10)

create function namingss (@name as Varchar(200))
returns varchar(200)
as 
begin
return
(
@name+'Arjun'
)
end

select dbo.namingss ('Mallik')

create function name_generator(@name as varchar(100))
returns varchar(100)
as 
begin
return(
@name+'Chikatimalla'
)
end

CREATE FUNCTION dbo.CalculateAge (@Birthdate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
    SET @Age = DATEDIFF(YEAR, @Birthdate, GETDATE());
    RETURN @Age;
END;

-- Use the function in a SELECT statement
SELECT
    CustomerID,
    FirstName,
    LastName,
    Birthdate,
    dbo.CalculateAge(Birthdate) AS Age
FROM Customer_s;



CREATE TABLE Customer_s (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Birthdate DATE
);
-- Insert some sample data
INSERT INTO Customer_s (CustomerID, FirstName, LastName, Birthdate)
VALUES
    (1, 'John', 'Doe', '1990-05-15'),
    (2, 'Jane', 'Smith', '1985-08-20'),
    (3, 'Bob', 'Johnson', '1972-03-10');

-- Create a function to calculate age
CREATE FUNCTION dbo.CalculateAge (@Birthdate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
    SET @Age = DATEDIFF(YEAR, @Birthdate, GETDATE());
    RETURN @Age;
END;

select * from orders

alter table orders
alter column order_date date

create function datcal(@order_date as date)
returns int
as 
begin
Declare @days int;
set @days=DATEDIFF(Year,@order_date,GetDate());
return @days
end;

select order_id,order_date,order_product_id,order_status,dbo.datcal(order_date) as days from orders 

select *,Datediff(day,order_date,getdate()) from orders 

create producer practicedata


CREATE TABLE stud (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Birthdate DATE
);
-- Insert some sample data
INSERT INTO stud (CustomerID, FirstName, LastName, Birthdate)
VALUES
    (4, 'Joh', 'Do', '1990-05-5'),
    (5, 'Jan', 'Sith', '1985-08-2'),
    (6, 'Bo', 'Jhnson', '1972-03-1');


CREATE TABLE studtarget (
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Birthdate DATE
);

alter procedure mystud
as 
begin
Truncate table studtarget
insert into studtarget select * from stud
end

exec mystud

select * from studtarget

alter procedure mydatesi
as 
begin
merge into studtarget as st
using stud as s
on st.CustomerID=s.CustomerID
when matched then update set
st.CustomerID=s.CustomerID,
st.FirstName=s.FirstName,
st.LastName=s.LastName,
st.Birthdate=s.Birthdate
when not matched then 
Insert (CustomerID,FirstName,LastName,Birthdate)
values(s.CustomerID,s.FirstName,s.LastName,s.Birthdate);
end;

exec mydatesi

select * from stud
select * from studtarget

drop table studtarget

select * from Customers


select *,concat(column2,' ',column3) from customers

SELECT
    Id,
    LTRIM(RTRIM(REPLACE(address, '', ''))) AS TrimmedColumnName
FROM
    Customers;

create table mallik(
Name varchar(200)
)

insert into mallik 
values
('   Mallikarjun'),
('Mall  arjun')

select * from mallik

select LTRIM(Rtrim(replace(Name,' ',' '))) from mallik

select LTRIM(Name) from mallik
select RTRIM(Name) from mallik

select replace(Name,' ','') from mallik

select * from customers 

select concat(First_Name,Last_Name) from customers
select concat(First_Name,' ',Last_Name) from customers

select concat(concat(column2,'/////'),column3) from customers

-- Create the stored procedure
CREATE PROCEDURE UpdateCustomer
    @CustomerID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Birthdate VARCHAR(50)
AS
BEGIN
    UPDATE Customer_s
    SET
        FirstName = @FirstName,
        LastName = @LastName,
        Birthdate = @Birthdate
    WHERE
        CustomerID = @CustomerID;
END;

-- Execute the stored procedure to update a specific customer
EXEC UpdateCustomer
    @CustomerID = 1,  -- Replace with the actual CustomerID
    @FirstName = 'NewJohn',
    @LastName = 'NewDoe',
    @Birthdate = '2022-01-2';




select * from Customer_s

create procedure Inserting
@CustomerID INT,
@FirstName Varchar(20),
@LastName Varchar(20),
@Birthdate Varchar(20)
as 
begin
insert into Customer_s values (@CustomerID,@FirstName,@LastName,@Birthdate)
end;

exec Inserting
@CustomerID= 9,
@FirstName ='Mallikarjun',
@LastName ='Chikatimalla',
@Birthdate ='1998-01-24';

create table [dbo].[orders](
order_id int,
order_date varchar(200),
order_product_id int,
order_status varchar(200)
);

alter table [dbo].[orders]
alter column order_date datetime

drop table [dbo].[orders]

select * from [dbo].[orders]

create table [dbo].[orders_Closes](
order_id int,
order_date varchar(200),
order_product_id int,
order_status varchar(200)
);

alter procedure order_close
as
begin 
insert into [dbo].[orders_Closes] select * from [dbo].[orders]
where order_status = 'CLOSED'
end

exec order_close 

drop procedure order_close


truncate table [dbo].[orders_Closes]

select * from [dbo].[orders_Closes]

select distinct(order_status) from  [dbo].[orders_Closes]


select * from orders 

select concat(order_status,'[',order_date,']') from orders
select LEFT(order_status,3) from orders 

select * from [dbo].[orders]

drop table [dbo].[orders]

create table orders(
order_id int,
order_date varchar(200),
order_product_id int,
order_status varchar(200)
)PARTITION by list (order_status)(
PARTITION P1 VALUES IN ('CANCELED'),
PARTITION P2 VALUES IN ('CLOSED'),
PARTITION P3 VALUES IN ('COMPLETE'),
PARTITION P4 VALUES IN ('ON_HOLD'),
PARTITION P5 VALUES IN ('PAYMENT_REVIEW'),
PARTITION P6 VALUES IN ('PEDNING'),
PARTITION P7 VALUES IN ('PENDING_PAYMENT'),
PARTITION P8 VALUES IN ('PROCESSING'),
PARTITION P9 VALUES IN ('SUSPECTED_FRAUD')
);



CREATE TABLE Students (
    student_id INT PRIMARY KEY identity(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    subject1 INT,
    subject2 INT,
    subject3 INT,
    subject4 INT,
    subject5 INT,
    subject6 INT
);

INSERT INTO Students (first_name, last_name, city, subject1, subject2, subject3, subject4, subject5, subject6)
VALUES
    ('John', 'Doe', 'New York', 85, 76, 90, 78, 92, 80),
	('John', 'Doe', 'New York', 85, 76, 90, 78, 92, 79),
    ('Jane', 'Smith', 'Los Angeles', 90, 88, 75, 85, 79, 92),
    ('Alice', 'Johnson', 'Chicago', 78, 82, 88, 91, 80, 87),
    ('Michael', 'Williams', 'Houston', 92, 89, 94, 87, 78, 91),
    ('Emily', 'Brown', 'Phoenix', 85, 90, 76, 83, 88, 84),
    ('William', 'Jones', 'Philadelphia', 91, 87, 82, 79, 90, 85),
    ('Sophia', 'Garcia', 'San Antonio', 88, 84, 91, 75, 89, 86),
    ('Jacob', 'Martinez', 'San Diego', 79, 91, 87, 92, 77, 83),
    ('Olivia', 'Hernandez', 'Dallas', 94, 83, 90, 76, 85, 89),
    ('Daniel', 'Lopez', 'San Jose', 85, 92, 79, 88, 91, 80),
    ('Matthew', 'Gonzalez', 'Austin', 90, 85, 92, 78, 87, 89),
    ('Ava', 'Wilson', 'Jacksonville', 88, 89, 84, 91, 76, 90),
    ('Ethan', 'Moore', 'San Francisco', 83, 91, 88, 85, 90, 79),
    ('Mia', 'Lee', 'Indianapolis', 89, 87, 92, 80, 91, 78),
    ('Alexander', 'Taylor', 'Columbus', 92, 90, 85, 89, 78, 86);
 
 select *,DENSE_RANK() over(order by subject6 DESC) from Students
 select *,RANK() over(order by subject6 DESC) from Students

 SELECT *, DENSE_RANK() OVER (PARTITION BY first_name order by subject6) from students 
  select *,DENSE_RANK() over(order by subject6) from Students
 drop table students 

 s

 select * from students 

 select *,RANK() over(partition by first_name order by subject6) from Students

 CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_type VARCHAR(20),
    price DECIMAL(10, 2),
    stock INT
);

INSERT INTO Products (product_id, product_name, product_type, price, stock)
VALUES
    (1, 'Laptop A', 'Laptop', 999.99, 50),
    (2, 'Phone X', 'Phone', 699.50, 100),
    (3, 'Laptop B', 'Laptop', 1200.00, NULL),
    (4, 'Phone Y', 'Phone', NULL, 80),
    (5, 'Laptop C', 'Laptop', 899.00, 30),
    (6, 'Phone Z', 'Phone', 499.99, 120),
    (7, NULL, 'Laptop', 1100.00, 20),
    (8, 'Phone M', 'Phone', 599.00, NULL),
    (9, 'Laptop D', 'Laptop', 1500.00, 15),
    (10, 'Phone N', 'Phone', 899.99, 75),
    (11, 'Laptop E', 'Laptop', NULL, 25),
    (12, 'Phone O', 'Phone', 799.50, 90),
    (13, 'Laptop F', 'Laptop', 999.00, 40),
    (14, 'Phone P', 'Phone', 699.00, 60),
    (15, NULL, 'Phone', NULL, NULL);

	select * from products

	select *,ISNULL(product_name,'iphone') from products

	select *,coalesce(product_name,'mallik') from products

	select product_type,sum(stock) from Products
	group by product_type

	select product_type,sum(isnull(stock,10)) from products
	group by product_type

	select product_name,sum(stock) from Products
	group by product_name

	select * from LCA_FY2010

	create table scores(
	student_id int,
	score_1 int,
	score_2 int,
	score_3 int
	)

	insert into scores 
	values
	(1,20,30,35),
    (2,50,60,78),
	(3,85,95,45),
	(4,85,96,45),
	(5,55,66,99)

	select * from scores

	select student_id,sum(score_1+score_2+score_3) as scores  from scores
	group by student_id

create procedure scored
@id1 int,
@score_1 int,
@score_2 int,
@score_3 int,
@total int
as 
begin
select 
@score_1=score_1,
@score_2=score_2,
@score_3=score_3,
@total = score_1+score_2+score_3
from scores
where  student_id = @id1;
end;
exec scored;

DECLARE @id INT = 2;
DECLARE @score_1 INT, @score_2 INT, @score_3 INT, @total INT;

exec scored @id, @score_1, @score_2, @score_3, @total;

SELECT @score_1 AS score1, @score_2 AS score2, @score_3 AS score3, @total AS total;


select * from INFORMATION_SCHEMA.tables

select * from students 
	create table scores(
	student_id int,
	score_1 int,
	score_2 int,
	score_3 int
	)

	insert into scores 
	values
	(1,20,30,35),
    (2,50,60,78),
	(3,85,95,45),
	(4,85,96,45),
	(5,55,66,99)
select * from scores 

	create table t_scores(
	student_id int,
	score_1 int,
	score_2 int,
	score_3 int,
	total int
	)
 
--create procedure scored
--as
--begin
--insert into t_scores select student_id,score_1,score_2,score_3,score_1+score_2+score_3 as total from scores
--end;
--exec scored 

create procedure scored(@student_id int,@total int)
as
begin
select sum(score_1+score_2+score_3) as total from scores 
where student_id = @student_id
end;

drop procedure scored



create procedure scored
(@student_id int,@total int output)
as 
begin
select @total = sum(score_1+score_2+score_3) from scores
where student_id = @student_id;
end;

DECLARE @studentID INT = 1;
DECLARE @totalScore INT;

EXEC scored @student_id = @student_id, @total = @totalScore OUTPUT;

SELECT @totalScore AS TotalScore;


declare @student_id int =1;
declare @total int;
exec scored

UPDATE Customers
SET order_id = subquery.row_num
FROM (
    SELECT Id, ROW_NUMBER() OVER (ORDER BY Id) AS row_num
    FROM Customers
) AS subquery
WHERE Customers.Id = subquery.Id
alter table customers
drop column order_id 

select * from customers 

select * from customers
where order_id in (select order_id from orders where order_status = 'CLOSED')

select * from [dbo].[LCA_FY2010]

select count(visa_class) from  [dbo].[LCA_FY2010]
where status in (select status from [dbo].[LCA_FY2010] where status = 'CERTIFIED')

select count(visa_class) from [dbo].[LCA_FY2010]
where status = 'CERTIFIED'


delete from Sales_April_2019
where order_ID is Null

select * from Sales_April_2019
select * from orderitems

exec sp_rename 'orderitems.order_quantity','Quantity_Ordered'

select * from Sales_April_2019
where Quantity_Ordered in 
(select Quantity_Ordered from orderitems where Quantity_Ordered = '2')

select * from Sales_April_2019
where Quantity_Ordered =
(select Min(Quantity_Ordered) from orderitems)


update orderitems
set order_subtotal = order_subtotal * 2.5 
where Quna

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, Department) VALUES
(1, 'John', 'Sales'),
(2, 'Emily', 'Marketing'),
(3, 'Michael', 'Sales');

-- Create Salaries table
CREATE TABLE Salaries (
    EmployeeID INT,
    Salary DECIMAL(10, 2)
);

-- Insert data into Salaries table
INSERT INTO Salaries (EmployeeID, Salary) VALUES
(1, 50000.00),
(2, 55000.00),
(3, 48000.00);

select * from Employees
select * from Salaries

update Salaries
set Salary = Salary * 2.2
where EmployeeID in (select EmployeeID from Employees where Department = 'Marketing')

select * from orderitems

with producttable 
as
(
select o.*,c.* from orderitems as o 
inner join 
customers as c
on o.order_item_id = c.Id
) 
select Gender,Sum(Order_Subtotal) from producttable
group by Gender 


select distinct(Order_ID) from Sales_April_2019


with producttable 
as
(
select o.*,c.* from orderitems as o 
inner join 
customers as c
on o.order_item_id = c.Id
) 
select * from producttable

select * from customers 
select * from orders

alter table orders
alter column order_date date

select format(order_date,'yyyy-MM-dd') FROM orders 

alter table customers
add  order_id int

alter table customers
drop column orders

UPDATE Customers
SET order_id = subquery.row_num
FROM (
    SELECT Id, ROW_NUMBER() OVER (ORDER BY Id) AS row_num FROM Customers
) AS subquery
WHERE Customers.Id = subquery.Id

select * from customers
select * from orders

update orders
set order_status = 'Done'
where order_id in (select order_id from customers where Age = '38')


CREATE TABLE your_table_name (
    _id VARCHAR(24),
    name VARCHAR(255),
    company VARCHAR(255),
    status VARCHAR(50)
);

INSERT INTO your_table_name (_id, name, company, status) VALUES 
('6579fefba51fd8c511a205a9', 'Mallikarjun', 'Cigna', 'F1-OPT'),
('6579fefba51fd8c511a205aa', 'Manisharan', 'Oracle', 'B1'),
('6579fefba51fd8c511a205ab', 'Arjun', 'Microsoft', 'H1-B'),
('6579fefba51fd8c511a205ac', 'Malli', 'Cigna', 'F1-OPT'),
('6579fefba51fd8c511a205ad', 'chikatimalla', 'Microsoft', 'F1-OPT'),
('6579fefba51fd8c511a205ae', 'Mallik_Gupta', 'Cigna', 'H1-B'),
('6579fefba51fd8c511a205af', 'Gupta', 'Microsoft', 'H1-B'),
('6579fefba51fd8c511a205b0', 'Babbulu', 'Cigna', 'GC-EAD');

select * from your_table_name

select company,count(company) from your_table_name
group by company



create table public.customers (
    Customers_id Int,
    First_Name Varchar(200),
    Last_Name VARCHAR(200),
    Street VARCHAR(200),
    city VARCHAR(200),
    state VARCHAR(200),
    zip_code int,
    order_id int
);




select * from customers 
order by  Customers_id ASC;

select *,rank() over(order by state) from customers 

with query AS
(
select *,rank() over(PARTITION by city order by state) from customers
)select * from query;



with customers_today AS
(
select *, CURRENT_TIMESTAMP as today from customers 
)select * from customers_today order by customers_id ASC


select * from customers

with lastweek_date as 
(
select *, CURRENT_DATE as today_date from customers 
)
select *, DATEADD(day,-5,today_date) from lastweek_date


with lastweek as 
(
select *, GETDATE() as lastweek from customers
)
select *, DATEADD(day,-2,lastweek) from lastweek;



with lastweek as 
(
select *, GETDATE() as lastweek,DATEADD(day,-2,GETDATE()) as weekr from customers
)
select * from lastweek;


use fsu;
create login babbulu with password = 'Mallik@1998';
create user babbulu for login babbulu;
ALTER ROLE db_owner ADD MEMBER babbulu;


select * from Customer_s

select * from Customer_s
where LastName in (
select LastName from Customer_s
group by LastName
Having Count(LastName) >= 2 
)

select * from Customer_s
where LastName in (
select LastName from Customer_s
group by LastName
Having Count(LastName) >=2)


select * from data1


select * from data1
where variant in (
select variant from data1
group by variant
having count(variant)>1
)

select * from data1
where variant ='BA.1' (
select variant from data1
group by variant
having count(variant)>1
)


select count(*) from data1
where variant ='BA.1' (
select variant from data1
group by variant
having count(variant)>1
)

select * from data1
select * from data2



update data2
set cumulative_count = 18
where country in (select country from data1 where country = 'Austria')

select * from customers 

select * from customers 
where address in (
select address from customers 
group by address
having count(address)>=2
)

update customers 
set address = '91773 Miller Shoal Diaztown, FL 38841'
where First_Name = 'Gary'

select *,format(registered,'yyyy-MM-dd')  from customers 
select * from orders 

delete from orders
where order_id in (1,2,3,4,5,6,7,8,9,10,11,12)


create PROCEDURE scored
@id1 int,
@score_1 int OUTPUT,
@score_2 int OUTPUT,
@score_3 int OUTPUT,
@total int OUTPUT
as 
begin
    select 
        @score_1 = score_1,
        @score_2 = score_2,
        @score_3 = score_3,
        @total = score_1 + score_2 + score_3
    from scores
    where student_id = @id1;
end;
GO

DECLARE @id INT = 2;
DECLARE @score_1 INT, @score_2 INT, @score_3 INT, @total INT;

EXEC scored @id, @score_1 OUTPUT, @score_2 OUTPUT, @score_3 OUTPUT, @total OUTPUT;

SELECT @score_1 AS score1, @score_2 AS score2, @score_3 AS score3, @total AS total;



select * from Employees

drop table Employers

CREATE TABLE Employers (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    EmpSalary DECIMAL(10, 2),
    EmpDomain VARCHAR(50),
	Depart_id Int
);

INSERT INTO Employers  VALUES

(1, 'John Doe', 60000.00, 'IT',1),
(2, 'Jane Smith', 55000.00, 'Finance',2),
(3, 'David Johnson', 65000.00, 'Marketing',3),
(4, 'Emily Brown', 58000.00, 'Human Resources',4),
(5, 'Michael Lee', 62000.00, 'Operations',5),
(6, 'John Doe', 60000.00, 'IT',6),
(7, 'Jane Smith', 55000.00, 'Finance',7),
(8, 'David Johnson', 65000.00, 'Marketing',8),
(9, 'Emily Brown', 58000.00, 'Human Resources',9),
(10, 'Michael Lee', 62000.00, 'Operations',10),
(11, 'Emily Brown', 58000.00, 'Human Resources',11),
(12, 'Michael Lee', 62000.00, 'Human Resources',12);



select * from Employers

select *,rank() over(partition by EmpDomain order by EmpSalary) from Employers

select *,dense_rank() over(partition by EmpDomain order by EmpSalary) from Employers

select *,rank() over(order by EmpSalary) from Employers
order by EmpSalary DESC;

-- Create Employees table
create table Employees_n (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    EmpSalary DECIMAL(10, 2),
    Depart_id INT,
    FOREIGN KEY (Depart_id) REFERENCES Departments_n(Depart_id)
);

-- Create Departments table
create table  Departments_n (
    Depart_id INT PRIMARY KEY,
    EmpDomain VARCHAR(50)
);

insert into Employees_n select EmpId,EmpName,EmpSalary,Depart_id from Employers
insert into Departments_n select Depart_id,EmpDomain from Employers

select * from Employees_n
select * from Departments_n

select * from employersdata 

select *,dense_rank() over(order by salary) from employersdata
order by salary ASC;

drop table employersdata

select *,rank()over(partition by column5 order by salary) from employersdata
order by salary DESC;

select * from Employers

select *,dense_rank()over(order by emp_salary) as denserank,
rank()over( order by emp_salary) as ranking  from Employers

select *,dense_rank()over(partition by emp_department order by emp_salary) as denserank,
rank()over(partition by emp_department order by emp_salary) as ranking  from Employers

update Employers
set EmpName = 'Levins'
where EmpID= 5;

CREATE TABLE employers (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_department VARCHAR(50),
    emp_salary DECIMAL(10, 2)
);

INSERT INTO employers (emp_id, emp_name, emp_department, emp_salary) VALUES (12, 'John Doe', 'HR', 50000.00),
(1, 'John Doe', 'HR', 50000.00),
(2, 'Jane Smith', 'Finance', 60000.00),
(3, 'Alex Johnson', 'Marketing', 55000.00),
(4, 'Emily Brown', 'IT', 65000.00),
(5, 'Michael Davis', 'Operations', 52000.00);
(7, 'Doe Agin', 'HR', 54000.00),
(8, 'Leo Smith', 'HR', 62000.00),
(9, 'Jhonny Jack', 'HR', 25000.00),
(10, 'Emiro Drown', 'HR', 65000.00),
(11, 'Michael Paul', 'Operations', 53000.00)



select * from Employers

select emp_id,emp_name, [Finance],[HR],[IT],[Marketing],[Operations] from Employers
pivot(
sum(emp_salary)
for emp_department in
(
[Finance],
[HR],
[IT],
[Marketing],
[Operations]
)
)
as pivot_table


create table 

select * from Students_Grade

create table Students_Grade(
Name varchar(200),
subjects varchar(200),
grade int
)

insert into Students_Grade values
('Sam','Math',100),
('Tom','Science',80),
('Emily','English',85)


select Name,Math,Science,English from Students_Grade
pivot(
sum(grade)
for subjects in
(
Math,
Science,
English
)
)
as pivot_table


select * from occupations

select 
Max(Case when Occupation = 'actor' Then Name End) As Actor,
Max(Case When Occupation = 'doctor' Then Name End) As Doctor,
Max(Case When Occupation = 'professor' Then Name End) As Professor,
Max(Case When Occupation = 'singer' Then Name End) As Singer
From occupations
Group by Occupation


select * from INFORMATION_SCHEMA.tables 
exec sp_databases
exec sp_columns 'employers'


declare @columns nvarchar(Max),@query nvarchar(Max)
select @columns = 
string_agg(product_type,',')
from
(
select distinct
quotename(product_type) as product_type
from products 
) as D;

set @query =
'select product_id,product_name,stock,'+@columns+' 
from
(
select product_id,product_name,product_type,price,stock from products
)as D
pivot
(
sum(price) for [product_type] in ('+@columns+')
)As P
order by product_id'

exec sp_executesql @query;
---The STRING_AGG() function in SQL is used for string aggregation. It concatenates values from multiple rows into a single string, separated by a specified delimiter----

select * from customers 

Declare @columns nvarchar(max),@query nvarchar(max)
select @columns=
string_agg(Job,',')
from
(
select distinct
quotename(Job) as Job
from customers
) as D;
set @query=
'select Id,First_Name,Last_Name,Email,Phone,address,Gender,Age,registered,Hobbies,Marital_Status,order_id,'+@columns+'
from
(
select Id,First_Name,Last_Name,Email,Phone,address,Gender,Age,registered,spent,Job,Hobbies,Marital_Status,order_id from customers 
) as D
pivot
(
sum(spent) for [Job] in ('+@columns+')
)As P
order by Id'
exec  sp_executesql @query;


 
select * from [airport codes]

Declare @columns nvarchar(max),@query nvarchar(max)
select @columns=
string_agg(State,',') 
from
(
select distinct
quotename(State) as State
from [airport codes]
) as D;
set @query=
'select City,Country,'+@columns+' from
(
select City,State,Country,IATA from [airport codes]
) As D
pivot
(
count (IATA) for [State] in ('+@columns+')
) As P
order by City';
exec sp_executesql @query;



with emp as
(
select * from Employers
)
select count(*) from emp


select * from customers321


select * from Customer_s
where LastName in (
select LastName from Customer_s
group by LastName
Having Count(LastName) >= 2 
)

select * from Studty


select *,rank()over( order by subject6 desc) from Studty

select * from Employers

select *,rank()over(order by emp_salary desc) from Employers

select *,dense_rank()over( order by emp_salary desc) from Employers

select *,rank()over(partition by emp_department order by emp_salary desc) from Employers

select *,dense_rank()over(partition by emp_department order by emp_salary desc) from Employers

select * from Students_Grade

declare @columns nvarchar(max),@query nvarchar(max)
select @columns =
string_agg(subjects,',')
from
(
select distinct  quotename(subjects) as subjects from Students_Grade
) as D;

set @query=
'select Name, '+@columns+' from
(
select Name,subjects,grade from Students_Grade
) as D
pivot
(
sum(grade) for subjects in ('+@columns+')
) as p
order by Name';

exec sp_executesql @query

select * from employers

declare @columns nvarchar(max),@query nvarchar(max)

select @columns = string_agg(roles,',')
from
(
select distinct  quotename(emp_department) as roles from Employers
) as D;

set @query=
'select emp_id,emp_name, '+@columns+' from
(
select emp_id,emp_name,emp_department,emp_salary from employers 
) as D
pivot
(
sum(emp_salary) for emp_department in ('+@columns+')
) as p
order by emp_id';

exec sp_executesql @query

select * from employers


create table #mallikat(
id int,
name varchar(100)
)
insert into #mallikat values (1,'Arjun')

select * from #mallikat

select * from employers

select * from ( select *,rank()over(order by emp_salary desc) as top_3 from employers) ranked where top_3 <= 3;


select * from (select *,rank()over(partition by emp_department order by emp_salary) as top_3 from employers) ranked where top_3 <= 3;

select * from (select *,dense_rank()over(partition by emp_department order by emp_salary) as top_3 from employers) ranked where top_3 <= 3;


select * from Students_Grade

declare @columns nvarchar(max),@query nvarchar(max)

select @columns = 
STRING_AGG(subjects,',') from
(
select distinct
quotename(subjects) as subjects
from Students_Grade
) as D;

set @query = 
'select Name, '+@columns+' from 
(
select Name,subjects,grade from Students_Grade
) as D
pivot
(
sum(grade) for subjects in '+@columns+'
)as P
order by Name';

exec sp_executesql @query


declare @columns nvarchar(max),@query nvarchar(max)

select @columns = 
STRING_AGG(subjects,',') from
(
select distinct
quotename(subjects) as subjects
from Students_Grade
) as D

set @query = 
'select Name, '+@columns+' from 
(
select Name,subjects,grade from Students_Grade
) as D
pivot
(
sum(grade) for subjects in ('+@columns+')
)as P
order by Name';

exec sp_executesql @query


select * from employers


  select *,  LEAD(emp_name) OVER (ORDER BY emp_id) AS next_employer from employers 
 


 select * from claims

 select distinct(Service) from claims

 select distinct(Service) from Residential

 select * from Residential 

 create table Residential(
 County Varchar(200),
 Service Varchar(200),
 Recipients int,
 Claims int,
 Dollors float,
 Years varchar(200)
 )

 create procedure Residentially
 as 
 begin
 Insert into Residential select * from claims
 where Service = 'Residential'
 end

 exec Residentially


 create table namaste_orders
(
order_id int,
city varchar(10),
sales int
)

create table namaste_returns
(
order_id int,
return_reason varchar(20),
)

insert into namaste_orders values
(1, 'Mysore' , 100),
(2, 'Mysore' , 200),
(3, 'Bangalore' , 250),
(4, 'Bangalore' , 150)
,(5, 'Mumbai' , 300),
(6, 'Mumbai' , 500),
(7, 'Mumbai' , 800)
;
insert into namaste_returns values
(3,'wrong item'),
(6,'bad quality'),
(7,'wrong item');

select * from namaste_orders
select * from namaste_returns


select nor.city from namaste_orders as nor
left join 
namaste_returns as nr
on  nor.order_id = nr.order_id
group by nor.city
having count(nr.return_reason) = 0;


create table c_orders(
order_id int primary key ,
customer_name varchar(200),
order_month varchar(200),
order_city varchar(200)
)

insert into c_orders values (18,'Mallikarjun','jan','Fitchburg')
(1,'Mallikarjun','jan','Fitchburg'),
(2,'Anudeep','jan','Fitchburg'),
(3,'Bhanu','jan','Fitchburg'),
(4,'Vamshi','feb','Fitchburg'),
(5,'Teja','march','Boston'),
(6,'arjun','april','Cleveland'),
(7,'mohan','may','Columbus'),
(8,'vamshi','may','Sherly'),
(9,'Mallikarjun','jan','Fitchburg'),
(10,'minaj','april',''),
(11,'vishnu','may','Jersy'),
(12,'sumanth','april','mckinney'),
(13,'charan','march','dallas'),
(14,'gowtham','jan','san_fransico'),
(15,'jay','jan','Fitchburg'),
(16,'kunal','feb','worcester'),
(17,'ankit','feb','athol')



create table  c_return_orders(
order_id int,
review varchar(200)
 foreign key (order_id) references c_orders (order_id)
 )

 insert into c_return_orders values
(3,'good'),
(4,'bad'),
(5,'good'),
(6,'bad'),
(7,'good'),
(9,'bad'),
(10,'good'),
(15,'bad'),
(13,'good'),
(2,'bad')


select * from  c_return_orders

select c.*,cr.* from c_orders as c
left join c_return_orders as cr
on c.order_id =cr.order_id
where cr.review is null
group by c.order_id,c.customer_name,c.order_month,c.order_city,cr.order_id,cr.review;


select c.*,cr.* from c_orders as c
left join c_return_orders as cr
on c.order_id =cr.order_id
where cr.review is null




select c.order_city from c_orders as c
left join c_return_orders as cr
on c.order_id =cr.order_id
where cr.review is null
group by c.order_city 



select c.order_city from c_orders as c
left join c_return_orders as cr
on c.order_id =cr.order_id
group by c.order_city
having count (cr.review) = 0;

select * from  c_orders


select * from c_orders
where customer_name in
(
select customer_name from c_orders
group by customer_name
having count(customer_name) > 1
)

select * from Customer_s


CREATE TABLE customers_self (
    customer_id INT,
    name VARCHAR(255),
    reference_id INT,
    PRIMARY KEY (customer_id)
);

INSERT INTO customers_self (customer_id, name, reference_id) VALUES
(1, 'Alice', 3),	
(2, 'Bob', 1),
(3, 'Charlie', 2),
(4, 'David', 2);



select * from claims
with county as 
(
select * from claims
where County = 'Albany'
)
select * from county

with county as 
(
select * from claims
where County = 'Albany'
)
select Recipients,count(Recipients) from county
group by Recipients 
order by Recipients DESC;

select * from INFORMATION_SCHEMA.tables 
select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'employers'


select * from mycustomers 
where order_id in
(
select order_id from orders
where order_status = 'COMPLETE'
)

-- Sample Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50)
);

INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Bob Johnson', 'bob@example.com');

-- Sample Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    employee_department VARCHAR(50)
);

INSERT INTO employees (employee_id, employee_name, employee_department)
VALUES
    (101, 'Alice Brown', 'HR'),
    (102, 'Charlie Davis', 'IT'),
    (103, 'Eva White', 'Finance');

-- Subquery to retrieve customers who work in the 'IT' department
SELECT customer_id, customer_name, customer_email
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM employees
    WHERE employee_department = 'IT'
);
select * from mycustomers 

select * from orders

select count(*) from mycustomers 
where order_id in 
(
select order_id from orders
where order_status = 'CLOSED'
)

select state,count(state) from mycustomers 
where order_id in 
(
select order_id from orders
where order_status = 'CLOSED'
)
group by state
having count(state) >= 500;

select * from mycustomers 
where Street in
(
select Street from mycustomers
group by Street 
having count(Street) >2
)order by Street ASC;




select * from mycustomers
where Street = '9526 Noble Embers Ridge'



update mycustomers
set Street = '10 Crystal River Mall'
where order_id in (10,25,63,78,96,45,78,85)

select c.*,o.*,oi.* from mycustomers as c
full join orders as o
on c.Id = o.order_id
full join orderitems as oi
on o.order_id = oi.order_item_id
where c.firstname is null and o.order_id is null
order by c.Id DESC;

select * from orders
select * from customers


with full_customers as
(
select * from mycustomers
where order_id in 
(
select order_id from orders
where order_status = 'COMPLETE'
))
select count(*) from full_customers 

select c.*,o.* from customers c
full join orders o
on c.Id = o.id
group by o.order_Month
having count(o.order_id) >= 1


select o.order_month from customers c
full join orders o
on c.Id = o.id
group by o.order_Month
having count(o.order_id) >= 1



SELECT c.*, o.order_Month
FROM customers c
full JOIN orders o 
ON c.Id = o.id
GROUP BY c.Id, c.Customer_Name,c.City,C.Order_Month,C.Order_Price,c.order_id,o.order_Month
HAVING COUNT(o.order_month) < 1

select count(*) from customers c
join orders o
on c.Id = o.id

select * from customers
select * from orders 


SELECT c.*,o.order_month FROM customers c
full JOIN orders o 
ON c.Id = o.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,c.order_id,o.order_month
having count(o.order_month) < 1



SELECT c.*,o.order_month FROM customers c
full JOIN orders o 
ON c.Id = o.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,c.order_id,o.order_month
having count(o.order_month) < 1


SELECT c.*,o.order_month FROM customers c
full JOIN orders o 
ON c.Id = o.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,c.order_id,o.order_month
having count(o.order_month) < 1

SELECT c.*,o.order_month FROM customers c
full JOIN orders o 
ON c.Id = o.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,o.order_month,c.order_id
having count(o.order_month) < 1


SELECT c.*,o.order_month FROM customers c
full JOIN orders o 
ON c.Id = o.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,o.order_month,c.order_id
having count(o.order_month) >= 1


select * from customers
select * from orders 

select c.*,o.order_month 
from customers as c
full join orders as o on c.Id = o.id 
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,c.order_id,o.order_month
having count(o.order_month) < 1

SELECT c.Customer_Name,c.Order_Month, o.order_month
FROM customers AS c
FULL JOIN orders AS o ON c.Id = o.order_id
GROUP BY c.Customer_Name,c.Order_Month, o.order_month
HAVING COUNT(o.order_month) < 1;









declare @columns nvarchar(max),@query nvarchar(max)
select @columns=
string_agg(Order_months,',') from
(
select distinct quotename(Order_Month) as Order_months from customers 
)as D;
set @query =
'select Id,Customer_Name,Order_price,'+@columns+' from 
(
select Id,Customer_Name,City,Order_Month,Order_price from customers
) as p
pivot
(
count(City) for Order_Month in ('+@columns+')
) as P';
exec sp_executesql @query


select * from customers


Begin Transaction;
update customers
set Order_Price = 1500
where Id = 3

select * from customers

commit;

select * from customers

RollBack;


select * from INFORMATION_SCHEMA.tables
where TABLE_NAME = 'employers'

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'employers'

exec sp_databases

select * from employers 

select  *, rank() over(partition by emp_department order by emp_salary  DESC) as rankcol ,
DENSE_RANK() over (partition by emp_department order by emp_salary DESC) as denserank from employers 

begin transaction;

delete from employers 
where emp_id  = 13

rollback;

insert into employers values(11,'Nancy Bell','Marketing',69000.00)
insert into employers values(88,'Brinly shine','Marketing',72000.00)

commit;

select * from employers 
where emp_salary = any(select emp_salary from employers where emp_id = 1);

select * from employers 
where emp_salary in (select emp_salary from employers where emp_id = 1);

select * from customers_self

SELECT c1.name AS customer_name, c2.name AS related_customer FROM customers_self c1
JOIN customers_self c2 
ON c1.reference_id = c2.customer_id;

alter table employers
add ref_name int;


select e.emp_name as First_name,ef.emp_name as last_name from employers e
join employers ef
on
e.emp_id = ef.ref_name


select e.emp_id,e.emp_name as First_name,ef.emp_name as last_name from employers e
join employers ef
on
e.emp_id = ef.ref_name

select * from employers 

select *,Lower(Left(emp_name,1)) from employers 

select *,left(lower(emp_name),1) from Employers


select * from employers 

select * from employers_2

alter procedure myemployers
as
begin
merge into employers_2 as emp2
using employers as emp
on emp2.emp_id = emp.emp_id
when matched then update set
emp2.emp_id = emp.emp_id,
emp2.emp_name =emp.emp_name,
emp2.emp_department=emp.emp_department,
emp2.emp_salary=emp.emp_salary,
emp2.ref_name = emp.ref_name;
end;

exec myemployers



create procedure myemployersdata
as
begin
merge into employers_2 as emp2
using employers as emp1
on emp2.emp_id =emp1.emp_id
when not matched then
Insert (emp_id,emp_name,emp_department,emp_salary,ref_name)
values(emp1.emp_id,emp1.emp_name,emp1.emp_department,emp1.emp_salary,emp1.ref_name);
end;

exec myemployersdata

insert into employers values(13,'Nancy Bell','Marketing',69000.00,2)
insert into employers values(14,'Brinly shine','Marketing',72000.00,1)

select * from Employers


select *,ROW_NUMBER() over (partition by emp_department order by emp_id ) as rownum from employers 


select *,ROW_NUMBER() over (order by emp_id ) as rownum from employers 

-- Create a sample table
CREATE TABLE Sample_Table (
    ID INT,
    Value INT,
    Date DATE
);

-- Insert some sample data
INSERT INTO Sample_Table VALUES
(1, 9, '2022-01-01'),
(2, 2, '2022-01-02'),
(3, 35, '2022-01-03'),
(4, 65, '2022-01-04'),
(5, 1000, '2022-01-05'),
(5, 96010, '2022-01-05');


-- Use NTILE to divide the result set into 3 groups based on the 'Value' column
SELECT
    ID,
    Value,
    NTILE(3) OVER (ORDER BY Value) AS NtileGroup
FROM
    Sample_Table;


-- Use LAG to get the previous row's 'Value' based on the 'Date' ordering
SELECT
    ID,
    Value,
    LAG(Value) OVER (ORDER BY Date) AS PreviousValue
FROM
    Sample_Table;


select * from claims


with partitioned as
(
select *,ntile(7) over(order by Service Desc ) as partiti from claims  
)
select distinct(Service),partiti from partitioned

select * from employers


select * from employers_2

create table willow_loft(
id int,
Name varchar(200),
city varchar(200),
)

insert into willow_loft values
(1,'sanu','Phily'),
(2,'uday','dallas');
(3,'Anudeep','Leominister'),
(4,'Ankit','bolton'),
(5,'Ravi','Gadner')

alter procedure willowing
as
begin
merge into appartment as apt
using willow_loft as wlt
on apt.id = wlt.id
when not matched then
insert (id,Name,city)
values (wlt.id,wlt.Name,wlt.city);
end;

exec willowing;

create table appartment(
id int,
Name varchar(200),
city varchar(200),
)


alter procedure apparts
as
begin
merge into appartment as apt
using willow_loft as wlt
on apt.id = wlt.id
when matched then update set
apt.id = wlt.id,
apt.Name = wlt.Name,
apt.city = wlt.city;
end;

exec apparts;

select * from willow_loft

select * from appartment 


delete from willow_loft
where Name in ('Mallikarjun','Vamshi')

alter table customers
add order_id int;

update customers
set order_id = subquery.order_id
from 
(
select id,ROW_NUMBER() over (order by id) as order_id from customers 
) as subquery
where Customers.Id = subquery.Id

select * from customers

create table customer_1(
Id int,
Customer_Name varchar(200),
Order_Month varchar(200),
Order_Price int
)

select * from customers

insert into customer_1(Id,Customer_Name,Order_Month,Order_Price) select Id,Customer_Name,Order_Month,Order_Price  from customers

create table customers_2(
Order_Id int,
City varchar(200),
)

insert into customers_2 (Order_Id,City) select order_id,City from customers 

select c1.*,c2.* from customer_1 as c1
full join
customers_2 as c2 
on c1.Id = c2.order_id 


create table miky(
id varchar,
name varchar(100)
);

select * from miky
select *,coalesce(id,name) as filled from miky 
select *, isnull(id,name) as filled from miky 

create table #mik(
id varchar(100),
name varchar(100)
)
insert into #mik values
('1','Malli'),
('2','Malli'),
('3','Mike'),
(null,'lli')

select * from #mik

update #mik
set id = '4'
where name = 'lli'

select count(*) from customers321

with duplicate as
(
select * from customers321
where address in 
(
select address from customers321
group by address
having count(address) > 1
)
) select * from duplicate

select * from Residential 
where Claims in
(
select Claims from Residential
group by Claims 
having count(Claims) > 1
) order by Claims Desc;

select * from Residential 
where Claims = 256;

select * from orders
select * from orderitems

select o.*,oi.* from orders as o
inner join
orderitems as oi
on o.order_id = oi.order_item_id
where order_status in ('COMPLETE','CLOSED')
group by order_status; 

with orderiter as
(
SELECT o.order_id,o.order_date,o.order_status,oi.order_item_product_id,oi.Quantity_Ordered,oi.order_subtotal,oi.order_total
FROM orders AS o
INNER JOIN orderitems AS oi ON o.order_id = oi.order_item_id
WHERE order_status IN ('COMPLETE', 'CLOSED')
GROUP BY  o.order_id,o.order_date,o.order_status,oi.order_item_product_id,oi.Quantity_Ordered,oi.order_subtotal,oi.order_total
)
select count(*) from orderiter 


SELECT
  order_id,
  order_date,
  LAG(order_date) OVER (ORDER BY order_date) AS previous_order_date
FROM orders;

select * from customers 

alter view customered as 
select Customer_Name,City,order_id from customers
where order_Month = 'Jan';

select * from customered 

select * from customer_1;
select * from customers_2;


create view joinings as
select c1.*,c2.* from customer_1 as c1
join customers_2 as c2 
on c1.Id = c2.Order_Id

select * from joinings 


select order_id from customers
minus
select order_id from orders 

select * from orders 

create table feworders(
id int,
order_id int
)

insert into feworders(id,order_id) select id,order_id from orders


select * from feworders
select * from customers


select c.*,f.order_id from customers as c
full join feworders as f
on c.Id = f.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,c.order_id,f.order_id
having count(f.order_id) < 1;



SELECT c.*,o.order_month FROM customers c
full JOIN orders o 
ON c.Id = o.order_id
group by c.Id,c.Customer_Name,c.City,c.Order_Month,c.Order_Price,c.order_id,o.order_month
having count(o.order_month) < 1


select * from customers 

declare @columns nvarchar(Max),@query nvarchar(max)

select @columns = string_agg(OrderMonth,',') from
(
select distinct quotename(Order_Month) as OrderMonth from customers 
) as D;

set @query =
'select Id,Customer_Name,'+@columns+' from 
(
select Id,Customer_Name,City,Order_Month,Order_Price,order_Id from customers
) as p
pivot
(
count(Order_Month) for Order_Month in ('+@columns+')
) as V';

exec sp_executesql @query 



create login Chikatis with password = 'Mallia'
create user Mine for login Chikati
use FSU
Grant SELECT to Mine;
Grant SELECT on SCHEMA:: dbo to Mine;

select * from [dbo].[airport codes]

update [dbo].[airport codes]
set State = 'Mass'
where State = 'Bc'

select * from customers

select *,concat(firstname,lastname,'[',Right(FIRSTNAME,2),Right(LASTNAME,2),']') from customers 

select *,CONCAT(firstname,lastname, '[', Right(Left(lastname, 1), 1), ']') from customers 

select * from orders
select * from orderitems 

select o.order_status,sum(oi.order_subtotal) from orders as o
inner join orderitems as oi on
o.order_id = oi.order_item_id
group by(o.order_status)

exec sp_databases

select * from INFORMATION_SCHEMA.TABLES

Select * from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customers'

with customerorders as 
(
select c.*,o.* from customers as c
inner join orderitems as o
on c.order_id = o.order_item_id
)
select state,sum(order_subtotal) from customerorders
Group by state


with customerorders as 
(
select c.*,o.* from customers as c
inner join orderitems as o
on c.order_id = o.order_item_id
)
select sum(order_subtotal) from customerorders
where state = 'IN'

with tricustomers as (
select c.*,o.*,oi.* from customers as c
Full join orders as o
on c.Id = o.order_id
Full join orderitems as oi
on o.order_id = oi.order_item_id
)
select * from tricustomers
where Street in (
select Street from tricustomers
group by Street
having count(Street) > 1
)order by Street

alter table customers
drop column order_id 
drop table My_Orders2

Create TABLE My_Customers3 (
    Serial_Id INT PRIMARY KEY,
	Customer_Id int,
    Names VARCHAR(100),
    Emails VARCHAR(100),
    Citys VARCHAR(100),
	Order_Month VARCHAR(100)
);

-- Insert Sample Data into Customers Table
INSERT INTO My_Customers3  VALUES
(1,1,'Mallikarjun','john@example.com', 'New York','Jan'),
(2,2,'Vamshikrishna','alice@example.com', 'Los Angeles','Jan'),
(3,3,'Anudeep','michael@example.com', 'Chicago','Jan'),
(4,4,'John Smith','john@example.com', 'New York','Jan'),
(5,5,'Alice Johnson','alice@example.com', 'Los Angeles','Jan'),
(6,6,'Michael Brown','michael@example.com', 'Chicago','Jan'),
(7,7,'Ankit','john@example.com', 'New York','Jan'),
(8,8,'Alice','alice@example.com', 'Los Angeles','Jan'),
(9,9,'Brown','michael@example.com', 'Chicago','JAN'),
(10,10,'Smith','john@example.com', 'New York','JAN'),
(11,1,'Mallikarjun','john@example.com', 'New York','FEB'),
(12,2,'Vamshikrishna', 'alice@example.com', 'Los Angeles','FEB'),
(13,3,'Anudeep','michael@example.com', 'Chicago','FEB'),
(14,4,'John Smith','john@example.com', 'New York','FEB'),
(15,5,'Alice Johnson','alice@example.com', 'Los Angeles','FEB')
INSERT INTO My_Customers2  VALUES
(16,6,'Michael Brown','michael@example.com', 'Chicago',NULL),
(17,7,'Ankit','john@example.com', 'New York',NULL),
(18,8,'Alice','alice@example.com', 'Los Angeles',null),
(19,9,'Brown','michael@example.com', 'Chicago',NULL),
(20,10,'Smith','john@example.com', 'New York',NULL)

-- Create Orders Table
CREATE TABLE My_Orders2 (
    Order_Id INT PRIMARY KEY,
    Customer_Id INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10,2)
);

-- Insert Sample Data into Orders Table for January
INSERT INTO My_Orders2  VALUES
(1, 1, '2024-01-05', 100.00),
(2, 2, '2024-01-08', 75.50),
(3, 3, '2024-01-12', 200.25),
(4, 4, '2024-01-05', 100.00),
(5, 5, '2024-01-08', 75.50),
(6, 6, '2024-01-12', 200.25),
(7, 7, '2024-01-05', 100.00),
(8, 8, '2024-01-08', 75.50),
(9, 9, '2024-01-12', 200.25),
(10,10,'2024-01-05', 100.00),
(11,1, '2024-02-08', 75.50),
(12,2, '2024-02-12', 200.25),
(13,3, '2024-02-05', 100.00),
(14,4, '2024-02-08', 75.50),
(15,5, '2024-02-12', 200.25)


select * from My_Customers2
select * from My_Orders2

with customerod as (
select C.*,O.Order_Id,O.Order_Date,O.Total_Amount from My_Customers2 as c
left join My_Orders2 as O
on C.Serial_Id = O.Order_Id
)
Select * from customerod
Where Order_Id is Null 

with my as(
select C.*,O.Order_Id,O.Order_Date,O.Total_Amount from My_Customers3 as c
left join My_Orders2 as O
on C.Serial_Id = O.Order_Id
)
select * from my
where Names in(
select Names from my
Group by Names
Having count(Names) <=1
)
truncate table Willow_st

Create table Willow_St(
Id int,
Names Varchar(200),
City Varchar(200),
University Varchar(200)
)
insert into Willow_St Values (1,'mike','Fitchburg','Fitchburg')
insert into Willow_St Values (2,'Mine','Fitchburg','Fitchburg')
insert into Willow_St Values (3,'Micky','Fitchburg','Fitchburg')
insert into Willow_St Values (4,'Mouse','Fitchburg','Fitchburg')


Create procedure Inserting 
@Id int,
@Name Varchar(100),
@City Varchar(100),
@University Varchar(100)
as
begin
insert into Willow_St Values (@Id,@Name,@City,@University)
end

exec Inserting
@Id= 2,
@Name = 'Vamsi',
@City = 'Fitchburg',
@University = 'Fitchburg'

Create Procedure Updating
@Id int,
@Name Varchar(100),
@City Varchar(100),
@University Varchar(100)
as
begin
Update Willow_St
set 
Names = @Name,
City = @City,
University =@University
where 
Id =@Id
end 

exec Updating
@Id = 2,
@Name = 'Anudeep',
@City = 'Fitchburg',
@University = 'New_England'


select * from Willow_St

Create table Willow_St2(
Id int,
Names Varchar(200),
City Varchar(200),
University Varchar(200)
)



Create Procedure Loading
as
begin
Truncate table Willow_St2
insert into Willow_St2 select * from Willow_St
end 

exec Loading

alter procedure loading2
as 
begin
Merge into Willow_St2 as ws2
using Willow_St as ws
on ws.Id = ws2.Id
when matched then update set
ws2.Id =ws.ID,
ws2.Names = ws.Names,
ws2.City = ws.City,
ws2.University =ws.University
when not matched then 
Insert (Id,Names,City,University)
Values(ws.Id,ws.Names,ws.City,ws.University);
end;
exec loading2

select * from Willow_St2

select * from customers 

select * from customers

Declare @columns nvarchar(Max),@query nvarchar(Max)
select @columns = STRING_AGG(state,',') from
(
select distinct QUOTENAME(state) as state from customers 
) as D;

set @query = 
'select cutomerid,firstname,'+@columns+' from
(
select cutomerid,firstname,lastname,Street,city,state,zip_code from customers
)as P
pivot
(
max(city) for state in ('+@columns+')
)as V';

exec sp_executesql @query;

select * from customers

--from,join,where,groupby,having,select,distinct,order by,limit

select * from Practice

alter table Practice
alter column salary decimal(10,2)


select *,rank()over(Partition by Salary order by Salary Desc) as ranked from Practice 

create table employess(
Dept_Id int primary key not null,
Emp_Name Varchar(200),
Emp_Dept Varchar(200),
Emp_City Varchar(200),
Emp_Date DateTime
)

Create Table salary(
Dept_Id int,
Dept_Salary Decimal(10,2),
Emp_Country Varchar(200)
Foreign key (Dept_Id) References employess(Dept_Id)
);

select * from employess

insert into employess 
select 5 as Dept_Id,'' as Emp_Name,'Front_End' as Emp_Dept,'Dallas' as Emp_City, CURRENT_TIMESTAMP as DateTime
union all
select 6,'Vamshi','Java','Boston',CURRENT_TIMESTAMP
union all
select 7,'Ankit','Cloud_Engineer','Pheldelphia',CURRENT_TIMESTAMP

insert into employess 
select 5 as Dept_Id,'' as Emp_Name,'Front_End' as Emp_Dept,'Dallas' as Emp_City, DateADD(day,-25,CURRENT_TIMESTAMP) as Emp_Date

insert into employess 
select 10 as Dept_Id,'Kunal' as Emp_Name,'Java' as Emp_Dept,'worcester' as Emp_City, DateADD(year,-3,CURRENT_TIMESTAMP) as Emp_Date
union all
select 11,'Sravan','IT_Data','Charlotte',Current_timestamp 
union all
select 12,'Sumanth','Cloud_Engineer','Fitchburg',Current_timestamp 
union all
select 13,'Minaj','Sap','Mckinney',CURRENT_TIMESTAMP 

update employess
set Emp_Name = 'Rajesh'
where Dept_Id = 5

insert into salary 
select 1 as Dept_Id,86000.00 as Dept_Salary,'USA' as Emp_Country
union all
select 2,86000.00,'USA'
union all
select 3,75000.00,'Russia'
union all
select 4,95000.00,'USA'
union all
select 5,76000.00,'Finland'
union all
select 6,125000,'USA'
union all
select 7,95000,'Canada'
union all
select 8,100000,'Austrila'
union all
select 9,100000,'USA'
union all
select 10,130000,'UK'
union all
select 11,69000,'USA'
union all
select 12,95000,'Canada'
union all
select 13,74000,'USA'

select * from salary
select * from employess


With Emp_salary 
as
(
select E.*,S.Dept_Salary,S.Emp_Country from employess as E
inner join salary as S
on E.Dept_Id = S.Dept_Id
)select *,Rank() over(Partition By Emp_Dept order by Dept_Salary DESC) as Ranked  from Emp_salary


With Emp_salary 
as
(
select E.*,S.Dept_Salary,S.Emp_Country from employess as E
inner join salary as S
on E.Dept_Id = S.Dept_Id
)select *,Dense_Rank() over(Partition By Emp_Dept order by Dept_Salary DESC) as Ranked  from Emp_salary


update salary
set Dept_Salary = 87000.00
where Dept_Id = 12;


select * from employess
where Dept_Id in (
select Dept_Id from salary
where Dept_Salary = 95000.00)

Select * from employess
where Emp_City in  
(select Emp_City from employess
 Group By (Emp_City)
 Having Count(Emp_City) > 1
 )
 
select * from customers
where Street in 
(
select Street from customers 
Group by Street 
Having Count(Street) > 1
)
order by Street
 
  
select count(*) from customers
where Street in 
(
select Street from customers 
Group by Street 
Having Count(Street) > 1
)

select * from INFORMATION_SCHEMA.tables

select * from My_Customers2
select * from My_Customers3
select * from My_Orders2

create table Janorders(
serial_Id int,
Name varchar(200),
month varchar(200),
city varchar(200),
amount varchar(200)
)
insert into Janorders Values 
(1,'mallikarjun','jan','fitchburg','$92.00'),
(2,'vamshi','jan','berverton','$12.00'),
(3,'arjun','jan','leominster','$195.00'),
(4,'bhanu','jan','fitchburg','$2.00'),
(5,'anudeep','jan','dallas','$9.00'),
(6,'ankit','jan','charlotte','$92.00'),
(7,'vasanth','jan','fitchburg','$82.00'),
(8,'eshwar','jan','pitsburg','$92.00'),
(9,'mike','jan','fitchburg','$92.00'),
(10,'derrick','jan','southbourgh','$92.00'),
(11,'kelly','jan','arlinton','$92.00'),
(12,'henna','jan','fitchburg','$92.00'),
(13,'prakash','jan','boston','$9.00')


create table Feborders(
serial_Id int,
Name varchar(200),
month varchar(200),
city varchar(200),
amount varchar(200)
)
insert into Feborders Values 
(1,'mallikarjun','feb','fitchburg','$92.00'),
(4,'bhanu','feb','fitchburg','$2.00'),
(5,'anudeep','feb','dallas','$9.00'),
(6,'ankit','feb','charlotte','$92.00'),
(9,'mike','feb','fitchburg','$92.00'),
(11,'kelly','feb','arlinton','$92.00'),
(13,'prakash','feb','boston','$9.00')

select * from Janorders where not exists  (select * from Feborders )


SELECT * FROM Janorders 
WHERE NOT EXISTS (SELECT * FROM Feborders WHERE Feborders.serial_id = Janorders.serial_id);

select * from Janorders
select * from Feborders

select J.serial_Id,J.Name,J.month,J.city,J.amount from Janorders as J
left join Feborders as F 
on J.serial_Id = F.serial_Id
where F.serial_Id is null;

select * from My_Customers2
select * from My_Customers3

select * from My_Customers2
where not exists (select * from My_Customers3 where My_Customers3.Serial_Id = My_Customers2.Serial_Id)


select C2.Serial_Id,C2.Customer_Id,C2.Names,C2.Emails,C2.Citys,C2.Order_Month from My_Customers2 as C2
left join My_Customers3 as C3
on C2.Serial_Id = C3.Serial_Id
where C3.Customer_Id is null;

select * from My_Customers2
where exists  (select * from My_Customers3 where My_Customers3.Serial_Id = My_Customers2.Serial_Id)


select * from employess


Declare @Columns Nvarchar(max),@query Nvarchar(Max)

select @Columns =  STRING_AGG(Emp_City,',') from 
(
select distinct QUOTENAME(Emp_City) as Emp_City from employess
) as D

set @query = 
'select Dept_Id,Emp_Name,Emp_Date,'+@columns+' from
(
select * from employess
) as P
Pivot
(
max(Emp_Dept) for Emp_City in ('+@Columns+')
) as V';

exec sp_executesql @query;


select * from My_Customers2
where exists  (select * from My_Customers3 where My_Customers3.Serial_Id = My_Customers2.Serial_Id)


create procedure Mydata
as
begin 
(
select * from My_Customers2
where not exists  (select * from My_Customers3 where My_Customers3.Serial_Id = My_Customers2.Serial_Id)
)
end;

exec Mydata


select * from employess

create view custo as 
select *,
case 
when Emp_City = 'Boston' then 'MA'
when Emp_City = 'Dallas' then 'TX'
else 'nocode'
end as state from employess;

select * from custo


select * from somes
select * from My_Customers3



create table somes(
id int primary key,
id2 int unique
)

insert into somes values
(1,1),
(2,2),
(3,null),
(4,3),
(5,4),
(6,5)


select * from categories 


select * from employess 


create  table emp_1(
Dept_Id int Primary Key,
Emp_Name Varchar(200),
Emp_Dept Varchar(200)
);
insert into emp_1 select Dept_Id,Emp_Name,Emp_Dept from employess

create table emp2(
Dept_Id int,
Emp_City VARCHAR(200),
Emp_Date datetime
Foreign key (Dept_Id) references emp_1(Dept_Id)
);
insert into emp2 select Dept_Id,Emp_City,Emp_Date from employess

select * from employess 
select * from salary


with empdata as
(
select e.*,s.Dept_Salary,s.Emp_Country from employess as e
join salary as s
on e.Dept_Id = s.Dept_Id
)
select *,RANK() over(Partition by Emp_Dept order by Dept_Salary Desc) as Ranked,
		ntile(4) over(order by Emp_City) as tiled from empdata

with empdata as
(
select e.*,s.Dept_Salary,s.Emp_Country from employess as e
join salary as s
on e.Dept_Id = s.Dept_Id
)select *,RANK() over(Partition by Emp_Dept order by Dept_Salary Desc) as Ranked,Dense_RANK() over(Partition by Emp_Dept order by Dept_Salary Desc) as Ranki from empdata

create table #mike(
id int
);

select * from #mike

select * from customers

select *,2+zip_code as zp from customers 

select *,'R'+'X'+'G'+firstname as code from customers 

select *,'R'+'X'+'G'+CONCAT_WS('_',firstname,lastname) as code from customers 

select *,'R'+'X'+'G'+'_'+firstname as code from customers 

select *,concat('[',RIGHT(firstname,1),']',firstname,'[',Right(lastname,1),']',lastname) as code from customers 
select *,concat('[',Left(firstname,1),']',firstname,'[',left(lastname,1),']',lastname) as code from customers 


create database pract

select * from Transport

exec sp_rename 'Transport','Patients'

select * from [dbo].[Annual_2021]

select count(Distinct(Variable_name)) from Annual_2021

select count(Variable_name) from Annual_2021

select count(*) from Annual_2021
where Variable_name in 
(
select Variable_name from Annual_2021
Group by Variable_name 
Having count(Variable_name) > 2
)

select * from Orders

select *, row_number() over(order by Row_ID) AS Id  from Orders

select * from INFORMATION_SCHEMA.Tables 

select * from INFORMATION_SCHEMA.Tables
Where TABLE_NAME = 'Orders'

select * from INFORMATION_SCHEMA.Columns
Where TABLE_NAME = 'Orders'

select column_name,data_type from INFORMATION_SCHEMA.columns
where TABLE_NAME = 'Orders'

Alter table Orders
Alter column Shipping_Cost Decimal(10,2)

Alter Table Orders
Alter column Sales Decimal(10,2)

Alter table Orders
Alter Column Profit Decimal(10,2)

update table Orders 
set Id = set1.Customer_Id
From(select Order_ID,ROW_NUMBER() over(Order_ID) as Customer_Id from Orders) set1
where

Alter table Orders
drop Column Id;

Alter Table Orders
Add Customers_Id int;
exec sp_rename 'Orders.Customer_ID','Card_Id'

Update Orders
set Customers_Id = set1.new_ids from 
(select Order_ID,ROW_NUMBER() over(Order By Order_ID) as new_ids from Orders) as set1
where Orders.Order_ID = set1.Order_ID;

SELECT * FROM ORDERS 

Select * from Orders
where Product_Base_Margin Is null;


select *, isnull(Product_Base_Margin,10) from Orders 

select Avg (Product_Base_Margin) from Orders 


Update Orders
Set Product_Base_Margin = 0.51
where Product_Base_Margin is Null;

select * from Orders
where Customer_Name in
(select Customer_Name from Orders
Group by Customer_Name
Having count(Customer_Name) > 2)
order by Customer_Name

select column_name from INFORMATION_SCHEMA.columns
where table_name = 'Orders'


select * from INFORMATION_SCHEMA.tables

select * from customers


select 
STRING_AGG(City,',') from (
select distinct quotename(City) as City from customers 
) as D;


select * from INFORMATION_SCHEMA.tables

select * from Janorders 
select * from Feborders 

select J.Name from Janorders as J
Left Join  Feborders as F
on J.serial_Id = F.serial_Id
group by J.Name
Having count(J.Name) <= 1



select Distinct j.* from Janorders as j
left join Feborders as F
on j.serial_Id = f.serial_Id
where F.Name is null;


SELECT *
FROM Janorders as J
WHERE Not EXISTS (
    SELECT *
    FROM Feborders as F
    WHERE J.serial_Id = F.serial_Id
)


select * from customers 

Select concat(firstname,'(',left(lastname,1),')'),concat('The total cities',count(State)) from customers 
group by state



select  concat(Name,'(',Left(Occupation,1),')'),concat('There are a total of',count(Occupation),'doctors') from OCCUPATIONS
Group by Occupations
Order by Name ASC;

select 
concat('Total states for customers is ',count(state),' ',state) as Word,
concat(firstname,'(',left(lastname,1),')') as Name  
from customers 
group by state
order by state ASC;



select  
    concat(Name,'(',Left(Occupation,1),')')
from OCCUPATIONS
Order By Name

Select 
    concat('There are a total of',count(Occupation),' ',Occupation)
from OCCUPATIONS
Order By count(Occupation) DESC;


create table company (
company_code varchar(10),
founder varchar(20)
);

insert into company values
('C1','Monika'),
('C2','Samantha')

create table Lead_Manager (
lead_manager_code varchar(10),
company_code varchar(10)
);

insert into Lead_Manager values
('LM1','C1'),
('LM2','C2')

create table Senior_Manager (
senior_manager_code varchar(10),
lead_manager_code varchar(10),
company_code varchar(10)
);

insert into Senior_Manager values
('SM1','LM1','C1'),
('SM2','LM1','C1'),
('SM3','LM2','C2');

create table Manager_table (
manager_code varchar(10),
senior_manager_code varchar(10),
lead_manager_code varchar(10),
company_code varchar(10)
);

insert into Manager_table values
('M1','SM1','LM1','C1'),
('M2','SM3','LM2','C2'),
('M3','SM3','LM2','C2');


create table Employee_table (
employee_code varchar(10),
manager_code varchar(10),
senior_manager_code varchar(10),
lead_manager_code varchar(10),
company_code varchar(10)
);

insert into Employee_table values
('E1','M1','SM1','LM1','C1'),
('E2','M1','SM1','LM1','C1'),
('E3','M2','SM3','LM2','C2'),
('E4','M3','SM3','LM2','C2');

SELECT * FROM company
SELECT * FROM Lead_Manager
SELECT * FROM Senior_Manager
SELECT * FROM Manager_table
SELECT * FROM Employee_table


delete from Employee_table
where employee_code = 'E3' or employee_code = 'E4' ;


select 
C.company_code,C.founder,
count(distinct L.lead_manager_code),
count(distinct S.senior_manager_code),
count(distinct M.manager_code),
count(distinct E.employee_code) from company as C
inner join Lead_Manager as L
on C.company_code = L.company_code
inner join Senior_Manager as S
on L.lead_manager_code = S.lead_manager_code
inner join Manager_table as M
on S.senior_manager_code = M.senior_manager_code
inner join Employee_table as E
on M.manager_code = E.manager_code
Group by 
C.company_code,C.founder
order by C.company_code ASC;


select * from customers 

select *,replace(City,'Caguas','Fitchburg') as city from customers
order by customer_id


exec sp_rename 'customers.cutomerid','customer_id'


-- Sample table creation
CREATE TABLE Numbers (
    Value DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Numbers (Value) VALUES
(9.05)

-- Query using CEIL function
SELECT Value, CEILING(Value) AS CeilValue
FROM Numbers;

SELECT Round(Value,2) from Numbers 


CREATE TABLE STATION (
    ID INT,
    CITY VARCHAR(50),
    LAT_N DECIMAL(10, 4)
);

INSERT INTO STATION (ID, CITY, LAT_N) VALUES
(1, 'City1', 35.6789),
(2, 'City2', 40.1234),
(3, 'City3', 38.9000),
(4, 'City4', 45.6789),
(5, 'City5', 137.0000),
(6, 'City6', 100.9876);


SELECT * FROM STATION

SELECT SUM(ROUND(LAT_N,3)) FROM STATION
WHERE LAT_N > 35.6789 AND LAT_N < 45.6789


SELECT count(*) FROM orderitems
where order_subtotal > 299

SELECT SUM(ROUND(ORDER_SUBTOTAL,2)) FROM orderitems
WHERE order_subtotal BETWEEN 299.980010986328 AND 49.9799995422363


SELECT SUM(ROUND(ORDER_SUBTOTAL,2)) FROM orderitems
WHERE order_subtotal > 299.980010986328 AND order_subtotal < 49.9799995422363


select * from orderitems 
delete from orderitems
where order_item_id between 12 and 172198

select * from orderitems 
select sum(round(order_subtotal,4)) from orderitems
where order_subtotal > 129.9900000000 and order_subtotal <299.9800000000

select * from customers 

Select Concat(firstname,'(',left(city,1),')','-',count(city)) as code from customers 

exec sp_databases

select * from INFORMATION_SCHEMA.TABLES

select * from INFORMATION_SCHEMA.TABLES
where TABLE_NAME = 'emp_1'

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'emp_1'

exec sp_rename 'emp_1','empo_1'

create table hospital(
Emp_Id int,
Actions Varchar(200),
Timings DateTime
);

insert into hospital values ('1', 'in', '2019-12-22 09:00:00');
insert into hospital values ('1', 'out', '2019-12-22 09:15:00');
insert into hospital values ('2', 'in', '2019-12-22 09:00:00');
insert into hospital values ('2', 'out', '2019-12-22 09:15:00');
insert into hospital values ('2', 'in', '2019-12-22 09:30:00');
insert into hospital values ('3', 'out', '2019-12-22 09:00:00');
insert into hospital values ('3', 'in', '2019-12-22 09:15:00');
insert into hospital values ('3', 'out', '2019-12-22 09:30:00');
insert into hospital values ('3', 'in', '2019-12-22 09:45:00');
insert into hospital values ('4', 'in', '2019-12-22 09:45:00');
insert into hospital values ('5', 'out', '2019-12-22 09:40:00');

select * from hospital


select Emp_Id,
case when Actions = 'in' then Timings end as Intime,
case when Actions = 'out' then Timings end as outtime
from hospital

select Emp_Id,
max(case when Actions = 'in' then Timings end) as Intime,
max(case when Actions = 'out' then Timings end) as outtime
from hospital
group by Emp_Id;

select Emp_Id,
max(case when Actions = 'in' then Timings end) as Intime,
max(case when Actions = 'out' then Timings end) as outtime
from hospital
group by Emp_Id;

with hop as 
(
select Emp_Id,
max(case when Actions = 'in' then Timings end) as Intime,
max(case when Actions = 'out' then Timings end) as outtime
from hospital
group by Emp_Id
)

select * from hop
where Intime > outtime or outtime is null;

create login ECWCBR with password = 'ECWCBR'
create user malli for login ECWCBR
use FSU
Grant SELECT TO malli;
Grant select on schema :: dbo to malli

Drop user malli;
Drop login ECWCBR;

Create login ECWCBR With password = 'ECWCBR';

USE FSU;
CREATE USER MALLI FOR LOGIN ECWCBR;

GRANT SELECT TO MALLI;
GRANT SELECT ON SCHEMA :: dbo to MALLI;


select * from INFORMATION_SCHEMA.tables

select * from customers 
select * from orders
select * from orderitems


select * from customers c
join orders o on c.customer_id = o.order_id
join orderitems oi on c.customer_id = oi.order_item_id 


create table myjoin1(
id int,
Name varchar(200)
)
insert into myjoin1 values(1,'Mallikarjun')
insert into myjoin1 values (2,'Mallik')


create table myjoin2(
id int,
Name varchar(200)
)
insert into myjoin2 values (1,'Mallikarjun'),
 (1,'Mallika')
 


 select * from myjoin1
 select * from myjoin2


 select * from myjoin1 j1
 join myjoin2 j2
 on j1.id = j2.id



 select * from customers 

  select state,count(city) from customers 
 group by state;

 select state,count(distinct city) from customers 
 group by state;


 select count( city) from customers
 where state = 'TX'

 select * from orders
 select * from orderitems

 with myorders as (
 select * from orders o 
 join orderitems oi
 on o.order_id = oi.order_item_id 
 )
 select order_status,order_date,sum(order_subtotal) from myorders
 group by order_status,order_date
 

  with myorders as (
 select * from orders o 
 join orderitems oi
 on o.order_id = oi.order_item_id 
 )
 select order_status,order_date,sum(order_subtotal) from myorders
 where order_date = '2013-12-08'
 group by order_status,order_date
 


with myorders as (
select o.order_status,o.order_date,sum(oi.order_subtotal) as totalaun from orders o 
join orderitems oi
on o.order_id = oi.order_item_id
group by o.order_status,o.order_date
)
select sum(totalanu) from myorders
where order_date = '2013-12-22'


with myorders as (
    select * from orders o 
    join orderitems oi
    on o.order_id = oi.order_item_id
)
select sum(order_subtotal) from myorders
where order_date = '2013-12-22'


with myorders as (
    select 
        o.order_status,
        o.order_date,
        sum(oi.order_subtotal) as totalanu 
    from orders o 
    join orderitems oi
    on o.order_id = oi.order_item_id
    group by o.order_status, o.order_date
)
select sum(round(totalanu,2)) 
from myorders
where order_date = '2013-12-22'


USE FSU

Create login Mallik with Password = 'Mallik'
create user ECW for Login Mallik


use FSU
Grant SELECT TO ECW;
Grant select on schema :: dbo to ECW



select * from INFORMATION_SCHEMA.TABLES

select * from customers
select * from orders 


create  table mymallik 

with mymallik as 
(
select * from customers c 
join orders o on 
c.customer_id = o.order_id
)
select * from mymallik 


create table union1(
Id int,
Name varchar(200)
)

Create table union2(
Id int,
Name varchar(200)
)

insert into union1 values 
(2,'Arjun'),
(3,'Babbulu')

insert into union2 values 
(1,'Mallikarjun'),
(2,'Arjun'),
(3,'Babbulu');

Alter table union1 
Add City Varchar(200);

insert into union2 (City)  
values 
('Fitchburg'),
('Boston'),
('Chicogo');

insert into union2 values 
(4,'Mallikarjun','Fitchburg')

delete from union2
where id is null;


update union2
set City = 'Chicago'
where Id = 3

select *, concat(Id,Name) as City from union1
unioN ALL
select * from union2

select *, concat(Id,Name) as City from union1
union
select * from union2

Alter table union1
drop column City


select * from customers 

CREATE TABLE People (
    name NVARCHAR(50),
    occupation NVARCHAR(50)
);


INSERT INTO People (name, occupation) VALUES
('John Doe', 'Engineer'),
('Jane Smith', 'Doctor'),
('Alice Johnson', 'Teacher'),
('Robert Brown', 'Engineer'),
('Emily Davis', 'Doctor'),
('Michael Wilson', 'Teacher'),
('Jessica Moore', 'Nurse'),
('Daniel Taylor', 'Engineer'),
('Laura Anderson', 'Doctor'),
('David Thomas', 'Teacher'),
('Sarah Jackson', 'Nurse'),
('James White', 'Engineer'),
('Emma Harris', 'Doctor'),
('Oliver Martin', 'Teacher'),
('Sophia Thompson', 'Nurse');


select * from people 


select concat(name,' ','(',Left(Occupation,1),')') from people order by name
select concat('There are a total of' ,' ', count(occupation), ' ', lower(occupation),'s') from people 
group by occupation
order by count(occupation);

select concat(name,' ','(',substring(occupation,1,1),')') from people


Create TABLE Employee (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    employer NVARCHAR(50),
    salary int
);

INSERT INTO Employee (id, name, employer, salary) VALUES
(1, 'John Doe', 'TechCorp', 75),
(2, 'Jane Smith', 'HealthPlus', 82),
(3, 'Alice Johnson', 'EduWorld', 68),
(4, 'Robert Brown', 'TechCorp', 75),
(5, 'Emily Davis', 'HealthPlus', 82),
(6, 'Michael Wilson', 'EduWorld', 68),
(7, 'Jessica Moore', 'CareWorks', 72),
(8, 'Daniel Taylor', 'TechCorp', 75),
(9, 'Laura Anderson', 'HealthPlus', 82),
(10, 'David Thomas', 'EduWorld', 68),
(11, 'Sarah Jackson', 'CareWorks', 72),
(12, 'James White', 'TechCorp', 75),
(13, 'Emma Harris', 'HealthPlus', 82),
(14, 'Oliver Martin', 'EduWorld', 68),
(15, 'Sophia Thompson', 'CareWorks', 72);

select * from Employee

select avg(salary) from Employee


WITH IncorrectSalaries AS (
    SELECT CAST(REPLACE(CONVERT(NVARCHAR(50), salary), '0', '') AS DECIMAL(10, 2)) AS incorrect_salary
    FROM Employee
),
ActualAverage AS (
    SELECT ROUND(AVG(salary), 0) AS actual_average
    FROM Employee
)
SELECT CEILING(ActualAverage.actual_average - AVG(IncorrectSalaries.incorrect_salary)) AS error_amount
FROM IncorrectSalaries, ActualAverage;



SELECT CAST(REPLACE(CONVERT(NVARCHAR(50), salary), '0', '') AS DECIMAL(10, 2)) AS incorrect_salary FROM Employee


select ceiling(avg(salary) from Employee


select Cast(replace(salary),'0','') as Decimal(10,2) from Employee


SELECT CEILing(AVG(SALARY) - AVG(REPLACE(SALARY,0,''))) FROM EMPLOYEE

SELECT CEILING(AVG(salary) - AVG(CAST(REPLACE(CONVERT(NVARCHAR(50), salary), '0', '') AS DECIMAL(10, 2)))) AS error_amount
FROM Employee;



SELECT * FROM Employee


SELECT *, DENSE_RANK() over (order by Salary DESC) from Employee

SELECT *, RANK() over (order by Salary DESC) from Employee

select * from Employee
where salary in (75,82,68)

select * from Employee
where salary exists  (75,82,68)


select * from Employee
where salary = 75 or salary = 82 or salary = 68;

select first_name from patients
group by first_name
having count(first_name) = 1


-- Create the patients table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    gender VARCHAR(10)
);

-- Insert 15 records into the patients table
INSERT INTO patients (patient_id, first_name, gender) VALUES
(1, 'John', 'Male'),
(2, 'Jane', 'Female'),
(3, 'Alice', 'Female'),
(4, 'Bob', 'Male'),
(5, 'Carol', 'Female'),
(6, 'David', 'Male'),
(7, 'Eve', 'Female'),
(8, 'Frank', 'Male'),
(9, 'Grace', 'Female'),
(10, 'Hank', 'Male'),
(11, 'Ivy', 'Female'),
(12, 'Jack', 'Male'),
(13, 'Kim', 'Female'),
(14, 'Leo', 'Male'),
(15, 'Mona', 'Female');


select * from patients

select gender,count(gender) from patients
group by gender 


SELECT 
    SUM(CASE WHEN gender = 'Male' THEN 1 ELSE 0 END) AS total_male_patients,
    SUM(CASE WHEN gender = 'Female' THEN 1 ELSE 0 END) AS total_female_patients
FROM patients;


select * from orders



select *,case 
when order_status = 'COMPLETE' then 'Finished'
when order_status = 'CLOSED' then 'Finished'
else order_status 
end as ordersitems
from orders 

select 
sum (case when order_status = 'COMPLETE' then 1 else 0 END) as Completestaus,
sum(Case when order_status = 'PENDING' then 1 else 0 END) as Pending,
sum(case when order_status = 'CLOSED' then 1 else 0 END) as Closed,
sum (case when order_status = 'PAYMENT_REVIEW' then 1 else 0 END) as Payment_Review,
sum(Case when order_status = 'SUSPECTED_FRAUD' then 1 else 0 END) as Suspected_Fraud,
sum(case when order_status = 'ON_HOLD' then 1 else 0 END) as On_Hold,
sum (case when order_status = 'PROCESSING' then 1 else 0 END) as Processing,
sum(Case when order_status = 'CANCELED' then 1 else 0 END) as Canceled,
sum(case when order_status = 'PENDING_PAYMENT' then 1 else 0 END) as PENDINGPAYMENT
from 
orders

select order_status,count(*) from orders
Group by order_status

CREATE TABLE example_table (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO example_table (id, name, age, city) VALUES
(1, 'Alice', NULL, 'New York'),
(2, 'Bob', 30, NULL),
(3, 'Carol', 25, 'Los Angeles'),
(4, 'David', NULL, NULL),
(5, 'Eve', 40, 'Chicago');


select * from example_table

select *, isnull(city,name) from example_table


select * from orders
order by order_status,order_date,order_product_id

select city,count(patient_id) as num_patients from patients
group by city
order by num_patients desc, city ASC;



select *,'Ficthburg' as city from union1
union all
select * from union2

CREATE TABLE employeesu (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_department VARCHAR(50)
);

INSERT INTO employeesu (emp_id, emp_name, emp_department) VALUES
(1, 'John Doe', 'HR'),
(2, 'Jane Smith', 'Marketing'),
(3, 'David Johnson', 'Finance');

CREATE TABLE customersu (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    cust_city VARCHAR(50)
);

INSERT INTO customersu (cust_id, cust_name, cust_city) VALUES
(1, 'Alice Brown', 'New York'),
(2, 'Bob Green', 'Los Angeles'),
(3, 'Carol White', 'Chicago');


select * from employeesu
union all
select * from customersu


select * from union1
select * from union2

select Name,'Fitchburg' as City from union1
union all
select Name,city from union2

select * from customers
-- odd numbers
select * from customers 
where customer_id % 2  <> 0;

-- even numbers
select * from customers 
where customer_id % 2 = 0;


select firstname,lastname,city,zip_code from customers
where customer_id % 2 <> 0 and zip_code like '%2%';

select firstname,lastname,city,zip_code from customers 
where 
(customer_id % 2 = 0 and zip_code like '%5') 
or 
(customer_id % 2 = 0 and state = 'TX')


select * from customers
select * from orders

select c.firstname,c.lastname,c.city,o.order_status,max(o.order_date) as maximum_orders,
min(o.order_date) as minimum_orders from customers as c
join
orders as o 
on c.customer_id = o.order_id
group by c.firstname,c.lastname,c.city,o.order_status
having count(*) >= 3;



select d.doctor_id,concat(d.first_name+' '+d.last_name) as full_name,
min(a.admission_date) as first_admission_date,
max(a.admission_date) as last_admission_date
from 
doctors d
join 
admissions a
on
a.attending_doctor_id = d.doctor_id
group by d.doctor_id


select firstname,lastname,count(*) as num_of_cus from customers
Group by firstname,lastname
having count(*) > 1


select * from customers
where street in 
(select street  from customers
group by street
having count(*) > 1)
order by Street

select Street,count(Street) from customers
Group By Street
Having Count(*) > 3

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    height_cm DECIMAL(5, 2),
    weight_kg DECIMAL(5, 2),
    birth_date DATE,
    gender CHAR(1)
);

INSERT INTO patients (patient_id, first_name, last_name, height_cm, weight_kg, birth_date, gender) VALUES
(1, 'John', 'Doe', 175.26, 70.5, '1990-05-12', 'M'),
(2, 'Jane', 'Smith', 160.02, 55.3, '1985-11-23', 'F'),
(3, 'Alice', 'Johnson', 165.10, 60.2, '1992-07-15', 'F'),
(4, 'Bob', 'Brown', 180.34, 80.7, '1980-01-30', 'M'),
(5, 'Chris', 'Davis', 170.18, 68.5, '1988-09-25', 'O');


select * from patients

select 
concat(first_name,' ',last_name) as fullname,
Round(height_cm/ 30.48,1) as height,
Round(weight_kg * 2.205,0) as weight,
case
when gender = 'M' then 'Male'
when gender = 'F' then 'Female'
else 'other'
end as Gender
from patients


CREATE TABLE Product_s (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Unit_Price DECIMAL(10, 2)
);

INSERT INTO Product_s (Product_ID, Product_Name, Unit_Price) VALUES
(1, 'Laptop', 799.99),
(2, 'Smartphone', 499.99),
(3, 'Tablet', 299.99);


CREATE TABLE ProductSales (
    Product_ID INT,
    Product_Sale_Date DATE,
    Product_Buyer_ID INT,
    FOREIGN KEY (Product_ID) REFERENCES Product_s(Product_ID)
);

INSERT INTO ProductSales (Product_ID, Product_Sale_Date, Product_Buyer_ID) VALUES
(1, '2024-07-01', 101),
(2, '2024-07-02', 102),
(3, '2024-07-03', 103),
(1, '2024-07-04', 104),
(2, '2024-07-05', 105);


select * from Product_s
select * from ProductSales

select * from Product_s as p
join 
ProductSales as ps
on p.Product_ID = ps.Product_ID
where p.Product_Name = 'Laptop'

select * from Product_s as p
join 
ProductSales as ps
on p.Product_ID = ps.Product_ID
where p.Product_Name = 'Laptop' or p.Product_Name = 'Tablet'


insert into ProductSales values (3,'2024-07-01',101)

select * from Product_s as p
join 
ProductSales as ps
on p.Product_ID = ps.Product_ID
where P.Product_Name = 'Tablet'


select * from ProductSales
where Product_ID in 
(Select Product_ID from Product_s
where Product_Name = 'Tablet')



SELECT * from orders


select format(order_date,'yyyy-MM') from orders



--Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

--Return the result table in any order.

---The query result format is in the following example.


-- Create the Transactions table
CREATE TABLE Transactions (
    id INT PRIMARY KEY,
    country VARCHAR(2),
    state VARCHAR(10),  
    amount INT,
    trans_date DATE
);

-- Insert data into the Transactions table
INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, 'DE', 'approved', 2000, '2019-01-07');

INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES (125, 'DE', 'approved', 2000, '2019-01-07');





select format(trans_date, 'yyyy-MM') as month,
Country,
Count(*) as trans_count,
sum(case when state = 'approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from
Transactions
group by country , format(trans_date, 'yyyy-MM')



select 
sum(case when state = 'approved' then 1 else 0 end) as approved_count
from 
Transactions



-- Create the Employee table
CREATE TABLE Emp (
    id INT PRIMARY KEY,
    salary INT
);

-- Insert data into the Employee table
INSERT INTO Emp (id, salary) VALUES
(1, 100),
(2, 200),
(3, 300);

-- Query to find the second highest salary
SELECT 
    MAX(salary) AS SecondHighestSalary
FROM 
    Emp
WHERE 
    salary < (SELECT MAX(salary) FROM Emp);


	-- Query to find the second highest salary with handling for null
SELECT 
    (SELECT DISTINCT salary 
     FROM Employee 
     ORDER BY salary DESC 
     LIMIT 1 OFFSET 1) AS SecondHighestSalary;

select * from salary

select Max(Dept_Salary) from salary


select * from salary


select 
Max(Dept_Salary) as secondhighestsalary
from salary
where
Dept_Salary < (select max(Dept_Salary) from salary)


DECLARE @n INT = 2; -- Specify the value of n here

WITH SalaryRank AS (
    SELECT 
        Dept_Salary,
        ROW_NUMBER() OVER (ORDER BY Dept_Salary DESC) AS salary_rank
    FROM 
        (SELECT DISTINCT Dept_Salary FROM Em) AS distinct_salaries
)
SELECT 
    Dept_Salary AS NthHighestSalary
FROM 
    SalaryRank
WHERE 
    salary_rank = @n;


CREATE TABLE Em(
    id INT PRIMARY KEY,
    Dept_Salary INT
);

-- Insert data into the Employee table
INSERT INTO Em VALUES
(1, 100),
(2, 200),
(3, 300);


   SELECT 
        Dept_Salary,
        ROW_NUMBER() OVER (ORDER BY Dept_Salary DESC) AS salary_rank
    FROM Em

	-- Create the Logs table
CREATE TABLE Logs (
    id INT PRIMARY KEY,
    num INT
);

-- Insert data into the Logs table
INSERT INTO Logs (id, num) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2);

WITH ConsecutiveGroups AS (
    SELECT 
        num,
        ROW_NUMBER() OVER (ORDER BY id) - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS grp
    FROM 
        Logs
)
SELECT DISTINCT
    num
FROM 
    ConsecutiveGroups
GROUP BY 
    num, grp
HAVING 
    COUNT(*) >= 3;


-- Create the Employee table
CREATE TABLE itemp (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT
);

-- Insert data into the Employee table
INSERT INTO itemp (id, name, salary, departmentId) VALUES
(1, 'Joe', 70000, 1),
(2, 'Jim', 90000, 1),
(3, 'Henry',80000, 2),
(4, 'Sam', 60000, 2),
(5, 'Max', 90000, 1);

-- Create the Department table
CREATE TABLE it_dep (
    deptid INT PRIMARY KEY,
    deptname VARCHAR(50)
);

-- Insert data into the Department table
INSERT INTO it_dep VALUES
(1, 'IT'),
(2, 'Sales');


select * from itemp
select * from it_dep

with findings as(
 select * from itemp  as it
 inner join
 it_dep as itd
 on it.departmentId = itd.deptid
 )
 select deptname,name,DENSE_RANK() over(partition by deptname order by salary Desc) as highestsalary from findings 