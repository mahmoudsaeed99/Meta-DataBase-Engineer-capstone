(select c.CustomerID , c.FullName , o.OrderID , o.TotalCost
from Cutomers as c 
join Orders as o
where c.CustomerID = o.CutomerID
and o.TotalCost > 150
order by o.TotalCost ASC);
