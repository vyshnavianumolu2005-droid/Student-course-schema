# Student Course Management System - Relational Schema Design
This project demonstrates the design of a Relational Database Schema for a **Student Course Management System**. It covers the fundamental concepts of relational databases, including relations, attributes, primary keys, foreign keys, and sample data tuples.
---
## Conceptual Definitions
* **What is a Relation?**  
  A relation is a table in a relational database management system (RDBMS) that holds data structured into rows and columns.
* **What is an Attribute?**  
  An attribute is a named column/property in a relation that describes a specific piece of data for each entry (e.g., `Student_Name`, `Email`).
* **What is a Tuple?**  
  A tuple represents a single row or record in a relation containing specific values for each attribute.
* **What is a Relational Schema?**  
  A relational schema defines the logical structure and organization of data within a relational database, specifying table names, attribute names, data types, and primary/foreign key constraints.
---
## Primary Keys Used in Each Relation

| Relation Name | Primary Key | Description |
| :--- | :--- | :--- |
| **STUDENT** | `Student_ID` | Uniquely identifies each student in the system. |
| **COURSE** | `Course_ID` | Uniquely identifies each course available. |
| **ENROLLMENT** | `Enrollment_ID` | Uniquely identifies each course registration record. |

---
## Relationships Between Relations
The **ENROLLMENT** relation acts as an associative entity establishing a **many-to-many relationship** between `STUDENT` and `COURSE`:
* **`Student_ID` in ENROLLMENT**: Refers to `Student_ID` in the `STUDENT` relation (Foreign Key).
* **`Course_ID` in ENROLLMENT**: Refers to `Course_ID` in the `COURSE` relation (Foreign Key).
---
## Relational Schema & Sample Data
### 1. STUDENT Relation
* **Attributes:** `Student_ID` (Primary Key), `Student_Name`, `Email`, `Department`

| Student_ID | Student_Name | Email | Department |
| :--- | :--- | :--- | :--- |
| STU001 | Rahul Sharma | rahul.s@example.com | Computer Science |
| STU002 | Vaishnavi Anumolu | vaishnavi.a@example.com | Information Technology |
| STU003 | Priya Patel | priya.p@example.com | Electrical Engineering |
| STU004 | Amit Verma | amit.v@example.com | Mechanical Engineering |
| STU005 | Sneha Reddy | sneha.r@example.com | Data Science |

---
### 2. COURSE Relation
* **Attributes:** `Course_ID` (Primary Key), `Course_Name`, `Trainer_Name`, `Duration`

| Course_ID | Course_Name | Trainer_Name | Duration |
| :--- | :--- | :--- | :--- |
| CRS101 | Full Stack Web Development | Mahesh Pelluri | 3 Months |
| CRS102 | Database Management Systems | Suresh Kumar | 2 Months |
| CRS103 | Python Programming | Anitha Rao | 1.5 Months |

---
### 3. ENROLLMENT Relation
* **Attributes:** `Enrollment_ID` (Primary Key), `Student_ID` (Foreign Key), `Course_ID` (Foreign Key), `Enrollment_Date`

| Enrollment_ID | Student_ID | Course_ID | Enrollment_Date |
| :--- | :--- | :--- | :--- |
| ENR501 | STU001 | CRS101 | 2026-01-10 |
| ENR502 | STU002 | CRS101 | 2026-01-12 |
| ENR503 | STU002 | CRS102 | 2026-01-15 |
| ENR504 | STU003 | CRS103 | 2026-01-18 |
| ENR505 | STU005 | CRS101 | 2026-01-20 |

---
## Project Structure
```text
student-course-schema/
├── README.md
├── student_relation.png
├── course_relation.png
└── enrollment_relation.png
