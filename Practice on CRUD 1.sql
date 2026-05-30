-- CREATE EMPLOYEE TABLE
CREATE TABLE IF NOT EXISTS employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(15),
	date_of_birth DATE NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	phone VARCHAR(10),
	address TEXT,
	city VARCHAR(50),
	state VARCHAR(50),
	pincode VARCHAR(6),
	department VARCHAR(50),
	designation VARCHAR(20),
	salary NUMERIC(10,2) NOT NULL,
	hire_date DATE NOT NULL,
	work_location VARCHAR(150),
	employment_type VARCHAR(100),
	status VARCHAR(20),
	experience_years INT,
	emergency_contact VARCHAR(15),
	blood_group VARCHAR(10),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- INSERT INTO 'employee' TABLE VALUES 
INSERT INTO employee 
(first_name,last_name,gender,date_of_birth,email,phone,address,city,state,pincode,department,designation,salary,hire_date,work_location,employment_type,status,experience_years,emergency_contact,blood_group)
VALUES
('Aarav','Sharma','Male','1998-01-10','emp1@gmail.com','9000000001','MG Road','Pune','Maharashtra','411001','IT','Developer',55000,'2023-01-10','Pune','Full-Time','Active',2,'8000000001','O+'),
('Priya','Patil','Female','1997-02-11','emp2@gmail.com','9000000002','FC Road','Mumbai','Maharashtra','411002','HR','Executive',45000,'2022-02-11','Mumbai','Full-Time','Active',3,'8000000002','A+'),
('Rahul','Verma','Male','1996-03-12','emp3@gmail.com','9000000003','Baner','Delhi','Delhi','110001','Sales','Manager',65000,'2021-03-12','Delhi','Full-Time','Hold',5,'8000000003','B+'),
('Sneha','Joshi','Female','1995-04-13','emp4@gmail.com','9000000004','Kothrud','Pune','Maharashtra','411004','Finance','Accountant',50000,'2020-04-13','Pune','Part-Time','Active',4,'8000000004','AB+'),
('Rohan','Kulkarni','Male','1994-05-14','emp5@gmail.com','9000000005','Aundh','Bangalore','Karnataka','560001','IT','Backend Dev',70000,'2019-05-14','Bangalore','Full-Time','Active',6,'8000000005','O-'),
('Neha','Deshmukh','Female','1993-06-15','emp6@gmail.com','9000000006','Wakad','Hyderabad','Telangana','500001','Marketing','SEO',48000,'2018-06-15','Hyderabad','Contract','Block',7,'8000000006','A-'),
('Karan','Yadav','Male','1992-07-16','emp7@gmail.com','9000000007','Camp','Chennai','Tamil Nadu','600001','Support','Engineer',40000,'2017-07-16','Chennai','Full-Time','Active',8,'8000000007','B-'),
('Pooja','Mehta','Female','1991-08-17','emp8@gmail.com','9000000008','Hadapsar','Nagpur','Maharashtra','440001','Testing','QA',47000,'2016-08-17','Nagpur','Intern','Active',9,'8000000008','O+'),
('Vikas','Singh','Male','1990-09-18','emp9@gmail.com','9000000009','Karve Nagar','Nashik','Maharashtra','422001','Admin','Admin',52000,'2015-09-18','Nashik','Full-Time','Hold',10,'8000000009','A+'),
('Anjali','Shinde','Female','1999-10-19','emp10@gmail.com','9000000010','Shivaji Nagar','Pune','Maharashtra','411005','IT','Frontend Dev',60000,'2024-01-19','Pune','Full-Time','Active',1,'8000000010','B+'),

