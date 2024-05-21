#DBMS Lab Task 3 
#Navanthe Queries 

#Employee table
create table Employee (
    Fname varchar(20), 
    Minit char, 
    Lname varchar(20), 
    Ssn varchar(9), 
    Bdate datetime, 
    Address varchar(30), 
    Sex char, 
    Salary int, 
    Super_ssn varchar(15), 
    Dno int);

insert into Employee values(
    'John', 
    'B', 
    'Smith',
    '123456789', 
    '1965-01-09', 
    '731 Fondren, 
    Houston TX', 
    'M', 
    30000, 
    333445555, 
    5
),( 
    'Franklin', 
    'T', 
    'Wong',
    '333445555', 
    '1955-12-08', 
    '638 Voss, Houston TX', 
    'M', 
    40000, 
    888665555, 
    5
),( 
    'Alicia', 
    'J', 
    'Zelaya',
    '999887777', 
    '1968-01-19', 
    '3321 Castle Spring TX', 
    'F', 
    25000, 
    987654321, 
    4
),( 
    'Jennifer', 
    'S', 
    'Wallace',
    '987654321', 
    '1941-06-20', 
    '291 Berry, Bellaire TX', 
    'F', 
    43000, 
    888665555, 
    4
),( 
    'Ramesh', 
    'K', 
    'Narayan',
    '666884444', 
    '1962-09-15', 
    '975 Fire Oak, Humble TX',
    'M', 
    38000, 
    333445555, 
    5
),( 
    'Joyce', 
    'A', 
    'English',
    '453453453', 
    '1972-07-31', 
    '5631 Rice Houston TX', 
    'F', 
    25000, 
    333445555, 
    5
),( 
    'Ahmad', 
    'V', 
    'Jabbar',
    '987987987', 
    '1969-03-29', 
    '980 Dallas Houston TX', 
    'M', 
    25000, 
    98654321, 
    4
),( 
    'James', 
    'E', 
    'Borg',
    '888665555', 
    '1937-11-10', 
    '540 Stone Houston TX', 
    'M', 
    55000, 
    NULL, 
    1
);


select * from Employee;
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
| Fname    | Minit | Lname   | Ssn       | Bdate               | Address                 | Sex  | Salary | Super_ssn | Dno  |
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
| John     | B     | Smith   | 123456789 | 1965-01-09 00:00:00 | 731 Fondren, Houston TX | M    |  30000 | 333445555 |    5 |
| Franklin | T     | Wong    | 333445555 | 1955-12-08 00:00:00 | 638 Voss, Houston TX    | M    |  40000 | 888665555 |    5 |
| Alicia   | J     | Zelaya  | 999887777 | 1968-01-19 00:00:00 | 3321 Castle Spring TX   | F    |  25000 | 987654321 |    4 |
| Jennifer | S     | Wallace | 987654321 | 1941-06-20 00:00:00 | 291 Berry, Bellaire TX  | F    |  43000 | 888665555 |    4 |
| Ramesh   | K     | Narayan | 666884444 | 1962-09-15 00:00:00 | 975 Fire Oak, Humble TX | M    |  38000 | 333445555 |    5 |
| Joyce    | A     | English | 453453453 | 1972-07-31 00:00:00 | 5631 Rice Houston TX    | F    |  25000 | 333445555 |    5 |
| Ahmad    | V     | Jabbar  | 987987987 | 1969-03-29 00:00:00 | 980 Dallas Houston TX   | M    |  25000 | 98654321  |    4 |
| James    | E     | Borg    | 888665555 | 1937-11-10 00:00:00 | 540 Stone Houston TX    | M    |  55000 | NULL      |    1 |
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
8 rows in set (0.00 sec)



#Department table

create table Department(
    Dname varchar(20),
    Dnumber int, 
    Mgr_ssn varchar(10),
    Mgr_start_date datetime
);

