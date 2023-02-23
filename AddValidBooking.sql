mysql> create procedure AddValidBooking(IN dateSlot datetime , IN tableNo INT)
    -> begin
    -> if tableNo in (select TableNo from bookings where DateSlot = dateSlot) then
    -> select concat("table ",tableNo," is already booked - booking cencelled") as "Booking status";
    -> rollback;
    -> else select concat("table ",tableNo," is available") as "Booking status";
    -> commit;
    -> end if;
    -> end//