SELECT * FROM books;


SELECT * FROM books
ORDER BY book_title ASC;


SELECT * FROM books
ORDER BY book_author DESC;


SELECT * FROM books
ORDER BY book_category ASC;


SELECT book_id,
       book_title,
       book_category
FROM books
ORDER BY book_id ASC;


SELECT book_id,
       book_title,
       book_category
FROM books
ORDER BY book_id DESC
LIMIT 5;


SELECT book_title,
       book_category,
       book_id
FROM books
WHERE book_id = 1;


UPDATE books
SET book_title = 'My Hero Academia',
    book_category = 'Anime'
WHERE book_id = 1;