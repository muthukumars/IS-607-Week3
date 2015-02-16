select * from authors;
select * from books;

select t1.autho_id, t1.firstname, t1.lastname, t2.book_id, t2.title from authors t1, books t2 where t1.autho_id=t2.author_id;
