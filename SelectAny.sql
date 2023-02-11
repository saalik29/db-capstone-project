USE little_lemon_db;
select Name from Menus where MenuID=any (select MenuID from Orders where Quantity>2) 