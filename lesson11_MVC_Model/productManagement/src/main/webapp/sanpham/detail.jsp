<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết Sản Phẩm</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Chi tiết Sản Phẩm</h4>
        </div>
        <div class="card-body">
            <p><strong>Mã sp:</strong> <c:out value="${prd.id}"/></p>
            <p><strong>Tên sp:</strong> <c:out value="${prd.name}"/></p>
            <p><strong>Giá sp:</strong> <c:out value="${prd.price}"/></p>
            <p><strong>Mô tả:</strong> <c:out value="${prd.description}"/></p>
            <p><strong>Nhà sx:</strong> <c:out value="${prd.manufacturer}"/></p>
        </div>
        <div class="card-footer text-end">
            <a href="/sanpham?action=list" class="btn btn-secondary">Quay lại</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