insert into Department values(
    'Research',
    5,
    '333445555',
    '1988-05-22'
),(
    'Administration',
    4,
    '987654321',
    '1995-0-01'
),(
    'HeadQuarters',1,
    '888665555',
    '1981-06-19'
);


select * from Department;
+----------------+---------+-----------+---------------------+
| Dname          | Dnumber | Mgr_ssn   | Mgr_start_date      |
+----------------+---------+-----------+---------------------+
| Research       |       5 | 333445555 | 1988-05-22 00:00:00 |
| Administration |       4 | 987654321 | 1995-01-01 00:00:00 |
| HeadQuarters   |       1 | 888665555 | 1981-06-19 00:00:00 |
+----------------+---------+-----------+---------------------+
3 rows in set (0.00 sec)



#Dept_Locations table

create table Location(
    Dnumber int,
    Dlocation varchar(20)
);

insert into Location values
    (1,'Houston'),
    (4,'Stafford'),
    (5,'Bellaire'),
    (5,'Sugarland'),
    (5,'Houston');

select * from Location;
+---------+-----------+
| Dnumber | Dlocation |
+---------+-----------+
|       1 | Houston   |
|       4 | Stafford  |
|       5 | Bellaire  |
|       5 | Sugarland |
|       5 | Houston   |
+---------+-----------+
5 rows in set (0.00 sec)



#Project table

create table Project(
    Pname varchar(20),
    Pnumber int,
    Plocation varchar(20),
    Dnum int
);

insert into Project values
    ('ProductX',1,'Bellaire',5),
    ('ProductY',2,'Sugarland',5),
    ('ProductZ',3,'Houston',5),
    ('Computerization',10,'Stafford',4),
    ('Reorganization',20,'Houston',4),
    ('Newbenefits',30,'Stafford',4);


select * from Project;
+-----------------+---------+-----------+------+
| Pname           | Pnumber | Plocation | Dnum |
+-----------------+---------+-----------+------+
| ProductX        |       1 | Bellaire  |    5 |
| ProductY        |       2 | Sugarland |    5 |
| ProductZ        |       3 | Houston   |    5 |
| Computerization |      10 | Stafford  |    4 |
| Reorganization  |      20 | Houston   |    4 |
| Newbenefits     |      30 | Stafford  |    4 |
+-----------------+---------+-----------+------+
6 rows in set (0.00 sec)



#Works_On table

create table Works_on(
    Essn varchar(20),
    Pno int,
    Hours float
);

insert into Works_on values
    ('123456789',1,32.5),
    ('123456789',2,7.5),
    ('666884444',3,40.0),
    ('453453453',1,20.0),
    ('453453453',2,20.0),
    ('333445555',2,10.0),
    ('333445555',3,10.0),
    ('333445555',10,10.0),
    ('333445555',20,10.0),
    ('999887777',30,30.0),
    ('999887777',10,10.0),
    ('987987987',10,35.0),
    ('987987987',30,5.0),
    ('987654321',20,15.0),
    ('987654321',20,NULL);


select * from Works_on;
+-----------+------+-------+
| Essn      | Pno  | Hours |
+-----------+------+-------+
| 123456789 |    1 |  32.5 |
| 123456789 |    2 |   7.5 |
| 666884444 |    3 |    40 |
| 453453453 |    1 |    20 |
| 453453453 |    2 |    20 |
| 333445555 |    2 |    10 |
| 333445555 |    3 |    10 |
| 333445555 |   10 |    10 |
| 333445555 |   20 |    10 |
| 999887777 |   30 |    30 |
| 999887777 |   10 |    10 |
| 987987987 |   10 |    35 |
| 987987987 |   30 |     5 |
| 987654321 |   20 |    15 |
| 987654321 |   20 |  NULL |
+-----------+------+-------+
15 rows in set (0.00 sec)



#Dependent table
 
create table Dependent (
    Essn varchar(10),
    Dependent_name varchar(10),
    Sex char,
    Bdate datetime, 
    Relationship varchar(10)
);

