<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05/08/2025
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Xóa sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-danger text-white">
            <h3 class="mb-0">🗑 Xóa sản phẩm</h3>
        </div>
        <div class="card-body">
            <p><strong>Mã SP:</strong> <c:out value="${prd.id}"/></p>
            <p><strong>Tên SP:</strong> <c:out value="${prd.name}"/></p>
            <p><strong>Giá SP:</strong>
                <fmt:formatNumber value="${prd.price}" type="number" groupingUsed="true"/> VND
            </p>
            <p><strong>Mô tả:</strong> <c:out value="${prd.description}"/></p>
            <p><strong>Nhà SX:</strong> <c:out value="${prd.manufacturer}"/></p>

            <div class="alert alert-warning">
                ⚠ Bạn có chắc chắn muốn xóa sản phẩm này? Hành động này <strong>không thể hoàn tác</strong>.
            </div>

            <form method="post" action="/sanpham?action=delete&id=${prd.id}"
                  onsubmit="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');"
                  class="d-flex justify-content-between">
                <a href="/sanpham?action=list" class="btn btn-secondary">⬅ Quay lại</a>
                <button type="submit" class="btn btn-danger">Xác nhận xóa</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-xrRk5Q2n5R4Zk+ZkU6rFVKyYjH9tT5h8e5U9Y6tbzljF5Xzq6V+2Fj+8Q0m9k6Sy"
        crossorigin="anonymous"></script>
</body>
</html>


