(select m.ItemName
from menuitems as m
where m.ItemID  = any (select o.ItemID
from orders as o
where o.Quantity > 2));