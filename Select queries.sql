select * from authors;
select * from books;
select * from borrowings;
select * from fines;
select * from librarians;
select * from members;

select title,publication_year from books;

select borrowing_id,borrow_date,return_date from borrowings;

select fine_id,fine_amount from fines;

select member_name,membership_date from members;