insert into Dependent values(
    '333445555',
    'Alice',
    'F',
    '1986-04-05',
    'Daughter'
),(
    '333445555',
    'Theodore',
    'M',
    '1983-10-25',
    'Son'
),(
    '333445555',
    'Joy',
    'F',
    '1958-05-03',
    'Spouse'
),(
    '987654321',
    'Abner',
    'M',
    '1942-02-28',
    'Spouse'
),(
    '123456789',
    'Michael',
    'M',
    '1988-01-04',
    'Son'
),(
    '123456789',
    'Alice',
    'F',
    '1988-12-30',
    'Daughter'
),(
    '123456789',
    'Elizabeth',
    'F',
    '1967-05-05',
    'Spouse'
);

select * from Dependent;
+-----------+----------------+------+---------------------+--------------+
| Essn      | Dependent_name | Sex  | Bdate               | Relationship |
+-----------+----------------+------+---------------------+--------------+
| 333445555 | Alice          | F    | 1986-04-05 00:00:00 | Daughter     |
| 333445555 | Theodore       | M    | 1983-10-25 00:00:00 | Son          |
| 333445555 | Joy            | F    | 1958-05-03 00:00:00 | Spouse       |
| 987654321 | Abner          | M    | 1942-02-28 00:00:00 | Spouse       |
| 123456789 | Michael        | M    | 1988-01-04 00:00:00 | Son          |
| 123456789 | Alice          | F    | 1988-12-30 00:00:00 | Daughter     |
| 123456789 | Elizabeth      | F    | 1967-05-05 00:00:00 | Spouse       |
+-----------+----------------+------+---------------------+--------------+
7 rows in set (0.00 sec)




1. Retrieve the birth date AND address of the employee(s) whose name is ‘John B. Smith’. 

select Bdate,Address 
	from Employee 
	WHERE Fname='John' 
	AND 
	Minit = 'B' 
	AND 
	Lname = 'Smith';

+---------------------+-------------------------+
| Bdate               | Address                 |
+---------------------+-------------------------+
| 1965-01-09 00:00:00 | 731 Fondren, Houston TX |
+---------------------+-------------------------+
1 row in set (0.04 sec)


2. Retrieve the name and address of all employees who work for the ‘Research’ department. 

select E.Fname, E.Minit, E.Lname, E.Address 
	from Employee E,Department D
	WHERE D.Dnumber = E.Dno 
	AND
	D.Dname = 'Research';

+----------+-------+---------+-------------------------+
| Fname    | Minit | Lname   | Address                 |
+----------+-------+---------+-------------------------+
| John     | B     | Smith   | 731 Fondren, Houston TX |
| Franklin | T     | Wong    | 638 Voss, Houston TX    |
| Ramesh   | K     | Narayan | 975 Fire Oak, Humble TX |
| Joyce    | A     | English | 5631 Rice Houston TX    |
+----------+-------+---------+-------------------------+
4 rows in set (0.33 sec)


3. For every project located in ‘Stafford’, list the project number, the controlling department number, and the department manager’s last name, address, and birth date. 

select e.Lname,e.Address,e.Bdate ,p.Pnumber,p.Dnum 
	from Employee e,Project p 
	WHERE Plocation='Stafford'
	AND
	p.Dnum=e.Dno;

+---------+------------------------+---------------------+---------+------+
| Lname   | Address                | Bdate               | Pnumber | Dnum |
+---------+------------------------+---------------------+---------+------+
| Zelaya  | 3321 Castle Spring TX  | 1968-01-19 00:00:00 |      10 |    4 |
| Zelaya  | 3321 Castle Spring TX  | 1968-01-19 00:00:00 |      30 |    4 |
| Wallace | 291 Berry, Bellaire TX | 1941-06-20 00:00:00 |      10 |    4 |
| Wallace | 291 Berry, Bellaire TX | 1941-06-20 00:00:00 |      30 |    4 |
| Jabbar  | 980 Dallas Houston TX  | 1969-03-29 00:00:00 |      10 |    4 |
| Jabbar  | 980 Dallas Houston TX  | 1969-03-29 00:00:00 |      30 |    4 |
+---------+------------------------+---------------------+---------+------+
6 rows in set (0.00 sec)


