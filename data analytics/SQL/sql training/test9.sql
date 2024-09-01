
use yeshwanth;

DELIMITER //

CREATE PROCEDURE rish()
BEGIN
    SELECT * FROM yeshwanth.employee;
END //

DELIMITER ;

call rish();






