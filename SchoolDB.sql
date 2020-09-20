-------------------------------------------------------------
--### PALASH ROY- DevOps-2019: SQL Database and Storage --###
-------------------------------------------------------------
--         Create a School Database and Tables             --
-------------------------------------------------------------
Create database SchoolDB
Use SchoolDB
Go
-------------------------------------
/***Create Table for the Teacher***/
-------------------------------------

Create table teachers
	(
    TeacherID nchar(10),
	FirstName varchar(50),
    LastName varchar(50),
    EmailAddress varchar(50),
	MobileNuber varchar(15),
	Salary varchar(50),
	);
 -------------------------------------
 /***Create Table for the Student***/
 -------------------------------------

 Create table students
	(
    StudentID nchar(10),
	FirstName varchar(50),
    LastName varchar(50),
    EmailAddress varchar(50),
	MobileNuber varchar(15),
	);
-------------------------------------
 /***Create Table for the courses***/
-------------------------------------

 Create table courses
	(
    CourseID nchar(10),
	CourseName varchar(50),
	);
-------------------------------------
/***Create Table for linkteacher***/
-------------------------------------

Create table linkteacher
	(
	TeacherID nchar(10),
	CourseName varchar(50),
	CourseID nchar(10),
	);

-------------------------------------
/***Create Table for linkstudent***/
-------------------------------------
Create table linkstudent
	(
	StudentID nchar(10),
	CourseName varchar(50),
	CourseID nchar(10),
	);
