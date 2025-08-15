CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    quantity INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS IssuedBooks (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);


SET @title = 'Enter Book Title Here';
SET @auth = 'Enter Author Name Here';
SET @genre = 'Enter Genre Here';
SET @qty = 5;

INSERT INTO Books (title, author, genre, quantity)
VALUES (@title, @auth, @genre, @qty);

SET @mname = 'Enter Member Name Here';
SET @memail = 'Enter Email Here';
SET @mphone = 'Enter Phone Here';

INSERT INTO Members (name, email, phone)
VALUES (@mname, @memail, @mphone);


SET @mid = 1;  
SET @bid = 2;  
SET @idate = CURDATE(); 
SET @rdate = '2025-08-25'; 

INSERT INTO IssuedBooks (member_id, book_id, issue_date, return_date)
VALUES (@mid, @bid, @idate, @rdate);

SELECT * FROM Books;

SET @search_genre = 'Fiction';
SELECT * FROM Books WHERE genre = @search_genre;

SELECT ib.issue_id, m.name, b.title, ib.issue_date, ib.return_date
FROM IssuedBooks ib
JOIN Members m ON ib.member_id = m.member_id
JOIN Books b ON ib.book_id = b.book_id;

SELECT SUM(quantity) AS total_books FROM Books;

SET @return_id = 1;
DELETE FROM IssuedBooks WHERE issue_id = @return_id;
