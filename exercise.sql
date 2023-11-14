CREATE TABLE IF NOT EXISTS books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    published_year INTEGER NOT NULL,
    isbn VARCHAR(255) NOT NULL,
    price INTEGER NOT NULL,
    rating VARCHAR,
    stock_count INTEGER NOT NULL
);

-- exercise 2
ALTER TABLE books
ADD COLUMN publisher VARCHAR(255) NOT NULL,
ADD COLUMN number_of_pages INTEGER NOT NULL DEFAULT 0;

--exercise 3

INSERT INTO books
(title, author, genre, published_year,
isbn, price, rating, stock_count, publisher, number_of_pages)
VALUES ('A Journey to the Center',
'Jules Verne', 'Adventure',
1864, '1234567890123', 12.99, 4.5, 10,
'Verne Publishing', 350);

INSERT INTO books
(title, author, genre, published_year,
isbn, price, rating, stock_count, publisher, number_of_pages)
VALUES ('War and Peace',
'Leo Tolstoy', 'Historical',
1869, '1234567890124', 14.99, 4.8, 5,
'Tolstoy Prints', 1200);

INSERT INTO books
(title, author, genre, published_year,
isbn, price, rating, stock_count, publisher, number_of_pages)
VALUES ('Whispers of the Wind',
'Amelia Blackburn', 'Romance',
1982, '1234567890125', 9.99, 4.2, 20,
'Blackburn House', 275);

INSERT INTO books
(title, author, genre, published_year,
isbn, price, rating, stock_count, publisher, number_of_pages)
VALUES ('The Galactic Odyssey',
'Orion Starfield', 'Science Fiction',
2005, '1234567890126', 19.99, 4.9, 15,
'Nebula Press', 450);

-- exercise 4

UPDATE books SET price=12.99, stock_count=4
WHERE title='War and Peace' and author='Leo Tolstoy';

-- exercise 5

GRANT SELECT, UPDATE ON books TO 'martin'@'localhost';

-- exercise 6

REVOKE UPDATE ON books TO 'martin'@'localhost';

-- exercise 7

BEGIN TRANSACTION;
DELETE FROM books WHERE book_id = 101;
COMMIT;

-- exercise 8

BEGIN TRANSACTION;
DELETE FROM books WHERE book_id = 103;
ROOLBACK;
