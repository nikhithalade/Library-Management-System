-- database creation
create database LibraryManagementSystem;

-- using database
use LibraryManagementSystem;
select database();

-- table creation
create table Authors(author_id INT PRIMARY KEY AUTO_INCREMENT,
author_name VARCHAR(100) NOT NULL,country VARCHAR(50));


-- creating categories table
create table Categories(category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(50) NOT NULL UNIQUE);


-- creating books table
create table Books(book_id INT PRIMARY KEY AUTO_INCREMENT,title VARCHAR(150)NOT NULL,author_id INT,category_id INT,
publication_year INT ,total_copies INT DEFAULT 1,available_copies INT DEFAULT 1,
FOREIGN KEY(author_id)REFERENCES authors(author_id),FOREIGN KEY(category_id)REFERENCES categories(category_id));



-- creating members table
create table members(member_id INT PRIMARY KEY AUTO_INCREMENT,member_name VARCHAR(100)NOT NULL,email VARCHAR(100) UNIQUE,
phone VARCHAR(15),membership_date DATE);


select * from members;

-- creating librarians table
create table librarians(librarian_id INT PRIMARY KEY AUTO_INCREMENT,
librarian_name VARCHAR(100) NOT NULL,email VARCHAR(100)UNIQUE);


-- creating borrowings table
CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    member_id INT NOT NULL,
    librarian_id INT,
    borrow_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id)REFERENCES books(book_id),
    FOREIGN KEY (member_id)REFERENCES members(member_id),
	FOREIGN KEY (librarian_id)REFERENCES librarians(librarian_id)
);

-- creating fines tables
create table fines(fine_id INT PRIMARY KEY AUTO_INCREMENT,borrowing_id INT NOT NULL,
fine_amount DECIMAL(10,2) DEFAULT 0,paid_status BOOLEAN DEFAULT FALSE,
FOREIGN KEY (borrowing_id) REFERENCES borrowings(borrowing_id));

