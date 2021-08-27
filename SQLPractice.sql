/*
SQL Practice Problems by Sylvia Moestl Vasilik PDF
DB: NORTHWND
*/


/*** We have a table called Shippers. Return all the fields from all the shippers ***/
Select * from shippers;

/***In the Categories table, selecting all the fields using this SQL:
Select * from Categories
…will return 4 columns. We only want to see two columns, CategoryName and Description. ***/
select categoryname, Description from Categories;

/*** We’d like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales Representative. Write a SQL statement that returns only those employees. ***/
select FirstName
	,LastName
	,HireDate
from Employees
where Title = 'Sales Representative';

/*** Now we’d like to see the same columns as above, but only for those employees that both have the title of Sales Representative, and also are in the UnitedStates. ***/
select FirstName
	,LastName
	,HireDate
from Employees
where Title = 'Sales Representative' and country = 'usa';

/*** Show all the orders placed by a specific employee.
The EmployeeID for this Employee (Steven Buchanan) is 5. ***/
select * 
from Orders
where EmployeeID = 5;

/*** In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those Suppliers whose ContactTitle is not Marketing Manager. ***/
select SupplierID, ContactName, ContactTitle
from Suppliers
where ContactTitle <> 'Marketing Manager';

/*** In the products table, we’d like to see the ProductID and ProductName for those products where the ProductName includes the string “queso”. ***/
select productid, ProductName
from Products
where ProductName like '%queso%';

/*** Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows the OrderID, CustomerID, and ShipCountry for the orders where
the ShipCountry is either France or Belgium. ***/
select orderid, CustomerID, ShipCountry
from orders
where ShipCountry = 'france' or ShipCountry = 'belgium';

/*** Now, instead of just wanting to return all the orders from France or Belgium, we want to show all the orders from any Latin American country. But we don’t have a list of Latin 
American countries in a table in the Northwind database. So, we’re going to just use this list of Latin American countries that happen to be in the Orders table:
Brazil
Mexico
Argentina
Venezuela
It doesn’t make sense to use multiple Or statements anymore, it would get too convoluted. Use the In statement. ***/
select orderid, CustomerID, ShipCountry
from orders
where ShipCountry in ('Brazil', 'Mexico','Argentina','Venezuela');

/*** For all the employees in the Employees table, show the FirstName, LastName, Title, and BirthDate. Order the results by BirthDate, so we have the oldest employees first. ***/
select FirstName,LastName,Title,BirthDate
from Employees
order by BirthDate;

/*** In the output of the query above, showing the Employees in order of BirthDate, we see the time of the BirthDate field, which we don’t want. Show only the date portion of 
the BirthDate field. ***/
select FirstName,LastName,Title
	,cast(BirthDate as date)
from Employees
order by BirthDate;

/*** Show the FirstName and LastName columns from the Employees table, and then create a new column called FullName, showing FirstName and LastName joined together in one column, 
with a space inbetween. ***/
select FirstName
	,LastName
	, (FirstName + ' ' + LastName) as Fullname 
from Employees;

/*** In the OrderDetails table, we have the fields UnitPrice and Quantity. Create a new field,TotalPrice, that multiplies these two together. We’ll ignore the Discount field for 
now. In addition, show the OrderID, ProductID, UnitPrice, and Quantity. Order by OrderID and ProductID. ***/
select OrderID,ProductID,UnitPrice,Quantity, (UnitPrice * Quantity) TotalPrice
from [Order Details];

/*** How many customers do we have in the Customers table? Show one value only, and don’t rely on getting the recordcount at the end of a resultset. ***/
select count(*) as TotalCustomers from Customers;

/*** Show the date of the first order ever made in the Orders table. ***/
select min(OrderDate) as FirstOrder from orders;

/*** Show a list of countries where the Northwind company has customers. ***/
select distinct(Country)
from Customers;

/*** Show a list of all the different values in the Customers table for ContactTitles. Also include a count for each ContactTitle. This is similar in concept to the previous 
question “Countries where there are customers”, except we now want a count for each ContactTitle. ***/
select Distinct(ContactTitle)
	,count(*) as cnt
from [dbo].[Customers]
group by ContactTitle;

/*** We’d like to show, for each product, the associated Supplier. Show the ProductID, ProductName, and the CompanyName of the Supplier. Sort by ProductID.
This question will introduce what may be a new concept, the Join clause in SQL. The Join clause is used to join two or more relational database tables together in a logical way.
Here’s a data model of the relationship between Products and Suppliers. ***/
select ProductID
	,ProductName
	,CompanyName
from Products p
join Suppliers s 
	on p.SupplierID = s.SupplierID
order by ProductID;

/*** We’d like to show a list of the Orders that were made, including the Shipper that was used. Show the OrderID, OrderDate (date only), and CompanyNameof the Shipper, and sort 
by OrderID. In order to not show all the orders (there’s more than800), show only those rows with an OrderID of less than 10300. ***/


/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/
/***  ***/

/***  ***/
/***  ***/




