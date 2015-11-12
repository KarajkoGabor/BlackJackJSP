<%--
  Created by IntelliJ IDEA.
  User: benti
  Date: 2015.11.10.
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Login Success Page</title>
</head>
<body>

<jsp:useBean id="userBean" class="beans.UserBean" scope="session">

</jsp:useBean>


<h3>Hi ${sessionScope.user}, Login successful.</h3>
<br>

<form action="game.jsp" method="POST">
<input type="submit" value="Start game" />
</form>

</body>
</html>