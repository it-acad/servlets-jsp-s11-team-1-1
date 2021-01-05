<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
    body{
        display: flex;
        flex-direction: column;
        padding: 1%;
        text-align: center;
        font-family: "Roboto";
    }
    header{
        height: 6%;
        display: flex;
        flex-direction: row;
        text-align: center;
    }
    header>a{
        font-size: 20px;
        margin: 8px;
        outline: none;
        text-decoration: none;
        color: black;
    }
    header>hr{
        color: black;
        margin: 5px;
    }
    p{
        font-size: 40px;
        font-weight: 700;
    }
</style>
</head>
<body>
<header>
    <a href="/home">Home</a><hr><a href="/create-task">Add new Task</a><hr><a href="/tasks-list">Show all Tasks</a>
</header>
<table>
    <tr>
        <th>No.</th>
        <th>Name</th>
        <th>Priority</th>
        <th colspan="3">Operation</th>
    </tr>
    <%
        for(Task task : (List<Task>)request.getAttribute("tasks")) {
        %>
    <tr>
        <td><%=task.getId()%></td>
        <td><%=task.getTitle()%></td>
        <td><%=task.getPriority()%></td>
        <td>
            <a href="/read-task?id=<%=task.getId()%>">Read</a>
        </td>
        <td>
            <a href="/edit-task?id=<%=task.getId()%>">Edit</a>
        </td>
        <td>
            <a href="/delete-task?id=<%=task.getId()%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>
