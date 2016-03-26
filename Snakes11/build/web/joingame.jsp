
<html>
    <head>
        <title>Find Games</title>
        <link rel="stylesheet" type="text/css" href=style4.css>
       
        <style>
            img.sr{position:absolute;right:0;top:600;}
            body{color:white;background-image:url("Photos/background11.jpg")}
            a.c{text-decoration:none;color:white;font-size:15;position:absolute;left:400;top:400;}
            a.b{text-decoration:none;color:white;font-size:15;position:absolute;right:400;top:400;}
            a:hover{color:cyan;}
        </style>
    </head>
    <body background>
        
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
                <th> <a href="newgame.jsp">New Game</a></th>
                <th> <a href="joingamejsp1.jsp">Join Game</a></th>
                <th> <a href="contactus.jsp">Contact Us</a></th>

            </tr>
        </table>
        <br><br><br><br>
        <h1><center>Find Games</center></h1>
        <br><br>
        <form name="myform" onsubmit="return validateform();" method="POST" action="Joingameservlet">
            <table align="center">
               
                
            </table>
            <br>
            <center><input type=submit value="Find Games"></center>
        </form>
        <a class="c" href="registration.jsp">Register Now!!</a>
        <a class="b" href="forgotpassword.html">Forgot Password?</a>
        <a href="main.jsp">
            <img class="sr" src="Photos\home1.jpg" alt="Home" title="Home" width="100" height="50" align="right"></a>
    </body>
