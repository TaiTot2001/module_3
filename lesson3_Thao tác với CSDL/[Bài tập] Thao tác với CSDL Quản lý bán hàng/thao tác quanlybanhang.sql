use quanlybanhang;
insert into customer values (1,'Minh Quan',10),(2,'Ngoc Oanh', 20), (3,'Hong Ha',50);
insert into orders values (1,1,'2006-3-21',null),(2,2,'2006-3-23',null),(3,1,'2006-3-16',null);
insert into product values (1,'May Giat',3),(2,'Tu Lanh',5),(3,'Dieu Hoa',7),(4,'Quat',1),(5,'Bep Dien',2);
insert into orderdetail values(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);


-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    oId, odate, ototalprice
FROM
    orders;
    
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.cID, c.Name, p.pName, SUM(od.odqty) AS totalQTY
FROM
    customer AS c
        JOIN
    orders AS o ON c.cid = o.cid
        JOIN
    orderdetail AS od ON od.oid = o.oid
        JOIN
    product AS p ON p.pid = od.pid
GROUP BY c.cid , p.pname;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.cid,c.Name,c.cage
FROM
    Customer c
        LEFT JOIN
    Orders o ON c.cID = o.cID
WHERE 
    o.oID IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
    o.oID,
    c.name,
    o.oDate,
    SUM(od.odqty * p.pprice) AS TotalPrice
FROM
    customer AS c
        JOIN
    orders AS o ON o.cid = c.cid
        JOIN
    orderdetail AS od ON od.oid = o.oid
        JOIN
    product AS p ON p.pid = od.pid
GROUP BY o.oid , o.oDate;


