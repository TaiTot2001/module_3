<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 07/08/2025
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cập nhật sản phẩm</title>
</head>
<body>
<h1>Cập nhật sản phẩm</h1>
<form action="/sanpham" method="post">
    <input type="hidden" name="action" value="update">
    <label for="id">Mã sản phẩm</label>
    <input type="text" id="id" name="id" value="${prd.id}"><br>
    <label for="name">Mã sản phẩm</label>
    <input type="text" id="name" name="name" value="${prd.name}"><br>
    <label for="price">Mã sản phẩm</label>
    <input type="text" id="price" name="price" value="${prd.price}"><br>
    <label for="description">Mã sản phẩm</label>
    <input type="text" id="id" name="description" value="${prd.description}"><br>
    <label for="manufacturer">Mã sản phẩm</label>
    <input type="text" id="id" name="manufacturer" value="${prd.manufacturer}"><br>
    <button type="submit">Cập nhật</button>
    <br>
    <a href="/sanpham?action=list">Quay lại</a>
</form>
</body>
</html>
