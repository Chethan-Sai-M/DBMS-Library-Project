-- Library Management System
-- DBMS Capstone Project - Simple Student Version
-- This SQL follows the given ER diagram: Books, Publisher, Member and Borrow.

CREATE DATABASE library_management_system;

USE library_management_system;

CREATE TABLE publishers (
    pub_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(150) NOT NULL,
    member_type VARCHAR(30) NOT NULL,
    member_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    CHECK (expiry_date > member_date)
);

ALTER TABLE members ADD email VARCHAR(100);

ALTER TABLE members ADD status VARCHAR(20) DEFAULT 'ACTIVE';

-- UPDATE operation
UPDATE books SET available = available - 1 WHERE book_id = 4;

-- ALTER operation
ALTER TABLE books ADD shelf_no VARCHAR(20);

-- Indexes
CREATE INDEX idx_book_title ON books (title);

CREATE INDEX idx_book_publisher ON books (pub_id);