LOGICAL Operators:

Not equal != is used when we want to select cases that do not match a perticular property.

    e.g.
    SELECT * FROM books
    WHERE released_year != 2017;

Not like operator is used when we want to use a mismatch(no match) of values

    SELECT * FROM books
    WHERE title NOT LIKE '%e%';

lookup SQL wiki for greater than '>', less than '<', less than or equal to '<='
'AND', 'OR', 'BETWEEN', 'NOT BETWEEN', 'LIKE', 'NOT LIKE' operators.

Constraints and ALTER TABLE

Constraints are rules you add to a table columns so that they fit to your perticular requirements following are some examples, however you there are many more constraints that you can make.
use can use CHECK keyword for constraints

UNIQUE is a constraint you can use when you want a column to be unique (no need to add this to primary key since it is unique by default).

    CREATE TABLE contacts (
	    name VARCHAR(100) NOT NULL,
        phone VARCHAR(15) NOT NULL UNIQUE
    );

    CREATE TABLE users (
    	username VARCHAR(20) NOT NULL,
        age INT CHECK (age > 0)  <-- this will check that 'age' will always be more than 0
    );
     
    CREATE TABLE palindromes (
      word VARCHAR(100) CHECK(REVERSE(word) = word) <--- this will check that the word entered here is always a palindrome
    );

you can add custom name to a constraint when you want to understand why a constraint failed/violated

    CREATE TABLE users2 (
        username VARCHAR(20) NOT NULL,
        age INT,
        **CONSTRAINT age_not_negative** CHECK (age >= 0)
    );

Altering Tables

ALTER TABLE is keyword used to modify a table, we can add/remove a column, change data type, add/remove constraint

Instead of having different commands for modifying different aspects of a table, they all reside under ALTER TABLE

    ALTER TABLE companies 
    ADD COLUMN phone VARCHAR(15);   <---- word COLUMN is optional in this syntax
     
    ALTER TABLE companies
    ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

    ALTER TABLE companies DROP COLUMN phone;

Two different ways to rename a table

    RENAME TABLE companies to suppliers;

    ALTER TABLE suppliers RENAME TO companies; 

Renaming a column

    ALTER TABLE companies
    RENAME COLUMN name TO company_name;


