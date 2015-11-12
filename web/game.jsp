<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Login page</title>

    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
        $(document).on("click", "#drawCard", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            $.ajax({
                url: 'GameServlet',
                data: {buttonID: 'drawCard'},
                dataType: "text",
                type: 'get',
                success: function (data) {
                    console.log(data);
                    $("#somediv").text(data);
                }
            });
        });


        $(document).on("click", "#Stop", function () { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
            $.ajax({
                url: 'GameServlet',
                data: {buttonID: 'stop'},
                dataType: "text",
                type: 'get',
                success: function (data) {
                    console.log(data);
                    $("#somediv").text(data);
//                    alert("Game is over!");
                }
            });
        });
    </script>
</head>

<body>

<div id="buttonContainer">
    <button id="drawCard">Draw Card</button>
    <button id="Stop">Stop</button>
</div>
<div id="somediv"></div>

<form action="index.jsp" method="post">
    <div id="inputFields">
        <input type="submit" value="End Game"/>
    </div>
</form>

</body>
</html>
