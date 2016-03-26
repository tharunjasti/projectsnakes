<%-- 
    Document   : winner
    Created on : Mar 13, 2013, 2:34:41 PM
    Author     : Hemanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{background-image:url("Photos/background.png");}
        </style>
    </head>
    <body>
        <h1><center>Game Over</center></h1>
        <%
        String a=(String)request.getParameter("player");
        if(a!=null)
            out.println("<center><h2>"+a+"</h2> is <br></center>");
        out.println("<center><img src='Photos/winner-2.gif'></center>");
        %>
        
    </body>
</html>
