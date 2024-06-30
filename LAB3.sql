USE Company_SD;

-- Q1
SELECT Dno, Fname + ' ' + Lname, SSN FROM Employee;
---------------------------------------------------------------------

-- Q2
SELECT Dname, Pname 
FROM Departments INNER JOIN Project
ON Departments.Dnum = Project.Dnum;
---------------------------------------------------------------------

-- Q3
SELECT * FROM 
Dependent INNER JOIN Employee
ON Employee.SSN = Dependent.ESSN;
---------------------------------------------------------------------

-- Q4
SELECT Pnumber, Pname, Plocation 
FROM Project 
WHERE City IN ('Cairo', 'Alex');
---------------------------------------------------------------------

-- Q5
SELECT * 
FROM Project
WHERE Pname LIKE 'A%';
---------------------------------------------------------------------

-- Q6
SELECT *
FROM Employee
WHERE Dno = 30 AND Salary BETWEEN 1000 AND 2000;
---------------------------------------------------------------------

-- Q7
/* 
    SUP QUERY   WRITE ALL TABLES (EMPLOYEE - WORKS_FOR - PROJECT) 
	BEGIN FROM FIRST  --> NAME FROM EMPLOYEE IN DEPT 10 
	SECOND FROM WORKS_FOR >= 10 HOURS AND RETRIVE OR LINKED IT WITH EMPLOYEE WITH SHARED KEY (SSN - ESSN) 
	THIRD FROM PROJECT PNUMPER WHERE PNAME = 'AL RABWAH' AND LINKED WITH WORKS_FOR WITH SHARED KEY (PNO - PNUMPER)
*/

SELECT Fname + ' ' + Lname AS 'FULL NAME'
FROM Employee
WHERE Dno = 10 AND SSN IN 
( 
   SELECT ESSn 
   FROM Works_for 
   WHERE Hours = 10 AND Pno = 
   (
      SELECT Pnumber 
	  FROM Project
	  WHERE Pname = 'AL Rabwah'
   )
);

-- WITH JOIN
/*
SELECT DISTINCT Fname + ' ' + Lname
FROM Employee AS EMP INNER JOIN Works_for AS WF
ON WF.ESSn = EMP.SSN AND EMP.Dno = 10 AND WF.Hours >= 10
INNER JOIN Project AS PJ
ON EMP.Dno = PJ.Dnum AND PJ.Pname = 'AL Rabwah';
*/

SELECT DISTINCT Fname + ' ' + Lname
FROM Employee AS EMP INNER JOIN Works_for AS WF
ON WF.ESSn = EMP.SSN AND EMP.Dno = 10 AND WF.Hours >= 10
INNER JOIN Project 
ON Project.Pnumber = WF.Pno AND Pname = 'AL Rabwah';

-- SUP QUERY WITH INNER JOIN

SELECT DISTINCT Fname + ' ' + Lname
FROM Employee AS EMP INNER JOIN Works_for AS WF
ON EMP.SSN = WF.ESSn AND Dno = 10 AND WF.Hours >= 10
AND WF.Pno = 
(     
	  SELECT Pnumber 
	  FROM Project
	  WHERE Pname = 'AL Rabwah' 
);


-- Q8
SELECT EMP.Fname + ' ' + EMP.Lname
FROM Employee AS EMP INNER JOIN Employee AS SUPER
ON SUPER.SSN = EMP.SSN AND SUPER.Superssn = ( SELECT SSN FROM Employee WHERE Fname = 'KAMEL' AND Lname = 'MOHAMED'); 
-- لازم اكتب المفاتحين ال بيربطو بين الجدولين لازم لازم لازم وبعدين اكتب اى شرط تانى حتى لو الف شرط تانى بس المهم المفاتيح
-----------------------------------------------------------------------------------------------------------------------

-- Q9
SELECT DISTINCT Fname + ' ' + Lname, Employee.SSN, Pname
FROM Employee INNER JOIN Works_for
ON Employee.SSN = Works_for.ESSn
INNER JOIN Project
ON Project.Pnumber = Works_for.Pno
ORDER BY Pname;
-- لسه ناقصة
--------------------------------------------------------------
-- Q10
SELECT Pnumber, Departments.Dname, Lname, Address, Bdate
FROM Project INNER JOIN Departments
ON Project.Dnum = Departments.Dnum AND City = 'CAIRO'
INNER JOIN Employee
ON Employee.SSN = Departments.MGRSSN;

------------------------------------------------------------------
-- Q11
SELECT *
FROM Employee INNER JOIN Departments
ON Employee.SSN = Departments.MGRSSN;

------------------------------------------------------------------
-- Q12
SELECT * 
FROM Employee RIGHT JOIN Dependent
ON Employee.SSN = Dependent.ESSN;

-------------------------------------------------------------------------------------------------------------------------------
-- Q13
INSERT INTO Employee VALUES ('MOHAMED', 'SADEQ', 102412, CONVERT(datetime, '05/11/2000'), '250ST ELMAADI', 'M', 5000, 112233, 30);
---------------------------------------------------------------------------------------------------------------------------------

-- Q14
INSERT INTO Employee VALUES ('AHMED', 'HASSAN', 242412, CONVERT(datetime, '06/11/2010'), '250 ST ELMAADI DEGLA', 'M',NULL, NULL, 30);
---------------------------------------------------------------------------------------------------------------------------------

-- Q14
UPDATE Employee
SET Salary += Salary * 20/100 
WHERE SSN = 102412;

---------------------------------------------------------------------------------------------------------------------------------------