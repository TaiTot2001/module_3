<%@ page import="static java.lang.System.out" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--Expresstion--%>
<%=1 + 1%><br>
<%="HelloWorld"%> <br>
<%=10 > 5%>
<%--Scriptlet--%>
<%
    String name = "CodeGym";
    boolean isMarried = false;
    for (int i = 0; i < 5; i++) {
        out.println("<p>line" + i + "</p>");
    }
<%!
    void sayHello(String name) {
        out.println("hello," + name + "!");
    }
    sayHello("codegym");
%>
%>
</body>
</html>