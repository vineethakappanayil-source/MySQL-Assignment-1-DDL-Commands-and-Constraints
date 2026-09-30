# MySQL Assignment 1 – DDL Commands & Constraints

## 📌 Overview

This Assighnment demonstrates **MySQL DDL (Data Definition Language)** commands and database constraints using an **Employee Database**.

The assignment covers:

- Database creation and recreation
- Table creation
- Table alteration
- Table renaming
- Table truncation
- Table and database deletion
- Primary Key
- Unique constraint
- Not Null constraint
- Check constraint
- Enum values
- Auto Increment
- Default values
- Foreign Key relationships

## 🗄️ Database Schema

**Database Name:** `employee`

### Tables

1. `departments`
2. `location`
3. `employees`

### Relationship

```text
departments
     │
     │ department_id
     ▼
 employees
     ▲
     │ location_id
     │
 location
```

The `employees` table is connected to both `departments` and `location` through foreign keys.

## 🏗️ Table Structure

### Departments

| Column | Data Type |
|---|---|
| department_id | INT |
| department_name | VARCHAR(100) |

Constraints:
- `department_id` uniquely identifies each department.
- `department_name` cannot be NULL.
- Duplicate department names are not allowed.

### Location

| Column | Data Type |
|---|---|
| location_id | INT |
| location | VARCHAR(30) |

Constraints:
- `location_id` is automatically generated.
- Location IDs are incremented sequentially.
- Location cannot be NULL.
- Duplicate locations are not allowed.

### Employees

| Column | Data Type |
|---|---|
| employee_id | INT |
| employee_name | VARCHAR(50) |
| gender | ENUM('M','F') |
| age | INT |
| hire_date | DATE |
| designation | VARCHAR(100) |
| department_id | INT |
| location_id | INT |
| salary | DECIMAL(10,2) |

Constraints:
- `employee_id` uniquely identifies each employee.
- `employee_name` is required.
- `gender` accepts only `M` or `F`.
- `age` must be 18 or above.
- `hire_date` automatically uses the current date when not specified.
- `department_id` references the Departments table.
- `location_id` references the Location table.

## 📝 DDL Commands Covered

### 1. CREATE

Creating the database and tables.

```sql
CREATE DATABASE employee;
```

```sql
CREATE TABLE departments (...);
```

```sql
CREATE TABLE location (...);
```

```sql
CREATE TABLE employees (...);
```

### 2. ALTER

The assignment includes:

- Add `email` column
- Modify `designation`
- Drop `age`
- Rename `hire_date` to `date_of_joining`

Example:

```sql
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
```

### 3. RENAME

Rename:

```text
Departments → Departments_Info
Location → Locations
```

Example:

```sql
RENAME TABLE departments TO departments_info;
```

### 4. TRUNCATE

Remove all records from the Employees table while retaining its structure.

```sql
TRUNCATE TABLE employees;
```

### 5. DROP

Drop the Employees table:

```sql
DROP TABLE employees;
```

Drop the complete database:

```sql
DROP DATABASE employee;
```

## 🔐 Constraints Demonstrated

| Constraint | Purpose |
|---|---|
| PRIMARY KEY | Uniquely identifies records |
| NOT NULL | Prevents NULL values |
| UNIQUE | Prevents duplicate values |
| CHECK | Restricts values based on a condition |
| ENUM | Restricts gender to `M` or `F` |
| AUTO_INCREMENT | Generates sequential IDs |
| DEFAULT | Automatically provides the current date |
| FOREIGN KEY | Establishes relationships between tables |

## 🎯 Learning Objectives

Through this assignment, I practiced:

- Creating and managing MySQL databases
- Creating tables using SQL
- Applying database constraints
- Modifying table structures
- Establishing relationships between tables
- Using DDL commands effectively
- Managing primary and foreign keys

## 🛠️ Tools Used

- **MySQL**
- **MySQL Workbench**
- **SQL**

## 📂 Project Structure

```text
MySQL-Assignment-1/
│
├── README.md
└── employee_database.sql
```

## 👩‍💻 Author

**Vineetha K**

Data Analytics Learner
