-------------------------------------------------------------
--### PALASH ROY- DevOps-2019: SQL Database and Storage --###
-------------------------------------------------------------
-------------------------------
--  To Run The System Works  --
-------------------------------
Use SchoolDB
Go
----------------------------------------------------------------------------------------------------
--                     Show the entry filed, how you would like to view!                          --
----------------------------------------------------------------------------------------------------

select FirstName as [Teachers First Name], right(Salary +'***************', 15) as [Teachers Salary] 
	from teachers
/***Set Teachers Hidden Salary from the teachers table***/

-----------------------------
/***UPDATE table contents***/
-----------------------------

Update teachers set FirstName = 'Palash' where TeacherID = 4001

--------------------------
/***Mail ID Configure***/
--------------------------

Select lower(Firstname + '.'+ Lastname + '@gmail.com') as [Student Email Address]
	from students

--------------------------------------------------
/***Order by first name as alphabetical order***/ 
--------------------------------------------------

Select *from students
	order by FirstName asc

--------------------------------------------------------------------------------------------
/***VIEW It will show you data accouding to your demand 
as an example i do not choose Salary so you can see the salary information from the view***/
--------------------------------------------------------------------------------------------

Create view teachersinfo 
As
	select lower(FirstName + '.'+ LastName + '@gmail.com') as [Teachers Email ID], FirstName as [Teacher First Name],
	LastName as [Teacher Last Name], TeacherID as [Teacher ID], MobileNuber as [Mobile Nuber]  
from teachers
select *from teachersinfo 

------------------------------------------------------
/***PROCEDURE to get information from the teachers***/
------------------------------------------------------

Create proc GetTeacherInfo as
Begin 
	select FirstName as [Teachers First Name], LastName as [Teachers Last Name], EmailAddress as [Teacher Email], MobileNuber as [Mobile Number]
	from [dbo].[teachers]
	Order by FirstName, LastName
End
Execute GetTeacherInfo

------------------------------------------------------
/***PROCEDURE to get information from the students***/
------------------------------------------------------

Create proc GetStudentsInfo as
Begin
	select FirstName as [Teachers First Name],  EmailAddress as [Student Email], MobileNuber as [Mobile Number]
	from [dbo].[students]
	Order by FirstName, LastName
End
Execute GetStudentsInfo
------------------------------------------------------------------------------------------
/***PROCEDURE to get information from the students Courses
You can see how many students has multiple courses based on their StudentID
Note StudentID: 5001 enrolled three different courses as Database, Physics and Server***/
------------------------------------------------------------------------------------------

Create proc GetStudentsCoursesInfo as
Begin
	select StudentID, CourseName, CourseID
	from [dbo].[linkstudent]
	Order by CourseName
End
Execute GetStudentsCoursesInfo
-------------------------------------------------------------------------------
/***PROCEDURE to get information from the teachers Courses
You can see how many teachers has multiple courses based on their TeacherID
Note: TeacherID: 4001, 4004, 4007 have access to take Physics***/
-------------------------------------------------------------------------------

Create proc GetTeacherCoursesInfo as
Begin
	select TeacherID as [Teacher ID], CourseID as [Course ID], CourseName as [Course Name]
	from [dbo].[linkteacher]
	Order by TeacherID
End
Execute GetTeacherCoursesInfo
-------------------------------------------------------------------------------
 /***Inner JOIN with Table Teachers and Linkteachers (Find the match TeacherID)
 also Alias Table ***/
-------------------------------------------------------------------------------

	Select *from teachers 
	inner join 
	linkteacher on teachers.TeacherID = linkteacher.TeacherID

	Select *from teachers as t 
	inner join linkteacher lt on t.TeacherID = lt.TeacherID

-------------------------------------------------------------------------------
 /***Inner JOIN with Table Students and Linkstudents (Find the match StudentID)
 also Alias Table ***/
-------------------------------------------------------------------------------

	Select *from students 
	inner join 
	linkstudent on students.StudentID = linkstudent.StudentID

	Select *from students as s 
	inner join linkstudent ls on s.StudentID = ls.StudentID

