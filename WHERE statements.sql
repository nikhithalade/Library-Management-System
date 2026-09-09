SELECT * FROM books
WHERE publication_year = 2004;

SELECT * FROM books
WHERE total_copies >= 5;

SELECT title,publication_year FROM books
WHERE available_copies > 5
AND total_copies >= 5;

SELECT * FROM members
WHERE member_name = 'Rahul Kumar';

SELECT *
FROM Members
WHERE member_name LIKE '%a';

SELECT * FROM authors
WHERE country = 'India';

SELECT author_name as AUTHOR,country FROM authors
WHERE country IN ('India', 'United Kingdom');

SELECT borrow_date FROM borrowings
WHERE return_date IS NULL;

SELECT book_id,publication_year,total_copies FROM books
WHERE publication_year BETWEEN "1993" AND "2010";