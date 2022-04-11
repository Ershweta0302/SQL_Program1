create database Employeeinfo
use Employeeinfo
create table EmployeeDetails(id int, Name varchar(25), Department varchar(15))
select * from EmployeeDetails
insert into EmployeeDetails(id,Name,Department) values(1001,'Rahul Kumar' , 'Web Developer')
insert into EmployeeDetails(id,Name,Department) values(1002,'Raj Kumar' , 'Web Designer')
insert into EmployeeDetails(id,Name,Department) values(1001,'Saloni Kumari' , '.net Developer')
insert into EmployeeDetails(id,Name,Department) values(1001,'Rajan Kumar' , 'Upi Developer')
insert into EmployeeDetails(id,Name,Department) values(1001,'Amit Sing' , 'Php Developer')
insert into EmployeeDetails(id,Name,Department) values(1001,'Joti Singh' , 'Java Developer')

create table EmployeeInformation(id int identity , Name varchar(25) ,Father_Name varchar (25), Addres varchar(50),
Qulifation varchar (10) , Nationalti varchar(15))
select * from EmployeeInformation
insert into EmployeeInformation (id,Name,Father_Name,Addres,Qulifation,Nationalti)
values(1001, 'Rohit Kumar','Rakesh Kumar','Bhopal','B.C.A','Indian')
values(1002, 'Ansika Kumari','Rakesh Singh','Delhi','B.tech','Indian')