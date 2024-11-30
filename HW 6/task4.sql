--task 4
--1
SELECT cust_name FROM restBill 
INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no 
WHERE headwaiter = "010" AND bill_total > 450;

--2
SELECT first_name,surname FROM restStaff 
WHERE staff_no IN
(SELECT headwaiter FROM restRoom_management 
INNER JOIN restRest_table ON restRest_table.room_name = restRoom_management.room_name
INNER JOIN restBill ON restBill.table_no = restRest_table.table_no
WHERE room_date = 160111 
AND cust_name = "Nerida Smith")

--3
SELECT cust_name FROM restBill
WHERE bill_total = 
(SELECT MIN(bill_total) FROM restBill)

--4
SELECT DISTINCT first_name, surname FROM restStaff
WHERE staff_no NOT IN
(SELECT waiter_no FROM restBill)

--5 RETURN 
SELECT DISTINCT cust_name, first_name, surname, room_name, bill_total FROM restBill, restRest_table, restStaff
WHERE bill_total = 
(SELECT DISTINCT MAX(bill_total) FROM restBill)
AND staff_no IN
(SELECT DISTINCT headwaiter FROM restRoom_management 
INNER JOIN restRest_table ON restRest_table.room_name = restRoom_management.room_name
INNER JOIN restBill ON restBill.table_no = restRest_table.table_no
)
