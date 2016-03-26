<%-- 
    Document   : logout
    Created on : Mar 6, 2013, 3:58:00 PM
    Author     : tharun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
        String b=(String)session.getAttribute("bname");
        String p=(String)session.getAttribute("pname");
        String jp=(String)session.getAttribute("jpname");
        String host=(String)session.getAttribute("host");
       
       
        try{
             Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders","root","tharun9322");
             if(host!=null)
                    {
            
       
           Statement st=con.createStatement();
           int i=st.executeUpdate("delete from players_details where game_name='"+b+"'");
           Statement st1=con.createStatement();
        st1.executeUpdate("delete from game_details where game_name='"+b+"'");
        session.invalidate();
        response.sendRedirect("main.jsp");
               }
             else
                       {
               Statement st1=con.createStatement();
           int i1=st1.executeUpdate("delete from players_details where player_name='"+jp+"'");
           
            session.invalidate();
        response.sendRedirect("main.jsp");
        }
                         }
      catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());
        } catch (Exception e) {
            out.println(e);
        
               }
               
        
        %>
    </body>
</html>
