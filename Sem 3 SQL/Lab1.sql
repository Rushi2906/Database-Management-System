--1. Display Name of Student who belongs to either Semester 3 or 5. (Use IN & OR)
Select name from Student where Sem IN (3,5);
Select name from Student where Sem=3 OR Sem=5;

--2 Find Student Name & Enrollment No in which Student Id between 103 to 105.
Select name,EnrollmentNo from Student where StuID BETWEEN 103 AND 105;

--3 Find Student Name & Enrollment No with their Email Who belongs to 5th Semester
Select name ,EnrollmentNo,Email from Student where Sem=5;

--4 Display All the Details of first three students.
Select TOP 3 * from Student;

--5 Display Name & Enrollment no of first 30% Students who’s contact number ends with 7
Select TOP 30 PERCENT name,enrollmentno from Student where contactno like '%7';

--6 Display Unique Semesters.
Select Distinct sem from Student;

--7 Retrieve All the Students who have no Enrollment.
Select * from Student where EnrollmentNo IS Null;

--8 Find All Students whose Name does not start with ‘V’
Select * from student where name NOT LIKE 'V%';

--9 Find All Students in which Email Contains ‘3@G’ & Only Six Characters
Select * from Student where Email LIKE '%3@G%' AND Email LIKE '______';

--10. Find Out All the Students whose First Name Starts with F And third character must be R.
Select * from Student where Name LIKE 'F_R%';

--11. Find All the Student Details whose Contact No contains 877.
Select * from Student where ContactNo like '%877%'; 
--12. Display Student Name in Which Student belongs to Semester 3 & Contact Number Does Not Contains
8 & 9.
Select name from Student where Sem=3 AND ContactNo NOT LIKE '%8%' AND ContactNo NOT LIKE '%9%';
 
--13. Find Students who born after date 01-01-1990.
Select * from student where birthdate>'01-01-1990';

--14. Update Division to BCX-5 & Semester 5 whose Student Id Is 102.
Update student Set Division='BCX-5',Sem=5 where StuID=102;
Select * from Student;

--15. Change the Student’s Name to Firoz Sherasiya in which Email is Firoz.Me@Gmail.Com & Contact No is
--8885999922.
Update Student Set name='Firoz sherasiya' where Email='Firoz.me@gmail.com' AND ContactNo='8885999222';
Select * from Student;

--16. Add one more Column City Varchar (50) in Student Table.
Alter table Student
Add city varchar(50);
Select * from Student; 

--17. Remove All BCX-3 Division Students.
Delete from Student where Division='BCX-3';
select * from Student;
  
--18. Change Column Name Email to EmailAddress.
Sp_Rename 'Student.Email','EmailAddress','column';
select * from Student;

--19. Write an SQL query to clone a new table Student_New from Student table with all data.
Select * INTO Student_New from Student;

--20. Remove All the Data from Student Table Using Truncate.
Truncate Table Student_New;     