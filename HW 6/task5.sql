--task 5
--1
SELECT first_name, surname, COUNT(*) FROM restStaff
INNER JOIN restBill ON restBill.waiter_no = restStaff.staff_no
GROUP BY bill_date
HAVING COUNT(*) >= 2;


--2
SELECT room_name, COUNT(table_no) AS num_of_tables_that_sit_6 FROM restRest_table
WHERE no_of_seats > 6
Group By room_name
HAVING COUNT(*) >= 1

--3
SELECT room_name, SUM(bill_total) FROM restRest_table
INNER JOIN restBill ON restRest_table.table_no = restBill.table_no
GROUP BY room_name
HAVING COUNT(bill_total) >=1

--4

SELECT first_name, surname, SUM(bill_total) FROM restStaff
INNER JOIN restBill ON restStaff.staff_no = restBill.waiter_no
WHERE staff_no IN
(SELECT DISTINCT staff_no FROM restRoom_management
INNER JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
)
GROUP BY first_name
HAVING COUNT(bill_total) >= 1
ORDER BY bill_total DESC

--5
SELECT cust_name FROM restBill
GROUP BY cust_name 
HAVING AVG(bill_total) > 400

--6
SELECT first_name, surname, COUNT(bill_total) AS total_bills FROM restStaff
INNER JOIN restBill ON restStaff.staff_no = restBill.waiter_no
GROUP BY staff_no 
HAVING COUNT(bill_total) >= 3
