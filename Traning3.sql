CREATE VIEW empl_dept_sal AS
SELECT Fname,Lname, ssn, Dname
FROM EMPLOYEE, DEPARTMENT
WHERE Salary> 5000 and Salary<13000,
with check option;

ALTER VIEW empl_dept_sal 
AS
SELECT Fname,Lname, ssn, Dname
FROM EMPLOYEE ,DEPARTMENT
WHERE DNO = Dnumber and Salary<5000;

CREATE VIEW emp_ssn_nodepend AS
SELECT Fname,Lname, ssn
FROM EMPLOYEE
WHERE NOT EXISTS(select * From EMPLOYEE, DEPARTMENT WHERE Ssn = Essn);


CREATE VIEW view3 AS
SELECT Fname,Lname, Dname
FROM EMPLOYEE as E FULL outer join DEPARTMENT as D
on E.Dno = D.Dnumber;
