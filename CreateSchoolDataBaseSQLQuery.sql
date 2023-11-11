create Database SchoolDB

use SchoolDB

Create Table Subjects 
(
  subjectId int primary key Identity (1,1),
  subjectName varchar(50),
  TeacherName varchar(50)
)
--Subject Table
INSERT INTO Subjects VALUES
    (1, 'Mathematics','Vikram'),
    (2, 'Science','Sree'),
    (3, 'History','Surya'),
    (4, 'English','Vicky'),
    (5, 'Computer Science','Vikka')


Create Table Classes 
(
  ClassId int primary key Identity (1,1),
  ClassName varchar(50),
  ClassFloor int
)
INSERT INTO Classes VALUES
    ('Class 1',0),
    ('Class 2',0),
    ('Class 3',1),
    ('Class 4',1),
    ('Class 5',2),
	('Class 6',2),
    ('Class 7',2)

create Table Student
(
  RollNo int primary key Identity (1,1),
  studentName varchar(50),
  classId int foreign key references Classes(ClassId),
  subjectId int foreign key references Subjects(subjectId) 
)

INSERT into Student Values 
('Vinay',3,1),
('Lokesh',1,4),
('Vamsi',2,3),
('Loki',4,1),
('Tony Stark',7,5),
('Natasha',5,3),
('Nick Fury',6,4),
('Peter',7,2)

select * from Subjects
select * from Classes
select * from Student