4. For each employee, retrieve the employee’s first and last name and the first and last name of his or her immediate supervisor. 

 select e1.Fname,e1.Lname,e2.Fname,e2.Lname 
	from Employee as e1,Employee as e2 
	WHERE e2.Ssn=e1.Super_ssn;

+----------+---------+----------+---------+
| Fname    | Lname   | Fname    | Lname   |
+----------+---------+----------+---------+
| John     | Smith   | Franklin | Wong    |
| Ramesh   | Narayan | Franklin | Wong    |
| Joyce    | English | Franklin | Wong    |
| Alicia   | Zelaya  | Jennifer | Wallace |
| Franklin | Wong    | James    | Borg    |
| Jennifer | Wallace | James    | Borg    |
+----------+---------+----------+---------+
6 rows in set (0.00 sec)


5. Select all EMPLOYEE Ssns and all combinations of EMPLOYEE Ssn and DEPARTMENT Dname

 select e.ssn, d.dname 
	from Employee e,Department d
	WHERE e.ssn=d.Mgr_ssn;
+-----------+----------------+
| ssn       | dname          |
+-----------+----------------+
| 333445555 | Research       |
| 987654321 | Administration |
| 888665555 | HeadQuarters   |
+-----------+----------------+
3 rows in set (0.00 sec)

 
6. Retrieve the salary of every employee and all distinct salary values
	 
select distinct salary  
	from Employee;
+--------+
| salary |
+--------+
|  30000 |
|  40000 |
|  25000 |
|  43000 |
|  38000 |
|  55000 |
+--------+
6 rows in set (0.00 sec)

select salary  
	from Employee;
+--------+
| salary |
+--------+
|  30000 |
|  40000 |
|  25000 |
|  43000 |
|  38000 |
|  25000 |
|  25000 |
|  55000 |
+--------+
8 rows in set (0.00 sec)


7. Make a list of all project numbers for projects that involve an employee whose last name is ‘Smith’, either as a worker or as a manager of the department that controls the project. 

select p.Pnumber 
	from Project p ,Employee e 
	WHERE e.Lname = 'Smith' 
	AND 
	e.dno = p.Dnum;
		
+---------+			
| Pnumber |
+---------+
|       1 |
|       2 |
|       3 |
+---------+
3 rows in set (0.00 sec)


8.Retrieve all employees whose address is in Houston, Texas. 

select * 
	from Employee 
	WHERE Address like '%Hous%';

+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
| Fname    | Minit | Lname   | Ssn       | Bdate               | Address                 | Sex  | Salary | Super_ssn | Dno  |
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
| John     | B     | Smith   | 123456789 | 1965-01-09 00:00:00 | 731 Fondren, Houston TX | M    |  30000 | 333445555 |    5 |
| Franklin | T     | Wong    | 333445555 | 1955-12-08 00:00:00 | 638 Voss, Houston TX    | M    |  40000 | 888665555 |    5 |
| Joyce    | A     | English | 453453453 | 1972-07-31 00:00:00 | 5631 Rice Houston TX    | F    |  25000 | 333445555 |    5 |
| Ahmad    | V     | Jabbar  | 987987987 | 1969-03-29 00:00:00 | 980 Dallas Houston TX   | M    |  25000 | 98654321  |    4 |
| James    | E     | Borg    | 888665555 | 1937-11-10 00:00:00 | 540 Stone Houston TX    | M    |  55000 | NULL      |    1 |
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
5 rows in set (0.00 sec)


9.Find all employees who were born during the 1950s. 

select * from Employee 
	WHERE Bdate like '195%';

