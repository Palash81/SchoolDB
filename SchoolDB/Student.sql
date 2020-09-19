-------------------------------------------------------------
--### PALASH ROY- DevOps-2019: SQL Database and Storage --###
-------------------------------------------------------------
--       Create Table for the student details data         --
-------------------------------------------------------------
use schoolDB
go
-------------------------------------------------------------
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5001, 'Dhrubonil', 'Roy', 'dhro@gmail.com', 0862327876); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5002, 'Indronil', 'Roy', 'inro@gmail.com', 0112300076); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5003, 'Suborna', 'Adittya', 'suad@gmail.com', 0701127111); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5004, 'Mia', 'Johansson', 'mijo@gmail.com', 0744447876); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5005, 'Brigita', 'Andersson', 'bran@gmail.com', 0802320011); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5006, 'Fardus', 'Alam', 'faal@algmail.com', 0762000888); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5007, 'Mats', 'Danailsson', 'mada@gmail.com', 0862324476); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNumber)
values	(5008, 'Manir', 'Hossain', 'maho@gmail.com', 0114444876); 


select *from students
