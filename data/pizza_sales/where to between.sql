select * from datafiles.ESD;
ALTER TABLE datafiles.esd
RENAME COLUMN `Annual Salary` TO `Annual_Salary`;
#where
select Job_Title,Department,Age,Annual_Salary from datafiles.esd where Job_Title='Sr. Analyst';
#and
select Job_Title,Department,Age,Annual_Salary,Country from datafiles.esd where Country='china' or Country="United States";
#or
select Job_Title,Department,Age,Annual_Salary from datafiles.esd where Job_Title='Sr. Analyst' and City="Seattle";
#not
select Job_Title,Department,Age,Annual_Salary from datafiles.esd where not Job_Title='Sr. Analyst';
#like
select Job_Title,Annual_Salary from datafiles.esd where Job_Title like "%eer";
select Job_Title,Annual_Salary from datafiles.esd where Job_Title like "Man%";
select Job_Title,Annual_Salary from datafiles.esd where Job_Title like "%ana%";

#order by dont use where clause 
select * from datafiles.esd order by Annual_Salary asc;
select Full_Name,Job_Title,Annual_Salary from datafiles.esd order by Annual_Salary desc;
#limit 
select Full_Name,Job_Title,Annual_Salary from datafiles.esd order by Annual_Salary desc limit 5;
# i want 1 value after first or 2 values after first
select Full_Name,Job_Title,Annual_Salary from datafiles.esd order by Annual_Salary desc limit 1,2;
#BETWEEN
select * from datafiles.esd where Age between 30 and 35;

#in 
select * from datafiles.esd where Department in ("IT","Finance");
#not in 
select * from datafiles.esd where Department not in ("IT","Finance","Sales");

#string functions
select * from datafiles.esd;
#concatination of 2 or more columns
select concat(Job_Title ,"-",Department) as Designation from datafiles.esd;
#concat_ws
select concat_ws(" - ",Full_Name,Job_Title,Department) as Emp_Name_Desig from datafiles.esd;
#length of characters/ numbers in a datafield 
select length(Annual_Salary) as total_Digits from datafiles.esd;
select upper(Full_Name) as Upper_Case from datafiles.esd;
select lower(Full_Name) as Upper_Case from datafiles.esd;
select left(Full_Name,4) as Upper_Case from datafiles.esd;
select right(Full_Name,3) as Upper_Case from datafiles.esd;
select mid(Full_Name,3,5) as Upper_Case from datafiles.esd; #(columnname,startindex,number of character)
