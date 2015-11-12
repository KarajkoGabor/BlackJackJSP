<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>


    <link rel="stylesheet" type="text/css" href="styles/style.css"/>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Login page</title>
</head>


<body id="loginContainer">
<%--<div>--%>
<%--<form action="LoginServlet" method="post">--%>
<%--<div id="inputFields">--%>
<%--<input name="name" type="text"/>--%>
<%--<input type="submit" value="Submit"/>--%>
<%--</div>--%>
<%--</form>--%>
<%--</div>--%>

<div class="wrapper">
    <div class="container">
        <h1>Welcome</h1>

        <form action="LoginServlet" method="post" class="form">

            <div id="inputFields">
                <input type="text" name="name"/>
                <button type="submit" id="login-button">Login</button>
            </div>
        </form>
    </div>

</div>


</body>
</html>
