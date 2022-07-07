--1. Find all persons with their department name & code.
	SELECT P.PERSONID,
		   P.PERSONNAME,
		   P.DEPARTMENTID,
		   P.SALARY,
		   P.JOININGDATE,
		   P.CITY,
		   D.DEPARTMENTNAME,
		   D.DEPARTMENTCODE
	FROM PERSON P INNER JOIN DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
--2. Give department wise maximum & minimum salary with department name.
	SELECT MAX(P.SALARY),MIN(P.SALARY),DEPARTMENTNAME 
	FROM PERSON P INNER JOIN DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
	GROUP BY DEPARTMENTNAME
--3. Find all departments whose total salary is exceeding 100000.
	SELECT DEPARTMENTNAME,SUM(SALARY)
	FROM PERSON P INNER JOIN DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
	GROUP BY DEPARTMENTNAME
	HAVING SUM(SALARY)>100000
--4. Retrieve person name, salary & department name who belongs to Jamnagar city.
--5. Find all persons who does not belongs to any department.
--6. Find department wise person counts.
--7. Find average salary of person who belongs to Ahmedabad city.
--8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly.
--(In single column)
--9. List all departments who have no persons.
--10. Find city & department wise total, average & maximum salaries.
--11. Display Unique city names.
--12. List out department names in which more than two persons.
--13. Combine person name’s first three characters with city name’s last three characters in single column.
--14. Give 10% increment in Computer department employee’s salary.
--15. Display all the person name’s who’s joining dates difference with current date is more than 365 days.