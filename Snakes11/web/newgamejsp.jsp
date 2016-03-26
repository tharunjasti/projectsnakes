<%-- 
    Document   : newgamejsp
    Created on : Mar 6, 2013, 11:43:25 AM
    Author     : Hemanth
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Game JSP Page</title>
    </head>
    <body>
      
        <%
            try {
                if (session.getAttribute("uname") == null || session.getAttribute("uname").equals("")) {

                    out.println("<html><head>");
                    out.println("<script language='javascript'>redirTime = '3000';redirURL = 'login.jsp';function redirTimer() {self.setTimeout('self.location.href = redirURL;',redirTime);}");
                    out.println("</script><title>Our Redirection</title></head>");
                    out.println("<body onload='redirTimer()'><center><h1>You have not Loggedin</h1></center><br> You will be redirected to login page in 2 seconds</body></html>");

                    
                } else {
                   
                    
                   response.sendRedirect("newgame.jsp");
                }
            } catch (Exception e) {
                out.println("Error");
            }


        %>
    </body>
</html>
