use cape_codd;

-- 2.17
select sku, SKU_Description
from inventory;

-- 2.18
select SKU_Description, sku
from inventory;

-- 2.19
select WarehouseID
from inventory;

-- 2.20
select distinct	WarehouseID
from inventory;

-- 2.21
select WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
from inventory;


-- 2.22
select *
from inventory;

-- 2.23
SELECT SKU, SKU_Description
FROM inventory
WHERE QuantityOnHand > 0;

-- 2.24
SELECT SKU, SKU_Description
FROM inventory
WHERE QuantityOnHand = 0;

-- 2.25
select SKU, SKU_Description, WarehouseID
from inventory
where QuantityOnHand = 0
order by WarehouseID ASC;

-- 2.26
select SKU, SKU_Description, WarehouseID
from inventory
where QuantityOnHand = 0
order by WarehouseID DESC, SKU Asc;

-- 2.27
select SKU, SKU_Description, WarehouseID
from inventory
where QuantityOnHand = 0 and QuantityOnOrder = 0
order by WarehouseID DESC, SKU Asc;

-- 2.28
select SKU, SKU_Description, WarehouseID
from inventory
where QuantityOnHand = 0 or QuantityOnOrder = 0
order by WarehouseID DESC, SKU Asc;

-- 2.29
select SKU, SKU_Description, WarehouseID, QuantityOnHand
from inventory
where QuantityOnHand > 1 and QuantityOnHand < 10;

-- 2.30
select SKU, SKU_Description, WarehouseID, QuantityOnHand
from inventory
where QuantityOnHand between 1 and 10;

-- 2.31
select DISTINCT SKU, SKU_Description
from inventory
where SKU_Description like 'Half-Dome%';

-- 2.32
select DISTINCT SKU, SKU_Description
from inventory
where SKU_Description like 'Climb%';

-- 2.33
select DISTINCT SKU, SKU_Description
from inventory
where SKU_Description like '__d%';

-- 2.36
select WarehouseID, sum(QuantityOnHand) as TotalItemsOnHand
from inventory
group by WarehouseID
order by TotalItemsOnHand DESC;

-- 2.37














