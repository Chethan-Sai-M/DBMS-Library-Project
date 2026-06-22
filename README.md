# DBMS Library Project

## Overview

This repository contains a simple library management system implemented using SQL. It includes database creation scripts, schema definitions, business queries, and advanced views for catalog and borrowing reports.

## Repository Structure

- `Library_Management.sql` - Main SQL script for database creation and core table definitions, schema updates, and example DML operations.
- ` schema/03_borrow_records.sql` - Borrow records table schema including foreign keys and indexes. Note: this directory currently contains a leading space in its name.
- `queries/01_business_queries.sql` - Business query examples demonstrating joins, nested queries, aggregation, GROUP BY/HAVING, and view usage.
- `views/01_advanced_views.sql` - Views for book catalog, active borrowings, and member fine summary.

## Key Components

### Main SQL Script

`Library_Management.sql` includes:
- `CREATE DATABASE library_management_system`
- `publishers` table with constraints
- `members` table schema and additional ALTER statements for `email` and `status`
- example UPDATE, INSERT, and DELETE operations
- index creation for books and publishers

### Borrow Records

` schema/03_borrow_records.sql` defines:
- `borrow_records` table with `issue_id`, `book_id`, `member_id`, `issue_date`, `due_date`, and `return_date`
- foreign key relationships to `books` and `members`
- validation checks for date consistency
- indexes on `member_id` and `due_date`

### Views

`views/01_advanced_views.sql` defines:
- `vw_book_catalog` for a book catalog joined with publisher details
- `vw_active_borrowings` for current borrowings and overdue tracking
- `vw_member_fine_summary` for aggregate fine counts and unpaid amounts

### Business Queries

`queries/01_business_queries.sql` contains examples such as:
- join query for books and publishers
- nested query to find books priced above average
- aggregate query for book statistics
- GROUP BY/HAVING query for publishers with more than three books
- view usage examples

## Setup Instructions

1. Start your MySQL or MariaDB server.
2. Load the main SQL schema:

```bash
mysql -u root -p < Library_Management.sql
```

3. Load the borrow records schema:

```bash
mysql -u root -p library_management_system < ' schema/03_borrow_records.sql'
```

> Note: The ` schema/` directory currently includes a leading space in its name. If you rename it to `schema/`, update the command accordingly.

## Usage

- Query the book catalog:

```sql
SELECT * FROM vw_book_catalog;
```

- View active borrowing transactions:

```sql
SELECT * FROM vw_active_borrowings;
```

- Get member fine summaries:

```sql
SELECT * FROM vw_member_fine_summary;
```

## Notes

- The current repository structure includes sample DDL, DML, and view definitions.
- Some object definitions (such as `books`) are referenced in queries and views, so ensure these tables exist before loading dependent scripts.
- This README can be updated later to add sample data or deployment instructions.
