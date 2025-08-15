📚 Library Management System (SQL)
📌 Overview

This project is a Library Management System made using MySQL.
It helps to store and manage:

Books in the library

Members who borrow books

Issued and returned books

It uses user-entered values with MySQL variables so you can easily add books, add members, issue books, search, and return them without editing fixed SQL queries.

🛠 Features

Add a Book – Enter title, author, genre, and quantity.

Add a Member – Enter name, email, and phone number.

Issue a Book – Enter member ID, book ID, and return date.

View All Books – See all available books.

Search by Genre – Find books by a specific category.

View Issued Books – See which books are borrowed and by whom.

Return a Book – Remove issued entry when returned.

📂 Files

sheet.sql – Main SQL script to create tables and run operations.

▶ How to Use

Open MySQL command line or MySQL Workbench.

Copy and paste the SQL code from library_management.sql.

Change the SET @variable values to your inputs.

Run the queries to add books, members, issue or return books.

Use the search and view commands to check library records.

💡 Example
SET @title = 'The Alchemist';
SET @auth = 'Paulo Coelho';
SET @genre = 'Fiction';
SET @qty = 5;
INSERT INTO Books (title, author, genre, quantity) VALUES (@title, @auth, @genre, @qty);


This will add “The Alchemist” to the library.