+----------+-------+-------+-----------+---------------------+----------------------+------+--------+-----------+------+
| Fname    | Minit | Lname | Ssn       | Bdate               | Address              | Sex  | Salary | Super_ssn | Dno  |
+----------+-------+-------+-----------+---------------------+----------------------+------+--------+-----------+------+
| Franklin | T     | Wong  | 333445555 | 1955-12-08 00:00:00 | 638 Voss, Houston TX | M    |  40000 | 888665555 |    5 |
+----------+-------+-------+-----------+---------------------+----------------------+------+--------+-----------+------+
1 row in set, 1 warning (0.00 sec)


10.Show the resulting salaries if every employee working on the ‘ProductX’ project is given a 10 percent raise. 


11.Retrieve all employees in department 5 whose salary is between $30,000 and $40,000. 


select * 
	from Employee 
	WHERE (Salary between 30000 and 40000) 
	AND 
	Dno = 5;

+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
| Fname    | Minit | Lname   | Ssn       | Bdate               | Address                 | Sex  | Salary | Super_ssn | Dno  |
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
| John     | B     | Smith   | 123456789 | 1965-01-09 00:00:00 | 731 Fondren, Houston TX | M    |  30000 | 333445555 |    5 |
| Franklin | T     | Wong    | 333445555 | 1955-12-08 00:00:00 | 638 Voss, Houston TX    | M    |  40000 | 888665555 |    5 |
| Ramesh   | K     | Narayan | 666884444 | 1962-09-15 00:00:00 | 975 Fire Oak, Humble TX | M    |  38000 | 333445555 |    5 |
+----------+-------+---------+-----------+---------------------+-------------------------+------+--------+-----------+------+
3 rows in set (0.00 sec)


12.Retrieve a list of employees and the projects they are working on, ordered by department and, within each department, ordered alphabetically by last name, then first name. 

select Dname,Lname,Fname,Pname 
	from Department,Employee,Works_on,Project 
	WHERE Dnumber = Dno 
	AND 
	Ssn = Essn 
	AND 
	Pno = Pnumber 
	order by 
	Dname,Lname,Fname;

+----------------+---------+----------+-----------------+
| Dname          | Lname   | Fname    | Pname           |
+----------------+---------+----------+-----------------+
| Administration | Jabbar  | Ahmad    | Newbenefits     |
| Administration | Jabbar  | Ahmad    | Computerization |
| Administration | Wallace | Jennifer | Reorganization  |
| Administration | Wallace | Jennifer | Reorganization  |
| Administration | Zelaya  | Alicia   | Computerization |
| Administration | Zelaya  | Alicia   | Newbenefits     |
| Research       | English | Joyce    | ProductY        |
| Research       | English | Joyce    | ProductX        |
| Research       | Narayan | Ramesh   | ProductZ        |
| Research       | Smith   | John     | ProductY        |
| Research       | Smith   | John     | ProductX        |
| Research       | Wong    | Franklin | ProductZ        |
| Research       | Wong    | Franklin | ProductY        |
| Research       | Wong    | Franklin | Computerization |
| Research       | Wong    | Franklin | Reorganization  |
+----------------+---------+----------+-----------------+
15 rows in set (0.08 sec)


13.Retrieve the names of all employees in department 5 who work more than 10 hours per week on the ProductX project. 

select distinct Fname,Lname,Pname,Dno,Hours 
	from Employee as E,Project as P,Works_on as W 
	WHERE E.Dno = 5 
	AND 
	P.Pname = 'ProductX' 
	AND 
	W.Hours >= 10 
	AND 
	W.Essn = E.ssn;
	
+----------+---------+----------+------+-------+
| Fname    | Lname   | Pname    | Dno  | Hours |
+----------+---------+----------+------+-------+
| John     | Smith   | ProductX |    5 |  32.5 |
| Ramesh   | Narayan | ProductX |    5 |    40 |
| Joyce    | English | ProductX |    5 |    20 |
| Franklin | Wong    | ProductX |    5 |    10 |
+----------+---------+----------+------+-------+
4 rows in set (0.00 sec)


14.List the names of all employees who have a dependent with the same first name as themselves.

