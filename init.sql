-- Create Authors table
CREATE TABLE Authors (
    AuthorID SERIAL PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

-- Create Books table
CREATE TABLE Books (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT REFERENCES Authors(AuthorID),
    PublishedYear INT,
    Price DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO
    Authors (AuthorName)
VALUES
    ('Author 1'),
    ('Author 2'),
    ('Author 3');

INSERT INTO
    Books (Title, AuthorID, PublishedYear, Price)
VALUES
    ('Book 1', 1, 2020, 25.99),
    ('Book 2', 2, 2021, 19.99),
    ('Book 3', 3, 2022, 29.99);
