DELIMITER //  
create procedure GetOrderDetail(IN id INT)
begin 
select o.OrderID , o. Quantity , o.TotalCost
from orders
where o.CustomerID = id;
end //