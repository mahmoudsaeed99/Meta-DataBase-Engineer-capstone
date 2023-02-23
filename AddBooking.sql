create procedure  AddBooking (IN bookingID INT ,IN dateSlot datetime ,IN tableNo INT , IN customerID INT)
begin
call AddValidBooking(dateSlot , tableNo);
insert into bookings(BookingID , DateSlot , TableNo , CustomerID) 
values(bookingID,dateSlot,tableNo,customerID);
select ("New booking added") as "Confirmation"
end//