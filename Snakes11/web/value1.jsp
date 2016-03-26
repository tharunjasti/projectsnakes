<%-- 
    Document   : value
    Created on : Mar 12, 2013, 9:36:05 AM
    Author     : Hemanth
--%>

<%@page language="java" import ="java.sql.*" %>  
 <%  
 String user=request.getParameter("user");  
 String pass=request.getParameter("pass");  
 String buffer=null;  
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders","root","hemanth");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select loname,password from user_details where loname='"+user+"'");  
 String u=null;
String p=null; 
if(user==null||pass==null)
    buffer="<div><br>The user name and password is left blank"     ;
else
       {
 while(rs.next()){
       p=rs.getString(1);
   //buffer=buffer+rs.getString(1)+"<br>";  
   }
if(!p.equals(pass))
buffer="<div><br>Invalid username or password"     ;
 
 }
 response.getWriter().println(buffer);  
 %>

