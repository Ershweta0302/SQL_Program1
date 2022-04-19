Create database Practice

use Practice 

create table PracticeTable1 (
Id int primary key identity,
Name varchar (20),
Email varchar (20),
Phone varchar(13),
);

insert into PracticeTable1 values('Raj','raj@gmail.com','8976785634')
insert into PracticeTable1 values('Shweta','shweta@gmail.com','7898785634')
insert into PracticeTable1 values('Akansha','akansha@gmail.com','8976090967')
insert into PracticeTable1 values('Reeta','reeta@gmail.com','9098685634')
insert into PracticeTable1 values('Pram','pram@gmail.com','8976756344')
insert into PracticeTable1 values('Rajni','rajni@gmail.com','9678566894')

create table PracticeTable2 (
pid int primary key identity,
Id int foreign key references PracticeTable1(Id),
Email varchar (20),
Password varchar(6),
);


insert into PracticeTable2 values(1,'ram@gmail.com','897889')
insert into PracticeTable2 values(2,'shivani@gmail.com','899078')
insert into PracticeTable2 values(3,'mohit@gmail.com','09789')
insert into PracticeTable2 values(4,'sundaram@gmail.com','896743')
insert into PracticeTable2 values(5,'akash@gmail.com','123456')
insert into PracticeTable2 values(6,'ankit@gmail.com','654321')

select * from PracticeTable1

select * from PracticeTable2
--inner join

select * from PracticeTable1 inner join PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id


select PracticeTable1.Email,PracticeTable2.Password from PracticeTable1 inner join PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id

--left join


select * from PracticeTable1 left join PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id


select PracticeTable1.Name,PracticeTable2.Email from PracticeTable1 left join PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id


--right join 


select * from PracticeTable1 right join PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id


select PracticeTable1.Phone,PracticeTable2.Email from PracticeTable1 right join PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id

--FULL OUTER JOIN

select * from PracticeTable1 FULL OUTER JOIN  PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id


select PracticeTable1.Email,PracticeTable2.Password from PracticeTable1 FULL OUTER JOIN PracticeTable2 on PracticeTable1.Id=PracticeTable2.Id
