# having clause is used with aggregate function where we cannot use where clause
select * from datafiles.esd;
select Department,count(EEID) from datafiles.esd group by Department having count(EEID)>130;

select * from datafiles.products;
select productLiTne,sum(quantityInStock) from datafiles.products group by productLine having sum(quantityInStock)>5000; 