CREATE TABLE members (
    member_id INT PRIMARY KEY,
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
UPDATE books
SET available = available - 1
WHERE book_id = 4;

-- DELETE operation
INSERT INTO members (member_id, name, address, member_type, member_date, expiry_date, email, status)
VALUES (99, 'Temporary Member', 'Test City', 'Student', '2026-01-01', '2027-01-01', 'temp@gmail.com', 'ACTIVE');

DELETE FROM members
WHERE member_id = 99;
