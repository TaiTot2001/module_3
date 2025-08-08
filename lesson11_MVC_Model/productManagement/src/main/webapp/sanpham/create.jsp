<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 05/08/2025
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h3 class="mb-0">➕ Thêm Mới Sản Phẩm</h3>
        </div>
        <div class="card-body">
            <form action="/sanpham" method="post">
                <input type="hidden" name="action" value="create">

                <div class="mb-3">
                    <label for="id" class="form-label">Mã sản phẩm</label>
                    <input type="text" class="form-control" id="id" name="id" placeholder="Nhập mã sản phẩm">
                </div>

                <div class="mb-3">
                    <label for="name" class="form-label">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên sản phẩm">
                </div>

                <div class="mb-3">
                    <label for="price" class="form-label">Giá sản phẩm</label>
                    <input type="number" class="form-control" id="price" name="price" placeholder="Nhập giá sản phẩm">
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Mô tả</label>
                    <textarea class="form-control" id="description" name="description" rows="3" placeholder="Nhập mô tả"></textarea>
                </div>

                <div class="mb-3">
                    <label for="manufacturer" class="form-label">Nhà sản xuất</label>
                    <input type="text" class="form-control" id="manufacturer" name="manufacturer" placeholder="Nhập tên nhà sản xuất">
                </div>

                <div class="d-flex justify-content-between">
                    <a href="/sanpham?action=list" class="btn btn-secondary">⬅ Quay lại</a>
                    <button type="submit" class="btn btn-success">💾 Lưu sản phẩm</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-xrRk5Q2n5R4Zk+ZkU6rFVKyYjH9tT5h8e5U9Y6tbzljF5Xzq6V+2Fj+8Q0m9k6Sy"
        crossorigin="anonymous"></script>
</body>
</html>

