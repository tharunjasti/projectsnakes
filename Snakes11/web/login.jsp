<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>

        <style>
            body{color:white;background-image:url("Photos/background11.jpg")}
            a.c{text-decoration:none;color:white;font-size:15px;position:fixed;left:400px;top:300px;}
            a.b{text-decoration:none;color:white;font-size:15px;position:fixed;right:400px;top:300px;}
            img.sr{position:absolute;right:0;top:600px;}
            a:hover{color:red;}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            var xmlHttp  
            var xmlHttp
            function showState1(){
                var name=document.getElementById("loname")
                var pass=document.getElementById("pass")
                if (typeof XMLHttpRequest != "undefined"){
                    xmlHttp= new XMLHttpRequest();
                }
                else if (window.ActiveXObject){
                    xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
                }
                if (xmlHttp==null){
                    alert ("Browser does not support XMLHTTP Request")
                    return
                } 
                var url="value1.jsp";
                url += "?user=" +name+"&pass="+pass+"";
                xmlHttp.onreadystatechange = stateChange;
                xmlHttp.open("GET", url, true);
                xmlHttp.send(null);
            }
            function stateChange(){   
                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
                    document.getElementById("loname1").innerHTML=xmlHttp.responseText;  
                }   
 }
            function loginvalidation()
            {
                if( document.forms ["myform"]["uname"].value=='')
                {
                    alert( "Please enter the user name" );
    
                    return false;
                }
   
                if( document.forms ["myform"]["p"].value=='')
                {
                    alert( "Please enter the password" );
    
                    return false;
                }
   
                return true;
            }
        </script>
    </head>
    <body>
        <br><br>
        <h1><center>Login!!</center></h1>
        <br><br>
        <form name="myform" onsubmit="showState1();" method="POST" action="logincheck" >
            <table align="center">
                <tr>
                    <td align="left">User Name</td>
                    <td align="left"><input id="loname" type="text" name="uname"/></td>
                </tr>
                <tr>
                    <td align="left">Password</td>
                    <td align="left"><input id="pass" type="password" name="p"/></td>
                </tr>
            </table><br>
            <center><input type="submit" value="submit"><br>
            <div id='loname1' style="position:absolute;top:250px;right:130px; color:red;"> 
             </div> 
                <a class="c" href="registration.jsp">Register Now!!</a>
                <a class="b" href="forgotpassword.html">Forgot Password?</a>
                <a href="main.jsp">
                    <img class="sr" src="Photos\home1.jpg" alt="Home" title="Home" width="100" height="50" align="right"></a>
        </form>

    </body>
</html>
