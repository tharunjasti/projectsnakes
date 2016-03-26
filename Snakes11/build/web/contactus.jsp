<html>
<head>
<title>Contact us</title>
<link rel="stylesheet type="text/css" href=style4.css>
<style>
th a:hover{color:yellow;}
img.sr{position:absolute;right:0;top:550;}
body{color:white; font-size:20;background-image:url("Photos/background11.jpg");}
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
       
<br><br>
<table class="ta" align="center" width="100%">
<tr>
<th> <a href="instructions_of_game.jsp">Instructions</a></th>
<th> <a href="newgamejsp.jsp">New Game</a></th>
<th> <a href="joingamejsp.jsp">Join Game</a></th>
<th> <a href="contactus.jsp">Contact Us</a></th>
</tr>
</table>
<br><br><br>
<center><h1>welcome to contact us<h1></center><br>
Have a question? Feel free to contact us.<br>
you can leave your doubts and queries in this Section<br>
<a href="main.jsp">
<img class="sr" src="Photos\home1.jpg" alt="Home" title="Home" width="100" height="50" align="right"></a>
</body>
