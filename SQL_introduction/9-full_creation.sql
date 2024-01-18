-- A script to create another table in a database within my MySQL server with multiple rows

--Creating the tables
CREATE TABLE second_table (
    id INT, 
    name VARCHAR(256), 
    score INT
)VALUES  -- adding the values
    ("1", "John", "10"),
    ("2", "Alex", "3"),
    ("3", "Bob", "14"),
    ("4", "George", "8");   
 