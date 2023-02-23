create procedure  UpdateBooking  (IN bookingID INT ,IN dateSlot datetime)
begin
update bookings where BookingID = bookingID
set DateSlot = dateSlot;
select concat("Booking ",bookingID," updated") as "Confirmation";
end//