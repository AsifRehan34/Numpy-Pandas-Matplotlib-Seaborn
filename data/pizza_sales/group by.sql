#Group by 
select * from datafiles.esd;
select Department,count(EEID) as Depart_wiseEmp from datafiles.esd group by Department;
select Gender,count(EEID) as Depart_wiseEmp from datafiles.esd group by Gender;

select * from datafiles.products;
select productLine,count(productCode) from datafiles.products group by productLine order by count(productCode);