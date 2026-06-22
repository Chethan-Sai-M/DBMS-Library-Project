-- Library Management System
-- DBMS Capstone Project - Simple Student Version
-- This SQL follows the given ER diagram: Books, Publisher, Member and Borrow.

DROP DATABASE IF EXISTS library_management_system;
CREATE DATABASE library_management_system;
USE library_management_system;


CREATE TABLE publishers (
    pub_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(150) NOT NULL
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    available INT NOT NULL,
    pub_id INT NOT NULL,
    FOREIGN KEY (pub_id) REFERENCES publishers(pub_id),
    CHECK (price >= 0),
    CHECK (available >= 0)
);

-- ALTER operation
ALTER TABLE books ADD shelf_no VARCHAR(20);

-- Indexes
CREATE INDEX idx_book_title ON books(title);
CREATE INDEX idx_book_publisher ON books(pub_id);