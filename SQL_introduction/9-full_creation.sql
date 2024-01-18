-- A script to create another table in a database within my MySQL server with multiple rows

-- CREATING THE TABLE
CREATE TABLE second_table (id INT, name VARCHAR(256), score INT);

-- INSERTING THE
INSERT INTO second_table (id, name, score)
VALUES
    (1, "John", 10),
    (2, "Alex", 3),
    (3, "Bob", 14),
    (4, "George", 8);   
 