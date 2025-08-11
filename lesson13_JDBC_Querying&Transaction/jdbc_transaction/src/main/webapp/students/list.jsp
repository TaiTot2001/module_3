<%--
  Created by IntelliJ IDEA.
  User: wanbi
  Date: 08/08/2025
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<html>
<head>
    <title>List Student</title>
</head>
<body>
<h1>List Student</h1>
<table class="table">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Action</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>
                <a href="?action=detail&id=${student.id}">Detail</a>
                <a href="?action=update&id=${student.id}">Update</a>
                <a href="?action=delete&id=${student.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
