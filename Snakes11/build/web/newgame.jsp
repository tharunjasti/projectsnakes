<html>
<head>
<title>new game</title>
<link rel="stylesheet type="text/css" href=style4.css>
<script >
        function validateform()
        {
             
             if( document.forms ["myform"]["uname"].value=='')
   {
     alert( "Please provide valid username!" );
    
     return false;
   }
	
	if( !document.forms ["myform"]["uname"].value.match(/^[A-Za-z0-9]+$/))
   {
     alert( "User name must contain only alpha numeric characters" );
    
     return false;
   }
    if( document.forms ["myform"]["bname"].value=='')
   {
     alert( "Please provide valid board name!" );
   
     return false;
   }
  if( !document.forms ["myform"]["bname"].value.match(/^[A-Za-z0-9]+$/))
   {
     alert( "Board name must contain only alpha numeric characters" );
    
     return false;
   }


    var passid_len = document.forms["myform"]["p"].value.length;  
    if (passid_len == 0)  
    {  
        alert("Password should not be empty ");  
         
        return false;  
    }  
    if(passid_len >= 10 || passid_len < 5)
        {
            alert("password length should be between 5 and 10");
	    return false;
        }

    return true;  
      
        }
    </script>
<style>
th a:hover{color:pink;}
img.sr{position:absolute;right:0;top:600;}
body{color:white;background-image:url("Photos/background11.jpg");}
a.c{text-decoration:none;color:white;font-size:15; position:absolute;left:400;top:400;}
a.c:hover{color:blue;}
a.b{text-decoration:none;color:white;font-size:15;position:absolute;right:400;top:400}
a.b:hover{color:blue;}
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
<h1><center>Start New Game</center></h1>
<br>
<form name="myform" onsubmit="return validateform();" method="POST" action="Newgameservlet" >
<table align="center">
<tr>
<td align="left">Player Name</td>
<td align="left"><input type="text" name="uname" placeholder="Not user name"/></td>
</tr>
<tr>
<td align="left">Board Name</td>
<td align="left"><input type="text" name="bname"/></td>
</tr>
<tr>
<td align="left">No of Players</td>
<td align="left"><select name="Noofplayers">
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select></td>
</tr>
<tr>
<td align="left">Password</td>
<td align="left"><input type="password" name="p"/></td>
</tr>
<tr>
<td align="left">Select dice color</td>
<td align="left"><select name="dicecolor">
<option value="red">Red</option>
<option value="blue">Blue</option>
<option value="green">Green</option>
<option value="black">Black</option>
</select></td>

</table>
<br>
<center><input type=submit value="Submit" >
</form>
<a class="b" href="forgotpassword.html">Forgot your password?</a>
<a href="main.jsp">
<img class="sr" src="Photos\home1.jpg" alt="Home" title="Home" width="100" height="50" align="right"></a>
</body>
