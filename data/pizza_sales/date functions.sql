select * from datafiles.orders;

#date functions

select date(orderDate) as Date from datafiles.orders;
select time(orderDate) as Date from datafiles.orders;
select day(orderDate) as Date from datafiles.orders;
select month(orderDate) as Date from datafiles.orders;
select year(orderDate) as Date from datafiles.orders;
select hour(orderDate) as Date from datafiles.orders;
select minute(orderDate) as Date from datafiles.orders;
select monthname(orderDate) as Date from datafiles.orders;
select dayname(orderDate) as Date from datafiles.orders;
select datediff(shippedDate,orderDate) as Date from datafiles.orders;