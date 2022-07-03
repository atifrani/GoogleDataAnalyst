SELECT 
  our_warehouses.warehouse_id,
  CONCAT(our_warehouses.state, " : ",our_warehouses.warehouse_alias) AS warehouse_name,
  COUNT(our_orders.order_id) AS Orders_Count,
  (SELECT COUNT(*) FROM `aerial-tide-353016.MyWarehouse.Orders`AS Orders) AS Orders_Total,
 FROM 
  `aerial-tide-353016.MyWarehouse.Warehouse` as our_warehouses
LEFT JOIN
  `aerial-tide-353016.MyWarehouse.Orders` AS our_orders
  ON our_warehouses.warehouse_id = our_orders.warehouse_id
GROUP BY 
  our_warehouses.warehouse_id,
  warehouse_name
HAVING 
  Orders_Count > 100
ORDER BY
  Orders_Count DESC