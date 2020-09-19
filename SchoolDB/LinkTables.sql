-------------------------------------------------------------
--### PALASH ROY- DevOps-2019: SQL Database and Storage --###
-------------------------------------------------------------
Use SchoolDB
Go
-------------------------------------------------------------
--     Create Table for the linkteacher details data      ---
-------------------------------------------------------------

insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4001, 'Physics', 1001);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4002, 'Mathematics', 1002);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4003, 'English', 1003);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4004, 'Physics', 1001);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4005, 'Swedish', 1004);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4006, 'Linux', 1005);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4007, 'Physics', 1001);
insert into linkteacher
		(TeacherID, CourseName, CourseID)
values	(4008, 'Security', 1007);

Select *from linkteacher

-------------------------------------------------------------
--      Create Table for the linkstudent details data      --
-------------------------------------------------------------

insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5001, 'Physics', 1001);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5002, 'Mathematics', 1002);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5003, 'English', 1003);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5001, 'Database', 1006);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5004, 'Swedish', 1004);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5005, 'Linux', 1005);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5001, 'Server', 1008);
insert into linkstudent
		(StudentID, CourseName, CourseID)
values	(5006, 'Security', 1007);


select *from linkstudent

-------------------------------------------------------------