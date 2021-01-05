<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<style type="text/css">
    body{
        display: flex;
        flex-direction: column;
        padding: 1%;
        text-align: left;
        font-family: "Roboto";
    }
    header{
        height: 6%;
        display: flex;
        flex-direction: row;

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
    h1{
        font-size: 40px;
        font-weight: 700;
    }
    .creation-div{
        display: flex;
        flex-direction: column;
    }
    .creation-div>div{
        display: flex;
        flex-direction: row;
    }
    .creation-div>div>*{
        margin: 1%;
    }
    #username{
        margin: 0.6%;
        width: 15%;
    }
    #create-btn, #clear-btn{
        margin: 1% 0 0 1%;
    }
    #priority-selection{
        margin: 0.6%;
        width: 5%;
    }
</style>
</head>
<body>
<header>
    <a href="home">Home</a><hr><a href="create-task">Add new Task</a><hr><a href="tasks-list">Show all Tasks</a>
</header>
<h1>List Task</h1>
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
