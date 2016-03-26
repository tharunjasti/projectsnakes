/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hemanth
 */
public class registrationservlet extends HttpServlet {

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    /**
     * Process the HTTP Get request
     */
    public void doPost(HttpServletRequest req,
            HttpServletResponse res) throws ServletException,
            IOException {
        String connectionURL = "jdbc:mysql://localhost:3306/snakes_ladders";
        Connection connection = null;
        ResultSet rs;
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        //get the variables entered in the form
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String loname = req.getParameter("loname");
        String date = req.getParameter("D");
        String month = req.getParameter("M");
        String year = req.getParameter("Y");
        String sex = req.getParameter("sex");
        String email = req.getParameter("email");
        String password = req.getParameter("p1");
        String address = req.getParameter("address");
        String secq = req.getParameter("secret1");
        String seca = req.getParameter("secret2");
        String alte = req.getParameter("email1");
        String dob = year + "-" + month + "-" + date;


        try {
            // Load the database driver
            Class.forName("com.mysql.jdbc.Driver");
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionURL, "root", "tharun9322");
            //Add the data into the database
            String sql = "insert into user_details values (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, loname);
            pst.setString(4, dob);
            pst.setString(5, sex);
            pst.setString(6, email);
            pst.setString(7, password);
            pst.setString(8, address);
            pst.setString(9, secq);
            pst.setString(10, seca);
            pst.setString(11, alte);
            int numRowsChanged = pst.executeUpdate();


            out.println("<!DOCTYPE html>");  // HTML 5
            out.println("<html><head>");
            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
            out.println("<style>body{background-image:url('Photos/background11.jpg');}");
            out.println("a{text-decoration:none;size:'30';color:white;}");
            out.println("a:hover{color:blue;}");
            out.println("</style>");
            out.println("<title> Successful </title></head>");
            out.println("<body>");
            out.println("<h1><center><font color='white'>Thank You for Registration</font></center></h1>");  // Prints "Hello, world!"
            // Set a hyperlink image to refresh this page
            out.println("<a href='newgamejsp.jsp'>New Game</a><br><br>");
            out.println("<a href='joingamejsp.jsp'>Join Game Game</a>");
            out.println("</body></html>");



            pst.close();
        } catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());
        } catch (Exception e) {
            out.println(e);
        } finally {
            // Always close the database connection.
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ignored) {
                out.println(ignored);
            }
        }
    }
}