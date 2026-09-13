SELECT book_id,CONCAT(title, ' - ', publication_year) 
AS BOOK_INFO
FROM books
WHERE publication_year BETWEEN 2000 AND 2010;

SELECT TRIM(member_name) AS MEMBER_NAME
FROM members;

SELECT title,LEFT(title, 5) AS SHORT_TITLE
FROM books;

SELECT title,LENGTH(title) AS TITLE_LENGTH
FROM books
WHERE LENGTH(title) > 10;

SELECT SUBSTR(title, 1, 5) AS SHORT_TITLE
FROM books
WHERE publication_year > 2000;