select Fname,Lname 
	from Employee,Dependent 
	WHERE Fname = Dependent_name 
	AND ssn = essn;

Empty set (0.00 sec)

 
15.Find the names of all employees who are directly supervised by ‘Franklin Wong’.

select Fname,Lname 
	from Employee 
	WHERE Super_ssn = (select ssn from Employee 
		WHERE Fname = 'Franklin' 
		AND 
		Lname = 'Wong');
	
+--------+---------+
| Fname  | Lname   |
+--------+---------+
| John   | Smith   |
| Ramesh | Narayan |
| Joyce  | English |
+--------+---------+
3 rows in set (0.06 sec)

 
16.Retrieve the names of all employees who do not have supervisors. 

select * 
	from Employee 
	WHERE Super_ssn is NULL;
	
+-------+-------+-------+-----------+---------------------+----------------------+------+--------+-----------+------+
| Fname | Minit | Lname | Ssn       | Bdate               | Address              | Sex  | Salary | Super_ssn | Dno  |
+-------+-------+-------+-----------+---------------------+----------------------+------+--------+-----------+------+
| James | E     | Borg  | 888665555 | 1937-11-10 00:00:00 | 540 Stone Houston TX | M    |  55000 | NULL      |    1 |
+-------+-------+-------+-----------+---------------------+----------------------+------+--------+-----------+------+
1 row in set (0.00 sec)


17.Retrieve the name of each employee who has a dependent with the same first name and is the same sex as the employee. 

select Fname,Lname 
	from Employee E,Dependent Dp 
	WHERE E.Fname = Dependent_name 
	AND 
	Dp.sex = E.sex;

Empty set (0.00 sec)


18.Retrieve the names of employees who have no dependents. 

select Fname,Lname 
	from Employee 
	WHERE NOT EXISTS 
	(select * from Dependent 
		WHERE Ssn = Essn);

+--------+---------+
| Fname  | Lname   |
+--------+---------+
| Alicia | Zelaya  |
| Ramesh | Narayan |
| Joyce  | English |
| Ahmad  | Jabbar  |
| James  | Borg    |
+--------+---------+
5 rows in set (0.03 sec)


19.List the names of managers who have at least one dependent.

select Fname,Lname 
	from Employee 
	WHERE EXISTS 
	(select * from Dependent 
		WHERE Ssn = Essn) 
	    AND 
	    EXISTS (select * from Department 
		    WHERE Ssn = Mgr_ssn);

+----------+---------+
| Fname    | Lname   |
+----------+---------+
| Franklin | Wong    |
| Jennifer | Wallace |
+----------+---------+
2 rows in set (0.00 sec)

 
20.Retrieve the Social Security numbers of all employees who work on project numbers 1, 2, or 3.

select distinct Essn 
	from Works_on 
	WHERE Pno in (1,2,3);
+-----------+
| Essn      |
+-----------+
| 123456789 |
| 666884444 |
| 453453453 |
| 333445555 |
+-----------+
4 rows in set (0.10 sec)

 
21.Find the sum of the salaries of all employees, the maximum salary, the minimum salary, and the average salary. 

select SUM(salary),MAX(salary),MIN(salary),AVG(salary) 
	from Employee;

+-------------+-------------+-------------+-------------+
| SUM(salary) | MAX(salary) | MIN(salary) | AVG(salary) |
+-------------+-------------+-------------+-------------+
|      281000 |       55000 |       25000 |  35125.0000 |
+-------------+-------------+-------------+-------------+
1 row in set (0.00 sec)


22.Find the sum of the salaries of all employees of the ‘Research’ department, as well as the maximum salary, the minimum salary, and the average salary in this department.

select SUM(salary), MAX(salary), MIN(salary), AVG(salary) 
	from Employee,Department 
	WHERE Dno = Dnumber 
	AND 
	Dname = 'Research';

