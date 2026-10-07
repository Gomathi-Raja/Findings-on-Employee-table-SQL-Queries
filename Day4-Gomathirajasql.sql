
---1.List all customers and the products they ordered with the order date. (Inner join)
select  c.companyname AS customer,o.orderid,p.productname,od.quantity,o.orderdate
from customers c
inner join orders o on c.customerid=o.customerid
inner join order_details od on o.orderid=od.orderid
inner join products p on od.productid=p.productid;

---2.Show each order with customer, employee, shipper, and product info — even if some parts are missing. (Left Join)
---Tables used: orders, customers, employees, shippers, order_details, products

select c.companyname as customer,e.employeeName,s.shipperid,od.quantity,p.productName
from orders o
LEFT JOIN customers c ON o.customerid = c.customerid
LEFT JOIN employees e ON o.employeeid = e.employeeid
LEFT JOIN shippers s ON o.shipperid = s.shipperid
LEFT JOIN order_details od ON o.orderid = od.orderid
LEFT JOIN products p ON od.productid = p.productid;

------3.Show all order details and products (include all products even if they were never ordered). (Right Join)
Tables used: order_details, products



