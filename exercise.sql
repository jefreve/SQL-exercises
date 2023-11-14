CREATE TABLE books (
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
