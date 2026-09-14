DELIMITER //

CREATE PROCEDURE show_members()
BEGIN
SELECT * FROM members;
END //

DELIMITER ;

CALL show_members();

DELIMITER //

CREATE PROCEDURE find_book(IN b_id INT)
BEGIN
SELECT *
FROM books
WHERE book_id = b_id;
END //

DELIMITER ;

CALL find_book(2);

DELIMITER //

CREATE PROCEDURE books_between_years(
IN start_year INT,
IN end_year INT
)
BEGIN
SELECT title, publication_year
FROM books
WHERE publication_year BETWEEN start_year AND end_year;
END //

DELIMITER ;

CALL books_between_years(2000, 2025);

DELIMITER //

CREATE PROCEDURE add_member(
IN m_name VARCHAR(100),
IN m_email VARCHAR(100),
IN m_phone VARCHAR(15)
)
BEGIN
INSERT INTO members
(member_name, email, phone, membership_date)
VALUES
(m_name, m_email, m_phone, CURDATE());
END //

DELIMITER ;

CALL add_member(
'Kiran Kumar',
'kiran@gmail.com',
'9876543215'
);
