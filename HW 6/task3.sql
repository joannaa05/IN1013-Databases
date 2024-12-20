--Task 3
--1
SELECT first_name, surname FROM restStaff 
INNER JOIN restBill ON restStaff.staff_no = restBill.waiter_no 
WHERE cust_name = 'Tanya Singh';
--2
SELECT room_date FROM restRoom_management 
INNER JOIN restStaff ON restStaff.staff_no = restRoom_management.headwaiter 
WHERE room_name = 'Green' AND first_name = 'Charles' AND room_date LIKE '%1602%';
--3
SELECT first_name, surname FROM restStaff 
WHERE headwaiter = '005';
--4
SELECT cust_name, bill_total,first_name, surname FROM restBill 
INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no 
ORDER BY bill_total DESC;
 --5
SELECT DISTINCT first_name, surname, headwaiter FROM restStaff 
INNER JOIN restBill ON restBill.waiter_no = restStaff.staff_no 
WHERE bill_no = '00014' OR '00017' ORDER BY headwaiter ASC;
--6
SELECT first_name, surname FROM restStaff 
INNER JOIN restRoom_management ON restRoom_management.headwaiter = restStaff.headwaiter 
WHERE room_name = 'Blue' AND room_date = '160312';
