<%-- 
    Document   : value
    Created on : Mar 12, 2013, 9:36:05 AM
    Author     : Hemanth
--%>

<%@page language="java" import ="java.sql.*" %>  
 <%  
 String name=request.getParameter("count");  
 String buffer=null;  
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders","root","tharun9322");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select loname from user_details where loname='"+name+"'");  
   while(rs.next()){
       buffer=rs.getString(1);
   
   }
if(name==null||name.length()<5||name.length()>20)
buffer="<div><br>Invalid name name must be in range 5 to 20 characters"     ;
 else if(buffer==null)
 buffer="<div><br><font color='green'>The user name is available</font>"+"</div>";  
 else
     buffer="<div><br>The name is already taken";
 response.getWriter().println(buffer);  
 %>
