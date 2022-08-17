/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the category name. Done  */
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5. Done */
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by Done */

/* joins: find the name of the department, and the name of the category for Appliances and Games Done */

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() done */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT products.Name, categories.Name
FROM products
Inner Join categories on categories.CategoryID = products.CategoryID
WHERE categories.Name = "Computers";

select p.Name, p.Price, r.Rating from products as p
inner join reviews as r on r.ProductID = p.ProductID
where r.Rating = 5;

select e.FirstName, e.LastName, Sum(s.Quantity) as total from sales as s
inner join employees as e on e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by total desc;

select d.Name as 'Department Name', c.Name as 'Category Name' from departments as d
inner join categories as c on c.DepartmentID = d.DepartmentID
where c.Name = 'Appliances' or c.Name = 'Games';

select p.Name, sum(s.Quantity) as 'Total Sold', sum(s.Quanity * s.PricePerUnit) as 'Total Price'
from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97;

select * from sales where ProductID = 97;

select p.Name, r.Reviewer, r.Rating, r.Comment from products as p
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.Rating = 1;


