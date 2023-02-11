DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$ 
CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN BookingDate DATE) 
BEGIN
UPDATE bookings SET date = BookingDate WHERE bookingid = BookingID; 
END$$ 
DELIMITER ; 