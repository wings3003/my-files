LOGICAL Operators:

Not equal != is used when we want to select cases that do not match a perticular property.

    e.g.
    SELECT * FROM books
    WHERE released_year != 2017;

Not like operator is used when we want to use a mismatch(no match) of falues

    SELECT * FROM books
    WHERE title NOT LIKE '%e%';

lookup SQL wiki for greater than '>', less than '<', less than or equal to '<='
'AND', 'OR' operators.

test