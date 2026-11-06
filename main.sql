DROP TABLE IF EXISTS suspects;
CREATE TABLE suspects(
  suspect_id INT PRIMARY KEY,
  name VARCHAR(30),
  role VARCHAR(20),
  last_seen_place VARCHAR(20),
  time_seen VARCHAR(5),
  carrying VARCHAR(20),
  shoe_size INT,
  alibi VARCHAR(40),
  status VARCHAR(15) DEFAULT 'suspect'
;)
INSERT INTO suspects (suspect_id, name, role, last_seen_place, time_seen, carrying,shoe_size, alibi) VALUES
(1, 'Brian Otieno', 'Student', 'Cafeteria', '06:20', 'Backpack', 42, NULL),
(2, 'Faith Wambui', 'Student', 'Cafeteria', '06:35', 'Cooler Box', 38, 'Friend vouches for her'),
(3, 'Mama Pima', 'Cook', 'Cafeteria', '06:05', 'Nothing', 39, 'Cooking since 5am'),
(4, 'Chege Njoroge', 'Cleaner', 'Cafeteria', '06:50', 'Cooler Box', 42, NULL),
(5, 'Amina Hassan', 'Student', 'Cafeteria', '06:40', 'Umbrella', 42, NULL),
(6, 'Dennis Kiprop', 'Visitor', 'Cafeteria', '06:15', 'Backpack', 42, 'Receipt from kiosk at 06:16'),
(7, 'Lucy Achieng', 'Student', 'Cafeteria', '06:55', 'Laptop Bag', 40, NULL),
(8, 'Kevin Mwangi', 'Student', 'Library', '06:30', 'Laptop Bag', 42, NULL),
(9, 'Sarah Njeri', 'Lecturer', 'Cafeteria', '07:30', 'Cooler Box', 42, NULL),
(10, 'Peter Omondi', 'Security', 'Gate', '06:10', 'Nothing', 44, 'On duty at the gate'),
(11, 'Grace Mutheu', 'Student', 'Hostel', '05:45', 'Backpack', 41, 'Roommate confirms'),
(12, 'Tom Barasa', 'Visitor', 'Cafeteria', '05:50', 'Backpack', 42, NULL),
(13, 'Janet Chebet', 'Lecturer', 'Lab', '06:25', 'Laptop Bag', 37, NULL),
(14, 'Ibrahim Yusuf', 'Student', 'Field', '06:45', 'Nothing', 43, 'Fitness tracker log'),
(15, 'Rose Atieno', 'Cook', 'Cafeteria', '06:00', 'Nothing', 36, 'Cooking since 5am');
--Select all columns and rows from the case file table
SELECT * FROM suspects;
--SELECT only the name and role columns for all people
SELECT name, role FROM suspects;
--Filter the record to find anyone in the Cafeteria
SELECT * FROM suspects WHERE place = 'Cafeteria';
--Filter records to show only those who is Student
SELECT * FROM suspects WHERE role ='Student';
--Find records where the alibi field is null
Select * FROM suspects WHERE alibi IS NULL;
--Search for alibis having keyword 'cooking'
SELECT * FROM suspects WHERE alibi LIKE '%cooking';
--Filter records where role is 'Lecturer' or 'Security'
SELECT * FROM suspects WHERE role IN ('Lecturer', 'Security');
-- Sort records by time in ascending order
SELECT * FROM suspects ORDER BY time ASC LIMIT 3;
--RETRIEVE  unique location names, removing duplicate entries
SELECT DISTINCT location FROM suspects;