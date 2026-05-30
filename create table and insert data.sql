create table student(
	student_id serial primary key,
	name varchar(120),
	department varchar(122),
	mobile int,
	address varchar(120)
);

insert into student(name, department, mobile, address)
	values('Mukund', 'BCS', 9373375949, 'A.nagar'),
	('Ganesh','Data Science',901122458, 'Pune'),
	('Mangesh','BCA',404004134,'Pune');
	
ALTER TABLE student
ALTER COLUMN mobile TYPE VARCHAR(12); 	-- This Query For Datatype change of mobile column name

TRUNCATE TABLE student; -- All records delete from table

TRUNCATE TABLE student RESTART IDENTITY; -- for delete all records form table and restart identity in table

select * from student;



create table teacher(
	teacher_id serial primary key,
	name varchar(120),
	department varchar(120)
	
);

select * from teacher;