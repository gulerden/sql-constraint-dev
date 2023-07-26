--1. ÖDEV
CREATE TABLE student (
	student_id INT UNIQUE,
	student_name VARCHAR(50) NOT NULL (student_name <> ''),
	age INT CHECK (age>18),
	department VARCHAR(50)
	
);

--2. ÖDEV
CREATE TABLE orders(
	order_id INT UNIQUE,
	customer_id INT NOT NULL,
	order_date DATE CHECK(order_date<CURRENT_DATE) ,
	total_amount INT CHECK (total_amount>0)
);

--3. ÖDEVSS
CREATE TABLE étudiants (
	etudiant_id INT PRIMARY KEY,
	etudiant_nom VARCHAR(50),
	section VARCHAR(50)
);

CREATE TABLE kurs(
	cours_id INT PRIMARY KEY ,
	cours_nom VARCHAR(50),
	credit INT,
	proffeseur VARCHAR(50),
	CONSTRAINT add_fk FOREIGN KEY (etudiant_id) REFERENCES étudiants(etudiant_id) 
);

--4 ÖDEV
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Employees tablosu
CREATE TABLE Employes (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    CONSTRAINT add_fk FOREIGN KEY (department_id) REFERENCES Department(department_id)
);


-- 5. ÖDEV
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50),
    nationality VARCHAR(50)
);


CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(200),
    author_id INT,
    CONSTRAINT add_fk FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
