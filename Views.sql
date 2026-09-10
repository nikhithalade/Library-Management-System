CREATE VIEW indian_authors 
AS
SELECT * FROM authors
WHERE country = 'India';

CREATE VIEW returned_books AS
SELECT *
FROM borrowings
WHERE return_date IS NOT NULL;

CREATE VIEW books_with_more_copies 
AS
SELECT title, total_copies
FROM books
WHERE total_copies > 3;

CREATE VIEW book_information 
AS 
SELECT b.title,b.publication_year,b.total_copies,c.category_name
FROM books b,categories c
WHERE b.category_id=c.category_id;

