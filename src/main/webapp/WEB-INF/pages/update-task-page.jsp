<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="com.softserve.itacademy.model.Priority" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%Boolean isValidTask = (Boolean) request.getAttribute("isValidTask");
        String title = (isValidTask) ? "Edit existing task" : "Task not found" ;
    %>
    <title><%= title %></title>
</head>
<body>

<form action="/edit-task" method="post">
    <% Task task = (Task) request.getAttribute("task");
        if(task == null){
            response.setStatus(404);
    %>
    <h1>Task with ID '<%=request.getParameter("id")%>' not found in To-Do List!</h1>
    <br>
    <h2> url: <%=request.getAttribute("requestURI")%></h2>
    <%
    }
    else{
    %>
    <table>
        <h2>Edit existing Task</h2>
        <br>
        <tr>
            <td>Id: </td>
            <td>
                <input type="text" id="id" name="id" value="<%=task.getId()%>" disabled>
            </td>
        </tr>
        <tr>
            <td>Name: </td>
            <td>
                <input type="text" id="taskname" name="taskname" value="<%=task.getTitle()%>">
            </td>
        </tr>
        <tr>
            <td>Priority: </td>
            <td>
                <select name="priority" id="priority-selection">
                    <option value="LOW">Low</option>
                    <option value="MEDIUM">Medium</option>
                    <option value="HIGH">High</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Update"></td>
            <td><input type="reset" value="Clear"></td>
        </tr>
    </table>
    <%
        };
    %>
</form>

</body>
</html>