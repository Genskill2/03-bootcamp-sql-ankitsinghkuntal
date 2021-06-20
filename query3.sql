

select title from books 
join books_subjects on books.id=books_subjects.book
where books_subjects.subject=4 or books_subjects.subject=8;
