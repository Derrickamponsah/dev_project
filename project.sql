--  Students table
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);

-- Insert sample data for Students
INSERT INTO Students (student_id, first_name, last_name, email)
VALUES (1111111, 'Alice', 'Ansah', 'aliceansah@ug.edu.gh.com'),
       (1111112, 'Bob', 'Marley', 'marleybob@ug.edu.gh.com'),
       (1111113, 'Samuel', 'Kusi', 'kusisamuel@ug.edu.gh.com'),
       (1111114, 'Eric', 'Merah', 'meraheric@ug.edu.gh.com'),
       (1111115, 'Otabil', 'Mensah', 'mensahotabil@ug.edu.gh.com'),
       (1111116, 'Erica', 'Koomson', 'koomsonerica@ug.edu.gh.com'),
       (1111117, 'Ryan', 'Mills', 'millsryan@ug.edu.gh.com'),
       (1111118, 'John', 'Curl', 'curljohn@ug.edu.gh.com'),
       (1111119, 'Blessing', 'Ampong', 'ampongblessing@ug.edu.gh.com'),
       (1211111, 'Prince', 'Asiamah', 'asiamahprince@ug.edu.gh.com');

-- Courses table
CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(100) NOT NULL,
  course_code VARCHAR(20) UNIQUE NOT NULL
);

-- Insert sample data for Course
INSERT INTO Courses (course_id, course_name, course_code)
VALUES (1, 'Computer Systems Design', 'CPEN202'),
       (2, 'Data Structures and Algorithms', 'CPEN204'),  
       (3, 'Linear Circuit', 'CPEN206'),
       (4, 'Software Engineering', 'CPEN208'),
       (5, 'Data Communication', 'CPEN212'),
       (6, 'Differential Equation', 'SENG202'),
       (7, 'Academic Writing', 'CBAS');  


--  Fees table
CREATE TABLE Fees (
  fee_id INT PRIMARY KEY,
  student_id INT NOT NULL,
  semester VARCHAR(20) NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  payment_date DATE,
  FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Insert sample data for Fees
INSERT INTO Fees (fee_id, student_id, semester, amount, payment_date)
VALUES (3001, 1111111, 'Year 2024', 1000.00, NULL),  -- Outstanding fee
       (3002, 1111112, 'Year 2024', 800.00, '2024-10-31'), -- Fees paid 
       (3003, 1111113, 'Year 2024', 800.00, '2024-10-22'), -- Fees paid
       (3004, 1111114, 'Year 2024', 800.00, '2024-10-21'), -- Fees paid
       (3005, 1111115, 'Year 2024', 800.00, '2024-10-21'), -- Fees paid
       (3006, 1111116, 'Year 2024', 800.00, '2024-10-21'), -- Fees paid
       (3007, 1111117, 'Year 2024', 800.00, '2024-10-23'), -- Fees paid
       (3008, 1111118, 'Year 2024', 1200.00, NULL),  -- Outstanding fee
       (3009, 1111119, 'Year 2024', 800.00, '2024-10-21'), -- Fees paid
       (3100, 1211111, 'Year 2024', 800.00, '2024-10-21'); -- Fees paid


-- Enrollment table
CREATE TABLE Enrollment (
  enrollment_id INT PRIMARY KEY,
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert sample data for Enrollment 
INSERT INTO Enrollment(enrollment_id, student_id, course_id)
VALUES (4001, 1111111, 1),
       (4002, 1111112, 2),
       (4003, 1111112, 3),  -- Bob Marley enrolled in both courses
	   (4004, 1111114, 4),
	   (4005, 1111115, 5),
	   (4006, 1111116, 6),
	   (4007, 1111117, 7),
	   (4008, 1111118, 7),
	   (4009, 1111116, 6);
	   
-- 5. Lectures table
CREATE TABLE Lectures (
  lecture_id INT PRIMARY KEY,
  lecture_name VARCHAR(100) NOT NULL
);

-- Insert sample data for Lectures 
INSERT INTO Lectures (lecture_id, lecture_name)
VALUES (5001, 'Introduction to Devops'),
       (5002, '	Digital System Design'),
	   (5003, 'Introduction to Data Algorithm'),
	   (5004, 'Non-linear components');

-- TA table
CREATE TABLE TA (
  ta_id INT PRIMARY KEY,
  ta_name VARCHAR(200),
  ta_email VARCHAR(500)
);

-- insert into TA table
INSERT INTO TA (ta_id, ta_name, ta_email)
VALUES (6001,'Kobbie Bamzy', 'bamzykobbie@gmail.com'),
       (6002,'Efo Anopa', 'anopaefo@gmail.com'),
	   (6003,'Richard Yankson', 'yanksonrichard@gmail.com');
    

-- Lecture_Assignment table
CREATE TABLE Lecture_Assignment (
  assignment_id INT PRIMARY KEY,
  lecture_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (lecture_id) REFERENCES Lectures(lecture_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert sample data for Lecture_Assignment 
INSERT INTO Lecture_Assignment (assignment_id, lecture_id, course_id)
VALUES (7001, 5001, 1),
       (7002, 5002, 2),
	   (7003, 5003, 3);
	  
CREATE TABLE TA_Assignment (
  assignment_id INT PRIMARY KEY,
  ta_id INT NOT NULL,
  FOREIGN KEY (assignment_id) REFERENCES Lecture_Assignment(assignment_id),
  FOREIGN KEY (ta_id) REFERENCES TA(ta_id)
);

SELECT* FROM Students
SELECT* FROM Courses
SELECT* FROM TA
SELECT* FROM Lectures
SELECT* FROM Lecture_Assignment
SELECT* FROM TA_Assignment
