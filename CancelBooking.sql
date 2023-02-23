create procedure  CancelBooking   (IN bookingID INT)
begin
delete from bookings where BookingID = bookingID;
select concat("Booking ",bookingID," cancelled") as "Confirmation";
end//