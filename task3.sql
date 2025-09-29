Got it 👍
Let’s finish this task step by step with SQL examples so you can clearly see how to use INSERT, NULL, DEFAULT, UPDATE, and DELETE.


---

1. INSERT INTO – Adding Rows

Suppose we have a table:

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50) DEFAULT 'Unknown'
);

👉 Insert rows:

-- Insert all column values
INSERT INTO Students (student_id, name, age, city)
VALUES (1, 'Rahul', 21, 'Delhi');

-- Insert with missing value (NULL for city)
INSERT INTO Students (student_id, name, age, city)
VALUES (2, 'Anita', 22, NULL);

-- Insert with default value for city
INSERT INTO Students (student_id, name, age)
VALUES (3, 'Vikram', 20);


---

2. Handling Missing Values (NULL or DEFAULT)

NULL: means unknown or missing.

DEFAULT: uses the predefined default value of the column.


Example already shown above:

Anita → NULL city

Vikram → city will become 'Unknown' (default)



---

3. UPDATE with WHERE

-- Update one student’s city
UPDATE Students
SET city = 'Mumbai'
WHERE student_id = 2;

-- Update multiple rows with a condition
UPDATE Students
SET age = age + 1
WHERE city = 'Unknown';


---

4. DELETE with WHERE

-- Delete one row
DELETE FROM Students
WHERE student_id = 3;

-- Delete multiple rows with a condition
DELETE FROM Students
WHERE city IS NULL;


---

✅ This covers:

1. Adding rows with INSERT INTO


2. Handling missing values (NULL and DEFAULT)


3. Updating and deleting rows safely with WHERE




---

Do you want me to also show you the output table after each step so it’s easier to visualize?