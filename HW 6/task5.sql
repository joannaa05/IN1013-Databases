--task 5
--1
SELECT first_name, surname, COUNT(*) FROM restStaff
INNER JOIN restBill ON restBill.waiter_no = restStaff.staff_no
GROUP BY bill_date
HAVING COUNT(*) >= 2;


--2
SELECT room_name, COUNT(table_no) FROM restRest_table
WHERE no_of_seats > 6


--3

--4

--5

--6