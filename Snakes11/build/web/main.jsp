<!DOCTYPE html>
<html>

<head>
<title>Snake and Ladders</title>
<link rel="stylesheet type="text/css" href=style4.css>
<style>
th a:hover{color:green;}
body{background-image:url("Photos/background11.jpg");}
</style>
</head>
<body >
       <%
    try{
        String s=(String)session.getAttribute("uname");
        if(s!=null)
                       {
            out.println("<p style='postion: absolute; right: 0px; color: white'>Welcome "+s+"</p>");
            out.println("<a style='position: absolute; top: 10px; right: 6px; color: white;' href='logout.jsp'>Logout</a>");
               }
        }
    catch (Exception e)
                       {
        out.println("Error");
    }
   %>
 
<div id="header" style="background-color:#FFFFCC;">
<h1 style="margin-bottom:0;">Snakes and Ladders</h1></div>
<br><br><br><br><br>
<table align="center" width="100%">
<tr>
<th> <a href="instructions_of_game.jsp">Instructions</a></th>

<%
try{
        String s=(String)session.getAttribute("uname");
        if(s==null)
           
            out.println("<th> <a href='registration.jsp'>Register</a></th>");
      
    }
    catch (Exception e)
                       {
        out.println("Error");
    }

%>


<%
try{
        String s=(String)session.getAttribute("uname");
       if(s==null)
             out.println("<th> <a href='login.jsp'>Login</a></th>");
    }
    catch (Exception e)
                       {
        out.println("Error");
    }

%>


<th> <a href="newgamejsp.jsp">New Game</a></th>
<th> <a href="joingamejsp.jsp">Join Game</a></th>
<th> <a href="contactus.jsp">Contact Us</a></th>
</tr>
</body>
