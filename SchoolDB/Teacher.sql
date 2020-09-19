-------------------------------------------------------------
--### PALASH ROY- DevOps-2019: SQL Database and Storage --###
-------------------------------------------------------------
--       Create Table for the Teacher details data         --
-------------------------------------------------------------
use schoolDB
go
-------------------------------------------------------------

insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4001, 'Palash', 'Roy', 'paro@gmail.com', 0762327876, '20000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4002, 'Anders', 'Ekberg', 'anek@gmail.com', 0732300076, '35000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4003, 'Erik', 'Ridler', 'erri@gmail.com', 0702327111, '40000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4004, 'Anna', 'Johansson', 'anjo@gmail.com', 0700007876, '38000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4005, 'Jimmy', 'Kultson', 'jiku@gmail.com', 0762320011, '28000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4006, 'Tobious', 'Fars', 'tofa@gmail.com', 0762320000, '32000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4007, 'Clas', 'Danelsson', 'clda@gmail.com', 0762324476, '42000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNumber, Salary)
values	(4008, 'Mikel', 'Andersson', 'mian@gmail.com', 0764444876, '34000')

	
Select *from teachers
