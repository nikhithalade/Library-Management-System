DELIMITER //

CREATE TRIGGER set_available_copies
BEFORE INSERT ON books
FOR EACH ROW
BEGIN
SET NEW.available_copies = NEW.total_copies;
END //

DELIMITER ;

INSERT INTO books
(title, author_id, category_id, publication_year, total_copies)
VALUES
('Python Basics', 1, 2, 2025, 5);

DELIMITER //

CREATE TRIGGER book_return
AFTER UPDATE ON borrowings
FOR EACH ROW
BEGIN
    IF OLD.return_date IS NULL AND NEW.return_date IS NOT NULL THEN
        UPDATE books
        SET available_copies = available_copies + 1
        WHERE book_id = NEW.book_id;
    END IF;
END //

DELIMITER ;

UPDATE borrowings
SET return_date = '2026-09-13'
WHERE borrowing_id = 1;

DELIMITER //

CREATE TRIGGER restore_book_copy
AFTER DELETE ON borrowings
FOR EACH ROW
BEGIN
UPDATE books
SET available_copies = available_copies + 1
WHERE book_id = OLD.book_id;
END //

DELIMITER ;