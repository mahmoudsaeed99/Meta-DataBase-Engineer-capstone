 create procedure CheckBooking(IN dateSlot datetime , IN tableNo INT)
    -> begin
    -> if tableNo in (select TableNo from bookings where DateSlot = dateSlot) then
    -> select concat("table ",tableNo," is already booked") as "Booking status";
    -> else select concat("table ",tableNo," is available") as "Booking status";
    -> end if;
    -> end//