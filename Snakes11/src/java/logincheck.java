/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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
public class logincheck extends HttpServlet {

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

        String connectionURL = "jdbc:mysql://localhost:3306/snakes_ladders";
        Connection connection = null;
        ResultSet rs;
        res.setContentType("text/html;charset=UTF-8");
        PrintWriter out = res.getWriter();
        String uname = req.getParameter("uname");
        String pp = req.getParameter("p");
        HttpSession s = req.getSession(true);
        try {
            /* TODO output your page here. You may use following sample code. */

            Class.forName("com.mysql.jdbc.Driver");
            // Get a Connection to the database
            connection = DriverManager.getConnection(connectionURL, "root", "tharun9322");
            //Add the data into the database
            //String sql1="select password from reg_details where user="+uname;
            String sql = "select loname,password from user_details";
            Statement st = connection.createStatement();
            rs = st.executeQuery(sql);

            String u = null;
            String p1 = null;
            int f = 0;
            while (rs.next()) {
                u = rs.getString(1);
                p1 = rs.getString(2);
                if (u.equals(uname) && pp.equals(p1)) {
                    f = 1;
                    s.setAttribute("uname", u);
                    res.sendRedirect("newgame.jsp");

                }
            }

            if (f == 0) {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet logincheck</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<p>Sorry the entered credentials are wrong. Please enter again</p>");
                out.println("<a href='login.html'>GO Back</a>");
                out.println("</body>");
                out.println("</html>");


            }
        }catch (ClassNotFoundException e) {
            out.println("Couldn't load database driver: "
                    + e.getMessage());
        } catch (SQLException e) {
            out.println("SQLException caught: "
                    + e.getMessage());
        } catch (Exception e) {
            out.println(e);
        } finally {
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
}
