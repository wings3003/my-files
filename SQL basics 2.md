String operations/functions

CONCAT() concatenates number of strings

	SELECT CONCAT (<column_name>,(column_name)) FROM <table_name>;
CONCAT_WS() ads firs argument as seperator.

SUBSTRING()/SUBSTR() returns smaller string from given string, 1st agrument is string, 2nd is starting point, 3rs is optional length.

	SELECT SUBSTRING (<column_name>,<start>,<lenght>);

REPLACE() replaces part of string with another string (case sensetive)

	e.g.
	SELECT REPLACE (abcdefg,cd,oo)
	->abooefg

REVERSE() to reverse string

	SELECT REVERSE(<column_name>);

LENGTH()/CHAR_LENGTH() returns string length. (LENGTH() returns in bytes, CHAR_LENGTH() in character length)

UPPER()/UCASE() returns string in upper case
LOWER()/LCASE() returns string in lower case.

Look for INSERT(), LEFT(),RIGHT(),REPEAT(),TRIM(). in MySQL wiki.

Use distinct() to remove duplicates form returned data

	SELECT DISTINCT <coumn_name> FROM <tabel_name>;

ORDER BY() for sorting

	SELECT <column_name>,<column_name> FROM <table_name> ORDER BY <column_name>;
	use ORDER BY <column_number>  (when you have that column returend in query only)
	
	add DESC at the end for descending order

LIMIT() to receive a limited result

	SELECT <column_name> FROM <table_name> LIMIT 5
give two args if required a specific part  LIMIT 3,5 <-- length

LIKE() is used to narrow down search

	SELECT <column_name> FROM <table_name> WHERE <column_name> LIKE '%<string>%'
	% is optional used for fuzzy/wild card search
	IF '_' is passed it means exactly that many letters/characters
	SELECT <column_name> FROM <table_name> WHERE <column_name> LIKE '____'
	would give cases with 4 letters

COUNT() is used for counting rows in a table

Use GROUP BY to group the data you have 

	e.g.
	SELECT author_lname,
	COUNT(*)
	FROM books
	GROUP BY released_year;

Use MIN() and MAX()for returning a numeric value

	SELECT author_lname, author_fname,
	COUNT(*) as books_written,
	MIN (released_year) AS earliest_release,
	MAX(released_year) AS latest_release
	FROM books
	GROUP BY author_lname, author_fname;

Use SUM() for addition of numeric columns

Use AVG() for selection average of numeric columns

Using sub query 

	SELECT CONCAT(author_fname, ' ', author_lname) AS author_name, pages
	FROM books
	WHERE pages = (SELECT MAX(pages) FROM books);

DATA TYPES

CHAR(<numeric_value>) sets the maximum length of variable to numeric_value.

it is useful to use this way of saving variables when you need to save memory and your data is not of varying length.

to store decimal values use DECIMAL, DOUBLE, FLOAT

Float stores up to 7 digits, after 7 digits we may get precision issues

Date and time data types

SQL uses YYYY-MM-DD as default date type and HH:MM:SS as defauld time type.

DATETIME default is 'YYYY-MM-DD HH:MM:SS'

