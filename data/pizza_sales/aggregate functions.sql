#Aggregate Functions
select * from datafiles.order_details;
select sum(quantityOrdered) as Total_Quantity from datafiles.order_details;
select avg(quantityOrdered) as Avg_Quantity from datafiles.order_details;
select count(quantityOrdered) as Total_orders from datafiles.order_details;
select min(quantityOrdered) as Min_order from datafiles.order_details;
select max(quantityOrdered) as max_order from datafiles.order_details;
select truncate(priceEach,0) as Real_Price from datafiles.order_details;
select ceil(priceEach) as ceil_Price from datafiles.order_details;
select floor(priceEach) as floor_Price from datafiles.order_details;
