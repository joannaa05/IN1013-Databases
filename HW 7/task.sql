-- task 1

--1 
CREATE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM Bills
WHERE first_name = "Sam" AND surname = "Pitt";

--2 
SELECT bill_total FROM samsBills
WHERE bill_total > 400;

--3 
CREATE VIEW roomTotals
AS SELECT room_name, SUM(total_sum)
FROM room
GROUP BY room_name
HAVING COUNT(total_sum) >= 1;

--4
CREATE VIEW teamTotals
AS SELECT CONCAT(first_name, '', surname) AS headwaiter_name, SUM(total) AS total_sum 
FROM Bills
GROUP BY headwaiter_name 
HAVING COUNT(totals) >= 1;
