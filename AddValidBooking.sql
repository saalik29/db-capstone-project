USE little_lemon_db;
DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER $$

CREATE PROCEDURE AddValidBooking(IN BookingDate DATE, IN TableNumber INT)
	BEGIN
		START TRANSACTION;
        SELECT BookingDate, TableNumber
		WHERE exists (SELECT * from Booking where Date = BookingDate and TableNumber = TableNumber)
		INSERT INTO booking (date, table_number)
		VALUES (BookingDate, TableNumber);
    
	COMMIT;
    END$$
    
DELIMITER ;