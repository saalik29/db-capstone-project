use little_lemon_db;
DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(BookingDate DATE, TableNumber INT)
	SELECT CONCAT("Table ", TableNumber, " is already booked")
    WHERE exists (select * from Bookings where Date = BookingDate and TableNumber = TableNumber)