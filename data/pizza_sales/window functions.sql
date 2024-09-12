select * from customers_data;
select FirstName,Occupation,EducationLevel,TotalChildren,sum(TotalChildren) 
over (partition by Occupation order by EducationLevel) from  customers_data;

select * from order_details;
select *,rank()
over (partition by quantityOrdered order by productCode) from order_details;
select * from customers_data;

select FirstName,Occupation,EducationLevel,TotalChildren,dense_rank()
over (partition by Occupation order by EducationLevel) from  customers_data;