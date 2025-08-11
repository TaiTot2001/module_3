<%--
  Created by IntelliJ IDEA.
  User: wanbi
  Date: 08/08/2025
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<html>
<head>
    <title>Detail Student</title>
</head>
<body>
<h1>Detail Student</h1>
<table class="table">
    <tr>
        <th>ID</th>
        <td>${student.id}</td>
    </tr>
    <tr>
        <th>Name</th>
        <td>${student.name}</td>
    </tr>
    <tr>
        <th>Email</th>
        <td>${student.email}</td>
    </tr>
</table>
<a href="?action=list" class="btn btn-secondary">Back to List</a>
</body>
</html>
