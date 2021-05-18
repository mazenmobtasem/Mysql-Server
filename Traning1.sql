----create database company_1;

use company_1;

--create table EMPLOYEE(
--	Fname varchar(40) not null,
--	Minit varchar(40),
--	Lname varchar(40) not null,
--	Ssn int,
--	Bdate date,
--	Address varchar(100),
--	Sex varchar(1),
--	Salary int,
--	Super_ssn int,
--	Dno int,
--	primary key(Ssn)
--);

--create table DEPARTMENT(
--	Dname varchar(40),
--	Dnumber int,
--	Mgr_ssn int,
--	Mgr_start_date date,
--	primary key(Dnumber),
--	foreign key (Mgr_ssn) references EMPLOYEE(Ssn)
--		ON DELETE SET NULL
--		ON UPDATE CASCADE
--);


--ALTER TABLE employee
--ADD FOREIGN KEY(Dno)
--REFERENCES DEPARTMENT(Dnumber)


--ALTER TABLE EMPLOYEE
--ADD FOREIGN KEY(Super_ssn)
--REFERENCES EMPLOYEE(Ssn)


--create table DEPT_LOCATIONS(
--	Dnumber int,
--	Dlocation varchar(100),
--	primary key (Dnumber,Dlocation),
--	foreign key (Dnumber) references DEPARTMENT(Dnumber)
--		ON DELETE CASCADE
--		ON UPDATE CASCADE
--);


--create table PROJECT(
--	Pname varchar(15) not null,
--	Pnumber int not null,
--	Plocation varchar(15),
--	Dnum int,
--	primary key(Pnumber),
--	foreign key(Dnum) references DEPARTMENT(Dnumber)
--		ON DELETE SET NULL
--		ON UPDATE CASCADE
--);

--create table WORKS_ON(
--	Essn int,
--	Pno int,
--	Hours int,
--	primary key(Essn,Pno),
--	foreign key(Essn) references EMPLOYEE(Ssn)
--		ON DELETE CASCADE
--		ON UPDATE CASCADE,
--	foreign key(Pno) references PROJECT(Pnumber)
--);

--create table DEPENDENT(
--	Essn int,
--	Dependent_name varchar(15) not null,
--	SEX char,
--	Bdate date,
--	Relationship varchar(8),
--	primary key (Essn,dependent_name),
--	foreign key (Essn) references EMPLOYEE(Ssn)
--		ON DELETE CASCADE
--		ON UPDATE CASCADE
--);



--insert into EMPLOYEE values('mohamed','m', 'fahmy',1 , '1989-09-19', '10 adan street' , 'M' , 10000, null, null);
--insert into EMPLOYEE values('AYA','m', 'Mohamed',2 , '1987-07-22', '21 shihab street' , 'F' , 2500, null, null);
--insert into EMPLOYEE values('ALAA','F', 'fahmy',3 , '1989-09-19', 'street 7 EL maadi' , 'F' , 4000, null, null);
--insert into EMPLOYEE values('Wafaa','K', 'Kahky',4 , '1989-09-19', '10 adan street' , 'M' , 5000, null, null);


--insert into DEPARTMENT values('Business', 1, 1, '2001-01-01');
--insert into DEPARTMENT values('testing', 2, 3, '2005-01-01');
--insert into DEPARTMENT values('development', 3, 2, '2006-01-01');

--UPDATE employee
--SET Dno = 1
--WHERE Ssn = 1;

--UPDATE employee
--SET Dno = 1
--WHERE Ssn = 2;

--UPDATE employee
--SET Dno = 2
--WHERE Ssn = 3;

--UPDATE employee
--SET Dno = 2
--WHERE Ssn = 4;

--UPDATE EMPLOYEE
--SET Super_ssn = 1
--WHERE Ssn = 2;

--UPDATE EMPLOYEE
--SET Super_ssn = 1
--WHERE Ssn = 3;

--UPDATE EMPLOYEE
--SET Super_ssn = 2
--WHERE Ssn = 4;


--insert into DEPT_LOCATIONS
--Values (1,'First floor');

--insert into DEPT_LOCATIONS
--Values (2,'2nd floor');

--insert into DEPT_LOCATIONS
--Values (3,'3rd floor');

--insert into PROJECT
--Values ('Hotel system', 125,'Mariot', 1);

--insert into PROJECT
--Values ('Library website', 112,'alfa', 3);

--insert into PROJECT
--Values ('e-commerce', 221,'puma', 2);

--insert into PROJECT
--Values ('restraunt', 122,'Mariot', 2);


--insert into WORKS_ON
--Values (1, 221 ,4);

--insert into WORKS_ON
--Values (2, 125 ,6);

--insert into WORKS_ON
--Values (3, 221 ,6);

--insert into WORKS_ON
--Values (4, 112 ,8);


--insert into DEPENDENT
--Values (1, 'Hussam', 'M', '1989-06-22' , 'Brother');

--insert into DEPENDENT
--Values (1, 'Ayman', 'M', '1977-05-22' , 'Brother');

--insert into DEPENDENT
--Values (3, 'Amany', 'F', '2003-03-23' , 'Daughter');

--insert into DEPENDENT
--Values (4, 'Ahmed', 'M', '2010-02-22' , 'son');

--Q1
--SELECT Bdate, ADDRESS FROM EMPLOYEE
--	WHERE Fname = 'AYA' AND Minit = 'm' AND Lname = 'Mohamed';

--Q2
--SELECT Fname,Lname,ADDRESS FROM EMPLOYEE,Department
--	WHERE Dname = 'Business';

--Q3
--SELECT Fname,Lname,ADDRESS FROM EMPLOYEE,Department
--	WHERE Dname = 'Business' and Dnumber = Dno;

--Q4
--SELECT DISTINCT Salary FROM EMPLOYEE;

--Q5
--SELECT * FROM EMPLOYEE,Department
--	WHERE Dnumber = 1 and Salary >= 5000 and Salary <= 10000;

--Q6
--SELECT * FROM EMPLOYEE
--	ORDER BY Fname,Lname 

--Q7
--SELECT E.Fname, E.Lname, S.Fname, S.Lname FROM EMPLOYEE AS E, EMPLOYEE AS S
--	WHERE E.Super_ssn = S.Ssn;

--Q8
--UPDATE EMPLOYEE SET Salary = Salary*1.1
--	Where Dno = 1
--SELECT * FROM EMPLOYEE

--Q9
--SELECT Dno,count(*) As [Count of Employees],AVG(Salary) As [Average Salary] FROM EMPLOYEE
--	group by Dno

--Q10
--SELECT Pnumber, Pname, COUNT (*) as [Number of Employees] FROM PROJECT, WORKS_ON, EMPLOYEE
--	WHERE Pnumber = Pno and Dnum = 1 and Dno = 1
--	GROUP BY Pnumber, Pname

--Q11
--SELECT Pnumber, Pname, COUNT (*) As [Number of Employees] FROM PROJECT, WORKS_ON
--	WHERE Pnumber = Pno
--	GROUP BY Pnumber, Pname
--	HAVING COUNT (*) > 2;