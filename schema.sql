-- Database Schema for Student Course Management System

CREATE TABLE STUDENT (
    Student_ID VARCHAR(10) PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Department VARCHAR(50)
);

CREATE TABLE COURSE (
    Course_ID VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Credits INT NOT NULL
);

CREATE TABLE ENROLLMENT (
    Enrollment_ID VARCHAR(10) PRIMARY KEY,
    Student_ID VARCHAR(10),
    Course_ID VARCHAR(10),
    Enrollment_Date DATE,
    FOREIGN KEY (Student_ID) REFERENCES STUDENT(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
);

-- Sample Data Insertion
INSERT INTO STUDENT VALUES ('S101', 'Ananya Sharma', 'ananya@example.com', 'Computer Science');
INSERT INTO STUDENT VALUES ('S102', 'Rahul Verma', 'rahul@example.com', 'Electronics');

INSERT INTO COURSE VALUES ('CS101', 'Database Management Systems', 4);
INSERT INTO COURSE VALUES ('EC201', 'Digital Electronics', 3);

INSERT INTO ENROLLMENT VALUES ('E001', 'S101', 'CS101', '2026-01-15');
INSERT INTO ENROLLMENT VALUES ('E002', 'S102', 'EC201', '2026-01-16');
