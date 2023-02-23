DELIMITER //  
create procedure CancelOrder(IN id INT)
begin 
delete from orders 
where OrderID = id;
select concat("Order ",id," is cancelled") as Confirmation;

end //