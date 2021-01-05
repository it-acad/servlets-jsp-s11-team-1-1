
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style type="text/css">
        body{
            display: flex;
            flex-direction: column;
            padding: 1%;
            text-align: center;
            font-family: "Roboto";
        }
        div{
            height: 6%;
            display: flex;
            flex-direction: row;
            text-align: center;
        }
        p{
            font-size: 40px;
            font-weight: 700;
        }
        a{
            font-size: 20px;
            margin: 8px;
            outline: none;
            text-decoration: none;
            color: black;
        }
        hr{
            color: black;
            margin: 5px;
        }
    </style>
</head>
<body>
    <div>
        <a href="/home">Home</a><hr><a href="/create-task">Add new Task</a><hr><a href="/tasks-list">Show all Tasks</a>
    </div>
    <p>Welcome to awesome To-Do List!!!</p>

</body>
</html>
