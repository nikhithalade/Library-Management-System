SELECT COUNT(*) AS total_authors FROM authors;

SELECT SUM(available_copies) AS available_copies FROM books;

SELECT MAX(total_copies) AS max_copies from books;

SELECT category_id, COUNT(*) AS total_books FROM books
GROUP BY category_id;

SELECT paid_status, COUNT(*) AS number_of_fines FROM Fines
GROUP BY paid_status;

SELECT member_id,COUNT(*) AS books_borrowed FROM borrowings
GROUP BY member_id
ORDER BY books_borrowed DESC;

SELECT category_id,COUNT(total_copies) AS total_copies FROM books
GROUP BY category_id
HAVING COUNT(total_copies)>=5;