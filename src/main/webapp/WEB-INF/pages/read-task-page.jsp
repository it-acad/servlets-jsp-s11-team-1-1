<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: nazarko
  Date: 1/5/21
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info about task</title>
</head>
<body>
<%
    Task task = (Task) request.getAttribute("task");
%>
    <p>No. : <%=task.getId()%></p>
    <p>Title : <%=task.getTitle()%></p>
    <p>Priority : <%=task.getPriority()%></p>
</body>
</html>
