#stored procedures just like functions
#syntax
# Delemiter &&
# create procedure proceduename(in variable name)
#begin
#	sql query
#end &&
# Delemiter
#call databasename.procedurename();

Delimiter &&
create procedure getdata()
begin 
	select * from customers;
end &&
Delimiter ;

call getdata();

Delimiter &&
create procedure getlimit(in var int)
begin 
	select * from customers limit var;
end &&
Delimiter ;

call getlimit(3);


#out
Delimiter &&
create procedure getcredit(out var int)
begin 
	select max(creditLimit) into var from customers;
end &&
Delimiter ;

call getcredit(@m);
select @m;

Delimiter &&
create procedure getname(inout var int)
begin 
	select customerName from customers where customerNumber=var;
end &&
Delimiter ;
set @m = 119;
call getname(@m);