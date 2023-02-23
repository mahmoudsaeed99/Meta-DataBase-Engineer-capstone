create view OrdersView as (
	select OrderID , Quantity , TotalCost
    from Orders
    where Quantity > 2
);