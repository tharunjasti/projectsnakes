/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hemanth
 */
public class gamecontroller extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
         String connectionURL = "jdbc:mysql://localhost:3306/snakes_ladders";
        Connection connection = null;
       // ResultSet rs;
        try {
            String board=req.getParameter("bname");
             String player=req.getParameter("pname");
             String update=req.getParameter("update");
             String flag=req.getParameter("fv");
                      String b=board;
     String p=player;
    int fv=0,value=0;
           
             value=(int)(Math.random()*6)+1;
            
            fv=value;
            
    
             
             Class.forName("com.mysql.jdbc.Driver");
             
            // Get a Connection to the database
            
             
           
                connection = DriverManager.getConnection(connectionURL, "root", "tharun9322"); 
                Statement pst = connection.createStatement();
                ResultSet rs=pst.executeQuery("select * from players_details where game_name='"+board+"' and player_name='"+player+"'");
                int cur=0;
                String col="Blue";
                  int status =0;
                while(rs.next())
                {
                    cur=rs.getInt("current_position");
                    col=rs.getString("player_color");
                }
               ResultSet r1s=pst.executeQuery("select status from players_details where game_name='"+board+"'");
               while(r1s.next())
        {
            if(r1s.getInt(1)==1)
            {
                ResultSet rgg=pst.executeQuery("select player_name from players_details where status=1");
            String pp=null;
            while(rgg.next()) {
                pp=rgg.getString(1);
            }
         res.sendRedirect("winner.jsp?player="+pp+"");
               // break;
            }
            
        }
                if((cur+fv)<=100){
    cur=cur+fv;
       }
    if(cur==4){
        cur=16;
    }
    if(cur==12){
        cur=33;
    }
    if(cur==18){
        cur=22;
    }
    if(cur==21){
        cur=3;
    }
    if(cur==24){
        cur=7;
    }
    if(cur==26){
        cur=37;
    }
    if(cur==35){
        cur=9;
    }
    if(cur==35){
        cur=18;
    }
    if(cur==49){
        cur=51;
    }
    if(cur==50){
        cur=11;
    }
    if(cur==53){
        cur=15;
    }
    if(cur==55){
        cur=74;
    }
    if(cur==60){
        cur=23;
    }
    if(cur==75){
        cur=44;
    }
    if(cur==82){
        cur=98;
    }
    if(cur==85){
        cur=95;
    }
    if(cur==88){
        cur=92;
    }
    
    if(cur==89){
        cur=48;
    }
    if(cur==93){
        cur=25;
    }
    if(cur==97){
        cur=65;
    }
     if(cur==99){
        cur=58;
    }
   
     if(cur>99)
     {
         pst.executeUpdate("update players_details set status=1 where player_name='"+player+"' and game_name='"+board+"'");
         ResultSet rg=pst.executeQuery("select status from players_details where player_name='"+player+"' and game_name='"+board+"'");
                
     while(rg.next())
     {
      status=rg.getInt(1);   
     }
     if(status==1)
     {
         res.sendRedirect("winner.jsp?player="+player+"");
     }
     }
     
     String sql = "update players_details set current_position='"+cur+"' where player_name='"+player+"' and game_name='"+board+"'";
            
            
             pst.executeUpdate(sql);
 //            Statement pstt=connection.createStatement();
//             ResultSet rs1=pst1.executeQuery("select flag from players_details where player_name='"+player+"' and game_name='"+board+"'");
//             int a=0;
//             while(rs1.next())
//             {
//                 a=rs1.getInt(1);
//             }
             connection.close();
            
          
         
//                
//         else if(update==null)
//         {
             int v=0;
     
         v=fv;
        Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/snakes_ladders","root","tharun9322");
           Statement st=con.createStatement();
           ResultSet rs1=st.executeQuery("select  max_players,count from game_details where game_name='"+b+"'");
           int max=0,count=0;
           
            while (rs1.next())
           {
              //out.println("<tr>"); 
    
            //out.println("<td>"+rs.getString(1) +"</td>");
            //out.println("<td>"+rs.getString(2) +"</td>");
           // out.println("<td>"+rs.getString(2) +"</td>");
                max=rs1.getInt(1);
                count=rs1.getInt(2);
              //out.println("</tr>");
           }
//           if(count!=max)
//           {
//               out.println("The game has not started yet");
//           }
                         
            if(max==2)
            {
                Statement stt=con.createStatement();
                if(fv!=6)
                {
                stt.executeUpdate("update players_details set orders=orders+1 where game_name='"+board+"'");
               // ResultSet rr=stt.executeQuery("select orders from players_details where game_name='"+board+"'");
                //int o=0;
//                while(rr.next())
//                {
//                    o=rr.getInt(1);
//                    if(o>2)
//                    {
//                        stt.executeUpdate("");
//                    }
//                    
//                }
                stt.executeUpdate("update players_details set orders=1 where orders>2 and game_name='"+board+"'");
                res.sendRedirect("board.jsp?jbname="+board+"&jpname="+player+"&dice="+value+"");
                }
                else
                res.sendRedirect("board.jsp?jbname="+board+"&jpname="+player+"&dice="+value+"&update=1");
            }
              if(max==3)
            {
                Statement stt=con.createStatement();
                if(fv!=6)
                {
                stt.executeUpdate("update players_details set orders=orders+1 where game_name='"+board+"'");
                ResultSet rr=stt.executeQuery("select orders from players_details where game_name='"+board+"'");
                //int o=0;
//                while(rr.next())
//                {
//                    o=rr.getInt(1);
//                    if(o>2)
//                    {
//                        stt.executeUpdate("");
//                    }
//                    
//                }
                stt.executeUpdate("update players_details set orders=1 where orders>3 and game_name='"+board+"'");
                res.sendRedirect("board.jsp?jbname="+board+"&jpname="+player+"&dice="+value+"");
                }
                else
                res.sendRedirect("board.jsp?jbname="+board+"&jpname="+player+"&dice="+value+"&update=1");
            }
               if(max==4)
            {
                Statement stt=con.createStatement();
                if(fv!=6)
                {
                stt.executeUpdate("update players_details set orders=orders+1 where game_name='"+board+"'");
                ResultSet rr=stt.executeQuery("select orders from players_details where game_name='"+board+"'");
                //int o=0;
//                while(rr.next())
//                {
//                    o=rr.getInt(1);
//                    if(o>2)
//                    {
//                        stt.executeUpdate("");
//                    }
//                    
//                }
                stt.executeUpdate("update players_details set orders=1 where orders>4 and game_name='"+board+"'");
                res.sendRedirect("board.jsp?jbname="+board+"&jpname="+player+"&dice="+value+"");
                }
                else
                res.sendRedirect("board.jsp?jbname="+board+"&jpname="+player+"&dice="+value+"&update=1");
            }
               con.close();
             
        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());

        } catch (Exception e) {
            out.println(e);
        }finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    // </editor-fold>
}