+-------------+-------------+-------------+-------------+
| SUM(salary) | MAX(salary) | MIN(salary) | AVG(salary) |
+-------------+-------------+-------------+-------------+
|      133000 |       40000 |       25000 |  33250.0000 |
+-------------+-------------+-------------+-------------+
1 row in set (0.09 sec)

 
23.Retrieve the total number of employees in the company and the number of employees in the ‘Research’ department.

#total number of employees in the company
	select COUNT(*) from Employee;
	+----------+
	| COUNT(*) |
	+----------+
	|        8 |
	+----------+
	1 row in set (0.04 sec)

#number of employees in the ‘Research’ department
	select COUNT(*) from Employee, Department 
		WHERE Dno = Dnumber 
		AND 
		Dname = 'Research';
	+----------+
	| COUNT(*) |
	+----------+
	|        4 |
	+----------+
	1 row in set (0.00 sec)


24.Count the number of distinct salary values in the database. 

select COUNT(distinct salary) 
		from Employee;
+------------------------+
| COUNT(distinct salary) |
+------------------------+
|                      6 |
+------------------------+
1 row in set (0.06 sec)


25.For each department, retrieve the department number, the number of employees in the department, and their average salary. 

select COUNT(*),Dno,AVG(salary) 
	from Employee 
	group by Dno;

+----------+------+-------------+
| COUNT(*) | Dno  | AVG(salary) |
+----------+------+-------------+
|        1 |    1 |  55000.0000 |
|        3 |    4 |  31000.0000 |
|        4 |    5 |  33250.0000 |
+----------+------+-------------+
3 rows in set (0.00 sec)


26.For each project, retrieve the project number, the project name, and the number of employees who work on that project. 

select COUNT(*) as Employee_NUM, Dno, AVG(salary) 
	from Employee 
    GROUP BY Dno;

+--------------+------+-------------+
| Employee_NUM | Dno  | AVG(salary) |
+--------------+------+-------------+
|            1 |    1 |  55000.0000 |
|            3 |    4 |  31000.0000 |
|            4 |    5 |  33250.0000 |
+--------------+------+-------------+
3 rows in set (0.00 sec)


27.For each project on which more than two employees work, retrieve the project number, the project name, and the number of employees who work on the project. 

select Pnumber,Pname,COUNT(*) 
	from Project,Works_on 
	WHERE Pnumber = Pno 
	GROUP BY Pnumber,Pname 
	HAVING COUNT(*)>2;
 
+---------+-----------------+----------+
| Pnumber | Pname           | COUNT(*) |
+---------+-----------------+----------+
|       2 | ProductY        |        3 |
|      10 | Computerization |        3 |
|      20 | Reorganization  |        3 |
+---------+-----------------+----------+
3 rows in set (0.03 sec)


28.For each project, retrieve the project number, the project name, and the number of employees from department 5 who work on the project. 

select Pnumber,Pname,COUNT(*)>2 
	from Project,Works_on,Employee 
	WHERE Pnumber=Pno 
	AND Ssn=Essn 
	AND Dno = 5 
	GROUP BY Pnumber,Pname;

+---------+-----------------+------------+
| Pnumber | Pname           | COUNT(*)>2 |
+---------+-----------------+------------+
|       1 | ProductX        |          0 |
|       2 | ProductY        |          1 |
|       3 | ProductZ        |          0 |
|      10 | Computerization |          0 |
|      20 | Reorganization  |          0 |
+---------+-----------------+------------+
5 rows in set (0.00 sec)


29.For each department that has more than five employees, retrieve the department number and the number of its employees who are making more than $40,000.

select Dnumber,COUNT(*) 
	FROM Department,Employee 
	WHERE Dnumber = Dno 
	AND salary > 40000 
	AND Dno in (select Dno 
			from Employee 
			group by Dno 
			Having COUNT(*)>5) 
	GROUP BY Dnumber;

Empty set (0.00 sec)


30.For each department whose average employee salary is more than $30,000, retrieve the department name and the number of employees working for that department. 

select Dname,COUNT(*) 
	from Department,Employee 
	WHERE Dnumber = Dno 
	GROUP BY Dname 
	HAVING AVG(salary) > 30000;

