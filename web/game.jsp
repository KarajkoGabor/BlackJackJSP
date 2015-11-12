<%--
  Created by IntelliJ IDEA.
  User: benti
  Date: 2015.11.12.
  Time: 00:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BlackJack</title>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
    <title>Login Success Page</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $(document).on("click", "#drawCard", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            $.ajax({
                url: 'GameServlet',
                data: {buttonID : "drawCard"},
                type: 'get',
                success: function(data){
                    console.log(data);
                    $("#somediv").text(data);
                }
            });
        });
//        $(document).on("click", "#drawCard", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
//            $.get("GameServlet", function(responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
//                $("#somediv").text(responseText);           // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
//            });
//        });
    </script>
</head>
</head>
<body>


<button id="drawCard">Draw Card</button>
<button id="Stop">Stop</button>
<div id="somediv"></div>

<form action="index.jsp" method="POST">
    <input type="submit" value="End Game" />
</form>

</body>
</html>
