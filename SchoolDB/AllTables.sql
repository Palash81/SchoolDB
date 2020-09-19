----------------------------------------------------------------------------
--###        PALASH ROY- DevOps-2019: SQL Database and Storage         --###
----------------------------------------------------------------------------
Use schoolDB
Go
----------------------------------------------------------------------------
--                Create Table for the Teacher details data               --
----------------------------------------------------------------------------

insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4001, 'Palash', 'Roy', 'paro@gmail.com', 0762327876, '20000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4002, 'Anders', 'Ekberg', 'anek@gmail.com', 0732300076, '35000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4003, 'Erik', 'Ridler', 'erri@gmail.com', 0702327111, '40000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4004, 'Anna', 'Johansson', 'anjo@gmail.com', 0700007876, '38000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4005, 'Jimmy', 'Kultson', 'jiku@gmail.com', 0762320011, '28000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4006, 'Tobious', 'Fars', 'tofa@gmail.com', 0762320000, '32000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4007, 'Clas', 'Danelsson', 'clda@gmail.com', 0762324476, '42000'); 
insert into teachers
		(TeacherID, FirstName, LastName, EmailAddress, MobileNuber, Salary)
values	(4008, 'Mikel', 'Andersson', 'mian@gmail.com', 0764444876, '34000')

	
Select *from teachers

--------------------------------------------------------------------
--           Create Table for the student details data            --
--------------------------------------------------------------------

insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5001, 'Dhrubonil', 'Roy', 'dhro@gmail.com', 0862327876); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5002, 'Indronil', 'Roy', 'inro@gmail.com', 0112300076); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5003, 'Suborna', 'Adittya', 'suad@gmail.com', 0701127111); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5004, 'Mia', 'Johansson', 'mijo@gmail.com', 0744447876); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5005, 'Brigita', 'Andersson', 'bran@gmail.com', 0802320011); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5006, 'Fardus', 'Alam', 'faal@algmail.com', 0762000888); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5007, 'Mats', 'Danailsson', 'mada@gmail.com', 0862324476); 
insert into students
		(StudentID, FirstName, LastName, EmailAddress, MobileNuber)
values	(5008, 'Manir', 'Hossain', 'maho@gmail.com', 0114444876); 


select *from students

----------------------------------------------------------------------
--           Create Table for the course details data               --
----------------------------------------------------------------------

insert into courses (CourseID, CourseName)values(1001, 'Physics');
insert into courses (CourseID, CourseName)values(1002, 'Mathematics');
insert into courses (CourseID, CourseName)values(1003, 'English');
insert into courses (CourseID, CourseName)values(1004, 'Swedish');
insert into courses (CourseID, CourseName)values(1005, 'Linux');
insert into courses (CourseID, CourseName)values(1006, 'Database');
insert into courses (CourseID, CourseName)values(1007, 'Security');
insert into courses (CourseID, CourseName)values(1008, 'Server');


Select *from courses

----------------------------------------------------------------------