('Aditya','Patel','Male','1998-11-20','emp11@gmail.com','9000000011','Street 1','Surat','Gujarat','395001','IT','Developer',51000,'2023-02-10','Surat','Full-Time','Active',2,'8000000011','O+'),
('Simran','Kaur','Female','1997-12-21','emp12@gmail.com','9000000012','Street 2','Amritsar','Punjab','143001','HR','Recruiter',43000,'2022-03-15','Amritsar','Full-Time','Active',3,'8000000012','A+'),
('Arjun','Reddy','Male','1996-01-22','emp13@gmail.com','9000000013','Street 3','Hyderabad','Telangana','500002','Sales','Executive',39000,'2021-04-12','Hyderabad','Part-Time','Active',4,'8000000013','B+'),
('Kavya','Iyer','Female','1995-02-23','emp14@gmail.com','9000000014','Street 4','Chennai','Tamil Nadu','600002','Finance','Analyst',62000,'2020-05-11','Chennai','Full-Time','Block',5,'8000000014','AB+'),
('Manish','Gupta','Male','1994-03-24','emp15@gmail.com','9000000015','Street 5','Jaipur','Rajasthan','302001','IT','Tester',46000,'2019-06-19','Jaipur','Contract','Active',6,'8000000015','O-'),
('Nikita','More','Female','1993-04-25','emp16@gmail.com','9000000016','Street 6','Kolhapur','Maharashtra','416001','Support','Engineer',42000,'2018-07-22','Kolhapur','Full-Time','Hold',7,'8000000016','A-'),
('Sagar','Pawar','Male','1992-05-26','emp17@gmail.com','9000000017','Street 7','Satara','Maharashtra','415001','Admin','Officer',38000,'2017-08-13','Satara','Full-Time','Active',8,'8000000017','B-'),
('Ritika','Agarwal','Female','1991-06-27','emp18@gmail.com','9000000018','Street 8','Indore','Madhya Pradesh','452001','Marketing','Manager',68000,'2016-09-14','Indore','Full-Time','Active',9,'8000000018','O+'),
('Yash','Chavan','Male','1990-07-28','emp19@gmail.com','9000000019','Street 9','Solapur','Maharashtra','413001','Testing','QA',49000,'2015-10-10','Solapur','Part-Time','Block',10,'8000000019','A+'),
('Meera','Nair','Female','1999-08-29','emp20@gmail.com','9000000020','Street 10','Kochi','Kerala','682001','IT','UI Designer',58000,'2024-02-01','Kochi','Intern','Active',1,'8000000020','B+');


SELECT * FROM employee;

-- CHANGE 'employee_id' COLUMN NAME TO 'emp_id'
ALTER TABLE employee
RENAME COLUMN employee_id TO emp_id;

-- DELETE ALL RECORDS FROM TABLE;
TRUNCATE TABLE employee;

-- DELETE RECORDS AND RESTART IDENTITY (sequence of table id)
TRUNCATE TABLE employee RESTART IDENTITY;

-- SHOW DATA IN DESCENDING ORDER
SELECT * FROM employee ORDER BY emp_id DESC;

-- CHAGE GENDER OF IT DEPARTMENT EMP 'MALE'
UPDATE employee
SET gender = 'Male'
WHERE department = 'IT';

-- CHANGE THE DATATYPE OF SALARY COLUMN TO 'INTGER'
ALTER TABLE employee
ALTER COLUMN salary TYPE INTEGER
USING salary :: INTEGER;


-- SELECT ONLY frist_name, last_name, gender & department
SELECT first_name, last_name, gender, department FROM employee;

-- DELETE COLUMN 'blood_group' INTO employee TABLE
ALTER TABLE employee 
DROP COLUMN blood_group;

-- INCREASE SALARY 10% WHOSE DEPARTMENT IS 'IT'
UPDATE employee
SET salary = salary+(salary*0.1)
WHERE department = 'IT';

-- INCREASE experience_years BY 3 WHOSE frist_name START LIKE M
UPDATE employee
SET experience_years = experience_years+3
WHERE first_name LIKE 'M%';

select * from employee;

-- ADD NEW COLUMN 'blood_group'
ALTER TABLE employee
ADD COLUMN boold_group VARCHAR(10);

-- FETCH THE EMPLOYEE WHO HAVE 4+ YEAR EXPERIENCE
SELECT first_name, department, experience_years FROM employee
WHERE experience_years > 4;



