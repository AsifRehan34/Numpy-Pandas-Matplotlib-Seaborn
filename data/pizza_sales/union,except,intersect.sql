#set operators
#union all data from table 1 and 2 except repeating values
#intersect  common data from table 1 and 2
#except data from table 1 which is not present in table 2

select * from myorder_details;
select * from myorders;

select order_id from myorder_details
union
select order_id from myorders;

select order_id,pizza_id from myorder_details
intersect
select order_id from myorders;

#or
select order_id,pizza_id from myorder_details
where order_id in(select order_id from myorders);

select order_id from myorders
except
select order_id from myorder_details;

#or 
select order_id,date from myorders
where order_id not in (select order_id from myorder_details);