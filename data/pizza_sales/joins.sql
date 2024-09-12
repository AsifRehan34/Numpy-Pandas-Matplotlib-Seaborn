# Joins in Mysql
select * from datafiles.products;
select * from datafiles.order_details;

#inner joins, joins on the basis of common values
select products.productName,order_details.quantityOrdered from datafiles.products
inner join datafiles.order_details 
on products.productCode = order_details.productCode;	

select products.productName,sum(order_details.quantityOrdered) from datafiles.products
inner join datafiles.order_details 
on products.productCode = order_details.productCode
group by products.productName;

#left join left column all data right column common data
select products.productName,order_details.quantityOrdered from datafiles.products
left join datafiles.order_details 
on products.productCode = order_details.productCode;
#right join

select products.productName,order_details.quantityOrdered from datafiles.products 
right join datafiles.order_details
on products.productCode= order_details.productCode; 

# full join

select products.productName, order_details.quantityOrdered from datafiles.products
cross join datafiles.order_details 
on products.productCode = order_details.productCode;

select * from datafiles.products cross join datafiles.order_details;