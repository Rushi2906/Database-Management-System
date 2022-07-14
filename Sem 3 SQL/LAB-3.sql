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
	SELECT P.PERSONNAME,P.SALARY,D.DEPARTMENTNAME
	FROM PERSON P INNER JOIN DEPARTMENT D 
	ON P.DEPARTMENTID=D.DEPARTMENTID
	WHERE CITY='JAMNAGAR'
--5. Find all persons who does not belongs to any department.
	SELECT PERSONNAME 
	FROM PERSON 
	WHERE DEPARTMENTID IS NULL
--6. Find department wise person counts.
	SELECT COUNT(PERSONID) AS NO_OF_PERSON,D.DEPARTMENTNAME
	FROM PERSON P
	RIGHT OUTER JOIN DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
	GROUP BY DEPARTMENTNAME
--7. Find average salary of person who belongs to Ahmedabad city.
	SELECT AVG(SALARY) AS AVERAGE_SALARY
	FROM PERSON
	WHERE CITY='AHMEDABAD'
--8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly.
--(In single column)
	SELECT PERSONNAME+' '+'EARNS'+' '+CONVERT(VARCHAR(50),SALARY)+' '+'FROM DEPARTMENT'+' '+D.DEPARTMENTNAME+' '+'MONTHLY'
	FROM PERSON P
	INNER JOIN
	DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
--9. List all departments who have no persons.
	SELECT D.DEPARTMENTNAME
	FROM PERSON P
	INNER JOIN DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
	WHERE P.DEPARTMENTID IS NULL
--10. Find city & department wise total, average & maximum salaries.
	SELECT P.CITY,D.DEPARTMENTNAME,SUM(SALARY) AS SUM,AVG(SALARY) AS AVG_SALARY,MAX(SALARY) AS MAX_SALARY
	FROM PERSON P
	RIGHT OUTER JOIN 
	DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
	GROUP BY D.DEPARTMENTNAME,P.CITY
--11. Display Unique city names.
	SELECT DISTINCT CITY FROM PERSON
--12. List out department names in which more than two persons.
	SELECT COUNT(PERSONID),D.DEPARTMENTNAME
	FROM PERSON P
	INNER JOIN DEPARTMENT D
	ON P.DEPARTMENTID=D.DEPARTMENTID
	GROUP BY D.DEPARTMENTNAME
	HAVING COUNT(PERSONID)>2
--13. Combine person name�s first three characters with city name�s last three characters in single column.
	SELECT SUBSTRING(PERSONNAME,1,3)+RIGHT(CITY,3)
	AS PERSON_CITY_3_CHAR
	FROM PERSON
--14. Give 10% increment in Computer department employee�s salary.
	SELECT SALARY+(SALARY*0.1) FROM PERSON
--15. Display all the person name�s who�s joining dates difference with current date is more than 365 days.	SELECT PERSONNAME FROM PERSON	WHERE DATEDIFF(DAY,GETDATE(),JOININGDATE)>365