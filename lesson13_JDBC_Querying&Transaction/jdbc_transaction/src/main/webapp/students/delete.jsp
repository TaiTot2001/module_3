<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/08/2025
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">

<html>
<head>
  <title>Xóa sinh viên</title>
</head>
<body>
<h2>Bạn có chắc muốn xóa sinh viên này?</h2>
<table class="table">
  <tr>
    <th>ID</th>
    <td>${student.id}</td>
  </tr>
  <tr>
    <th>Tên</th>
    <td>${student.name}</td>
  </tr>
  <tr>
    <th>Email</th>
    <td>${student.email}</td>
  </tr>
</table>
<form method="post" action="student?action=delete&id=${student.id}">
  <input type="hidden" name="id" value="${student.id}">
  <input type="hidden" name="action" value="delete">
  <button type="submit" class="btn btn-primary">Delete</button>
  <a href="/student" class="btn btn-secondary">Cancel</a>
</form>
</body>
</html>