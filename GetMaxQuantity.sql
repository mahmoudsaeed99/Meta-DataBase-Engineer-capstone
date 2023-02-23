DELIMITER //  
create procedure GetMaxQuantity()
begin 
select Quantity
from orders
order by 1 desc
limit 1;
end //