<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/08/2025
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">

<html>
<head>
    <title>Update Student</title>
</head>
<body>
<h2>Update Student</h2>
<form action="/student" method="post">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${student.id}">

    <div class="mb-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name" name="name" value="${student.name}">
    </div>

    <div class="mb-3">
        <label for="email" class="form-label">Email:</label>
        <input type="text" class="form-control" id="email" name="email" value="${student.email}">
    </div>

    <input type="submit" value="Update" class="btn btn-primary">
    <a href="/student?action=list" class="btn btn-secondary">Cancel</a>
</form>
</body>
</html>

