SELECT title, total_copies
FROM books
WHERE total_copies = (
SELECT MAX(total_copies) 
FROM books
);

SELECT member_name
FROM members
WHERE member_id IN (
SELECT member_id
FROM borrowings
);

SELECT *
FROM fines
WHERE fine_amount > (
SELECT AVG(fine_amount)
FROM fines
);

SELECT member_name
FROM members m
WHERE EXISTS (
SELECT 1
FROM borrowings b
WHERE b.member_id = m.member_id
);

SELECT book_id, title, total_copies
FROM books
GROUP BY book_id, title, total_copies
HAVING total_copies >= (
SELECT MIN(total_copies)
FROM books
WHERE total_copies > 2
);