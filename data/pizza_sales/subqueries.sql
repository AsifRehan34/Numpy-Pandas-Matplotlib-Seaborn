#subquries

select * from customers;
select avg(creditLimit) from customers;
select customerName,creditLimit from customers where 
creditLimit <(select avg(creditLimit) from customers);