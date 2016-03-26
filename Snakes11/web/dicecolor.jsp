<%-- 
    Document   : dicecolor
    Created on : Mar 8, 2013, 4:05:28 PM
    Author     : tharun
--%>
<%@page import="java.lang.reflect.Method"%>
<html>
    <head>
    <style>
        body{background-image:url("Photos/background11.jpg");
            color:white;}
        </style>
    </head>
    <body>
        <h1><center><font color="white"> Select Die Color</font></center></h1><br><br><br>
        <%@page import="java.sql.SQLException"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <%@page import="java.util.Vector"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.DriverManager"%>
        <%@page import="java.io.PrintWriter"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Connection"%>


    
    

        <%



           try {
                String e1 =request.getParameter("jbname");
                String ee =request.getParameter("jpname");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders", "root", "tharun9322");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select color from color where color not in (select player_color from players_details where game_name='"+e1+"')");
                out.println("<form action=joingameinsertion method='post'>");
                out.println("<table align='center'><tr>");
                out.println("<td align='left'>Dice Color</td>");
                out.println("<td align='left'><select name='jdicecolor' id='jdicecolor'>");
                        while (rs.next()) {
                    out.println("<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>");
                
                    
                    }
                out.println("</select></td></tr></table><br>");
              
                
                
                String e2 =request.getParameter("jbname");
                String s2="board.jsp?jbname="+e2+"&jpname="+ee+"";
               
                out.println("<input type='hidden' name='string' value='"+s2+"'>");
                 out.println("<input type='hidden' name='b' value='"+e1+"'>");
                  out.println("<input type='hidden' name='p' value='"+ee+"'>");
                out.println("<center><input type='submit' value='submit'>");
               
              ;
                out.println("</form>");

            } catch (ClassNotFoundException e) {
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