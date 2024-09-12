create view Francedata as
select country,avg(creditLimit) from customers where country="France";
create view countrycount as
select country,count(customerNumber) from customers group by country;