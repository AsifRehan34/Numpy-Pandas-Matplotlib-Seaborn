select * from datafiles.products;
select productName,productline,
case 
	when quantityInStock < 1000 then "need more production"
    else "More for now"
end as Production_details
from datafiles.products;

#multiple cases
select * from datafiles.order_details;
select quantityOrdered,priceEach,
case 
	when quantityOrdered <=30 then "less orders"
	when quantityOrdered =40 then "High orders"
    else "average orders"
end as Detail_order
from datafiles.order_details;