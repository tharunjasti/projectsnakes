
<html>
    <head>
        <title>Join game</title>
        <link rel="stylesheet" type="text/css" href=style4.css>
        <script >
            function validateform()
            {
           	   
                   if( document.forms ["myform"]["pname"].value=='')
                {
                    alert( "Please provide valid player!" );
    
                    return false;
                }
	
                if( !document.forms ["myform"]["pname"].value.match(/^[A-Za-z0-9]+$/))
                {
                    alert( "Player name must contain only alpha numeric characters" );
    
                    return false;
                }

                var passid_len = document.forms["myform"]["password"].value.length;  
                if (passid_len == 0)  
                {  
                    alert("Password should not be empty ");  
         
                    return false;  
                }  
                if(passid_len >= 10 || passid_len < 5)
                {
                    alert("password length should be between 5 and 10")
                }
                return true;  
      
            }
            

        </script>
        <style>
            img.sr{position:absolute;right:0;top:600;}
            body{color:white;background-image:url("Photos/background11.jpg")}
            a.c{text-decoration:none;color:white;font-size:15;position:absolute;left:400;top:400;}
            a.b{text-decoration:none;color:white;font-size:15;position:absolute;right:400;top:400;}
            a:hover{color:cyan;}
        </style>
    </head>
    <body background>
        <%@ page import="java.sql.*" %>
         <%@ page import="java.util.*;"%>
          
         
         
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
                <
                <th> <a href="newgamejsp.jsp">New Game</a></th>
                <th> <a href="joingamejsp.jsp">Join Game</a></th>
                <th> <a href="contactus.jsp">Contact Us</a></th>

            </tr>
        </table>
        <br><br><br><br>
        <h1><center>Join the Game</center></h1>
        <br><br>
        <form name="myform" onsubmit="return validateform();" method="POST" action="joingamevalidations">
            <table align="center">
                 <tr>
                    <td align="left">Player Name</td>
                    <td align="left"><input type="text" name="jpname"></td>
                </tr>
                <tr>
                    <td align="left">Board Name</td>
                    <td align="left">
                         
                        <%
                            try {
                                HashMap<String, String> userDetails = (HashMap) session
                                        .getAttribute("gp");
                                
                                out.println("<select id='jb' name='jbname'>");
                                for (String key : userDetails.keySet()) {

                                    out.println("<option value=" + key + ">" + key + "</option>");
                                    
                                }
                                
                                out.println("</select>");
                            } catch (Exception e) {
                                out.println("Error");
                            }
                        %>

                    </td>
                </tr>
                
                   
                    
                <tr>
                    <td align="left">Password</td>
                    <td align="left"><input type="password" name="jpassword" ></td>
                        <%
                        
                            try {
                                HashMap<String, String> userDetails = (HashMap) session
                                        .getAttribute("gp");
                              
                                String e = request.getParameter("jpassword");
                                String e1 = request.getParameter("jbname");
                                if (userDetails.get(e1).equals(e)) {
                                    response.sendRedirect("board.jsp");
                                } else {
                                    out.println("<p style='position: absolute; top: 350px; left: 800px; color: red;'>Wrong password</p>");
                                }
                            } catch (Exception ee) {
                                ee.printStackTrace();
                            }
                              
                       %>
                   
                </tr>
              <tr>
                    
            </table>
            <br>
            <center><input type=submit value="submit"></center>
        </form>
        
        <a class="b" href="forgotpassword.html">Forgot Password?</a>
        <a href="main.jsp">
            <img class="sr" src="Photos\home1.jpg" alt="Home" title="Home" width="100" height="50" align="right"></a>
    </body>