--------------------------------------------------------------------------
/***Inner JOIN from Course to linkteacher also create an Alias Table ****/
--------------------------------------------------------------------------

	select * from courses
	inner join linkteacher on courses.CourseName = linkteacher.CourseName

	select * from courses as c
	inner join linkteacher lt on c.CourseName = lt.CourseName

-------------------------------------------------------------------------
/***Inner JOIN from Course to linkstudent also create an Alias Table***/
-------------------------------------------------------------------------

	select * from courses
	inner join linkstudent on courses.CourseName = linkstudent.CourseName

	select * from courses as c
	inner join linkstudent ls on c.CourseName = ls.CourseName

	select * from teachers
	full  join linkteacher on teachers.TeacherID = linkteacher.TeacherID

---------------------------------------------------------------------------------
/*** Use USP_ to find the Teachers elrollment through the COURSE and COURSEID***/
---------------------------------------------------------------------------------

create proc usp_SearchLinkTeacher (@name varchar(10) = '%')  
as
select * from linkteacher
where TeacherID like @name + '%' or CourseName like @name + '%' or CourseID like @name + '%'
order by TeacherID, CourseName 
go
usp_SearchLinkTeacher '%'

--usp_SearchLinkStudent 'TeacherID=4001' Note: Can find with the courseID=1001 and CourseName= Physics
--usp_SearchLinkStudent 'TeacherID=4004' Note: Can find with the courseID=1001 and CourseName= Physics
--usp_SearchLinkStudent 'TeacherID=4007' Note: Can find with the courseID=1001 and CourseName= Physics
--Note: Teacher 4001, 4004 and 4007 Have access to take Physics course 
------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------
/*** Use USP_ to find the Students elrollment through the COURSE and COURSEID***/
---------------------------------------------------------------------------------

create proc usp_SearchLinkStudent (@name varchar(10) = '%')  
as
select * from linkstudent
where StudentID like @name + '%' or CourseName like @name + '%' or CourseID like @name + '%'
order by StudentID, CourseName 
go
usp_SearchLinkStudent '%'

-- usp_SearchLinkStudent 'P' Note: See only the course: Physics
-- usp_SearchLinkStudent 'D' Note: See only the course: Database
-- usp_SearchLinkStudent 'S' Note: See only the course: Server
-- Note: StudentID: 5001 enrolled three different courses as Physics, Database and Server 
------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------
/*** Index for Teachers (TeacherID), Students(StudentID), Courses(CourseID) ***/
---------------------------------------------------------------------------------

Create index Teachers_TeacherID
On Teachers (TeacherID);

Create index Students_StudentID
on Students (StudentID);

Create index Courses_CourseID
on Courses (CourseID);

-----------------------------------
/*** To run all the main table ***/
-----------------------------------

 select *from teachers
 select *from students
 select *from courses
 select *from linkteacher
 select *from linkstudent

-----------------------------------------------------------
--      END OF SQL DATABASE & STORAGE ASSIGNMENT         --
-----------------------------------------------------------
/** SOME USEFUL COMMAND I HAVE USED DURING MY ASSIGNMENT**/
-----------------------------------------------------------------------------------------------------------------------------
 --delete from teacher where TeacherID =4001; * if you want to delete any data from the table contents
 --update teacher set FirstName='Sajid' where TeacherID=4001 * if you want to update any data from the table contents
 --alter table teacher add age int; also alter table teacher alter colum age char(1); * add column and change column datatype
 --alter table teacher drop column age; * To remove a column from the existing table
 --exec sp_rename 'teacher.age', new, 'column'; To rename any column name from the existing table
 --exec sp_rename reacher, teachersinfo; * to rename the table name 
 --drop table teacher; * To delet a table from the table folder
 --drop procedure GetTeacherInfo 
/**drop index students_StudentID
 -- on students(StudentID); --**/
 -----------------------------------------------------------------------------------------------------------------------------
 Select GETDATE() as [¤¤ Get To Know What Date & Time is TODAY? ¤¤]