+----------------+----------+
| Dname          | COUNT(*) |
+----------------+----------+
| Administration |        3 |
| HeadQuarters   |        1 |
| Research       |        4 |
+----------------+----------+
3 rows in set (0.08 sec)


31.Suppose that we want the number of male employees in each department making more than $30,000, rather than all employees. 

select Dname,COUNT(*) 
	from Department,Employee 
	WHERE Dnumber=Dno 
	AND sex = 'M' 
	AND Dno in (select Dno 
			from Employee 
			group by Dno 
			having AVG(salary) > 30000) 
	GROUP BY Dname;

+----------------+----------+
| Dname          | COUNT(*) |
+----------------+----------+
| Administration |        1 |
| HeadQuarters   |        1 |
| Research       |        3 |
+----------------+----------+
3 rows in set (0.05 sec)


Specify the following views in SQL on the COMPANY database schema. 

a. A view that has thager name department name, mane, and manager salary for every department.

create view V1 as select Dname,CONCAT(Fname," ",Lname) as Manager_Name,Salary 
	from Department,Employee 
	WHERE Mgr_ssn = Ssn;

+----------------+------------------+--------+
| Dname          | Manager_Name     | Salary |
+----------------+------------------+--------+
| Research       | Franklin Wong    |  40000 |
| Administration | Jennifer Wallace |  43000 |
| HeadQuarters   | James Borg       |  55000 |
+----------------+------------------+--------+
3 rows in set (0.00 sec)

 
b. A view that has the employee name, supervisor name, and employee salary for each employee who works in the ‘Research’ department.  



c. A view that has the project name, controlling department name, number of employees, and total hours worked per week on the project for each project. 

create view V3 as select Pname,Dname,
		(select COUNT(*) 
		from Works_on W1 
		WHERE W1.Pno = P1.Pnumber) as Num_Employee,
		(select SUM(W2.Hours) 
		from Works_on W2 
		WHERE W2.Pno = P1.Pnumber 
		group by Pno) as Total_Hours 
	from Project P1,Department D1 
	WHERE P1.Dnum = D1.Dnumber;
	
+-----------------+----------------+--------------+-------------+
| Pname           | Dname          | Num_Employee | Total_Hours |
+-----------------+----------------+--------------+-------------+
| ProductX        | Research       |            2 |        52.5 |
| ProductY        | Research       |            3 |        37.5 |
| ProductZ        | Research       |            2 |          50 |
| Computerization | Administration |            3 |          55 |
| Reorganization  | Administration |            3 |          25 |
| Newbenefits     | Administration |            2 |          35 |
+-----------------+----------------+--------------+-------------+
6 rows in set (0.00 sec)



d. A view that has the project name, controlling department name, number of employees, and total hours worked per week on the project for each project with more than one employee working on it.

create view V4 as 
	select Pname,Dname,(select COUNT(*) 
				from Works_on W1 
				WHERE W1.Pno = P1.Pnumber) as Num_Employee, 
			   (select SUM(W2.Hours) 
				from Works_on W2 
				WHERE W2.Pno = P1.Pnumber 
				group by Pno) as Total_Hours 
	from Project P1,Department D1 
	WHERE P1.Dnum = D1.Dnumber 
	AND (select COUNT(*) 
		FROM Works_on W2 
		WHERE W2.Pno = P1.Pnumber 
		GROUP BY W2.Pno)>1;
+-----------------+----------------+--------------+-------------+
| Pname           | Dname          | Num_Employee | Total_Hours |
+-----------------+----------------+--------------+-------------+
| ProductX        | Research       |            2 |        52.5 |
| ProductY        | Research       |            3 |        37.5 |
| ProductZ        | Research       |            2 |          50 |
| Computerization | Administration |            3 |          55 |
| Reorganization  | Administration |            3 |          25 |
| Newbenefits     | Administration |            2 |          35 |
+-----------------+----------------+--------------+-------------+
6 rows in set (0.05 sec)