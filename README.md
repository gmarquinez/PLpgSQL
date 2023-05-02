# PostgreSQL

PL/pgSQL is a procedural programming language used in PostgreSQL to create stored functions, procedures, and triggers within the database.


# Requirements
In order to start running the program you must have the following requirements:

+ Git
+ Github
+ PostgreSQL

# Database Biblioteca 
## We implement the following

## Function

In particular, the function performs an SQL query that joins the "books", "lent_books", "people" and "library" tables to obtain the data for the books checked out by the person specified in the parameters. The query uses the INNER JOIN clause to join the tables so that records corresponding to the same person in all the tables are returned. Then, the query is filtered on the condition that the person has the specified first name, last name, and NIF.

The table has the following columns: "title", "author", "publisher", "loan_date", "return_date" and "library". Each row of the table represents a book that the person has checked out, with the information corresponding to said book and the library in which it is located.

The function uses "RETURN QUERY" to return the query results as a table.



## Procedure
The following procedure updates the stock of books available in a library after a book is checked out or returned.

## Cursor
The cursor "cur_libros" is defined for the table "libros". The "process_books" function uses this cursor to iterate over all the records in the "books" table and perform some operation on each of them.


## Trigger 

This trigger fires after a record is inserted into the checkout table and executes the update_copies_available() function. This function updates the books table by subtracting one unit from the number of available copies of the borrowed book.



