<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05/08/2025
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body class="bg-light">
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1 class="text-primary">📦 Danh sách sản phẩm</h1>
        <a href="/sanpham?action=create" class="btn btn-success">
            ➕ Thêm mới sản phẩm
        </a>
    </div>
    <table class="table table-hover table-striped table-bordered align-middle">
        <thead class="table-dark">
        <tr>
            <th>Mã SP</th>
            <th>Tên SP</th>
            <th>Giá SP</th>
            <th>Mô tả</th>
            <th>Nhà SX</th>
            <th class="text-center">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="prd" items="${products}">
            <tr>
                <td>${prd.id}</td>
                <td>${prd.name}</td>
                <td>
                    <fmt:formatNumber value="${prd.price}" type="number" groupingUsed="true"/> VND
                </td>
                <td>${prd.description}</td>
                <td>${prd.manufacturer}</td>
                <td class="text-center">
                    <a href="/sanpham?action=detail&id=${prd.id}" class="btn btn-info btn-sm">👁 Xem</a>
                    <a href="/sanpham?action=update&id=${prd.id}" class="btn btn-warning btn-sm">✏ Sửa</a>
                    <a href="/sanpham?action=delete&id=${prd.id}" class="btn btn-danger btn-sm">🗑 Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-xrRk5Q2n5R4Zk+ZkU6rFVKyYjH9tT5h8e5U9Y6tbzljF5Xzq6V+2Fj+8Q0m9k6Sy"
        crossorigin="anonymous"></script>
</body>
</html>

