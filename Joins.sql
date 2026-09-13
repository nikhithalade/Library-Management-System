SELECT books.title,authors.author_name FROM books
INNER JOIN authors
ON books.author_id = authors.author_id;

SELECT books.title,authors.author_name,categories.category_name
FROM books
JOIN authors
ON books.author_id = authors.author_id
JOIN categories
ON books.category_id = categories.category_id;

SELECT authors.author_name,books.title
FROM authors
LEFT JOIN books
ON authors.author_id = books.author_id;

SELECT members.member_name,borrowings.borrowing_id,borrowings.borrow_date
FROM members
RIGHT JOIN borrowings
ON members.member_id = borrowings.member_id;

SELECT authors.author_name,categories.category_name
FROM authors
CROSS JOIN categories;